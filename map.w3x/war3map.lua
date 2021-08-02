udg_MK = 0
udg_OgreOnPlace = false
udg_TowerRepairCount = 0
udg_TowerIsRepair = false
udg_GR = 0
gg_rct_REG_Red_Fog = nil
gg_rct_REG_Rain_Light = nil
gg_rct_REG_Lights1 = nil
gg_rct_REG_Lights2 = nil
gg_rct_NewCamp = nil
gg_rct_Brod = nil
gg_rct_FirstAttack = nil
gg_rct________________007 = nil
gg_rct________________007_____________________u = nil
gg_rct________________009 = nil
gg_rct________________010 = nil
gg_rct________________011 = nil
gg_rct_OgreDefPlace = nil
gg_rct________________013 = nil
gg_rct_EndPoint = nil
gg_rct________________015 = nil
gg_rct________________016 = nil
gg_rct_HealEpmty = nil
gg_rct_HealFinder = nil
gg_rct_FireTower = nil
gg_rct_FireTower2 = nil
gg_rct_FireTower3 = nil
gg_trg_Init = nil
gg_trg_DemonessEnter = nil
gg_trg_Fire = nil
gg_trg_Fire_Copy = nil
gg_trg_Fire_Copy_Copy = nil
gg_trg_Empty = nil
gg_trg_FindHeal = nil
gg_trg_FindOrge = nil
gg_trg_OgreRun = nil
gg_trg_StartAllWave = nil
gg_trg_ReadyTower = nil
gg_trg_RepairTower = nil
gg_trg_OnPlaceOrge = nil
gg_trg_TolkWOrge = nil
gg_trg_PingTowerPlace = nil
gg_trg_TolkWOrgeAfterRepair = nil
gg_trg_PeonDead = nil
gg_trg_Start = nil
gg_trg_NewCamp = nil
gg_trg_Brod = nil
gg_trg_FirstAttack = nil
gg_trg_KillMurloc = nil
gg_trg_ReadTable = nil
gg_trg_Aly6 = nil
gg_trg_DisableAttack = nil
gg_trg_Black = nil
gg_unit_nogm_0000 = nil
gg_unit_hatw_0020 = nil
gg_unit_hctw_0019 = nil
gg_unit_hgtw_0018 = nil
gg_unit_ndqs_0026 = nil
function InitGlobals()
    udg_MK = 0
    udg_OgreOnPlace = false
    udg_TowerRepairCount = 0
    udg_TowerIsRepair = false
    udg_GR = 0
end

function CreateUnitsForPlayer0()
    local p = Player(0)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("opeo"), 1602.1, 1088.8, 6.570, FourCC("opeo"))
    life = GetUnitState(u, UNIT_STATE_LIFE)
    SetUnitState(u, UNIT_STATE_LIFE, 0.50 * life)
    u = BlzCreateUnitWithSkin(p, FourCC("opeo"), 1744.9, 1185.8, 248.620, FourCC("opeo"))
    life = GetUnitState(u, UNIT_STATE_LIFE)
    SetUnitState(u, UNIT_STATE_LIFE, 0.75 * life)
    u = BlzCreateUnitWithSkin(p, FourCC("opeo"), 1841.6, 1040.4, 155.563, FourCC("opeo"))
    u = BlzCreateUnitWithSkin(p, FourCC("opeo"), 1768.4, 973.4, 106.175, FourCC("opeo"))
    u = BlzCreateUnitWithSkin(p, FourCC("opeo"), 1646.0, 991.9, 50.304, FourCC("opeo"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), 2942.8, 3819.1, 357.935, FourCC("e002"))
    SetUnitColor(u, ConvertPlayerColor(4))
end

function CreateUnitsForPlayer1()
    local p = Player(1)
    local u
    local unitID
    local t
    local life
    gg_unit_ndqs_0026 = BlzCreateUnitWithSkin(p, FourCC("ndqs"), 2497.5, 2760.4, 252.871, FourCC("ndqs"))
end

function CreateBuildingsForPlayer5()
    local p = Player(5)
    local u
    local unitID
    local t
    local life
    gg_unit_hgtw_0018 = BlzCreateUnitWithSkin(p, FourCC("hgtw"), 1728.0, -3136.0, 270.000, FourCC("hgtw"))
    life = GetUnitState(gg_unit_hgtw_0018, UNIT_STATE_LIFE)
    SetUnitState(gg_unit_hgtw_0018, UNIT_STATE_LIFE, 0.01 * life)
    gg_unit_hctw_0019 = BlzCreateUnitWithSkin(p, FourCC("hctw"), -2496.0, 1536.0, 270.000, FourCC("hctw"))
    life = GetUnitState(gg_unit_hctw_0019, UNIT_STATE_LIFE)
    SetUnitState(gg_unit_hctw_0019, UNIT_STATE_LIFE, 0.01 * life)
    gg_unit_hatw_0020 = BlzCreateUnitWithSkin(p, FourCC("hatw"), -1728.0, -1664.0, 270.000, FourCC("hatw"))
    life = GetUnitState(gg_unit_hatw_0020, UNIT_STATE_LIFE)
    SetUnitState(gg_unit_hatw_0020, UNIT_STATE_LIFE, 0.01 * life)
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), -1024.0, 2752.0, 270.000, FourCC("hwtw"))
    life = GetUnitState(u, UNIT_STATE_LIFE)
    SetUnitState(u, UNIT_STATE_LIFE, 0.01 * life)
end

function CreateUnitsForPlayer5()
    local p = Player(5)
    local u
    local unitID
    local t
    local life
    gg_unit_nogm_0000 = BlzCreateUnitWithSkin(p, FourCC("nogm"), -1214.4, -542.0, 334.937, FourCC("nogm"))
end

function CreateNeutralPassiveBuildings()
    local p = Player(PLAYER_NEUTRAL_PASSIVE)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), 2560.0, 4288.0, 270.000, FourCC("h001"))
    SetUnitColor(u, ConvertPlayerColor(0))
    u = BlzCreateUnitWithSkin(p, FourCC("h003"), 4544.0, 4288.0, 170.000, FourCC("h003"))
    SetUnitColor(u, ConvertPlayerColor(0))
    u = BlzCreateUnitWithSkin(p, FourCC("h002"), 3919.5, 4907.7, 305.000, FourCC("h002"))
    SetUnitColor(u, ConvertPlayerColor(0))
    u = BlzCreateUnitWithSkin(p, FourCC("h000"), 3200.0, 3840.0, 270.000, FourCC("h000"))
    SetUnitColor(u, ConvertPlayerColor(0))
end

function CreateNeutralPassive()
    local p = Player(PLAYER_NEUTRAL_PASSIVE)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("nvl2"), -3895.2, 1659.2, 230.490, FourCC("nvl2"))
    u = BlzCreateUnitWithSkin(p, FourCC("ncrb"), -4347.5, 3968.6, 252.012, FourCC("ncrb"))
    u = BlzCreateUnitWithSkin(p, FourCC("nhmc"), -3849.6, 2722.5, 47.759, FourCC("nhmc"))
    u = BlzCreateUnitWithSkin(p, FourCC("ncrb"), -1978.1, -2310.9, 351.397, FourCC("ncrb"))
    u = BlzCreateUnitWithSkin(p, FourCC("nhmc"), 5219.0, -3601.9, 292.729, FourCC("nhmc"))
    u = BlzCreateUnitWithSkin(p, FourCC("hrdh"), 388.5, -2021.5, 45.670, FourCC("hrdh"))
    u = BlzCreateUnitWithSkin(p, FourCC("o000"), -2880.4, -1803.2, 61.790, FourCC("o000"))
    SetUnitColor(u, ConvertPlayerColor(4))
    u = BlzCreateUnitWithSkin(p, FourCC("ncrb"), -4391.5, 1430.8, 29.203, FourCC("ncrb"))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), 694.4, -3482.2, 269.628, FourCC("e001"))
    SetUnitColor(u, ConvertPlayerColor(4))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -983.0, 2388.4, 260.326, FourCC("e001"))
    SetUnitColor(u, ConvertPlayerColor(4))
    u = BlzCreateUnitWithSkin(p, FourCC("e001"), -128.3, -3574.7, 302.779, FourCC("e001"))
    SetUnitColor(u, ConvertPlayerColor(4))
end

function CreatePlayerBuildings()
    CreateBuildingsForPlayer5()
end

function CreatePlayerUnits()
    CreateUnitsForPlayer0()
    CreateUnitsForPlayer1()
    CreateUnitsForPlayer5()
end

function CreateAllUnits()
    CreateNeutralPassiveBuildings()
    CreatePlayerBuildings()
    CreateNeutralPassive()
    CreatePlayerUnits()
end

function CreateRegions()
    local we
    gg_rct_REG_Red_Fog = Rect(2304.0, 3808.0, 4800.0, 5056.0)
    we = AddWeatherEffect(gg_rct_REG_Red_Fog, FourCC("FDrh"))
    EnableWeatherEffect(we, true)
    gg_rct_REG_Rain_Light = Rect(-5696.0, 2688.0, -2432.0, 5984.0)
    we = AddWeatherEffect(gg_rct_REG_Rain_Light, FourCC("RLlr"))
    EnableWeatherEffect(we, true)
    gg_rct_REG_Lights1 = Rect(-1856.0, 4128.0, -1536.0, 4288.0)
    we = AddWeatherEffect(gg_rct_REG_Lights1, FourCC("LRaa"))
    EnableWeatherEffect(we, true)
    gg_rct_REG_Lights2 = Rect(3360.0, -1056.0, 3584.0, -896.0)
    we = AddWeatherEffect(gg_rct_REG_Lights2, FourCC("LRaa"))
    EnableWeatherEffect(we, true)
    gg_rct_NewCamp = Rect(-3520.0, 3616.0, -3008.0, 4128.0)
    gg_rct_Brod = Rect(-4416.0, 2496.0, -3680.0, 2784.0)
    gg_rct_FirstAttack = Rect(-2112.0, 2912.0, -1760.0, 3296.0)
    gg_rct________________007 = Rect(-2720.0, 3104.0, -2560.0, 3232.0)
    gg_rct________________007_____________________u = Rect(-2368.0, 2688.0, -2208.0, 2816.0)
    gg_rct________________009 = Rect(-1056.0, 2304.0, -896.0, 2464.0)
    gg_rct________________010 = Rect(-1440.0, -960.0, -640.0, -128.0)
    gg_rct________________011 = Rect(-1344.0, -640.0, -1088.0, -384.0)
    gg_rct_OgreDefPlace = Rect(352.0, -1440.0, 608.0, -1184.0)
    gg_rct________________013 = Rect(-5632.0, 896.0, -5344.0, 1312.0)
    gg_rct_EndPoint = Rect(2368.0, 2560.0, 2848.0, 3136.0)
    gg_rct________________015 = Rect(-4928.0, -5024.0, -4608.0, -4768.0)
    gg_rct________________016 = Rect(1920.0, -5056.0, 2240.0, -4832.0)
    gg_rct_HealEpmty = Rect(640.0, -3648.0, 832.0, -3456.0)
    gg_rct_HealFinder = Rect(-224.0, -3712.0, 0.0, -3552.0)
    gg_rct_FireTower = Rect(1408.0, -3392.0, 2048.0, -2880.0)
    gg_rct_FireTower2 = Rect(-2016.0, -1920.0, -1376.0, -1408.0)
    gg_rct_FireTower3 = Rect(-2848.0, 1248.0, -2208.0, 1760.0)
end

--CUSTOM_CODE
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 31.07.2021 15:16
---
do
    local InitGlobalsOrigin = InitGlobals
    function InitGlobals()
        InitGlobalsOrigin()
        TimerStart(CreateTimer(), 0.1, false, function()
            CreateActions1234()
        end)
    end
end
function CreateActions1234()
    -----------------------------------------------------------------1
    local TrigPress1 = CreateTrigger()
    for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
        BlzTriggerRegisterPlayerKeyEvent(TrigPress1, Player(i), OSKEY_1, 0, true)
    end
    TriggerAddAction(TrigPress1, function()
        SelectedAllPeon()
    end)

