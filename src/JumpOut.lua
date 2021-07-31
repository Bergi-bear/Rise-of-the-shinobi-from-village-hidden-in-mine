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