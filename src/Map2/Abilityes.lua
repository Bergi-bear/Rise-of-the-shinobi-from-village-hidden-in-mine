---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 20.08.2021 22:05
---
function RebaseAbility(unit)
    UnitAddAbility(unit, FourCC('Apxf'))
end

function UnitDestroyAura(unit, duration)
    local offAura = false
    if duration then
        TimerStart(CreateTimer(), duration, false, function()
            offAura = true
        end)
    end

    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
        local x, y = GetUnitXY(unit)
        x,y=MoveXY(x,y,90,GetUnitFacing(unit))
        if offAura then
            DestroyTimer(GetExpiredTimer())
            --print("дейсвие разрушения закончилось")
        end
        local step = 90
        SetRect(GlobalRect, x - step, y - step, x + step, y + step)
        EnumDestructablesInRect(GlobalRect, nil, function()
            local d = GetEnumDestructable()
            if IsDestructableAliveBJ(d) then
                KillDestructable(d)
                --print("разрушен")
            end
            --RemoveDestructable(d)
        end)
    end)
end