end
----- ВСПОМОГАТЕЛЬНЫЕ ФУНКЦИИ
onForces = {}
TIMER_PERIOD64=1/64
function UnitAddForceSimple(hero, angle, speed, distance, flag, pushing)
    -- псевдо вектор использовать только для юнитов
    local currentdistance = 0
    if onForces[GetHandleId(hero)] == nil then
        onForces[GetHandleId(hero)] = true
        --print("первый раз")
    end
    if not IsUnitType(hero, UNIT_TYPE_STRUCTURE) and GetUnitTypeId(hero) ~= FourCC("nglm") and not IsUnitType(hero, UNIT_TYPE_FLYING) and (onForces[GetHandleId(hero)] or flag == "ignore") and GetUnitAbilityLevel(hero, FourCC("Beng")) == 0 then
        onForces[GetHandleId(hero)] = false
        local m = 0
        --print("1")
        local tempDamageGroup = CreateGroup()
        local damageOnWall = false
        local effDash = nil
        local ignoreDest = false
        if flag == "ignore" or flag == "shieldDash" then
            local data = HERO[GetPlayerId(GetOwningPlayer(hero))]
            if data.DashDamageON or flag == "shieldDash" then
                local effDashModel = "Hive\\Valiant Charge\\Valiant Charge Fel\\Valiant Charge Fel"
                effDash = AddSpecialEffectTarget(effDashModel, hero, "origin")
                ignoreDest = data.IgnoreDest -- проходимость свкозь бордюры
            end
        end

        if true and IsUnitType(hero, UNIT_TYPE_HERO) then
            --повышение отзывчивости
            local x, y = GetUnitX(hero), GetUnitY(hero)
            local newX, newY = MoveX(x, speed, angle), MoveY(y, speed, angle)
            SetUnitPositionSmooth(hero, newX, newY)
        end

        TimerStart(CreateTimer(), TIMER_PERIOD64, true, function()
            currentdistance = currentdistance + speed
            --print(currentdistance)
            local x, y = GetUnitX(hero), GetUnitY(hero)
            local newX, newY = MoveX(x, speed, angle), MoveY(y, speed, angle)
            local makeJump = false
            if IsUnitType(hero, UNIT_TYPE_HERO) then
                if GetUnitData(hero).QHighJump then
                    makeJump = true
                end
            end

            if (flag == "ignore" and GetUnitData(hero).IframesOnDash) or makeJump then
                -- print("попытка")
                local is, d = PointContentDestructable(newX, newY, 120, false)
                if is then
                    -- print("есть какой-то декор")
                end
                if GetDestructableTypeId(d) == FourCC("B00A") then
                    SetUnitX(hero, newX)
                    SetUnitY(hero, newY)
                    --print("пройти на сквозь")
                else
                    SetUnitPositionSmooth(hero, newX, newY)
                end
            else
                SetUnitPositionSmooth(hero, newX, newY) -- момент толкания для любого персонажа
            end

            if GetUnitTypeId(hero) ~= HeroID and GetUnitTypeId(pushing) == HeroID then
                local PerepadZ = GetTerrainZ(MoveXY(x, y, 120, angle)) - GetTerrainZ(x, y)
                --print(PerepadZ)
                if (PointContentDestructable(newX, newY, 120, false) or PerepadZ > 20) and not damageOnWall then
                    local data = HERO[GetPlayerId(GetOwningPlayer(pushing))]
                    local bonus = 0
                    if not data.WallHitCount then
                        data.WallHitCount = 0
                    end
                    if data.WallHitCount <= 2 then
                        FlyTextTagShieldXY(x, y, L("Удар о стену", "Wall hit"), GetOwningPlayer(pushing))
                        PlayerSeeNoiseInRangeTimed(0.2, x, y)

                    else
                        FlyTextTagShieldXY(x, y, L("Зажат в угол", "Trapped in corner"), GetOwningPlayer(pushing), "red")
                        bonus = 1000
                        PlayerSeeNoiseInRangeTimed(0.5, x, y)
                    end
                    data.WallHitCount = data.WallHitCount + 1
                    TimerStart(CreateTimer(), 3, false, function()
                        data.WallHitCount = data.WallHitCount - 1
                        DestroyTimer(GetExpiredTimer())
                    end)
                    --print(data.WallHitCount)


                    local damage = 100 + bonus
                    if not data.WallDamage then
                        data.WallDamage = 0
                    end
                    damage = damage + data.WallDamage
                    UnitDamageTarget(pushing, hero, damage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
                    --print("удар о декор или стенку")
                    damageOnWall = true
                end
            end
            if flag == "lizard" then
                UnitDamageArea(hero, 50, GetUnitX(hero), GetUnitY(hero), 120, "ForceTotem")
            end
            if flag == "shieldDash" then
                GetUnitData(hero).ShieldDashReflect = true
                if UnitDamageArea(hero, GetUnitData(hero).DamageInShieldPerDash, GetUnitX(hero), GetUnitY(hero), 120, "ForceTotem") then
                    normal_sound("Sound\\Units\\Combat\\MetalMediumBashStone" .. GetRandomInt(1, 3), GetUnitXY(hero))
                end
            end
            if flag == "RunSkeleton" then
                UnitDamageArea(hero, 1, GetUnitX(hero), GetUnitY(hero), 120)
            end
            if flag == "ignore" then
                local data = HERO[GetPlayerId(GetOwningPlayer(hero))]
                --print("попытка нанести урон в рывке")

                if data.DashDamageON then
                    UnitDamageArea(hero, data.DashDamageON, newX, newY, 80)
                    --print("урон рывком")
                end
                ----------------------------Лечим союзника в рывке

                if data.HealDashAllyCDFH then
                    if not data.HealDashAllyCurrentCD then
                        data.HealDashAllyCurrentCD = 1
                    end
                    if data.HealDashAllyCurrentCD <= 0 then
                        local ally = FindAnyAllyUnit(data, 200)
                        if ally then
                            --есть кого полечить
                            --Abilities\Spells\Human\HolyBolt\HolyBoltSpecialArt.mdl
                            local effHeal = AddSpecialEffect("Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl", GetUnitXY(hero))
                            BlzSetSpecialEffectYaw(effHeal, math.rad(angle))
                            BlzSetSpecialEffectPitch(effHeal, math.rad(-90))
                            DestroyEffect(effHeal)
                            local talon = GlobalTalons[data.pid]["ShadowHunter"][1]
                            local cd = talon.DS[talon.level]
                            StartFrameCD(cd, data.HealDashAllyCDFH)
                            data.HealDashAllyCurrentCD = cd
                            HealUnit(ally, 100)
                            TimerStart(CreateTimer(), cd, false, function()
                                data.HealDashAllyCurrentCD = 0
                                DestroyTimer(GetExpiredTimer())
                            end)
                        end
                    end
                end
                -----------------------------
                if data.AttackInForce then
                    local range = 300
                    local is, du = UnitDamageArea(hero, 0, newX, newY, 200)
                    if is then
                        if data.TaurenDash then
                            range = 400
                            --data.BaseDashDamage=data.BaseDashDamage*2
                        end
                        if not IsUnitInGroup(du, tempDamageGroup) then
                            GroupAddUnit(tempDamageGroup, du)
                            if UnitDamageArea(hero, data.BaseDashDamage, newX, newY, range, "longForce") then
                                normal_sound("Sound\\Units\\Combat\\MetalMediumBashStone" .. GetRandomInt(1, 3), GetUnitXY(hero))
                                --  print("нанесение урона во время рывка")
                            end
                        else
                            --   print("повторное нанесение урона ни к ечму не привело")
                        end
                    end
                end

            end

            if flag == "dust" then
                DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\ImpaleTargetDust\\ImpaleTargetDust.mdl", newX, newY))
            end

            if currentdistance >= distance then
                --закончил движение
                --or (data.OnWater and data.OnTorrent==false)
                --data.IsDisabled=false
                --data.OnWater=false
                if flag == "shieldDash" then
                    local data = GetUnitData(hero)
                    data.ShieldDashReflect = false
                end
                if effDash then
                    DestroyEffect(effDash)
                end
                if flag == "RunSkeleton" then
                    BlzPauseUnitEx(hero, false)
                    SetUnitTimeScale(hero, 1)
                    if UnitAlive(hero) then
                        ResetUnitAnimation(hero)
                    end
                end
                if flag == "ignore" then
                    --print("перезарядка атаки в рывке")
                    --HERO[GetPlayerId(GetOwningPlayer(hero))].AttackInForce=false --
                    local data = HERO[GetPlayerId(GetOwningPlayer(hero))]

                    if data.IsMoving then
                        --print("закончил рывок")

                        if UnitAlive(data.UnitHero) then
                            if data.BowReady then
                                -- data.CurrentWeaponType ~= "bow" then
                                --SetUnitAnimationByIndex(data.UnitHero, IndexAnimationWalk)
                            else
                                SetUnitAnimationByIndex(data.UnitHero, IndexAnimationWalk)
                            end
                        end
                    end
                    data.ResetSeriesTime = 0
                    if data.IllusionDashCDFH then
                        if not data.IllusionDashCurrentCD then
                            data.IllusionDashCurrentCD = 1
                        end
                        if data.IllusionDashCurrentCD <= 0 then
                            local talon = GlobalTalons[data.pid]["HeroBlademaster"][4]
                            local cd = 10
                            data.IllusionDashCurrentCD = cd
                            StartFrameCD(cd, data.IllusionDashCDFH)
                            local damage = talon.DS[talon.level]
                            UnitDamageArea(hero, damage, newX, newY, 150)
                            UnitAddForceSimple(hero, angle - 180, 25, 200, "ignore")
                            TimerStart(CreateTimer(), cd, false, function()
                                data.IllusionDashCurrentCD = 0
                                DestroyTimer(GetExpiredTimer())
                            end)
                        end
                    end

                    data.ReleaseQ = false
                end
                if flag == "forceAttack" then
                    BlzPauseUnitEx(hero, false)
                    SetUnitTimeScale(hero, 1)
                    UnitDamageArea(hero, 50, newX, newY, 150)
                    DestroyEffect(AddSpecialEffect("SystemGeneric\\ThunderclapCasterClassic", newX, newY))
                end
                if flag == "qjump" then
                    local data = HERO[GetPlayerId(GetOwningPlayer(hero))]
                    if data.CurrentWeaponType == "shield" then
                        SetUnitTimeScale(data.UnitHero, 1)
                    end
                    SpellSlashQ(data)
                    --print("преземление с щитом")
                    if data.DoubleClap then
                        TimerStart(CreateTimer(), 0.35, false, function()
                            SpellSlashQ(data)
                            DestroyTimer(GetExpiredTimer())
                        end)
                    end
                    data.ReleaseQ = false
                end
                DestroyGroup(tempDamageGroup)
                DestroyTimer(GetExpiredTimer())
                onForces[GetHandleId(hero)] = true
                --print("stop cur="..currentdistance.." dist="..distance)
            end
        end)
    end
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 02.08.2021 11:10
---
function AddQuest(compas, hero, qx, qy, questendunit)
    local x, y = GetUnitX(hero), GetUnitY(hero)
    local model = "AneuCaster"
    local player = GetOwningPlayer(hero)
    local data = HERO[GetPlayerId(player)]

    if GetLocalPlayer() ~= player then
        model = ""
    else
        --print("звук созданного квеста")
        StartSound(bj_questSecretSound)
    end
    local QuestPointer = AddSpecialEffect(model, x, y)
    BlzSetSpecialEffectPitch(QuestPointer, math.rad(-90))--/bj_DEGTORAD

    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
        local z = GetUnitZ(hero)
        local xc, yc = GetUnitX(hero), GetUnitY(hero)
        local Angle = AngleBetweenXY(xc, yc, qx, qy)
        local nx,ny=MoveXY(xc,yc,130,Angle / bj_DEGTORAD)
        BlzSetSpecialEffectPosition(QuestPointer, nx,ny, z + 50)
        BlzSetSpecialEffectYaw(QuestPointer, Angle)

        if IsUnitInRangeXY(hero, qx, qy, 300) then
            DestroyTimer(GetExpiredTimer())
            DestroyEffect(QuestPointer)
            data.Compass = nil
        end
    end)

end

--AddQuest(true,GetTriggerUnit(),GetRectCenterX(gg_rct_OgreDefPlace),GetRectCenterY(gg_rct_OgreDefPlace))

function SelectedAllPeon()
    local e = nil
    GroupEnumUnitsInRect(perebor, bj_mapInitialPlayableArea, nil)
    while true do
        e = FirstOfGroup(perebor)

        if e == nil then
            break
        end
        if UnitAlive(e) and GetUnitTypeId(e) == FourCC("opeo") then
            SelectUnitAddForPlayer(e,Player(0))
            local x,y=GetUnitXY(e)
            PanCameraToTimed(x,y,1)
        end
        GroupRemoveUnit(perebor, e)
    end
