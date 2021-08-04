---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 02.08.2021 21:39
---
function TP2Point(x, y,delay)
    local _, _, table = GetRandomPeon()
    if not delay then
        delay=2
    end
    for i = 1, #table do
        local xp, yp = GetUnitXY(table[i])
        DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", xp, yp ))
        ShowUnit(table[i],false)
        TimerStart(CreateTimer(), 1, false, function()
            PanCameraToTimed(x,y,1)
            TimerStart(CreateTimer(), delay, false, function()
                SetUnitPosition(table[i], x, y)
                DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", GetUnitXY(table[i])))
                ShowUnit(table[i],true)
                PauseUnit(table[i],false)
                SelectUnitAdd(table[i])
            end)
        end)
    end
end