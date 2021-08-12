---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 09.08.2021 23:31
---

gg_trg___________________________u = nil

function vectorCut(a, b, delta)
    local x = (a[1] + delta * b[1]) / (1 + delta)
    local y = (a[2] + delta * b[2]) / (1 + delta)
    return { x, y }
end
function vectorLen(a, b)
    return math.sqrt((a[1] - b[1]) ^ 2 + (a[2] - b[2]) ^ 2)
end
function look(a1, a2, b1, b2)
    local AB = { a1[1] - a2[1], a1[2] - a2[2] }
    local AC = { b1[1] - b2[1], b1[2] - b2[2] }
    local scalar = AB[1] * AC[1] + AB[2] * AC[2]
    local len1 = math.sqrt(AB[1] ^ 2 + AB[2] ^ 2)
    local len2 = math.sqrt(AC[1] ^ 2 + AC[2] ^ 2)
    local acos = math.acos(scalar / (len1 * len2))
    local deg = math.deg(acos)
    return deg
end
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

    _G[SelfFrame] = buttonIconFrame
    return SelfFrame
end
MaxX = 0
function init()
    _G['frames'] = {}
    _G['frames'].add = function(frame)
        _G['frames'][#_G['frames'] + 1] = frame
    end
    _G['tornado'] = {}
    _G['tornado'].add = function(unit)
        _G['tornado'][#_G['tornado'] + 1] = { unit, 0 }
        --print("создан торнато")
    end
    _G['tornado'].move = function()
        local torn = _G['tornado']

        for i = 1, #torn do
                    local unit = torn[i][1]
                    SetUnitPositionSmooth(unit, GetUnitX(unit) - 3, GetUnitY(unit))


        end

    end
    _G['framesSpriteTypes'] = { { "ReplaceableTextures\\CommandButtons\\BTNGolemStormBolt.blp", 'LTrc' },
                                { "ReplaceableTextures\\CommandButtons\\BTNParasite.blp", 'nmtw' },
                                { "ReplaceableTextures\\CommandButtons\\BTNCyclone.blp", 'ntor' } }
end
function Init2Map()
    local xs, ys = -28939, 0
    StartCombiner()
    local dummy = CreateUnit(Player(0), FourCC('owyv'), xs, ys, 0)
    CreateAndMoveCamera(dummy,1.8,xs, ys,true)
    local heroSheep = CreateUnit(Player(0), FourCC('odes'), xs, ys, 0)
    CreateAndMoveCamera(heroSheep,2.5,xs, ys)
    Move2Mouse(heroSheep)
    MouseX,MouseY = xs, ys
    local ThisTrigger = CreateTrigger()
    TriggerRegisterPlayerEvent(ThisTrigger, Player(0), EVENT_PLAYER_MOUSE_MOVE)
    TriggerAddAction(ThisTrigger, function()
        MouseX,MouseY = BlzGetTriggerPlayerMouseX(), BlzGetTriggerPlayerMouseY()
    end)
    --[[
    init()
    local t = CreateTrigger()
    local xs, ys = -28939, 0
    _G['toPos'] = { xs, ys }
    TriggerRegisterPlayerEvent(t, Player(0), EVENT_PLAYER_MOUSE_MOVE)
    TriggerAddAction(t, function()
        _G['toPos'] = { BlzGetTriggerPlayerMouseX(), BlzGetTriggerPlayerMouseY() }
    end)
    _G['movedUnit'] = CreateUnit(Player(0), FourCC('odes'), xs, ys, 0)
    UnitRemoveAbility(_G['movedUnit'], FourCC('Ainv'))
    _G['camDummy'] = CreateUnit(Player(0), FourCC('owyv'), xs, ys, 0)
    UnitAddAbility(_G['movedUnit'], FourCC('Apxf'))
    TimerStart(CreateTimer(), 0.01, true, function()
        mainMouse();
        autoMove(_G['movedUnit'], 2.5);
        autoMove(_G['camDummy'], 1.8);
        frameMove();
        _G['tornado'].move()
    end)
    SetCameraTargetControllerNoZForPlayer(GetOwningPlayer(_G['camDummy']), _G['camDummy'], 10, 10, true)
    for i = 1, 5 do
        local x = 0.1 + i / 15
        local FrameTexture = framesSpriteTypes[GetRandomInt(1, #framesSpriteTypes)]
        _G['frames'].add({ CreateSimpleFrameGlue(x, 0.55, FrameTexture[1], 1), x, 0.55, FrameTexture[2] })
    end
    MaxX = GetRectCenterX(GetWorldBounds()) + 500000
    ]]
end

function frameMove()
    local frames = _G['frames'] --все фреймы
    local u = _G['camDummy'] --dummy камеры
    local speed = 0.8 --скорость фреймов
    for i = 1, #frames do
        local frame = frames[i] -- отдельный фрейм
        local X = frame[2] --позиции
        local Y = frame[3]
        local id = frame[4] --id юнита
        print(id)
        if X > 0.1 then
            X = X - speed / 2000
            BlzFrameSetAbsPoint(frame[1], FRAMEPOINT_CENTER, X, Y)
            frame[2] = X
        else
            X = X + 0.5
            BlzFrameSetAbsPoint(frame[1], FRAMEPOINT_CENTER, X, Y)
            local YOffset = GetUnitY(u) + GetRandomInt(-1000, 300)
            if id == "LTrc" then
                CreateDestructableZ(FourCC(id), GetUnitX(u) + 1200, YOffset, 5, 0, .95, GetRandomInt(1, 5))
            else
                local un = CreateUnit(Player(5), FourCC(id), GetUnitX(u) + 1200, YOffset, 270)
                if id == 'ntor' then
                    print("создан торнадо")
                    UnitApplyTimedLife(un, FourCC('BTLF'), 20)
                    _G['tornado'].add(un) -- добавляем торнадо в пул торнад для движения
                elseif id == 'nmtw'  then
                    print("создан мурлок")

                end
            end
            local t = framesSpriteTypes[GetRandomInt(1, #framesSpriteTypes)] --рандомим новую текстурку
            BlzFrameSetTexture(_G[frame[1]], t[1], 0, true)
            id = t[2]

            frame[2] = X

        end

    end
end

function mainMouse()
    --движение от мышки
    local speed = 1
    local u = _G['movedUnit']
    local X, Y = table.unpack(_G['toPos'])
    local unitPos = { GetUnitX(u), GetUnitY(u) }
    local endX, endY = table.unpack(vectorCut(unitPos, { X, Y }, (math.min(vectorLen(unitPos, { X, Y }) / 150, 30) / vectorLen(unitPos, { X, Y }))))
    local angle = (Y > endY) and look(unitPos, { MaxX, 0 }, unitPos, { X, Y }) or 360 - look(unitPos, { MaxX, 0 }, unitPos, { X, Y })
    SetUnitFacing(u, angle)
    SetUnitPositionSmooth(u, endX, endY)
end

function autoMove(u, speed)
    -- автоматическое движение
    local X, Y = MaxX, 0
    local unitPos = { GetUnitX(u), GetUnitY(u) }
    local endX, endY = table.unpack(vectorCut(unitPos, { X, Y }, speed / vectorLen(unitPos, { X, Y })))
    SetUnitPositionSmooth(u, endX, endY)
end