end
function FindUnitOfType(id,flag,x,y)
	--flag nil - вся карта
	--flag any - радиус
	local unit=nil
	local e=nil
	local k=0
	--print("ищем")
	local rg={}
	if not flag then
		GroupEnumUnitsInRect(perebor,bj_mapInitialPlayableArea,nil)
		while true do
			e = FirstOfGroup(perebor)

			if e == nil then break end
			if UnitAlive(e) and GetUnitTypeId(e)==id then
				k=k+1
				rg[k]=e
				unit=e
			end
			GroupRemoveUnit(perebor,e)
		end
	else
			GroupEnumUnitsInRange(perebor,x,y,flag,nil)
			while true do
				e = FirstOfGroup(perebor)

				if e == nil then break end
				if UnitAlive(e) and GetUnitTypeId(e)==id then
					k=k+1
					rg[k]=e
					unit=e
				end
				GroupRemoveUnit(perebor,e)
			end
	end


	if k>1 then
	--	print("Ошибка получено "..k.." юнитов")
	end
	if k>2 then
		unit=rg[GetRandomInt(1,#rg)]
	end
	if unit==nil then
	--	print("Не найдено живых юнитов данного типа")
	end
	return unit,k,rg
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 21.02.2021 15:15
---

AllAbilityFrames = {
    -- ReadyToReload={}
}
AbilityIconPath = {
    "ReplaceableTextures\\CommandButtons\\BTNGatherGold", --кирка
    "ReplaceableTextures\\CommandButtons\\BTNStormBolt", -- молоток
    "ReplaceableTextures\\CommandButtons\\BTNEvasion", --рывок
    "ReplaceableTextures\\CommandButtons\\BTNThunderclap", --Q
    "ReplaceableTextures\\CommandButtons\\BTNWhirlwind", -- стальной вихрь
}

DisabledIconPath = {
    "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNGatherGold", --кирка
    "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNStormBolt", -- молоток
    "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNEvasion", --рывок
    "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNThunderclap", --Q
    "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNWhirlwind", -- стальной вихрь
}

function GetPassiveIco(s)
    return string.gsub(s, "CommandButtons\\BTN", "CommandButtonsDisabled\\DISBTN")
end

function CreateBaseFrames(x, y)

    for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
        if PlayerIsPlaying[i] then
            local step = 0.03
            local data = HERO[i]
            -- AllAbilityFrames[i]={
            --     ReadyToReload={},
            --    ClickTrig={}}
            if data.CurrentWeaponType == "pickaxe" then
                -- CreateUniversalFrame(x, y, step, AbilityDescriptionRus[1], L("Обычный удар", "Normal strike"), data, AbilityIconPath[1], nil, "SystemGeneric\\DDSSymbols\\lmb", "attackNormal")
                --CreateUniversalFrame(x, y, step, AbilityDescriptionRus[5], L("Вращение", "Spin"), data, AbilityIconPath[5], nil, "SystemGeneric\\DDSSymbols\\lmb", "spin")
            end
            if data.CurrentWeaponType == "shield" then
                --CreateUniversalFrame(x, y, step, AbilityDescriptionRus[7], L("Удар щитом", "Shield strike"), data, "ReplaceableTextures\\CommandButtons\\BTNThoriumArmor.blp", nil, "SystemGeneric\\DDSSymbols\\lmb", "attackNormalShield")
                --CreateUniversalFrame(x, y, step, AbilityDescriptionRus[6], L("Разбег", "Scatter"), data, "ReplaceableTextures\\CommandButtons\\BTNFragmentationBombs.blp", nil, "SystemGeneric\\DDSSymbols\\lmb", "shieldDash")
            end
            if data.CurrentWeaponType == "" then
                -- print("Ещё не выбрано оружие ")
            end
            CreateUniversalFrame(x, y, step, AbilityDescriptionRus[2], L("Бросок кирки", "Throwing a pickaxe"), data, AbilityIconPath[2], nil, "SystemGeneric\\DDSSymbols\\rmb", "throw")
            CreateUniversalFrame(x, y, step, AbilityDescriptionRus[3], L("Рывок", "Dash"), data, AbilityIconPath[3], nil, "SystemGeneric\\DDSSymbols\\space", "dash")
            CreateUniversalFrame(x, y, step, AbilityDescriptionRus[4], L("Мощный удар", "Powerful blow"), data, AbilityIconPath[4], nil, "SystemGeneric\\DDSSymbols\\q", "splash")
            --CreateUniversalFrame(x,y,step,"Призывает волков",data,"ReplaceableTextures\\CommandButtons\\BTNBerserkForTrolls","ReplaceableTextures\\CommandButtonsDisabled\\DISBTNBerserkForTrolls",1)
            --CreateUniversalFrame(x+step,y,step,"Призывает Bergi",Player(i),"ReplaceableTextures\\CommandButtons\\BTNAncestralSpirit.blp","ReplaceableTextures\\CommandButtonsDisabled\\DISBTNAncestralSpirit.blp",2)
            --CreateUniversalFrame(x+step+step,y,step,"Фаталит Карту",Player(i),"ReplaceableTextures\\PassiveButtons\\PASBTNBerserk","ReplaceableTextures\\CommandButtonsDisabled\\DISBTNBerserk",3)
            --CreateUniversalFrame(x+step+step+step,y,step,"Активирет ульту и много всего делает и тут очень длинный текст",Player(i),"ReplaceableTextures\\CommandButtons\\BTNBloodLustOn","ReplaceableTextures\\CommandButtonsDisabled\\DISBTNBloodLustOn",4)
        end
    end
end

function CreateUniversalFrame(x, y, size, toolTipTex, toolTipHeader, data, activeTexture, passiveTexture, hotkeyTexture, flag)
    if not BlzLoadTOCFile("SystemGeneric\\Main.toc") then
        print("ошибка загрузки " .. "SystemGeneric\\Main.toc")
    end
    if not flag then
        flag = "пустышка"
    end

    --print("создан универсальный фрейм "..flag.." для "..GetPlayerName(Player(data.pid)))
    if not hotkeyTexture then
        hotkeyTexture = "SystemGeneric\\DDSSymbols\\empty"
    end
    if not passiveTexture or passiveTexture == "" then
        passiveTexture = GetPassiveIco(activeTexture)
    end
    local visionPlayer = Player(0)

    local face = BlzCreateFrameByType('GLUEBUTTON', 'FaceButton', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 'ScoreScreenTabButtonTemplate', 0)
    local buttonIconFrame = BlzCreateSimpleFrame("MyBar", face, 0) -- фрейм перезарядки
    local cdtext = BlzGetFrameByName("MyBarText", 0)
    local cdICO = BlzGetFrameByName("MyBarBackground", 0)
    local hotkey = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', face, '', 0)
    if not data.countFrame then
        data.countFrame = 0
    end
    local k = data.countFrame

    if flag == "peon" then
        local PeonCountFH = MakeFrameCharged(face, 5)
        TimerStart(CreateTimer(), 0.1, true, function()
            local _,peonCount=GetRandomPeon()
            BlzFrameSetText(PeonCountFH,peonCount)
        end)
    end

    if flag == "empath" then
        data.EmpathCDFH = buttonIconFrame
        local cd=30
        EmpathPeons(GetRandomPeon())
        StartFrameCD(cd, data.EmpathCDFH)
        TimerStart(CreateTimer(), cd, true, function()
            StartFrameCD(cd, data.EmpathCDFH)
            EmpathPeons(GetRandomPeon())
        end)
    end
     if flag == "heal" then
        data.HealCDFH = buttonIconFrame
        local cd=30
        local _,_,peons=GetRandomPeon()
        HealUnit(GetUnitMinHpFromTable(peons))
        StartFrameCD(cd, data.HealCDFH)
        TimerStart(CreateTimer(), cd, true, function()
            StartFrameCD(cd, data.HealCDFH)
            _,_,peons=GetRandomPeon()
            HealUnit(GetUnitMinHpFromTable(peons))
        end)
    end

    if flag == "spin" then
        data.SpinChargesFH = MakeFrameCharged(face, data.SpinCharges)
    end
    if flag == "goldKing" then
        data.GoldKingFH = MakeFrameCharged(face, 0)
        --print("запускаем обновление зарядов")
        TimerStart(CreateTimer(), 1, true, function()
            data.GoldKingCharges = data.gold // (100 / data.GoldKingBonus)
            --print(data.GoldKingBonus*100)
            if data.GoldKingCharges > data.GoldKingBonus * 100 then
                data.GoldKingCharges = data.GoldKingBonus * 100
            end
            BlzFrameSetText(data.GoldKingFH, R2I(data.GoldKingCharges))
        end)
    end
    if flag == "OverChargeThrow" then
        --data.OverChargeThrow=100
        data.OverChargeThrowFH = MakeFrameCharged(face, data.OverChargeThrow)
        BlzFrameSetText(data.OverChargeThrowFH, R2I(data.OverChargeThrow))
    end

    if flag == "throw" then
        data.ThrowChargesFH = MakeFrameCharged(face, data.ThrowCharges)
        data.ThrowChargesCDFH = buttonIconFrame
    end
    if flag == "splash" then
        data.cdFrameHandleQ = buttonIconFrame
    end

    if flag == "dash" then
        data.DashChargesFH = MakeFrameCharged(face, data.DashCharges)
        data.DashChargesCDFH = buttonIconFrame
    end

    if flag == "chargeAttackLight" then
        data.chargeAttackLightChargesMAX = 4
        data.chargeAttackLightCharges = 1
        data.chargeAttackLightFH = MakeFrameCharged(face, data.chargeAttackLightCharges)
        --data.chargeAttackLightCDFH=buttonIconFrame
    end
    if flag == "rebound" then
        data.ReboundCDFH = buttonIconFrame
    end
    if flag == "callTrall" then
        local talon = GlobalTalons[data.pid]["Trall"][5]
        data.CallTrallCharges = talon.DS[1]
        --data.CallTrallChargesMAX=talon.ds[1]
        data.CallTrallFH = MakeFrameCharged(face, data.CallTrallCharges)
        --data.CallTrallCDFH=buttonIconFrame
        data.CallTrallReady = true
        TimerStart(CreateTimer(), 2, true, function()
            -- РЕгенерация ульты
            if data.CallTrallCharges < talon.DS[talon.level] then
                data.CallTrallCharges = data.CallTrallCharges + 1
                BlzFrameSetText(data.CallTrallFH, data.CallTrallCharges)
            end
        end)
    end
    if flag == "callTauren" then
        data.TotemChargesFH = MakeFrameCharged(face, data.TotemChargesMax)
        data.TotemCharges = data.TotemChargesMax
        local talon = GlobalTalons[data.pid]["HeroTaurenChieftain"][7]
        TimerStart(CreateTimer(), 2, true, function()
            -- Регенерация ульты
            if data.TotemCharges < talon.DS[talon.level] then
                data.TotemCharges = data.TotemCharges + 1
                BlzFrameSetText(data.TotemChargesFH, data.TotemCharges)
            end
        end)
    end

    if flag == "healDash" then
        data.HealDashCDFH = buttonIconFrame
    end
    if flag == "invulPreDeath" then
        data.InvulPreDeathCDFH = buttonIconFrame
    end

    if flag == "wolfSummon" then
        -- data.wolfSummonCDFH=buttonIconFrame
        data.SpiritWolf = nil
        local sec = 0
        local talon = GlobalTalons[data.pid]["Trall"][3]
        TimerStart(CreateTimer(), 1, true, function()
            local cdSec = talon.DS[talon.level]
            local effmodel = "Abilities\\Spells\\NightElf\\Blink\\BlinkCaster"
            sec = sec - 1
            if not data.SpiritWolf and UnitAlive(data.UnitHero) and sec < 0 then
                StartFrameCD(cdSec, buttonIconFrame)
                sec = cdSec
                data.SpiritWolf = CreateUnit(Player(data.pid), FourCC("osw1"), GetUnitX(data.UnitHero), GetUnitY(data.UnitHero), GetUnitFacing(data.UnitHero))
                AddMaxLife(data.SpiritWolf, data.HPForSummon)
                DestroyEffect(AddSpecialEffect(effmodel, GetUnitXY(data.SpiritWolf)))
                BlzSetUnitMaxHP(data.SpiritWolf, 1000 * talon.level)
                HealUnit(data.SpiritWolf, 3000)
                BlzSetUnitBaseDamage(data.SpiritWolf, 50 * talon.level, 0)
            end

            if data.SpiritWolf then
                if UnitAlive(data.SpiritWolf) then
                    local xh, yh = GetUnitXY(data.UnitHero)
                    local dist = DistanceBetweenXY(GetUnitX(data.SpiritWolf), GetUnitY(data.SpiritWolf), xh, yh)
                    if dist > 600 then
                        DestroyEffect(AddSpecialEffect(effmodel, GetUnitXY(data.SpiritWolf)))
                        DestroyEffect(AddSpecialEffect(effmodel, xh, yh))
                        local r = GetRandomInt(-50, 50)
                        SetUnitPosition(data.SpiritWolf, xh + r, yh + r)
                    else
                        if GetUnitCurrentOrder(data.SpiritWolf) ~= String2OrderIdBJ("attack") then
                            local rx, ry = xh + GetRandomInt(-500, 500), yh + GetRandomInt(-500, 500)
                            IssuePointOrder(data.SpiritWolf, "attack", rx, ry)
                        end
                    end
                else
                    data.SpiritWolf = nil
                end
            end
        end)
    end
    if flag == "WindWalk" then
        data.WindWalkCDFH = buttonIconFrame
    end
    if flag == "CriticalStrike" then
        data.CriticalStrikeCDFH = buttonIconFrame
    end
    if flag == "IllusionDash" then
        data.IllusionDashCDFH = buttonIconFrame

    end

    -------------------------------------------------------------------
    --------------------------------------------------------------------
    BlzFrameSetAbsPoint(face, FRAMEPOINT_CENTER, x + k * size, y) -- +(data.pid*size) проверка мультиплеера
    BlzFrameSetSize(face, size, size)
    BlzFrameSetAllPoints(buttonIconFrame, face)
    BlzFrameSetValue(buttonIconFrame, 100) -- начальная перезарядка
    BlzFrameSetText(cdtext, "")
    BlzFrameSetTexture(cdICO, passiveTexture, 0, true)
    BlzFrameSetTexture(buttonIconFrame, activeTexture, 0, true)
    BlzFrameSetSize(buttonIconFrame, size, size)

    BlzFrameSetTexture(hotkey, hotkeyTexture, 0, true)
    BlzFrameSetPoint(hotkey, FRAMEPOINT_CENTER, face, FRAMEPOINT_CENTER, 0.0, 0.02)
    BlzFrameSetSize(hotkey, size, size / 3)
    --BlzFrameSetParent(face, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    --BlzFrameSetParent(buttonIconFrame, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    --BlzFrameSetParent(cdtext, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    --BlzFrameSetParent(cdICO, BlzGetFrameByName("ConsoleUIBackdrop", 0))

    --- Устанавливаем видимость, каждый игрок видит свой набор фреймов и свои кулдауны
    --BlzFrameSetVisible(face,false)
    BlzFrameSetVisible(face, GetLocalPlayer() == visionPlayer)
    BlzFrameSetVisible(buttonIconFrame, GetLocalPlayer() == visionPlayer)
    --- tooltip
    local tooltip, backdrop, text = CreateToolTipBoxSize(x + k * size, y + size * 2, size * 5, size * 3, toolTipTex, toolTipHeader)
    --data.FrameToDestroy[k] = { face, buttonIconFrame, cdtext, cdICO, hotkey, tooltip, backdrop, text }
    ---------------------------------------------------
    ----------------ДИНАМИЧЕСКИЕ ОПИСАНИЯ--------------
    ---------------------------------------------------
    if flag == "attackNormalShield" then
        data.DamageInShieldPerAttack = 100
        local nativeTextString = BlzFrameGetText(text)
        TimerStart(CreateTimer(), 2, true, function()
            BlzFrameSetText(text, nativeTextString .. L("\nНаносит: ", "\nDealing: ") .. ColorText2(R2I(data.DamageInShieldPerAttack)) .. L(" ед. урона", " damage"))
        end)
    end
    if flag == "shieldDash" then
        data.DamageInShieldPerDash = 50
        local nativeTextString = BlzFrameGetText(text)
        TimerStart(CreateTimer(), 2, true, function()
            BlzFrameSetText(text, nativeTextString .. L("\nНаносит: ", "\nDealing: ") .. ColorText2(R2I(data.DamageInShieldPerDash)) .. L(" ед. урона касанием и отталкивает врагов", " touch damage and repels enemies"))
        end)
    end
    if flag == "attackNormal" then
        --data.attackNormalTooltipTextFH=text
        local nativeTextString = BlzFrameGetText(text)
        TimerStart(CreateTimer(), 2, true, function()
            BlzFrameSetText(text, nativeTextString .. L("\nНаносит: ", "\nDealing: ") .. ColorText2(R2I(data.DamageInSeries[1])) .. ", " .. ColorText2(R2I(data.DamageInSeries[2])) .. ", " .. ColorText2(R2I(data.DamageInSeries[3])) .. ", " .. ColorText2(R2I(data.DamageInSeries[4])) .. ", " .. ColorText2(R2I(data.DamageInSeries[5])) .. L(" ед. урона", " damage"))
        end)
    end
    if flag == "dash" then
        --data.attackNormalTooltipTextFH=text
        local nativeTextString = BlzFrameGetText(text)
        TimerStart(CreateTimer(), 2, true, function()
            BlzFrameSetText(text, nativeTextString .. L("\nНаносит: ", "\nDealing: ") .. ColorText2(R2I(data.BaseDashDamage)) .. L(" ед. урона, если совершить атаку", " damage if you make an attack"))
        end)
    end
    if flag == "throw" then
        --data.attackNormalTooltipTextFH=text
        local nativeTextString = BlzFrameGetText(text)
        TimerStart(CreateTimer(), 2, true, function()
            BlzFrameSetText(text, nativeTextString .. L("\nНаносит: ", "\nDealing: ") .. ColorText2(R2I(data.DamageThrow)) .. L(" ед. урона", " damage"))
        end)
    end

    if flag == "splash" then
        --data.attackNormalTooltipTextFH=text
        local nativeTextString = BlzFrameGetText(text)
        TimerStart(CreateTimer(), 2, true, function()
            BlzFrameSetText(text, nativeTextString .. L("\nНаносит: ", "\nDealing: ") .. ColorText2(R2I(data.DamageSplash)) .. L(" ед. урона", " damage"))
        end)
    end

    if flag == "spin" then
        --data.attackNormalTooltipTextFH=text
        local nativeTextString = BlzFrameGetText(text)
        TimerStart(CreateTimer(), 2, true, function()
            local damage = data.SpinBaseDamage
            if data.SpinHasAddDamage then
                local talon = GlobalTalons[data.pid]["HeroBlademaster"][5]
                local m = talon.DS[talon.level]
                damage = damage * m
            end
            BlzFrameSetText(text, nativeTextString .. L("\nНаносит: ", "\nDealing: ") .. ColorText2(R2I(damage)) .. L(" ед. урона", " damage"))
        end)
    end
    --- Создаём 3 события
    local ClickTrig = CreateTrigger()
    BlzTriggerRegisterFrameEvent(ClickTrig, face, FRAMEEVENT_CONTROL_CLICK)
    TriggerAddAction(ClickTrig, function()
        --print("Нажата кнопка ")
        --StartFrameCD(TotalReload,buttonIconFrame)
        BlzFrameSetEnable(BlzGetTriggerFrame(), false)
        BlzFrameSetEnable(BlzGetTriggerFrame(), true)
        if flag == "peon" then
            SelectedAllPeon()
        end
        --StartAllFrameCD(GetTriggerPlayer())
        --StartFrameCD(5,buttonIconFrame)
    end)

    local TrigMOUSE_ENTER = CreateTrigger()
    BlzTriggerRegisterFrameEvent(TrigMOUSE_ENTER, face, FRAMEEVENT_MOUSE_ENTER)
    TriggerAddAction(TrigMOUSE_ENTER, function()
        --print("показать подсказку ")
        BlzFrameSetVisible(tooltip, true) --GetLocalPlayer() == GetTriggerPlayer()
    end)
    local TrigMOUSE_LEAVE = CreateTrigger()
    BlzTriggerRegisterFrameEvent(TrigMOUSE_LEAVE, face, FRAMEEVENT_MOUSE_LEAVE)
    TriggerAddAction(TrigMOUSE_LEAVE, function()
        --mouseOnFrame=false
        BlzFrameSetVisible(tooltip, false)
    end)

    ---Глобализация
    data.countFrame = k + 1 -- Увеличение числа талантов
    if data.countFrame >= 26 then
        print("Достигнул лимит способностей")
        data.countFrame = k - 1
    else

    end
    return text, buttonIconFrame, face
end

function CreateToolTipBoxSize(x, y, sizeX, sizeY, toolTipTex, toolTipHeader)
    --print("создан бокс ",toolTipTex)
    local tooltip = BlzCreateFrameByType("FRAME", "TestDialog", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "StandardFrameTemplate", 0)
    local backdrop = BlzCreateFrame("QuestButtonDisabledBackdropTemplate", tooltip, 0, 0)
    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", tooltip, "", 0)
    --BlzFrameSetParent(tooltip, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    --BlzFrameSetParent(backdrop, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    --BlzFrameSetParent(text, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetAbsPoint(tooltip, FRAMEPOINT_CENTER, x, y + 0.01)
    BlzFrameSetSize(tooltip, sizeX, sizeY)
    BlzFrameSetSize(backdrop, sizeX, sizeY)
    BlzFrameSetSize(text, sizeX * .85, sizeY * .7)
    BlzFrameSetPoint(backdrop, FRAMEPOINT_CENTER, tooltip, FRAMEPOINT_CENTER, 0.0, 0.0)
    BlzFrameSetAlpha(backdrop, 100)
    BlzFrameSetText(text, ColorText2(toolTipHeader .. ": \n") .. toolTipTex)
    BlzFrameSetPoint(text, FRAMEPOINT_CENTER, tooltip, FRAMEPOINT_CENTER, 0.0, 0.0)
    --BlzFrameSetVisible(tooltip, false)
    return tooltip, backdrop, text
end

function ColorText2(s)
    s = "|cffffcc00" .. s .. "|r"
    return s
end

function StartFrameCD(cd, fh)
    local amount = 5 / cd
    local full = 0

    TimerStart(CreateTimer(), 0.05, true, function()
        full = full + amount
        BlzFrameSetValue(fh, full)
        if full >= 100 then
            DestroyTimer(GetExpiredTimer())
            full = 0
        end
    end)
end

function StartAllFrameCD(player)
    local pid = GetPlayerId(player)
    local data = AllAbilityFrames[pid]
    for i = 1, 4 do
        --#data.ReadyToReload[i]
        StartFrameCD(TotalReload, data.ReadyToReload[i])
        DisableTrigger(data.ClickTrig[i])
        TimerStart(CreateTimer(), TotalReload, false, function()
            EnableTrigger(data.ClickTrig[i])
            DestroyTimer(GetExpiredTimer())
        end)
    end
end

function MakeFrameCharged(fh, ch)
    if not NextPoint then
        NextPoint = 0.03
    end
    local chargesBox = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', fh, '', 0)-- рамка
    BlzFrameSetTexture(chargesBox, "UI\\Widgets\\Console\\Human\\CommandButton\\human-button-lvls-overlay", 0, true)
    BlzFrameSetSize(chargesBox, NextPoint / 2, NextPoint / 3)
    BlzFrameSetPoint(chargesBox, FRAMEPOINT_BOTTOMRIGHT, fh, FRAMEPOINT_BOTTOMRIGHT, 0.001, 0.0)
    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", fh, "", 0)
    BlzFrameSetPoint(text, FRAMEPOINT_CENTER, chargesBox, FRAMEPOINT_CENTER, 0.0, 0.0)
    BlzFrameSetText(text, I2S(R2I(ch)))
    return text
end


--CreateUniversalFrame(0.02, 0.015, 0.03, "Пассивно связывает всех пеонов эмпатическими узами", "Эмпатия", HERO[0], "ReplaceableTextures\\CommandButtons\\BTNSpiritLink.blp", nil, nil, "empath")

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 15.02.2021 18:51
---
function HealUnit(hero, amount, flag, eff)
    --1 или nil Сколько вылчено
    --2 Сверхлечение

    if not amount then
        amount = 99999
    end
    if not eff then
        eff = "Abilities\\Spells\\Human\\Heal\\HealTarget"
    end

    if IsUnitType(hero, UNIT_TYPE_HERO) then
        if HERO[GetPlayerId(GetOwningPlayer(hero))] then
            local data = HERO[GetPlayerId(GetOwningPlayer(hero))]
            amount = amount * data.HealRate
        end
    end

    local p = GetOwningPlayer(hero)
    local MaxHP = BlzGetUnitMaxHP(hero)
    local CurrentHP = GetUnitState(hero, UNIT_STATE_LIFE)
    local LoosingHP = MaxHP - CurrentHP
    local OverHeal = amount - LoosingHP
    local TotalHeal = amount
    if LoosingHP <= amount then
        TotalHeal = LoosingHP
    end
    DestroyEffect(AddSpecialEffectTarget(eff, hero, "overhead"))
    SetUnitState(hero, UNIT_STATE_LIFE, CurrentHP + TotalHeal)

    if IsUnitType(hero, UNIT_TYPE_HERO) then
        if HERO[GetPlayerId(GetOwningPlayer(hero))] then
            local data = HERO[GetPlayerId(GetOwningPlayer(hero))]
            data.ShowHealSec = 0.3
            if not data.ShowHealAmount then
                data.ShowHealAmount = 0
            end
            data.ShowHealAmount = data.ShowHealAmount + TotalHeal
            if data.ShowHeal then
                data.ShowHeal = false
                TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
                    data.ShowHealSec = data.ShowHealSec - TIMER_PERIOD
                    if data.ShowHealSec <= 0 then
                        data.ShowHeal = true
                        DestroyTimer(GetExpiredTimer())
                        if TotalHeal > 1 then
                            FlyTextTagHealXY(GetUnitX(hero), GetUnitY(hero), "+" .. R2I(data.ShowHealAmount), p)
                            data.StatHealGained=data.StatHealGained+data.ShowHealAmount
                        end
                        data.ShowHealAmount = 0
                    end
                end)
            end
        end
    else
        if TotalHeal > 1 then
            FlyTextTagHealXY(GetUnitX(hero), GetUnitY(hero), "+" .. R2I(TotalHeal), p)
            local r=GetRandomInt(1,7)
            normal_sound("Sound\\gulp0"..r,GetUnitXY(hero))
        end
    end
    if not flag or flag == 1 then
        return TotalHeal
    end
    if flag == 2 then
        return OverHeal
    end
end
do
    TimerStart(CreateTimer(), .1, false, function()
        HideEverything()
        IsSystemON=true
        InitCamControl()
        InitMouseMoveTrigger()
        --MouseHider(3, 0) -- 0 для красного игрока
        --CreateUI()
        RestoreMiniPap()
        ReturnFPS()
    end)
end
function HideEverything()
   --BlzFrameSetVisible(BlzGetFrameByName("ConsoleUIBackdrop", 0), false)
    BlzFrameSetAbsPoint(BlzGetFrameByName("ConsoleUIBackdrop", 0), FRAMEPOINT_TOPRIGHT, 0, -0, 8)
    --BlzFrameSetSize(BlzGetFrameByName("CommandButton_" .. 0, 0), 0, 0)-- M в позиции 0,0
    for i = 0, 11 do
        BlzFrameSetVisible(BlzGetFrameByName("CommandButton_"..i, 0), false) --отключить
        --BlzFrameSetSize(BlzGetFrameByName("CommandButton_" .. i, 0), 0, 0)--скрыть, но работать будут по хоткеям
    end
    BlzHideOriginFrames(true)--скрыть всё
    BlzFrameSetScale(BlzFrameGetChild(BlzGetFrameByName("ConsoleUI",0),5), 0.001) --рамка мёртвой зоны отключение
end

function ShowEverything()
    BlzFrameSetVisible(BlzGetFrameByName("ConsoleUIBackdrop", 0), true)
    for i = 0, 11 do
        --BlzFrameSetVisible(BlzGetFrameByName("CommandButton_"..i, 0), false)
        BlzFrameSetSize(BlzGetFrameByName("CommandButton_" .. i, 0), 0.039, 0.039)
    end
    BlzHideOriginFrames(false)--скрыть всё
end


CamZ = {}
Step = 100 -- шаг подъёма камеры
function InitCamControl()
    local EventUp = CreateTrigger()
    for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
        CreateFogModifierRectBJ(true, Player(i), FOG_OF_WAR_VISIBLE, GetEntireMapRect())

        BlzTriggerRegisterPlayerKeyEvent(EventUp, Player(i), OSKEY_HOME, 0, true)
        CamZ[i] = GetCameraField(CAMERA_FIELD_ZOFFSET)
    end
    local EventDown = CreateTrigger()
    for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
        BlzTriggerRegisterPlayerKeyEvent(EventDown, Player(i), OSKEY_END, 0, true)
    end
    TriggerAddAction(EventUp, function()
        CamZ[GetPlayerId(GetTriggerPlayer())] = GetCameraField(CAMERA_FIELD_ZOFFSET) + Step
    end)
    TriggerAddAction(EventDown, function()
        CamZ[GetPlayerId(GetTriggerPlayer())] = GetCameraField(CAMERA_FIELD_ZOFFSET) - Step
    end)

    TimerStart(CreateTimer(), 0.02, true, function()
        for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
            if GetLocalPlayer() == Player(i) then
                SetCameraField(CAMERA_FIELD_ZOFFSET, CamZ[i], 0.1)
            end
        end
    end)
end

GetPlayerMouseX = {}
GetPlayerMouseY = {}
function InitMouseMoveTrigger()
    local MouseMoveTrigger = CreateTrigger()
    for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
        local player = Player(i)
        TriggerRegisterPlayerEvent(MouseMoveTrigger, player, EVENT_PLAYER_MOUSE_MOVE)
        GetPlayerMouseX[i] = 0
        GetPlayerMouseY[i] = 0
    end
    TriggerAddAction(MouseMoveTrigger, function()
        local id = GetPlayerId(GetTriggerPlayer())
        if BlzGetTriggerPlayerMouseX() ~= 0 then
            GetPlayerMouseX[id] = BlzGetTriggerPlayerMouseX()
            GetPlayerMouseY[id] = BlzGetTriggerPlayerMouseY()
        end
    end)
end

function MouseHider(delay, pid)
    local pointer = BlzFrameGetChild(BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 13)
    local period = 0.02
    local sec = 0
    local showPointer = true
    local preX = GetPlayerMouseX[pid]
    TimerStart(CreateTimer(), period, true, function()
        sec = sec + period
        if preX ~= GetPlayerMouseX[pid] then
            showPointer = true
            sec = 0
            CustomUIShow(showPointer)
            --print("показываем курсор")
            BlzFrameSetAlpha(pointer, 255)
        end
        if sec >= delay and showPointer and not mouseOnFrame then
            showPointer = false
            CustomUIShow(showPointer)
            BlzFrameSetAlpha(pointer, 0)
            ClearTextMessages()
            --print("Скрываем курсор")
        end
        preX = GetPlayerMouseX[pid]
    end)
end

function CreateUI()
    ui={}
    tt={}
    ui[1]=CreateSimpleFrameGlue(0.02, 0.56,"ReplaceableTextures\\CommandButtons\\BTNPurge",1)
    ui[2]=CreateSimpleFrameGlue(0.02+0.039, 0.56,"ReplaceableTextures\\CommandButtons\\BTNSpy",2)
    --ui[3]=CreateSimpleFrameGlue(0.02+0.039*2, 0.56,"ReplaceableTextures\\CommandButtons\\BTNCryptFiendUnBurrow",3)
    tt[1],tt[2],tt[3]=CreateToolTipBox()

end

function CreateSimpleFrameGlue(posX, PosY, texture, flag)
    local NextPoint = 0.039
    if not texture then
        texture = "ReplaceableTextures\\CommandButtons\\BTNSelectHeroOn"
    end
    local SelfFrame = BlzCreateFrameByType('GLUEBUTTON', 'FaceButton', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 'ScoreScreenTabButtonTemplate', 0)
    local buttonIconFrame = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', SelfFrame, '', 0)
    --BlzFrameSetVisible(SelfFrame, false)
   -- BlzFrameSetVisible(SelfFrame, GetLocalPlayer() == player)
    BlzFrameSetAllPoints(buttonIconFrame, SelfFrame)
    BlzFrameSetTexture(buttonIconFrame, texture, 0, true)
    BlzFrameSetSize(SelfFrame, NextPoint, NextPoint)
    BlzFrameSetAbsPoint(SelfFrame, FRAMEPOINT_CENTER, posX, PosY)

    local ClickTrig = CreateTrigger()
    BlzTriggerRegisterFrameEvent(ClickTrig, SelfFrame, FRAMEEVENT_CONTROL_CLICK)
    TriggerAddAction(ClickTrig, function()
       -- print("Нажата кнопка ")
        BlzFrameSetEnable(BlzGetTriggerFrame(), false)
        BlzFrameSetEnable(BlzGetTriggerFrame(), true)
        if flag==1 then
            ClearTextMessages()
        end
        if flag==2 then
            if mapIsVisible then
                mapIsVisible=false
            else
                mapIsVisible=true
            end
            BlzFrameSetVisible(map, mapIsVisible)
        end
        if flag==3 then
            if IsSystemON then
                IsSystemON=false
                mapIsVisible=true
                ShowEverything()
                BlzFrameSetTexture(buttonIconFrame, "ReplaceableTextures\\CommandButtons\\BTNCryptFiendBurrow", 0, true)
            else
                IsSystemON=true
                mapIsVisible=false
                HideEverything()
                BlzFrameSetTexture(buttonIconFrame, texture, 0, true)
            end
        end
    end)

    local TrigMOUSE_ENTER = CreateTrigger()
    BlzTriggerRegisterFrameEvent(TrigMOUSE_ENTER, SelfFrame, FRAMEEVENT_MOUSE_ENTER)

    TriggerAddAction(TrigMOUSE_ENTER, function()
        --print("показать подсказку "..flag)
        mouseOnFrame=true
        BlzFrameSetVisible(tt[1],true)
        if flag==1 then
            SetTooltipText(tt[3],"Очистить экран от сообщений")
        elseif flag==2 then
            SetTooltipText(tt[3],"Включить/выключить миникарту")
        elseif flag==3 then
            SetTooltipText(tt[3],"Включить/выключить интерфейс")
        end

    end)
    local TrigMOUSE_LEAVE = CreateTrigger()
    BlzTriggerRegisterFrameEvent(TrigMOUSE_LEAVE, SelfFrame, FRAMEEVENT_MOUSE_LEAVE)
    TriggerAddAction(TrigMOUSE_LEAVE, function()
        mouseOnFrame=false
        BlzFrameSetVisible(tt[1],false)
    end)
    return SelfFrame
end


function RestoreMiniPap()
    BlzFrameSetScale(BlzFrameGetChild(BlzGetFrameByName("ConsoleUI",0),5), 0.001)
    map=BlzGetOriginFrame(ORIGIN_FRAME_MINIMAP, 0)
    mapIsVisible=false
    BlzFrameSetVisible(map, mapIsVisible)
    BlzFrameClearAllPoints(map)
    BlzFrameSetSize(map, 0.2, 0.2)
    BlzFrameSetAbsPoint(map,FRAMEPOINT_CENTER,0.7,0.1)
end

function CustomUIShow(show)
    for i=1,#ui do
        BlzFrameSetVisible(ui[i],show)
    end
end

mouseOnFrame=false
--mainTooltip=nil
function CreateToolTipBox()
    local tooltip = BlzCreateFrameByType("FRAME", "TestDialog", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "StandardFrameTemplate", 0)
    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", tooltip, "", 0)
    local backdrop = BlzCreateFrame("QuestButtonDisabledBackdropTemplate", tooltip, 0, 0)
    BlzFrameSetAbsPoint(tooltip, FRAMEPOINT_CENTER, 0.04+0.04, 0.6-0.04-0.04)
    BlzFrameSetSize(tooltip, 0.2, 0.04)
    BlzFrameSetSize(backdrop, 0.2, 0.04)
    BlzFrameSetPoint(backdrop, FRAMEPOINT_CENTER, tooltip, FRAMEPOINT_CENTER, 0.0, 0.0)
    BlzFrameSetAlpha(backdrop,100)
    BlzFrameSetText(text,"Первичный текст")
    BlzFrameSetPoint(text, FRAMEPOINT_CENTER, tooltip, FRAMEPOINT_CENTER, 0.0, 0.0)
    BlzFrameSetVisible(tooltip,false)
    return tooltip,backdrop,text
end

function SetTooltipText(text,tips)
    BlzFrameSetText(text,tips)
end

function ReturnFPS()
    BlzFrameSetVisible(BlzGetFrameByName("ResourceBarFrame", 0), true)
    local fps = BlzGetFrameByName("ResourceBarFrame", 0)
    BlzFrameClearAllPoints(fps)
    BlzFrameSetAbsPoint(fps, FRAMEPOINT_CENTER, 0.9, 0.61)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 02.08.2021 14:24
---
do
    local InitGlobalsOrigin = InitGlobals
    function InitGlobals()
        InitGlobalsOrigin()
        TimerStart(CreateTimer(), 1, false, function()
            ReplaceID2ArrowMark(FourCC("e001"))
            DestroyTimer(GetExpiredTimer())
        end)
    end
end
function ReplaceID2ArrowMark(id)
    local tmp, k, all = FindUnitOfType(id)
    --print("найденно "..k.." а в таблице "..#all)
    for i = 1, #all do
        SetUnitInvulnerable(all[i], true)
        UnitAddAbility(all[i], FourCC("Aloc"))
        local thisTrigger = CreateTrigger()
        TriggerRegisterUnitInRange(thisTrigger, all[i], 200, nil)
        TriggerAddAction(thisTrigger, function()
            KillUnit(all[i])
        end)
    end
end
function JumpOutWater(unit, angle)
    local eff = AddSpecialEffect("SystemGeneric\\Torrent", GetUnitXY(unit))
    DestroyEffect(eff)
    BlzPauseUnitEx(unit, true)
    UnitAddJumpForce(unit, angle, 10, 500, 500)
end

function UnitAddJumpForce(hero, angle, speed, distance, MaxHeight)
    local currentdistance = 0
    local i = 0
    local ZStart = GetUnitZ(hero)
    if not MaxHeight then
        MaxHeight = 0
    end
    --SetUnitPathing(hero,false)
    UnitDisablePath(hero)
    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()

        currentdistance = currentdistance + speed
        local x, y = GetUnitXY(hero)
        local f = ParabolaZ(MaxHeight / 2, distance, i * speed) + ZStart
        SetUnitZ(hero, f)
        i = i + 1
        local newX, newY = MoveX(x, speed, angle), MoveY(y, speed, angle)
        --local perepad = GetUnitZ(hero) - GetTerrainZ(MoveXY(x, y, speed * 3, angle))
        SetUnitX(hero, newX)
        SetUnitY(hero, newY)

        if i > 3 and f <= GetTerrainZ(GetUnitXY(hero)) then
            DestroyTimer(GetExpiredTimer())
            BlzPauseUnitEx(hero, false)
            SetUnitTimeScale(hero, 1)
            --SetUnitPathing(hero,true)
            SetUnitZ(hero, 0)
            --print("приземлился")
            if UnitAlive(hero) then
                ResetUnitAnimation(hero)
            end

            if GetUnitTypeId(hero) == FourCC("n005") then
                if UnitDamageArea(hero, 150, newX, newY, 150) then
                    DestroyEffect(AddSpecialEffect("SystemGeneric\\ThunderclapCasterClassic", newX, newY))
                end
            end
        end
    end)
end

function UnitDisablePath(unit)
    UnitAddAbility(hero, FourCC("AInv"))
    UnitAddItemById(unit, FourCC("I000")) -- предмет виндволк
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 10.01.2020 23:44
---
---@param x real
---@param y real
---@return boolean
TIMER_PERIOD=1/32
HERO = {}
HERO[0]={}
function InMapXY(x, y)
	return x > GetRectMinX(bj_mapInitialPlayableArea) and x < GetRectMaxX(bj_mapInitialPlayableArea) and y > GetRectMinY(bj_mapInitialPlayableArea) and y < GetRectMaxY(bj_mapInitialPlayableArea)
end

---@param x real
---@param distance real
---@param angle real radian
---@return real
function GetPolarOffsetX(x, distance, angle)
	return x + distance * math.cos(angle)
end

---@param y real
---@param distance real
---@param angle real radian
---@return real
function GetPolarOffsetY(y, distance, angle)
	return y + distance * math.sin(angle)
end

---@param x real
---@param distance real
---@param angle real degrees
---@return real
function MoveX(x, distance, angle)
	return x + distance * math.cos(angle * bj_DEGTORAD)
end

---@param y real
---@param distance real
---@param angle real degrees
---@return real
function MoveY(y, distance, angle)
	return y + distance * math.sin(angle * bj_DEGTORAD)
end


local GetTerrainZ_location = Location(0, 0)
---@param x real
---@param y real
---@return real
function GetTerrainZ(x, y)
	MoveLocation(GetTerrainZ_location, x, y)
	return GetLocationZ(GetTerrainZ_location)
end

---@param target unit
---@return real
function GetUnitZ(target)
	MoveLocation(GetTerrainZ_location, GetUnitX(target), GetUnitY(target))
	return GetLocationZ(GetTerrainZ_location) + GetUnitFlyHeight(target)
end

---@param target unit
---@param z real
function SetUnitZ(target, z)
	UnitAddAbility(target, FourCC('Aave'))
	UnitRemoveAbility(target, FourCC('Aave'))
	MoveLocation(GetTerrainZ_location, GetUnitX(target), GetUnitY(target))
	SetUnitFlyHeight(target, z - GetLocationZ(GetTerrainZ_location), 0)
end

---@param h real максимальная высота в прыжке на середине расстояния (x = d / 2)
---@param d real общее расстояние до цели
---@param x real расстояние от исходной цели до точки, где следует взять высоту по параболе
---@return real
function ParabolaZ (h, d, x)
	return (4 * h / d) * (d - x) * (x / d)
end

---@param zs real начальная высота высота одного края дуги
---@param ze real конечная высота высота другого края дуги
---@param h real максимальная высота на середине расстояния (x = d / 2)
---@param d real общее расстояние до цели
---@param x real расстояние от исходной цели до точки
---@return real
function GetParabolaZ(zs, ze, h, d, x)
	return (2 * (zs + ze - 2 * h) * (x / d - 1) + (ze - zs)) * (x / d) + zs
end

---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@return real
function DistanceBetweenXY(xa, ya, xb, yb)
	local dx = xb - xa
	local dy = yb - ya
	return math.sqrt(dx * dx + dy * dy)
end

---@param xa real
---@param ya real
---@param za real
---@param xb real
---@param yb real
---@param zb real
---@return real
function DistanceBetweenXYZ(xa, ya, za, xb, yb, zb)
	local dx = xb - xa
	local dy = yb - ya
	local dz = zb - za
	return math.sqrt(dx * dx + dy * dy + dz * dz)
end

---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@return real radian
function AngleBetweenXY(xa, ya, xb, yb)
	return math.atan(yb - ya, xb - xa)
end

---@param a real radian
---@param b real radian
---@return real radian
function AngleDifference(a, b)
	local c---@type real
	local d---@type real
	if a > b then
		c = a - b
		d = b - a + 2 * math.pi
	else
		c = b - a
		d = a - b + 2 * math.pi
	end
	return c > d and d or c
end

--@author https://xgm.guru/p/wc3/warden-math
---@param a real degrees
---@param b real degrees
---@return real degrees
function AngleDifferenceDeg(a, b)
	a, b = math.abs(a, 360), math.abs(b, 360)
	local x---@type real
	if (a > b) then
		a, b = b, a
	end
	x = b - 360
	if (b - a > a - x) then
		b = x
	end
	return math.abs(a - b)
end

-- Находит длину перпендикуляра от отрезка, заданного xa, ya, xb, yb к точке, заданной xc, yc
--@author https://xgm.guru/p/wc3/perpendicular
---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@param xc real
---@param yc real
---@return real
function Perpendicular (xa, ya, xb, yb, xc, yc)
	return math.sqrt((xa - xc) * (xa - xc) + (ya - yc) * (ya - yc)) * math.sin(math.atan(yc - ya, xc - xa) - math.atan(yb - ya, xb - xa))
end

--@Hate https://xgm.guru/p/wc3/241479
---@param source unit
---@param x real
---@param y real
function SetUnitPositionSmooth(source, x, y)
	local last_x = GetUnitX(source)
	local last_y = GetUnitY(source)
	local bx
	local by
	--print("Смус выполнена")
	SetUnitPosition(source, x, y)
	if (RAbsBJ(GetUnitX(source) - x) > 0.5) or (RAbsBJ(GetUnitY(source) - y) > 0.5) then
		SetUnitPosition(source, x, last_y)
		bx = RAbsBJ(GetUnitX(source) - x) <= 0.5
		SetUnitPosition(source, last_x, y)
		by = RAbsBJ(GetUnitY(source) - y) <= 0.5

		---
		local dx=math.abs(x-last_x)
		if dx>=100 then
			--print("Телепорт бак в функции Smooth"..dx )
		end
		---
		if bx then
			SetUnitPosition(source, x, last_y)
		elseif by then
			SetUnitPosition(source, last_x, y)
		else
			SetUnitPosition(source, last_x, last_y)
		end
	end
end

--Bergi
function GetUnitXY(unit)
	return GetUnitX(unit),GetUnitY(unit)
end

function MoveXY(x,y, distance, angle)
	return x + distance * math.cos(angle * bj_DEGTORAD),y + distance * math.sin(angle * bj_DEGTORAD)
end

function UnitCollisionOFF(unit)
	UnitAddAbility(unit,FourCC('A000'))
	IssueImmediateOrder(unit,"windwalk")
end

function AngleBetweenUnits(caster,target)
	local yb,ya,xb,xa=GetUnitY(target),GetUnitY(caster),GetUnitX(target),GetUnitX(caster)
	return Atan2BJ(yb - ya, xb - xa)
end

function math.clamp (inb, low, high) --
	return math.min( math.max(inb, low ), high )
end

function math.lerp(a, b, t)
	return a + (b - a) * t
end

function repeatN(t, m)
	return math.clamp(t - math.floor(t / m) * m, 0, m)
end

function lerpTheta(a, b, t)
	local dt = repeatN(b - a, 360)
	if dt>180 then	dt=dt-360 end
	return math.lerp(a, a + dt, t)
end

function AngleBetweenXYZ(x1, y1,z1, x2, y2,z2)
	local a=x1*x2+y1*y2+z1*z2
	local b=math.sqrt(x1*x1+y1*y1+z1*z1)
	local c=math.sqrt(x2*x2+y2*y2+z2*z2)
	return math.acos(a/(b*c))
end

-- функия принадлежности точки сектора
-- x1, x2 - координаты проверяемой точки
-- x2, y2 - координаты вершины сектора
-- orientation - ориентация сектора в мировых координатах
-- width - уголовой размер сектора в градусах
-- radius - окружности которой принадлежит сектор
function IsPointInSector(x1,y1,x2,y2,orientation,width,radius)
	local lenght=DistanceBetweenXY(x1,y1,x2,y2)
	local angle=Acos(Cos(orientation*bj_DEGTORAD)*(x1-x2)/lenght+Sin(orientation*bj_DEGTORAD)*(y1-y2)/lenght )*bj_RADTODEG
	return angle<=width and lenght<=radius
end

function GetParabolaPitch(height,distance,i, speed)
	local f = function(x)
		return ParabolaZ(height, distance, x)
	end

	local df = function(x)
		return ParabolaZDerivative(height, distance, x)
	end
	local x0 = i * speed
	local x1 = x0 + speed
	local thisZ = f(x0)
	local someTangentZ = Tangent(f, df, x0, x1)
	return math.atan(someTangentZ - thisZ, x1 - x0)--pitch
end
function Tangent(f, df, x0, x)
	return f(x0) + df(x0) * (x - x0)
end
function ParabolaZDerivative(height, distance, x)
	return 4 * height / distance / distance * (distance - 2 * x)
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 02.08.2021 19:03
---
function normal_sound (s,x,y,volume)
    local  snd = CreateSound(s, false, true, true, 10, 10, "CombatSoundsEAX")
    if not volume then volume=127 end
    SetSoundChannel(snd, 40)
    SetSoundVolume(snd, volume)
    SetSoundPitch(snd, 1)
    SetSoundDistances(snd, 600, 10000)
    SetSoundDistanceCutoff(snd, 2100)
    SetSoundConeAngles(snd, 0.0, 0.0, 127)
    SetSoundConeOrientation(snd, 0.0, 0.0, 0.0)
    SetSoundPosition(snd, x, y, 50)
    StartSound(snd)
    KillSoundWhenDone(snd)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 27.05.2020 23:15
---
---
---
--[[
do
    local DestroyTimerOrigin = DestroyTimer -- записываем DestroyTimer в переменную
    local PauseTimerCached = PauseTimer -- локальная переменная используется для более быстрого вызова функции в дальнейшем
    function DestroyTimer(t)
        PauseTimerCached(t)  -- вызываем PauseTimer из переменной
        DestroyTimerOrigin(t) -- вызываем DestroyTimer из переменной
    end
end]]
local origDestroyTimer = DestroyTimer
function DestroyTimer(t)

    if t == nil then
        t = GetExpiredTimer()
        if t == nil then
            --print("в функцию разрушения таймера передано что-то нето")
            return
        end

    end
    PauseTimer(t)
    GCountTimers = GCountTimers - 1
    origDestroyTimer(t)
end

local realTimerStart = TimerStart
GCountTimers = 0
TimerStart = function(timer, duration, repeating, callback)
    local pcallback = function()
        if callback == nil then
            return
        end
        local status, err = pcall(callback)
        if not status then
            print(err)
        end
    end
    GCountTimers = GCountTimers + 1
    --print("Запущено таймеров", GCountTimers)
    realTimerStart(timer, duration, repeating, pcallback)
end

local realTriggerAddAction = TriggerAddAction
TriggerAddAction = function(trig, callback)
    local pcallback = function()
        local status, err = pcall(callback)
        if not status then
            print(err)
        end
    end
    realTriggerAddAction(trig, pcallback)
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 31.07.2021 16:20
---
function CreateSpeechEffect(unit,effModel,duration)
    if not unit then
        unit=GetRandomPeon()
    end
    if not effModel then
        effModel="smileys_empty"
    end
    if effModel=="random" then
        local r=GetRandomInt(1,2)
        if r==1 then
            effModel="smileys_warn"
        elseif r==2 then
            effModel="smileys_quest"
        end
    end

    if not duration then
        duration=5
    end
    local eff = AddSpecialEffectTarget(effModel, unit, "overhead")
    TimerStart(CreateTimer(), duration, false, function()
        DestroyEffect(eff)
    end)
end


---@param text string
---@param textSize real
---@param x real
---@param y real
---@param z real
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@param xvel real
---@param yvel real
---@param fadepoint real
---@param lifespan real
---@param player player
---@return texttag
function FlyTextTag(text, textSize, x, y, z, red, green, blue, alpha, xvel, yvel, fadepoint, lifespan, player, flag)
    local t = CreateTextTag()
    SetTextTagText(t, text, textSize)
    SetTextTagPos(t, x, y, z)
    SetTextTagColor(t, red, green, blue, alpha)
    SetTextTagVelocity(t, xvel, yvel)
    SetTextTagFadepoint(t, fadepoint)
    SetTextTagLifespan(t, lifespan)
    SetTextTagPermanent(t, false)
    if not flag then
        if player ~= nil then
            SetTextTagVisibility(t, player == GetLocalPlayer())
        end
    else
        SetTextTagVisibility(t, flag)
    end
    return t
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagGoldBounty(target, text, player)
    return FlyTextTag(text, 0.024, GetWidgetX(target) - 16, GetWidgetY(target), 0, 255, 220, 0, 255, 0, 0.03, 2, 3, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagLumberBounty(target, text, player)
    return FlyTextTag(text, 0.024, GetWidgetX(target) - 16, GetWidgetY(target), 0, 0, 200, 80, 255, 0, 0.03, 2, 3, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagMiss(target, text, player)
    return FlyTextTag(text, 0.024, GetWidgetX(target), GetWidgetY(target), 0, 255, 0, 0, 255, 0, 0.03, 1, 3, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagCriticalStrike(target, text, player, flag)
    return FlyTextTag(text, 0.024, GetWidgetX(target), GetWidgetY(target), 0, 255, 0, 0, 255, 0, 0.04, 2, 10, player, flag)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagManaBurn(target, text, player)
    return FlyTextTag(text, 0.024, GetWidgetX(target), GetWidgetY(target), 0, 82, 82, 255, 255, 0, 0.04, 2, 5, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagShadowStrike(target, text, player)
    return FlyTextTag(text, 0.024, GetWidgetX(target), GetWidgetY(target), 0, 160, 255, 0, 255, 0, 0.04, 2, 5, player)
end

function FlyTextTagHealXY(x, y, text, player)
    return FlyTextTag(text, 0.024, x, y, 150, 88, 250, 13, 255, 0, 0.03, 1, 3, player)
end

function FlyTextTagShieldXY(x, y, text, player, flag)
    --™
    local xr = GetRandomReal(-0.05, 0, 05)
    local r, g, b = 128, 128, 128
    local see = false
    if flag == "blue" then
        r, g, b = 0, 128, 255
        see = true
    end
    if flag == "red" then
        r, g, b = 255, 128, 128
        see = true
    end
    if flag == "SeeAll" then
        see = true
    end

    return FlyTextTag("" .. text, 0.018, x, y, 150, r, g, b, 255, xr, 0.03, 1, 3, player, see)
end

function CreateStaticGoldTag(text, x, y)
    --print("Не вижу текстаг")
    local t = CreateTextTag()
    SetTextTagText(t, text, 0.03)
    SetTextTagPos(t, x, y, 150)
    SetTextTagColor(t, 255, 220, 0, 255)
    --SetTextTagVelocity(t, 0, 0.03)
    SetTextTagFadepoint(t, 2)
    --SetTextTagLifespan(t, 5)
    SetTextTagPermanent(t, true)
    if text > 0 then
        SetTextTagVisibility(t, true)
    else
        SetTextTagVisibility(t, false)
    end
    return t
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 03.08.2021 0:37
---
function UnitDamageArea(u, damage, x, y, range, flag)
    local isdamage = false
    local e = nil
    local hero = nil
    GroupEnumUnitsInRange(perebor, x, y, range, nil)
    local k = 0
    local all = {}
    local deadDamage = false

    while true do
        e = FirstOfGroup(perebor)
        if e == nil then
            break
        end

        if UnitAlive(e) and not UnitAlive(u) and (IsUnitEnemy(e, GetOwningPlayer(u)) or GetOwningPlayer(e) == Player(PLAYER_NEUTRAL_PASSIVE)) and IsUnitType(u, UNIT_TYPE_HERO) then
            --print("Герой нанёс урон будучи мертвым "..GetUnitName(u))
            local data=GetUnitData(u)
            --local talon = GlobalTalons[GetPlayerId(GetOwningPlayer(u)) + 1]["HeroBlademaster"][8]
            if data.KamikazeCDGH then
                local m = data.KamikazeMDamage
                --local data = HERO[GetPlayerId(GetOwningPlayer(u))]
                --print(m)
                if data.KamikazeCurrentCD <= 0 then
                    local cd = 7
                    data.KamikazeCurrentCD = cd
                    StartFrameCD(cd, data.KamikazeCDGH)
                    ---постоянный блок
                    deadDamage = true
                    FlyTextTagCriticalStrike(u, L("Камикадзе", "Kamikaze"), GetOwningPlayer(u))
                    AddLife(data)
                    damage = damage * m
                    ReviveHero(u, GetUnitX(u), GetUnitY(u), true)
                    SetUnitState(u, UNIT_STATE_LIFE, 1)
                    ------
                    TimerStart(CreateTimer(), cd, false, function()
                        DestroyTimer(GetExpiredTimer())
                        data.KamikazeCurrentCD = 0
                    end)
                end


            end
        end
        --
        if UnitAlive(e) and (UnitAlive(u) or deadDamage) and (IsUnitEnemy(e, GetOwningPlayer(u)) or GetOwningPlayer(e) == Player(PLAYER_NEUTRAL_PASSIVE) or flag == "all") then
            --
            --print(damage,"где урон?")
            if flag == "shotForce" then
                --конусный урон при финальном ударе
                -- x1, x2 - координаты проверяемой точки
                -- x2, y2 - координаты вершины сектора
                -- orientation - ориентация сектора в мировых координатах
                -- width - уголовой размер сектора в градусах
                -- radius - окружности которой принадлежит сектор
                --print("толчек")
                --local data = HERO[GetPlayerId(GetOwningPlayer(u))]
                local xb, yb = MoveXY(GetUnitX(u), GetUnitY(u), 60, GetUnitFacing(u) - 180)
                local speed = 20
                local dist = 300

                if IsPointInSector(GetUnitX(e), GetUnitY(e), xb, yb, GetUnitFacing(u), 90, range) then
                    UnitAddForceSimple(e, AngleBetweenUnits(u, e), speed, dist, nil, u)
                end
            end
            if flag == "ForceTotem" then
                --print("толкаем тотемом")
                local tempA = AngleBetweenXY(x, y, GetUnitXY(e)) / bj_DEGTORAD
                UnitAddForceSimple(e, tempA, 20, 300, nil, u)
            end
            if flag == "push" then
                local distance = GetUnitData(u).DashPerAttack
                local tempA = GetUnitFacing(u)
                UnitAddForceSimple(e, tempA, 15, distance, nil, u)
            end
            if flag == "all" then
                if GetPlayerController(GetOwningPlayer(u)) == MAP_CONTROL_USER then
                    local data = HERO[GetPlayerId(GetOwningPlayer(u))]
                    if not data.AddDamageTrap then
                        data.AddDamageTrap = 1
                    end
                    --damage = data.AddDamageTrap

                    --print("урон от ловушки")
                    damage = damage / data.AddDamageTrap
                else

                end
            end
            if flag == "blackHole" then
                if not IsUnitInRange(e, u, 15) then
                    UnitAddForceSimple(e, AngleBetweenUnits(e, u), 5, 50)
                end
            end
            if flag == "longForce" then
                --конусный урон в рывке
                -- x1, x2 - координаты проверяемой точки
                -- x2, y2 - координаты вершины сектора
                -- orientation - ориентация сектора в мировых координатах
                -- width - уголовой размер сектора в градусах
                -- radius - окружности которой принадлежит сектор
                --print("толчек")
                local data = HERO[GetPlayerId(GetOwningPlayer(u))]
                local xb, yb = MoveXY(GetUnitX(u), GetUnitY(u), 80, GetUnitFacing(u) - 180)
                local speed = 20
                local dist = 150
                if data.TaurenDash then
                    speed = speed * 2
                    dist = dist * 3
                end
                if IsPointInSector(GetUnitX(e), GetUnitY(e), xb, yb, GetUnitFacing(u), 70, range) then
                    UnitAddForceSimple(e, AngleBetweenUnits(u, e), speed, dist, nil, u)
                else
                    damage = 0
                end
            end

            if UnitDamageTarget(u, e, damage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS) then
                if GetUnitTypeId(e)~=FourCC("nglm") and GetUnitTypeId(e)~=FourCC("hdhw") then --нет раекцтии на мину и точку входа
                    isdamage = true
                    hero = e
                    k = k + 1
                    all[k] = e
                    --print(GetUnitName(e))
                end
            end
            if (flag == "all" ) and not UnitAlive(e) then
                local ex, ey = GetUnitXY(e)
                FlyTextTagShieldXY(ex, ey, L("Смерть от ловушки", "Death by trap"), GetOwningPlayer(e), "SeeAll")
                for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
                    if PlayerIsPlaying[i] then
                        local data = HERO[i]
                        if UnitAlive(data.UnitHero) then
                            if IsUnitInRange(data.UnitHero, e, 1000) then
                                if data.EvilMaskHeal then
                                    HealUnit(data.UnitHero, data.EvilMaskHeal)
                                    local rm = {
                                        L("Хех", "Heh"),
                                        L("хах", "Hah"),
                                        L("хахаха", "Yhha"),
                                        L("Хихиг", "Hihig"),
                                    }
                                    CreateInfoBoxForAllPlayerTimed(data, rm[GetRandomInt(1, #rm)], 1)
                                end
                            else

                            end
                        end
                    end

                end
            end
        end
        GroupRemoveUnit(perebor, e)
    end
    if PointContentDestructable(x, y, range, true, 1 + damage, u) then
        isdamage = true
    end
    return isdamage, hero, k, all
end

GlobalRect = Rect(0, 0, 0, 0)
function PointContentDestructable (x, y, range, iskill, damage, hero)
    local content = false
    local contentedDest = nil
    local unitZ = GetUnitZ(hero)
    if range == nil then
        range = 80
    end
    if iskill == nil then
        iskill = false
    end
    --print(GetUnitName(hero))
    SetRect(GlobalRect, x - range, y - range, x + range, y + range)
    EnumDestructablesInRect(GlobalRect, nil, function()
        local d = GetEnumDestructable()
        if GetDestructableLife(d) > 0 then
            --and unitZ<=GetTerrainZ(x,y)+50
            content = true
            contentedDest = d
            --print("эх")
            if iskill then
                if not IsDestructableInvulnerable(d) then
                    SetDestructableLife(d, GetDestructableLife(d) - damage)
                    --print("урон по декору")
                    if GetDestructableLife(d) < 1 or GetDestructableLife(d) <= 0 then
                        --print("смерть декора")
                        local dx, dy = GetDestructableX(d), GetDestructableY(d)
                        if hero then
                            if GetRandomInt(1, 2) == 1 then
                                if GetDestructableTypeId(d) == FourCC("B004") then
                                    --print("умер ящик, создаём мимика")
                                    local new = CreateUnit(Player(10), FourCC("n000"), GetDestructableX(d), GetDestructableY(d), 0)
                                    IssueTargetOrder(new, "attack", hero)
                                end
                            else
                                --print("даём золото за сундук")
                                if GetDestructableTypeId(d) == FourCC("B008") or GetDestructableTypeId(d) == FourCC("B004") then
                                    UnitAddGold(hero, GetRandomInt(2, 5))
                                    DestroyEffect(AddSpecialEffect("SystemGeneric\\PileofGold.mdl", dx, dy))
                                end
                            end
                        end
                        if GetDestructableTypeId(d) == FourCC("B008") then
                            --print("умерла ваза горшок в событии проверки")
                            normal_sound("Abilities\\Spells\\Other\\Transmute\\AlchemistTransmuteDeath1", dx, dy, 60)
                            DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\ImpaleTargetDust\\ImpaleTargetDust.mdl", dx, dy))
                            TimerStart(CreateTimer(), 0.6, false, function()
                                RemoveDestructable(d)
                                DestroyTimer(GetExpiredTimer())
                            end)
                            if IsUnitType(hero, UNIT_TYPE_HERO) then
                                local data = HERO[GetPlayerId(GetOwningPlayer(hero))]
                                --print(data.VaseGainGold)
                                if data.VaseGainGold then
                                    HealUnit(hero, data.VaseGainGold)
                                end
                            end
                        end
                        if GetDestructableTypeId(d) == FourCC("BTsc") then
                            local eff = AddSpecialEffect("SystemGeneric\\ThunderclapCasterClassic", dx, dy)
                            DestroyEffect(eff)

                            PlayerSeeNoiseInRangeTimed(0.8,dx,dy)
                            --print("смерть балки от рук"..GetUnitName(hero))

                            if hero then
                                if IsUnitType(hero, UNIT_TYPE_HERO) then
                                    local data = GetUnitData(hero)
                                    if GetRandomInt(1, 6) == 1 then
                                        local rm = {
                                            L("Упс", "Oops"),
                                            L("Ой", "Oh"),
                                            L("Оно само", "It is itself"),
                                            L("Я не хотел", "I didn't want"),
                                            L("Цепная реакция", "Chain reaction"),
                                            L("Я не думал что так получится", "I didn't think that would happen"),
                                            L("Никого не придавило?", "No one got pinned down?"),
                                            L("Все живы?", "Is everyone alive?"),
                                            L("Я случайно", ""),
                                            L("Ай, мизинцем ударился", ""),
                                        }
                                        CreateInfoBoxForAllPlayerTimed(data, rm[GetRandomInt(1, #rm)], 3)
                                    end
                                end
                                TimerStart(CreateTimer(), 0.6, false, function()
                                    UnitDamageArea(hero, 1000, dx, dy, 300)
                                    DestroyTimer(GetExpiredTimer())
                                end)
                            end
                        end

                        if GetDestructableTypeId(d) == FourCC("DTes") then
                            --print("умер кокон")
                            TimerStart(CreateTimer(), 0.4, false, function()
                                UnitDamageArea(SpiderBoss, 90, dx, dy, 120)
                                CreateUnit(GetOwningPlayer(SpiderBoss), FourCC("nspg"), dx, dy, GetRandomInt(0, 360))
                                DestroyTimer(GetExpiredTimer())
                            end)
                        end

                    end
                end
                if GetDestructableLife(d) >= 1 then
                    SetDestructableAnimation(d, "Stand Hit")
                else
                end
            end
        else
        end
    end)
    return content, contentedDest
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 02.08.2021 10:06
---
function UnitAddBigAura(unit)
    local prevX = GetUnitX(unit)
    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
        local x,y = GetUnitXY(unit)
        if x == prevX then
            --print("Стоит на месте")
        else
            --print("двигается")

            local e = nil
            local k = 0

            GroupEnumUnitsInRange(perebor, x,y,150, nil)
            while true do
                e = FirstOfGroup(perebor)

                if e == nil then
                    break
                end
                if UnitAlive(e) and e~=unit then
                    k = k + 1
                    local angle=AngleBetweenUnits(unit,e)
                    UnitAddForceSimple(e,angle,5,150)
                end
                GroupRemoveUnit(perebor, e)
            end
        end
        prevX = x
    end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 31.07.2021 22:40
---
DummyID = FourCC("e000")
function EmpathPeons(unit)
    local x, y = GetUnitXY(unit)
    local dummy = CreateUnit(GetOwningPlayer(unit), DummyID, x, y, 0)
    UnitAddAbility(dummy, FourCC("A000"))
    UnitApplyTimedLife(dummy, FourCC('BTLF'), 2)
    if IssueTargetOrder(dummy, "spiritlink", unit) then
        --print(GetUnitName(unit))
    end
end
perebor = CreateGroup()
PreviousRandomPeon=1
function GetRandomPeon()
    local unit = nil
    local e = nil
    local k = 0
    --print("ищем")
    local rg = {}

    GroupEnumUnitsInRect(perebor, bj_mapInitialPlayableArea, nil)
    while true do
        e = FirstOfGroup(perebor)

        if e == nil then
            break
        end
        if UnitAlive(e) and GetUnitTypeId(e) == FourCC("opeo") then
            k = k + 1
            rg[k] = e
            unit = e
            if k==1 then

            end
        end
        GroupRemoveUnit(perebor, e)
    end
    local rp=GetRandomInt(1,#rg)
    if rp==PreviousRandomPeon then
        rp=PreviousRandomPeon+1
        if rp>=#rg then
            rp=1
        end
    end
    PreviousRandomPeon=rp
    return rg[rp],k,rg
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 31.07.2021 22:40
---
function GetUnitMinHpFromTable(table)
    local minUnit=GetRandomPeon()
    local minHP=100
    for i=1,#table do
        if GetUnitStatePercent(table[i],UNIT_STATE_LIFE,UNIT_STATE_MAX_LIFE) <=minHP then
            minHP=GetUnitStatePercent(table[i],UNIT_STATE_LIFE,UNIT_STATE_MAX_LIFE)
            minUnit=table[i]
        end
    end
    return minUnit
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 02.08.2021 22:45
---

function MarkAndFall(x,y,effModel,hero)
	local mark=AddSpecialEffect("Alarm",x,y)
	BlzSetSpecialEffectScale(mark,1)
	TimerStart(CreateTimer(), 2, false, function()

		local FallenEff=AddSpecialEffect(effModel,x,y)
		BlzSetSpecialEffectZ(FallenEff,2000)
		BlzSetSpecialEffectYaw(FallenEff, math.rad(GetRandomReal(0,360)))
		TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
			local z=BlzGetLocalSpecialEffectZ(FallenEff)
			BlzSetSpecialEffectZ(FallenEff,z-50)
			if z<=GetTerrainZ(x,y) then
				DestroyEffect(mark)
				BlzSetSpecialEffectPosition(mark,5000,5000,0)
				DestroyTimer(GetExpiredTimer())
				DestroyEffect(FallenEff)
				local nd=CreateDestructable(FourCC('LTrc'), x, y, 0, GetRandomInt(1, 1), GetRandomInt(1, 5))
				SetDestructableInvulnerable(nd,true)
				DestroyEffect(AddSpecialEffect("ThunderclapCasterClassic",x,y))
				local  _,damaged=UnitDamageArea(hero,100,x,y,150) --при падении камня
				if IsUnitInRangeXY(damaged,x,y,60) then
					RemoveUnit(damaged)
					print("придавлен камнем")
				end

				TimerStart(CreateTimer(), 5, false, function()
					KillDestructable(nd)
				end)
			end
		end)
	end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 02.08.2021 22:45
---

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 09.03.2021 16:51
---





GlobalRect=Rect(0, 0, 0, 0)
function CreateFirePillar(xs,ys,boss)
    ys=ys+700
    local step=100
    xs=xs-step*1.7
    local x=xs
    local k=4

    TimerStart(CreateTimer(), 1/16, true, function()
        --for k=1,14 do
        for i =1,3 do
            -- B006 лавйка, можно сломать
            x=x+step
            local y=ys-step*(k-1)
            local eff=AddSpecialEffect("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl",x,y)
            --DestroyEffect(eff)
            local sec=0
            TimerStart(CreateTimer(), 0.2, true, function()
                sec=sec+0.2
                UnitDamageArea(boss,20,x,y,step)
                if sec>=5 then
                    DestroyEffect(eff)
                    DestroyTimer(GetExpiredTimer())
                end
            end)
            -- local _,d=PointContentDestructable(x,y,step*2)
            --if GetDestructableTypeId(d)==FourCC("B006") then
            --print("Врезался в лавку")
            --DestroyTimer(GetExpiredTimer())
            local j=1.2
            SetRect(GlobalRect, x - step*j, y - step*j, x + step*j, y +step*j)
            EnumDestructablesInRect(GlobalRect,nil,function ()
                local d=GetEnumDestructable()
                --if GetDestructableLife(d)>0 then
                --print("Удалено "..GetDestructableName(d))
                RemoveDestructable(d)
                --end
            end)
            --end
            UnitDamageArea(boss,99,x,y,step)
        end
        x=xs
        k=k+1
        if k>=15 then
            DestroyTimer(GetExpiredTimer())
        end
    end)
    --end
end


function MarkPillar(xs,ys,boss,zone)
    local eff=AddSpecialEffect("s_cube1",xs,ys)
    BlzSetSpecialEffectZ(eff,GetUnitZ(mainHero)-45)
    BlzSetSpecialEffectMatrixScale(eff,4,14,0.5)
    BlzSetSpecialEffectColor(eff,255,0,0)
    BlzSetSpecialEffectAlpha(eff,100)
    TimerStart(CreateTimer(), 3, false, function()
        CreateFirePillar(xs,ys,boss,zone)
        DestroyEffect(eff)
        BlzSetSpecialEffectPosition(eff,5000,5000,0)
        DestroyTimer(GetExpiredTimer())
        local tmpLoc=GetRandomLocInRect(zone)
        local woman=CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE),FourCC("nvlw"),GetLocationX(tmpLoc),GetLocationY(tmpLoc),GetUnitFacing(boss))
        RemoveLocation(tmpLoc)
    end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 02.08.2021 23:22
---
function StartDemonessa(boss)
    TimerStart(CreateTimer(), 2, true, function()
        local rp=GetRandomPeon()
        local x,y=GetUnitXY(rp)
        local effmodel = "Doodads\\LordaeronSummer\\Terrain\\LoardaeronRockChunks\\LoardaeronRockChunks3"
        local angle=GetUnitFacing(rp)
        local dist=GetRandomInt(0,500)
        x,y=MoveXY(x,y,dist,angle)
        MarkAndFall(x,y,effmodel,boss)
    end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 02.08.2021 21:39
---
function TP2Point(x, y)
    local _, _, table = GetRandomPeon()
    for i = 1, #table do
        local xp, yp = GetUnitXY(table[i])
        DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", xp, yp ))
        ShowUnit(table[i],false)
        TimerStart(CreateTimer(), 1, false, function()
            PanCameraToTimed(x,y,1)
            TimerStart(CreateTimer(), 2, false, function()
                SetUnitPosition(table[i], x, y)
                DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", GetUnitXY(table[i])))
                ShowUnit(table[i],true)
                PauseUnit(table[i],false)
                SelectUnitAdd(table[i])
            end)
        end)
    end
end
--CUSTOM_CODE
function Trig_Init_Actions()
    UnitAddAbilityBJ(FourCC("Avul"), gg_unit_ndqs_0026)
    UnitAddAbilityBJ(FourCC("Abun"), gg_unit_ndqs_0026)
end

function InitTrig_Init()
    gg_trg_Init = CreateTrigger()
    TriggerAddAction(gg_trg_Init, Trig_Init_Actions)
end

function Trig_DemonessEnter_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_DemonessEnter_Func001Func001A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(true, GetEnumUnit())
end

function Trig_DemonessEnter_Func001Func004C()
    if (not (udg_GR == 1)) then
        return false
    end
    return true
end

function Trig_DemonessEnter_Func001Func005C()
    if (not (udg_GR == 2)) then
        return false
    end
    return true
end

function Trig_DemonessEnter_Func001Func006C()
    if (not (udg_GR == 3)) then
        return false
    end
    return true
end

function Trig_DemonessEnter_Func001Func007C()
    if (not (udg_GR == 4)) then
        return false
    end
    return true
end

function Trig_DemonessEnter_Func001Func009A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(false, GetEnumUnit())
end

function Trig_DemonessEnter_Func001Func010A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(false, GetEnumUnit())
end

function Trig_DemonessEnter_Func001C()
    if (not (udg_TowerIsRepair == false)) then
        return false
    end
    return true
end

function Trig_DemonessEnter_Actions()
    if (Trig_DemonessEnter_Func001C()) then
        DisableTrigger(GetTriggeringTrigger())
                CreateSpeechEffect(gg_unit_ndqs_0026,"smileys_quest")
        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_286", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_287", bj_TIMETYPE_ADD, 2.00, true)
                CreateSpeechEffect(GetTriggerUnit())
        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_288", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_289", bj_TIMETYPE_ADD, 3.00, true)
                StartDemonessa(gg_unit_ndqs_0026)
    else
        ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_DemonessEnter_Func001Func001A)
        DisableTrigger(GetTriggeringTrigger())
        udg_GR = GetRandomInt(1, 4)
        if (Trig_DemonessEnter_Func001Func004C()) then
                        CreateSpeechEffect(gg_unit_ndqs_0026,"smileys_quest")
            TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_290", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_291", bj_TIMETYPE_ADD, 2.00, false)
        else
        end
        if (Trig_DemonessEnter_Func001Func005C()) then
                        CreateSpeechEffect(gg_unit_ndqs_0026,"smileys_quest")
            TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_292", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_293", bj_TIMETYPE_ADD, 2.00, false)
        else
        end
        if (Trig_DemonessEnter_Func001Func006C()) then
                        CreateSpeechEffect(gg_unit_ndqs_0026,"smileys_quest")
            TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_294", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_295", bj_TIMETYPE_ADD, 2.00, false)
        else
        end
        if (Trig_DemonessEnter_Func001Func007C()) then
                        CreateSpeechEffect(gg_unit_ndqs_0026,"smileys_quest")
            TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_296", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_297", bj_TIMETYPE_ADD, 2.00, false)
        else
        end
                TP2Point(530,-1320)
        ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_DemonessEnter_Func001Func009A)
        ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_DemonessEnter_Func001Func010A)
        TriggerSleepAction(2)
        EnableTrigger(GetTriggeringTrigger())
    end
end

function InitTrig_DemonessEnter()
    gg_trg_DemonessEnter = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_DemonessEnter, gg_rct_EndPoint)
    TriggerAddCondition(gg_trg_DemonessEnter, Condition(Trig_DemonessEnter_Conditions))
    TriggerAddAction(gg_trg_DemonessEnter, Trig_DemonessEnter_Actions)
end

function Trig_Fire_Func004C()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    if (not (udg_OgreOnPlace == true)) then
        return false
    end
    return true
end

function Trig_Fire_Conditions()
    if (not Trig_Fire_Func004C()) then
        return false
    end
    return true
end

function Trig_Fire_Actions()
    DisableTrigger(GetTriggeringTrigger())
        CreateSpeechEffect(GetTriggerUnit())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_264", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_265", bj_TIMETYPE_ADD, 5.00, true)
end

function InitTrig_Fire()
    gg_trg_Fire = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Fire, gg_rct_FireTower)
    TriggerAddCondition(gg_trg_Fire, Condition(Trig_Fire_Conditions))
    TriggerAddAction(gg_trg_Fire, Trig_Fire_Actions)
end

function Trig_Fire_Copy_Func004C()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    if (not (udg_OgreOnPlace == true)) then
        return false
    end
    return true
end

function Trig_Fire_Copy_Conditions()
    if (not Trig_Fire_Copy_Func004C()) then
        return false
    end
    return true
end

function Trig_Fire_Copy_Actions()
    DisableTrigger(GetTriggeringTrigger())
        CreateSpeechEffect(GetTriggerUnit())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_268", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_269", bj_TIMETYPE_ADD, 5.00, true)
end

function InitTrig_Fire_Copy()
    gg_trg_Fire_Copy = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Fire_Copy, gg_rct_FireTower2)
    TriggerAddCondition(gg_trg_Fire_Copy, Condition(Trig_Fire_Copy_Conditions))
    TriggerAddAction(gg_trg_Fire_Copy, Trig_Fire_Copy_Actions)
end

function Trig_Fire_Copy_Copy_Func004C()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    if (not (udg_OgreOnPlace == true)) then
        return false
    end
    return true
end

function Trig_Fire_Copy_Copy_Conditions()
    if (not Trig_Fire_Copy_Copy_Func004C()) then
        return false
    end
    return true
end

function Trig_Fire_Copy_Copy_Actions()
    DisableTrigger(GetTriggeringTrigger())
        CreateSpeechEffect(GetTriggerUnit())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_270", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_271", bj_TIMETYPE_ADD, 5.00, true)
end

function InitTrig_Fire_Copy_Copy()
    gg_trg_Fire_Copy_Copy = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Fire_Copy_Copy, gg_rct_FireTower3)
    TriggerAddCondition(gg_trg_Fire_Copy_Copy, Condition(Trig_Fire_Copy_Copy_Conditions))
    TriggerAddAction(gg_trg_Fire_Copy_Copy, Trig_Fire_Copy_Copy_Actions)
end

function Trig_Empty_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_Empty_Actions()
    DisableTrigger(GetTriggeringTrigger())
    PauseUnitBJ(true, GetTriggerUnit())
        CreateSpeechEffect(GetTriggerUnit())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_239", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_240", bj_TIMETYPE_ADD, 5.00, true)
    PauseUnitBJ(false, GetTriggerUnit())
        CreateSpeechEffect()
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_241", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_242", bj_TIMETYPE_ADD, 5.00, true)
end

