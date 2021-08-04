---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 02.08.2021 23:22
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
function StartDemonessa(boss)
    TimerStart(CreateTimer(), 2, true, function()
        local rp=GetRandomPeon()
        local x,y=GetUnitXY(rp)
        local effmodel = "Doodads\\LordaeronSummer\\Terrain\\LoardaeronRockChunks\\LoardaeronRockChunks3"
        local angle=GetUnitFacing(rp)
        local dist=GetRandomInt(0,500)
        x,y=MoveXY(x,y,dist,angle)
        local r=GetRandomInt(1,2)
        if r==1 then
            MarkAndFall(x,y,effmodel,boss)
        elseif r==2 then
            MarkPillar(x,y,boss)
        end
    end)
end