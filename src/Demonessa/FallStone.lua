---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 02.08.2021 22:45
---
PeonAnderStone = -1

function MarkAndFall(x, y, effModel, hero)
    --local mark = AddSpecialEffect("Alarm", x, y)
    --BlzSetSpecialEffectScale(mark, 1)
    local mark=CreateCircleImage(x, y)
    TimerStart(CreateTimer(), 2, false, function()
        local FallenEff = AddSpecialEffect(effModel, x, y)
        BlzSetSpecialEffectZ(FallenEff, 2000)
        BlzSetSpecialEffectYaw(FallenEff, math.rad(GetRandomReal(0, 360)))
        TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
            local z = BlzGetLocalSpecialEffectZ(FallenEff)
            BlzSetSpecialEffectZ(FallenEff, z - 50)

            if z <= GetTerrainZ(x, y) then
                PlayerSeeNoiseInRangeTimed(1, x, y)
                --DestroyEffect(mark)
                --BlzSetSpecialEffectPosition(mark, 5000, 5000, 0)
                SetImagePosition(mark,5000,5000,0)
                DestroyImage(mark)
                DestroyTimer(GetExpiredTimer())
                DestroyEffect(FallenEff)
                local nd = CreateDestructable(FourCC('LTrc'), x, y, 0, GetRandomInt(1, 1), GetRandomInt(1, 5))
                SetDestructableInvulnerable(nd, true)
                DestroyEffect(AddSpecialEffect("ThunderclapCasterClassic", x, y))
                local _, damaged = UnitDamageArea(hero, 70, x, y, 100) --при падении камня
                if IsUnitInRangeXY(damaged, x, y, 80) and UnitAlive(damaged) and GetOwningPlayer(damaged)==Player(0) then
                    PeonAnderStone=PeonAnderStone+1
                    RemoveUnit(damaged)
                    if PeonAnderStone == 0 then
                        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "Пеонетти", GetRectCenter(GetPlayableMapRect()), nil, "О нет, нашел собрата придавило, думаю он выкарабкается", bj_TIMETYPE_ADD, 4.00, true)
                        CreateSpeechEffect(GetRandomPeon())
                    elseif PeonAnderStone == 1 then
                        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "Пеонетти", GetRectCenter(GetPlayableMapRect()), nil, "Мы несём потери", bj_TIMETYPE_ADD, 4.00, true)
                        CreateSpeechEffect(GetRandomPeon())
                    elseif PeonAnderStone == 2 then
                        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "Пеонетти", GetRectCenter(GetPlayableMapRect()), nil, "Я растерял всех своих друзей", bj_TIMETYPE_ADD, 4.00, true)
                        CreateSpeechEffect(GetRandomPeon())
                    end

                end

                TimerStart(CreateTimer(), 5, false, function()
                    KillDestructable(nd)
                end)
            end
        end)
    end)
end

function PlayerSeeNoiseInRangeTimed(duration, x, y)
    DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\ImpaleTargetDust\\ImpaleTargetDust.mdl", x, y))
    for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
        local hero = GetRandomPeon()

        if IsUnitInRangeXY(hero, x, y, 500) then
            CameraSetEQNoiseForPlayer(GetOwningPlayer(hero), 3)
            TimerStart(CreateTimer(), duration, false, function()
                CameraClearNoiseForPlayer(GetOwningPlayer(hero))
                DestroyTimer(GetExpiredTimer())
            end)
        end
    end

end


function CreateCircleImage(x, y)
    -- "SystemGeneric\\Pavement.blp"
    local img = CreateImage("SystemGeneric\\circle.dds", 256, 256, 0, x, y, 0, 256 / 2, 256 / 2, 0, 4)
    --SetImageColor(img, 0, 255, 0, 128)
    SetImageRender(img, true)
    SetImageRenderAlways(img, true)
    ShowImage(img, true)
    return img
end