function InitTrig_Empty()
    gg_trg_Empty = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Empty, gg_rct_HealEpmty)
    TriggerAddCondition(gg_trg_Empty, Condition(Trig_Empty_Conditions))
    TriggerAddAction(gg_trg_Empty, Trig_Empty_Actions)
end

function Trig_FindHeal_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_FindHeal_Actions()
    DisableTrigger(GetTriggeringTrigger())
    PauseUnitBJ(true, GetTriggerUnit())
        CreateSpeechEffect(GetTriggerUnit())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_243", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_244", bj_TIMETYPE_ADD, 5.00, true)
        CreateSpeechEffect()
    PauseUnitBJ(false, GetTriggerUnit())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_245", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_246", bj_TIMETYPE_ADD, 5.00, true)
    QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UNITACQUIRED, "TRIGSTR_247")
        CreateUniversalFrame(0.1, 0.015, 0.03, "Исцеляет самого раненного пеона каждые 30 секунд", "Зелье лечения", HERO[0], "ReplaceableTextures\\CommandButtons\\BTNPotionGreen.blp", nil, nil, "heal")
end

function InitTrig_FindHeal()
    gg_trg_FindHeal = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_FindHeal, gg_rct_HealFinder)
    TriggerAddCondition(gg_trg_FindHeal, Condition(Trig_FindHeal_Conditions))
    TriggerAddAction(gg_trg_FindHeal, Trig_FindHeal_Actions)
