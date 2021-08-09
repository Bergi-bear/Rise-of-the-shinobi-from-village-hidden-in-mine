---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 09.08.2021 23:31
---

gg_trg___________________________u = nil
function SetUnitPositionSmooth(source, x, y)
	local last_x = GetUnitX(source)
	local last_y = GetUnitY(source)
	local bx
	local by

	SetUnitPosition(source, x, y)

	if (RAbsBJ(GetUnitX(source) - x) > 0.5) or (RAbsBJ(GetUnitY(source) - y) > 0.5) then

		SetUnitPosition(source, x, last_y)
		bx = RAbsBJ(GetUnitX(source) - x) <= 0.5
		SetUnitPosition(source, last_x, y)
		by = RAbsBJ(GetUnitY(source) - y) <= 0.5

		if bx then
			SetUnitPosition(source, x, last_y)
		elseif by then
			SetUnitPosition(source, last_x, y)
		else
			SetUnitPosition(source, last_x, last_y)
		end

	end
end
function vectorCut(a,b,delta)
    local x = (a[1] + delta*b[1])/(1+delta)
    local y = (a[2] + delta*b[2])/(1+delta)
    return {x,y}
    end
function vectorLen(a,b)
    return math.sqrt((a[1]-b[1])^2 + (a[2]-b[2])^2)
end
function look(a1,a2,b1,b2)
    local AB = {a1[1]-a2[1], a1[2]-a2[2]}
    local AC = {b1[1]-b2[1], b1[2]-b2[2]}
    local scalar = AB[1]*AC[1] + AB[2]*AC[2]
    local len1 = math.sqrt( AB[1]^2 + AB[2]^2 )
    local len2 = math.sqrt( AC[1]^2 + AC[2]^2 )
    local acos = math.acos(scalar/(len1*len2))
    local deg = math.deg(acos)
    return deg
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
        print("показать подсказку "..flag)
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
	_G[SelfFrame] = buttonIconFrame
    return SelfFrame
end
MaxX = 0
function init()
	_G['frames'] = {}
	_G['frames'].add = function(frame)
		_G['frames'][#_G['frames']+1] = frame
	end
	_G['tornado'] = {}
	_G['tornado'].add = function(unit)
		_G['tornado'][#_G['tornado']+1] = {unit, 0 }
        print("создан торнато")
	end
	_G['tornado'].move = function()
		local torn = _G['tornado']
		for i = 1, #torn do
			if torn[i][2] < 20 then
				local unit = torn[i][1]
				SetUnitPositionSmooth(unit, GetUnitX(unit)-3, GetUnitY(unit))
				torn[i][2] = torn[i][2] + 0.01
			else
				local unit = torn[i][1]
				KillUnit(unit)
				table.remove(torn,i)
			end
		end
	end
	_G['framesSpriteTypes'] = {{"ReplaceableTextures\\CommandButtons\\BTNGolemStormBolt.blp", 'LTrc'},
						{"ReplaceableTextures\\CommandButtons\\BTNParasite.blp", 'nmtw'},
						{"ReplaceableTextures\\CommandButtons\\BTNCyclone.blp", 'ntor'}}
end
function InitGlobals()
	init()
	t = CreateTrigger()
	TriggerRegisterPlayerEvent(t, Player(0), EVENT_PLAYER_MOUSE_MOVE)
	TriggerAddAction(t, function() _G['toPos']={BlzGetTriggerPlayerMouseX(), BlzGetTriggerPlayerMouseY()} end)
	_G['movedUnit'] = CreateUnit(Player(0), FourCC('odes'), 0,0,0)
	UnitRemoveAbility(_G['movedUnit'], FourCC('Ainv'))
	_G['camDummy'] = CreateUnit(Player(0), FourCC('owyv'), 0,0,0)
	UnitAddAbility(_G['movedUnit'],FourCC('Apxf'))
	t = CreateTimer()
	TimerStart(t, 0.01, true, function() mainMouse(); autoMove(_G['movedUnit'],2.5); autoMove(_G['camDummy'],1.8); frameMove(); _G['tornado'].move() end)
	SetCameraTargetControllerNoZForPlayer(GetOwningPlayer(_G['camDummy']), _G['camDummy'], 10, 10, true)
	for i=1,5 do
		local x = 0.1+i/15
		local FrameTexture = framesSpriteTypes[GetRandomInt(1,#framesSpriteTypes)]
		_G['frames'].add({CreateSimpleFrameGlue(x,0.55,FrameTexture[1],1), x, 0.55, FrameTexture[2]})
	end
	MaxX = GetRectCenterX(GetWorldBounds())+500000
end

function frameMove()
	local frames = _G['frames'] --все фреймы
	local u = _G['camDummy'] --dummy камеры
	local speed = 0.8 --скорость фреймов
	for i=1,#frames do
		local frame = frames[i] -- отдельный фрейм
		local X = frame[2] --позиции
		local Y = frame[3]
		local id = frame[4] --id юнита
		if X > 0.1 then
			X = X-speed/2000
			BlzFrameSetAbsPoint(frame[1], FRAMEPOINT_CENTER, X, Y)
			frame[2] = X
		else
			X = X+0.5
			BlzFrameSetAbsPoint(frame[1], FRAMEPOINT_CENTER, X, Y)
			if(id:sub(1,1) == "L") then
				CreateDestructableZ(FourCC(id), GetUnitX(u)+1200, GetUnitY(u)+GetRandomInt(-300,300),  5, 0, .95, GetRandomInt(1, 5))
			else
				local un = CreateUnit(Player(5), FourCC(id), GetUnitX(u)+1200, GetUnitY(u)+GetRandomInt(-300,300),270)
				if( id == 'ntor') then
					_G['tornado'].add(un) -- добавляем торнадо в пул торнад для движения
				end
			end
			t = framesSpriteTypes[GetRandomInt(1,#framesSpriteTypes)] --рандомим новую текстурку
			BlzFrameSetTexture(_G[frame[1]], t[1], 0, true)
			id = t[2]

			frame[2] = X

		end

	end
end

function mainMouse() --движение от мышки
	local speed = 1
	local u = _G['movedUnit']
	local X,Y = table.unpack(_G['toPos'])
	local unitPos = {GetUnitX(u), GetUnitY(u)}
	local endX, endY = table.unpack(vectorCut(unitPos, {X,Y},(math.min(vectorLen(unitPos, {X,Y})/150, 30)/vectorLen(unitPos, {X,Y}))))
	local angle = (Y>endY) and look(unitPos,{MaxX,0}, unitPos,{X,Y}) or 360-look(unitPos,{MaxX,0}, unitPos,{X,Y})
	SetUnitFacing(u, angle )
	SetUnitPositionSmooth(u,endX,endY)
end

function autoMove(u,speed) -- автоматическое движение
	local X,Y = MaxX, 0
	local unitPos = {GetUnitX(u), GetUnitY(u)}
	local endX, endY = table.unpack(vectorCut(unitPos, {X,Y},speed/vectorLen(unitPos, {X,Y})))
	SetUnitPositionSmooth(u,endX,endY)
end