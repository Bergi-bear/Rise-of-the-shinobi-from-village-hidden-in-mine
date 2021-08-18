---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 10.08.2021 19:34
---

function CreateSimpleFrameGlueNew(posX, PosY, texture, flag)
    local NextPoint = 0.039
    if not texture then
        texture = "ReplaceableTextures\\CommandButtons\\BTNSelectHeroOn"
    end
    local SelfFrame = BlzCreateFrameByType('GLUEBUTTON', 'FaceButton', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 'ScoreScreenTabButtonTemplate', 0)
    local buttonIconFrame = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', SelfFrame, '', 0)
    BlzFrameSetAllPoints(buttonIconFrame, SelfFrame)
    BlzFrameSetTexture(buttonIconFrame, texture, 0, true)
    BlzFrameSetSize(SelfFrame, NextPoint, NextPoint)
    BlzFrameSetAbsPoint(SelfFrame, FRAMEPOINT_CENTER, posX, PosY)
    return SelfFrame
end

function CreateAndMoveFrame(texture)
    local x, y = 0.5, 0.58
    local frame = CreateSimpleFrameGlueNew(x, y, texture, 1)

    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
        x = x - 0.002
        BlzFrameSetAbsPoint(frame, FRAMEPOINT_CENTER, x, y)
        if x <= 0.1 then
            DestroyTimer(GetExpiredTimer())
            BlzFrameSetVisible(frame, false)
            ActionPerDestroy(texture)
        end
    end)
end

function StartCombiner()
    local textureTable = {
        "ReplaceableTextures\\CommandButtons\\BTNGolemStormBolt.blp",
        "ReplaceableTextures\\CommandButtons\\BTNParasite.blp",
        "ReplaceableTextures\\CommandButtons\\BTNCyclone.blp",
        "ReplaceableTextures\\CommandButtons\\BTNInnerFire.blp",
        "ReplaceableTextures\\CommandButtons\\BTNCryptFiendBurrow.blp",
        "ReplaceableTextures\\CommandButtons\\BTNTornado.blp",
        "ReplaceableTextures\\CommandButtons\\BTNRepair.blp"
    }
    TimerStart(CreateTimer(), 1.5, true, function()
        local r = GetRandomInt(1, #textureTable)
        CreateAndMoveFrame(textureTable[r])
    end)
end

function ActionPerDestroy(texture)
    if texture == "ReplaceableTextures\\CommandButtons\\BTNGolemStormBolt.blp" then
        --print("камень")
        CreateStone()
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNParasite.blp" then
        --print("мурлок")
        CreateEnemy(FourCC("nmtw"))
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNCyclone.blp" then
        --print("циклон")
        CreateTornado("ntor")
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNInnerFire.blp" then
        MarkPillar(GetUnitX(GPlayer), GetUnitY(GPlayer), GPlayer)
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNCryptFiendBurrow.blp" then
        local effmodel = "Doodads\\LordaeronSummer\\Terrain\\LoardaeronRockChunks\\LoardaeronRockChunks3"
        MarkAndFall(GetUnitX(GPlayer) + 500, GetUnitY(GPlayer), effmodel, GPlayer)
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNTornado.blp" then
        CreateTornado("n001")
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNRepair.blp" then
        CreateRepairPack()
    else
        print('переданная текстура не найдена в базе', texture)
    end
end

function CreateStone()
    local xOffset = GetUnitX(GCameraDummy) + 1200
    local yOffset = GetUnitY(GCameraDummy) + GetRandomInt(-800, 400)
    CreateDestructableZ(FourCC("LTrc"), xOffset, yOffset, -50, 0, .95, GetRandomInt(1, 5))
end

function CreateEnemy(id)
    local xOffset = GetUnitX(GCameraDummy) + 1200
    local yOffset = GetUnitY(GCameraDummy) + GetRandomInt(-800, 400)
    local unit = CreateUnit(Player(5), id, xOffset, yOffset, 270)
    IssuePointOrder(unit, "attack", Gxs, Gys)
end

function CreateTornado(id)
    local xOffset = GetUnitX(GCameraDummy) + 1200
    local yOffset = GetUnitY(GCameraDummy) + GetRandomInt(-800, 400)
    local unit = CreateUnit(Player(5), FourCC(id), xOffset, yOffset, 270)
    UnitApplyTimedLife(unit, FourCC('BTLF'), 20)
    TimerStart(CreateTimer(), TIMER_PERIOD64, true, function()
        SetUnitPositionSmooth(unit, GetUnitX(unit) - 3, GetUnitY(unit))
        if not UnitAlive(unit) then
            DestroyTimer(GetExpiredTimer())
        end
    end)
end

function CreateRepairPack()
    local xOffset = GetUnitX(GCameraDummy) + 1200
    local yOffset = GetUnitY(GCameraDummy) + GetRandomInt(-800, 400)
    local unit = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), FourCC("n000"), xOffset, yOffset, 270)
    UnitAddAbility(unit, FourCC("Aloc"))
    local eff = AddSpecialEffect("ActionRepair", xOffset, yOffset)
    BlzSetSpecialEffectZ(eff, 20)
    local thisTrigger = CreateTrigger()
    TriggerRegisterUnitInRange(thisTrigger, unit, 100, nil)
    TriggerAddAction(thisTrigger, function()
        if GetUnitTypeId(GetTriggerUnit())==FourCC("odes") then
            KillUnit(unit)
            ShowUnit(unit,false)
            DestroyEffect(eff)
            BlzSetSpecialEffectZ(eff,-300)
            DestroyTrigger(thisTrigger)
            HealUnit(GetTriggerUnit(),50)
            local x,y=GetUnitXY(GetTriggerUnit())
            normal_sound("Abilities\\Spells\\Other\\LoadUnload\\Loading",x,y)
        end
    end)
end