end

function Trig_FindOrge_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_FindOrge_Actions()
    DisableTrigger(GetTriggeringTrigger())
        CreateSpeechEffect(GetTriggerUnit())
        UnitAddBigAura(gg_unit_nogm_0000)
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_222", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_223", bj_TIMETYPE_ADD, 5.00, true)
end

function InitTrig_FindOrge()
    gg_trg_FindOrge = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_FindOrge, gg_rct________________010)
    TriggerAddCondition(gg_trg_FindOrge, Condition(Trig_FindOrge_Conditions))
    TriggerAddAction(gg_trg_FindOrge, Trig_FindOrge_Actions)
end

function Trig_OgreRun_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_OgreRun_Func003A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(true, GetEnumUnit())
end

function Trig_OgreRun_Func007A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(false, GetEnumUnit())
end

function Trig_OgreRun_Actions()
    DisableTrigger(GetTriggeringTrigger())
    TriggerExecute(gg_trg_ReadyTower)
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_OgreRun_Func003A)
        CreateSpeechEffect(GetTriggerUnit())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_224", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_225", bj_TIMETYPE_ADD, 8.00, true)
    IssuePointOrderLocBJ(gg_unit_nogm_0000, "attack", GetRectCenter(gg_rct_OgreDefPlace))
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_OgreRun_Func007A)
    EnableTrigger(gg_trg_StartAllWave)
        CreateSpeechEffect()
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_226", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_227", bj_TIMETYPE_ADD, 8.00, true)
        AddQuest(true,GetTriggerUnit(),GetRectCenterX(gg_rct_OgreDefPlace),GetRectCenterY(gg_rct_OgreDefPlace))
