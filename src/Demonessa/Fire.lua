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





GlobalRect = Rect(0, 0, 0, 0)
function CreateFirePillar(xs, ys, boss)
    ys = ys + 700
    local step = 100
    xs = xs - step * 1.7
    local x = xs
    local k = 4

    TimerStart(CreateTimer(), 1 / 16, true, function()
        --for k=1,14 do
        for i = 1, 3 do
            -- B006 лавйка, можно сломать
            x = x + step
            local y = ys - step * (k - 1)
            local eff = AddSpecialEffect("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl", x, y)
            --DestroyEffect(eff)
            local sec = 0
            TimerStart(CreateTimer(), 0.2, true, function()
                sec = sec + 0.2
                UnitDamageArea(boss, 20, x, y, step)
                if sec >= 5 then
                    DestroyEffect(eff)
                    DestroyTimer(GetExpiredTimer())
                end
            end)
            -- local _,d=PointContentDestructable(x,y,step*2)
            --if GetDestructableTypeId(d)==FourCC("B006") then
            --print("Врезался в лавку")
            --DestroyTimer(GetExpiredTimer())
            local j = 1.2
            SetRect(GlobalRect, x - step * j, y - step * j, x + step * j, y + step * j)
            EnumDestructablesInRect(GlobalRect, nil, function()
                local d = GetEnumDestructable()
                --if GetDestructableLife(d)>0 then
                --print("Удалено "..GetDestructableName(d))
                RemoveDestructable(d)
                --end
            end)
            --end
            UnitDamageArea(boss, 99, x, y, step)
        end
        x = xs
        k = k + 1
        if k >= 15 then
            DestroyTimer(GetExpiredTimer())
        end
    end)
    --end
end

function MarkPillar(xs, ys, boss,delay)
    --local eff=AddSpecialEffect("Alarm",xs,ys)
    --BlzSetSpecialEffectZ(eff,GetTerrainZ(xs,ys))
    --BlzSetSpecialEffectMatrixScale(eff,4,14,0.5)
    --BlzSetSpecialEffectColor(eff,255,0,0)
    if not delay then
        delay=3
    end
    local mark = CreateCircleImage(xs, ys)
    SetImageColor(mark,255,0,0,255)
    --BlzSetSpecialEffectAlpha(eff,100)
    TimerStart(CreateTimer(), delay, false, function()
        --CreateFirePillar(xs,ys,boss)
        local fire = AddSpecialEffect("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl", xs, ys)
        UnitDamageArea(boss, 200, xs, ys, 100)
        --DestroyEffect(eff)
        --BlzSetSpecialEffectPosition(eff,5000,5000,0)
        SetImagePosition(mark, 5000, 5000, 0)
        DestroyImage(mark)
        DestroyTimer(GetExpiredTimer())
    end)
end