end

function InitTrig_OgreRun()
    gg_trg_OgreRun = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_OgreRun, gg_rct________________011)
    TriggerAddCondition(gg_trg_OgreRun, Condition(Trig_OgreRun_Conditions))
    TriggerAddAction(gg_trg_OgreRun, Trig_OgreRun_Actions)
end

function Trig_StartAllWave_Actions()
    CreateNUnitsAtLoc(1, FourCC("nmrl"), Player(4), GetRectCenter(gg_rct________________013), bj_UNIT_FACING)
    IssuePointOrderLocBJ(GetLastCreatedUnit(), "attack", GetRectCenter(gg_rct_EndPoint))
    CreateNUnitsAtLoc(1, FourCC("nmrl"), Player(4), GetRectCenter(gg_rct________________015), bj_UNIT_FACING)
    IssuePointOrderLocBJ(GetLastCreatedUnit(), "attack", GetRectCenter(gg_rct_EndPoint))
    CreateNUnitsAtLoc(1, FourCC("nmrl"), Player(4), GetRectCenter(gg_rct________________016), bj_UNIT_FACING)
    IssuePointOrderLocBJ(GetLastCreatedUnit(), "attack", GetRectCenter(gg_rct_EndPoint))
end

function InitTrig_StartAllWave()
    gg_trg_StartAllWave = CreateTrigger()
    DisableTrigger(gg_trg_StartAllWave)
    TriggerRegisterTimerEventPeriodic(gg_trg_StartAllWave, 30.00)
    TriggerAddAction(gg_trg_StartAllWave, Trig_StartAllWave_Actions)
end

function Trig_ReadyTower_Actions()
    UnitAddAbilityBJ(FourCC("Avul"), gg_unit_hctw_0019)
    UnitAddAbilityBJ(FourCC("A001"), gg_unit_hctw_0019)
    UnitAddAbilityBJ(FourCC("Abun"), gg_unit_hctw_0019)
    UnitAddAbilityBJ(FourCC("Avul"), gg_unit_hatw_0020)
    UnitAddAbilityBJ(FourCC("A001"), gg_unit_hatw_0020)
    UnitAddAbilityBJ(FourCC("Abun"), gg_unit_hatw_0020)
    UnitAddAbilityBJ(FourCC("Avul"), gg_unit_hgtw_0018)
    UnitAddAbilityBJ(FourCC("A001"), gg_unit_hgtw_0018)
    UnitAddAbilityBJ(FourCC("Abun"), gg_unit_hgtw_0018)
end

function InitTrig_ReadyTower()
    gg_trg_ReadyTower = CreateTrigger()
    TriggerAddAction(gg_trg_ReadyTower, Trig_ReadyTower_Actions)
end

function Trig_RepairTower_Func005C()
    if (not (udg_TowerRepairCount >= 3)) then
        return false
    end
    return true
end

function Trig_RepairTower_Func006C()
    if (not (GetTriggerUnit() == gg_unit_hatw_0020)) then
        return false
    end
    return true
end

function Trig_RepairTower_Func007C()
    if (not (GetTriggerUnit() == gg_unit_hctw_0019)) then
        return false
    end
    return true
end

function Trig_RepairTower_Func008C()
    if (not (GetTriggerUnit() == gg_unit_hgtw_0018)) then
        return false
    end
    return true
end

function Trig_RepairTower_Actions()
    UnitRemoveAbilityBJ(FourCC("Abun"), GetTriggerUnit())
    UnitRemoveAbilityBJ(FourCC("Avul"), GetTriggerUnit())
    UnitRemoveAbilityBJ(FourCC("A001"), GetTriggerUnit())
    udg_TowerRepairCount = (udg_TowerRepairCount + 1)
    if (Trig_RepairTower_Func005C()) then
        DisableTrigger(GetTriggeringTrigger())
        QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UPDATED, "TRIGSTR_250")
                AddQuest(true,GetRandomPeon(),GetRectCenterX(gg_rct_OgreDefPlace),GetRectCenterY(gg_rct_OgreDefPlace))
        udg_TowerIsRepair = true
    else
        QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UPDATED, ("Отремонтированы башни " .. (I2S(udg_TowerRepairCount) .. "/3")))
    end
    if (Trig_RepairTower_Func006C()) then
                CreateSpeechEffect()
        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_252", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_253", bj_TIMETYPE_ADD, 5.00, true)
                CreateSpeechEffect()
        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_254", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_255", bj_TIMETYPE_ADD, 5.00, true)
    else
    end
    if (Trig_RepairTower_Func007C()) then
                CreateSpeechEffect()
        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_256", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_257", bj_TIMETYPE_ADD, 5.00, true)
                CreateSpeechEffect()
        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_258", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_259", bj_TIMETYPE_ADD, 5.00, true)
    else
    end
    if (Trig_RepairTower_Func008C()) then
                CreateSpeechEffect()
        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_260", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_261", bj_TIMETYPE_ADD, 5.00, true)
                CreateSpeechEffect()
        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_262", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_263", bj_TIMETYPE_ADD, 5.00, true)
    else
    end
end

function InitTrig_RepairTower()
    gg_trg_RepairTower = CreateTrigger()
    TriggerRegisterUnitLifeEvent(gg_trg_RepairTower, gg_unit_hctw_0019, GREATER_THAN_OR_EQUAL, 499.00)
    TriggerRegisterUnitLifeEvent(gg_trg_RepairTower, gg_unit_hgtw_0018, GREATER_THAN_OR_EQUAL, 499.00)
    TriggerRegisterUnitLifeEvent(gg_trg_RepairTower, gg_unit_hatw_0020, GREATER_THAN_OR_EQUAL, 499.00)
    TriggerAddAction(gg_trg_RepairTower, Trig_RepairTower_Actions)
end

function Trig_OnPlaceOrge_Conditions()
    if (not (GetTriggerUnit() == gg_unit_nogm_0000)) then
        return false
    end
    return true
end

function Trig_OnPlaceOrge_Actions()
    DisableTrigger(GetTriggeringTrigger())
    udg_OgreOnPlace = true
end

function InitTrig_OnPlaceOrge()
    gg_trg_OnPlaceOrge = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_OnPlaceOrge, gg_rct_OgreDefPlace)
    TriggerAddCondition(gg_trg_OnPlaceOrge, Condition(Trig_OnPlaceOrge_Conditions))
    TriggerAddAction(gg_trg_OnPlaceOrge, Trig_OnPlaceOrge_Actions)
end

function Trig_TolkWOrge_Func020C()
    if (not (udg_OgreOnPlace == true)) then
        return false
    end
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_TolkWOrge_Conditions()
    if (not Trig_TolkWOrge_Func020C()) then
        return false
    end
    return true
end

function Trig_TolkWOrge_Func014A()
    UnitAddAbilityBJ(FourCC("Ahrp"), GetEnumUnit())
end

function Trig_TolkWOrge_Actions()
    DisableTrigger(GetTriggeringTrigger())
        CreateSpeechEffect(GetTriggerUnit())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_230", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_231", bj_TIMETYPE_ADD, 5.00, true)
        CreateSpeechEffect(gg_unit_nogm_0000)
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_232", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_233", bj_TIMETYPE_ADD, 5.00, true)
        CreateSpeechEffect(gg_unit_nogm_0000)
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_234", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_235", bj_TIMETYPE_ADD, 5.00, true)
    EnableTrigger(gg_trg_PingTowerPlace)
        CreateSpeechEffect()
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_236", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_237", bj_TIMETYPE_ADD, 5.00, true)
    TriggerSleepAction(7.00)
    QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UNITACQUIRED, "TRIGSTR_238")
        CreateUniversalFrame(0.1, 0.015, 0.03, "Бесплатно чинит любые строения и механизмы RMB", "Ремонт", HERO[0], "ReplaceableTextures\\CommandButtons\\BTNRepair.blp", nil, nil, "repair")
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_TolkWOrge_Func014A)
        AddQuest(true,GetRandomPeon(),GetUnitXY(gg_unit_hctw_0019))
        AddQuest(true,GetRandomPeon(),GetUnitXY(gg_unit_hgtw_0018))
        AddQuest(true,GetRandomPeon(),GetUnitXY(gg_unit_hatw_0020))
    SetPlayerAllianceStateBJ(Player(0), Player(5), bj_ALLIANCE_ALLIED_VISION)
    SetPlayerAllianceStateBJ(Player(5), Player(0), bj_ALLIANCE_ALLIED_VISION)
end

function InitTrig_TolkWOrge()
    gg_trg_TolkWOrge = CreateTrigger()
    TriggerRegisterUnitInRangeSimple(gg_trg_TolkWOrge, 256, gg_unit_nogm_0000)
    TriggerAddCondition(gg_trg_TolkWOrge, Condition(Trig_TolkWOrge_Conditions))
    TriggerAddAction(gg_trg_TolkWOrge, Trig_TolkWOrge_Actions)
end

function Trig_PingTowerPlace_Func001C()
    if (not (GetUnitLifePercent(gg_unit_hatw_0020) <= 90.00)) then
        return false
    end
    return true
end

function Trig_PingTowerPlace_Func002C()
    if (not (GetUnitLifePercent(gg_unit_hctw_0019) <= 90.00)) then
        return false
    end
    return true
end

function Trig_PingTowerPlace_Func003C()
    if (not (GetUnitLifePercent(gg_unit_hgtw_0018) <= 90.00)) then
        return false
    end
    return true
end

function Trig_PingTowerPlace_Actions()
    if (Trig_PingTowerPlace_Func001C()) then
        PingMinimapLocForForce(GetPlayersAll(), GetUnitLoc(gg_unit_hatw_0020), 1)
    else
    end
    if (Trig_PingTowerPlace_Func002C()) then
        PingMinimapLocForForce(GetPlayersAll(), GetUnitLoc(gg_unit_hctw_0019), 1)
    else
    end
    if (Trig_PingTowerPlace_Func003C()) then
        PingMinimapLocForForce(GetPlayersAll(), GetUnitLoc(gg_unit_hgtw_0018), 1)
    else
    end
end

function InitTrig_PingTowerPlace()
    gg_trg_PingTowerPlace = CreateTrigger()
    DisableTrigger(gg_trg_PingTowerPlace)
    TriggerRegisterTimerEventPeriodic(gg_trg_PingTowerPlace, 15.00)
    TriggerAddAction(gg_trg_PingTowerPlace, Trig_PingTowerPlace_Actions)
end

function Trig_TolkWOrgeAfterRepair_Func007C()
    if (not (udg_TowerIsRepair == true)) then
        return false
    end
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_TolkWOrgeAfterRepair_Conditions()
    if (not Trig_TolkWOrgeAfterRepair_Func007C()) then
        return false
    end
    return true
end

function Trig_TolkWOrgeAfterRepair_Actions()
    DisableTrigger(GetTriggeringTrigger())
        CreateSpeechEffect(GetTriggerUnit())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_272", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_273", bj_TIMETYPE_ADD, 5.00, true)
        CreateSpeechEffect(gg_unit_nogm_0000)
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_274", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_275", bj_TIMETYPE_ADD, 5.00, true)
        AddQuest(true,GetRandomPeon(),GetUnitXY(gg_unit_hgtw_0018))
end

function InitTrig_TolkWOrgeAfterRepair()
    gg_trg_TolkWOrgeAfterRepair = CreateTrigger()
    TriggerRegisterUnitInRangeSimple(gg_trg_TolkWOrgeAfterRepair, 256, gg_unit_nogm_0000)
    TriggerAddCondition(gg_trg_TolkWOrgeAfterRepair, Condition(Trig_TolkWOrgeAfterRepair_Conditions))
    TriggerAddAction(gg_trg_TolkWOrgeAfterRepair, Trig_TolkWOrgeAfterRepair_Actions)
end

function Trig_PeonDead_Conditions()
    if (not (GetUnitTypeId(GetTriggerUnit()) == FourCC("opeo"))) then
        return false
    end
    return true
end

function Trig_PeonDead_Actions()
    TriggerSleepAction(2)
    CustomDefeatBJ(Player(0), "TRIGSTR_209")
end

function InitTrig_PeonDead()
    gg_trg_PeonDead = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_PeonDead, EVENT_PLAYER_UNIT_DEATH)
    TriggerAddCondition(gg_trg_PeonDead, Condition(Trig_PeonDead_Conditions))
    TriggerAddAction(gg_trg_PeonDead, Trig_PeonDead_Actions)
end

function Trig_Start_Func003A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(true, GetEnumUnit())
end

function Trig_Start_Func008A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(false, GetEnumUnit())
end

function Trig_Start_Actions()
    AdjustPlayerStateBJ(10000, Player(0), PLAYER_STATE_RESOURCE_GOLD)
    AdjustPlayerStateBJ(10000, Player(0), PLAYER_STATE_RESOURCE_LUMBER)
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_Start_Func003A)
        CreateSpeechEffect()
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_167", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_168", bj_TIMETYPE_ADD, 5.00, true)
        CreateSpeechEffect()
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_169", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_170", bj_TIMETYPE_ADD, 5.00, true)
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_Start_Func008A)
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_196", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_197", bj_TIMETYPE_ADD, 5.00, true)
        CreateUniversalFrame(0.1, 0.015, 0.03, "Выбирает всех ваших пеонов. Поражение, если хотя бы 1 умрёт", "Отряд пеонов", HERO[0], "ReplaceableTextures\\CommandButtons\\BTNPeon.blp", nil, "1", "peon")
end

function InitTrig_Start()
    gg_trg_Start = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_Start, 1.00)
    TriggerAddAction(gg_trg_Start, Trig_Start_Actions)
end

function Trig_NewCamp_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_NewCamp_Actions()
    DisableTrigger(GetTriggeringTrigger())
        CreateSpeechEffect(GetTriggerUnit())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_171", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_172", bj_TIMETYPE_ADD, 5.00, true)
        CreateSpeechEffect()
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_173", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_174", bj_TIMETYPE_ADD, 5.00, true)
end

function InitTrig_NewCamp()
    gg_trg_NewCamp = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_NewCamp, gg_rct_NewCamp)
    TriggerAddCondition(gg_trg_NewCamp, Condition(Trig_NewCamp_Conditions))
    TriggerAddAction(gg_trg_NewCamp, Trig_NewCamp_Actions)
end

function Trig_Brod_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_Brod_Actions()
    DisableTrigger(GetTriggeringTrigger())
        CreateSpeechEffect(GetTriggerUnit())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_175", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_176", bj_TIMETYPE_ADD, 5.00, true)
        CreateSpeechEffect()
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_177", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_178", bj_TIMETYPE_ADD, 5.00, true)
end

function InitTrig_Brod()
    gg_trg_Brod = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Brod, gg_rct_Brod)
    TriggerAddCondition(gg_trg_Brod, Condition(Trig_Brod_Conditions))
    TriggerAddAction(gg_trg_Brod, Trig_Brod_Actions)
end

function Trig_FirstAttack_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_FirstAttack_Func006A()
        CreateSpeechEffect(GetEnumUnit(),"random",3)
end

function Trig_FirstAttack_Actions()
    DisableTrigger(GetTriggeringTrigger())
    CreateNUnitsAtLoc(1, FourCC("nmrl"), Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct________________007), bj_UNIT_FACING)
        JumpOutWater(bj_lastCreatedUnit,45)
    CreateNUnitsAtLoc(1, FourCC("nmrl"), Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct________________007_____________________u), bj_UNIT_FACING)
        JumpOutWater(bj_lastCreatedUnit,90)
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_FirstAttack_Func006A)
end

function InitTrig_FirstAttack()
    gg_trg_FirstAttack = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_FirstAttack, gg_rct_FirstAttack)
    TriggerAddCondition(gg_trg_FirstAttack, Condition(Trig_FirstAttack_Conditions))
    TriggerAddAction(gg_trg_FirstAttack, Trig_FirstAttack_Actions)
end

function Trig_KillMurloc_Conditions()
    if (not (GetUnitTypeId(GetTriggerUnit()) == FourCC("nmrl"))) then
        return false
    end
    return true
end

function Trig_KillMurloc_Func002Func002A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(true, GetEnumUnit())
end

function Trig_KillMurloc_Func002Func011A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(false, GetEnumUnit())
end

function Trig_KillMurloc_Func002C()
    if (not (udg_MK == 2)) then
        return false
    end
    return true
end

function Trig_KillMurloc_Actions()
    udg_MK = (udg_MK + 1)
    if (Trig_KillMurloc_Func002C()) then
        DisableTrigger(GetTriggeringTrigger())
        ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_KillMurloc_Func002Func002A)
                CreateSpeechEffect()
        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_186", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_187", bj_TIMETYPE_ADD, 5.00, true)
                CreateSpeechEffect()
        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_184", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_185", bj_TIMETYPE_ADD, 5.00, true)
                CreateSpeechEffect()
        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_188", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_189", bj_TIMETYPE_ADD, 5.00, true)
        QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UNITACQUIRED, "TRIGSTR_190")
                CreateUniversalFrame(0.1, 0.015, 0.03, "Пассивно связывает всех пеонов эмпатическими узами", "Эмпатия", HERO[0], "ReplaceableTextures\\CommandButtons\\BTNSpiritLink.blp", nil, nil, "empath")
        ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_KillMurloc_Func002Func011A)
    else
    end
end

function InitTrig_KillMurloc()
    gg_trg_KillMurloc = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_KillMurloc, EVENT_PLAYER_UNIT_DEATH)
    TriggerAddCondition(gg_trg_KillMurloc, Condition(Trig_KillMurloc_Conditions))
    TriggerAddAction(gg_trg_KillMurloc, Trig_KillMurloc_Actions)
end

function Trig_ReadTable_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_ReadTable_Actions()
    DisableTrigger(GetTriggeringTrigger())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_198", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_199", bj_TIMETYPE_ADD, 5.00, true)
        CreateSpeechEffect(GetTriggerUnit())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_200", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_201", bj_TIMETYPE_ADD, 5.00, true)
        AddQuest(true,GetTriggerUnit(),GetUnitXY(gg_unit_nogm_0000))
        CreateUI()
        CreateSpeechEffect()
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_210", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_211", bj_TIMETYPE_ADD, 5.00, true)
        CreateSpeechEffect()
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_212", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_213", bj_TIMETYPE_ADD, 5.00, true)
end

function InitTrig_ReadTable()
    gg_trg_ReadTable = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_ReadTable, gg_rct________________009)
    TriggerAddCondition(gg_trg_ReadTable, Condition(Trig_ReadTable_Conditions))
    TriggerAddAction(gg_trg_ReadTable, Trig_ReadTable_Actions)
end

function Trig_Aly6_Actions()
    SetPlayerAllianceStateBJ(Player(0), Player(5), bj_ALLIANCE_ALLIED)
    SetPlayerAllianceStateBJ(Player(5), Player(0), bj_ALLIANCE_ALLIED)
end

function InitTrig_Aly6()
    gg_trg_Aly6 = CreateTrigger()
    TriggerAddAction(gg_trg_Aly6, Trig_Aly6_Actions)
end

function Trig_DisableAttack_Func004C()
    if (not (GetIssuedOrderIdBJ() == String2OrderIdBJ("attack"))) then
        return false
    end
    if (not (GetOwningPlayer(GetTriggerUnit()) == GetOwningPlayer(GetOrderTargetUnit()))) then
        return false
    end
    return true
end

function Trig_DisableAttack_Conditions()
    if (not Trig_DisableAttack_Func004C()) then
        return false
    end
    return true
end

function Trig_DisableAttack_Actions()
    PauseUnitBJ(true, GetTriggerUnit())
    IssueImmediateOrderBJ(GetTriggerUnit(), "stop")
    PauseUnitBJ(false, GetTriggerUnit())
end

function InitTrig_DisableAttack()
    gg_trg_DisableAttack = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_DisableAttack, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    TriggerAddCondition(gg_trg_DisableAttack, Condition(Trig_DisableAttack_Conditions))
    TriggerAddAction(gg_trg_DisableAttack, Trig_DisableAttack_Actions)
end

function Trig_Black_Actions()
    CreateFogModifierRectBJ(true, Player(0), FOG_OF_WAR_MASKED, GetPlayableMapRect())
    UseTimeOfDayBJ(false)
end

function InitTrig_Black()
    gg_trg_Black = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_Black, 0.01)
    TriggerAddAction(gg_trg_Black, Trig_Black_Actions)
end

function InitCustomTriggers()
    InitTrig_Init()
    InitTrig_DemonessEnter()
    InitTrig_Fire()
    InitTrig_Fire_Copy()
    InitTrig_Fire_Copy_Copy()
    InitTrig_Empty()
    InitTrig_FindHeal()
    InitTrig_FindOrge()
    InitTrig_OgreRun()
    InitTrig_StartAllWave()
    InitTrig_ReadyTower()
    InitTrig_RepairTower()
    InitTrig_OnPlaceOrge()
    InitTrig_TolkWOrge()
    InitTrig_PingTowerPlace()
    InitTrig_TolkWOrgeAfterRepair()
    InitTrig_PeonDead()
    InitTrig_Start()
    InitTrig_NewCamp()
    InitTrig_Brod()
    InitTrig_FirstAttack()
    InitTrig_KillMurloc()
    InitTrig_ReadTable()
    InitTrig_Aly6()
    InitTrig_DisableAttack()
    InitTrig_Black()
end

function RunInitializationTriggers()
    ConditionalTriggerExecute(gg_trg_Init)
    ConditionalTriggerExecute(gg_trg_Aly6)
end

function InitCustomPlayerSlots()
    SetPlayerStartLocation(Player(0), 0)
    ForcePlayerStartLocation(Player(0), 0)
    SetPlayerColor(Player(0), ConvertPlayerColor(0))
    SetPlayerRacePreference(Player(0), RACE_PREF_ORC)
    SetPlayerRaceSelectable(Player(0), false)
    SetPlayerController(Player(0), MAP_CONTROL_USER)
end

function InitCustomTeams()
    SetPlayerTeam(Player(0), 0)
end

function main()
    SetCameraBounds(-5632.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -5632.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 5760.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 5888.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -5632.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 5888.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 5760.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -5632.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    SetTerrainFogEx(0, 0.0, 10000.0, 0.500, 0.000, 0.000, 0.000)
    NewSoundEnvironment("Default")
    SetAmbientDaySound("SunkenRuinsDay")
    SetAmbientNightSound("SunkenRuinsNight")
    SetMapMusic("Music", true, 0)
    CreateRegions()
    CreateAllUnits()
    InitBlizzard()
    InitGlobals()
    InitCustomTriggers()
    RunInitializationTriggers()
end

function config()
    SetMapName("TRIGSTR_003")
    SetMapDescription("TRIGSTR_005")
    SetPlayers(1)
    SetTeams(1)
    SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)
    DefineStartLocation(0, 1728.0, 1024.0)
    InitCustomPlayerSlots()
    InitCustomTeams()
end

