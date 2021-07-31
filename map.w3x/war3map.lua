udg_MK = 0
udg_OgreOnPlace = false
udg_TowerRepairCount = 0
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
gg_trg_StartTD = nil
gg_trg_StartTD2 = nil
gg_trg_Aly6 = nil
gg_trg_StartAllWave = nil
gg_trg_OnPlaceOrge = nil
gg_trg_TolkWOrge = nil
gg_trg_PingTowerPlace = nil
gg_trg_PeonDead = nil
gg_trg_Start = nil
gg_trg_NewCamp = nil
gg_trg_Brod = nil
gg_trg_FirstAttack = nil
gg_trg_KillMurloc = nil
gg_trg_Table = nil
gg_trg_DisableAttack = nil
gg_trg_Black = nil
gg_unit_nogm_0000 = nil
gg_trg_ReadyTower = nil
gg_unit_hctw_0019 = nil
gg_unit_hatw_0020 = nil
gg_unit_hgtw_0018 = nil
gg_trg_RepairTower = nil
gg_rct_HealEpmty = nil
gg_rct_HealFinder = nil
gg_trg_Empty = nil
gg_trg_FindHeal = nil
function InitGlobals()
    udg_MK = 0
    udg_OgreOnPlace = false
    udg_TowerRepairCount = 0
end

function CreateUnitsForPlayer0()
    local p = Player(0)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("opeo"), 2097.6, -3119.6, 155.563, FourCC("opeo"))
    u = BlzCreateUnitWithSkin(p, FourCC("opeo"), 2024.4, -3186.6, 106.175, FourCC("opeo"))
    u = BlzCreateUnitWithSkin(p, FourCC("opeo"), 1902.0, -3168.1, 50.304, FourCC("opeo"))
    u = BlzCreateUnitWithSkin(p, FourCC("opeo"), 1858.1, -3071.2, 6.574, FourCC("opeo"))
    u = BlzCreateUnitWithSkin(p, FourCC("opeo"), 2000.9, -2974.2, 248.617, FourCC("opeo"))
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
end

function CreatePlayerBuildings()
    CreateBuildingsForPlayer5()
end

function CreatePlayerUnits()
    CreateUnitsForPlayer0()
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
    gg_rct_EndPoint = Rect(2208.0, 2176.0, 2688.0, 2752.0)
    gg_rct________________015 = Rect(-4928.0, -5024.0, -4608.0, -4768.0)
    gg_rct________________016 = Rect(1920.0, -5056.0, 2240.0, -4832.0)
    gg_rct_HealEpmty = Rect(640.0, -3648.0, 832.0, -3456.0)
    gg_rct_HealFinder = Rect(-224.0, -3712.0, 0.0, -3552.0)
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
        end
        GroupRemoveUnit(perebor, e)
    end
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
        end
        GroupRemoveUnit(perebor, e)
    end
    return rg[GetRandomInt(1,#rg)],k
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
    BlzFrameSetSize(map, 0.35, 0.35)
    BlzFrameSetAbsPoint(map,FRAMEPOINT_CENTER,0.8,0.1)
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

--CUSTOM_CODE
function Trig_Empty_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_Empty_Func002A()
    PauseUnitBJ(true, GetEnumUnit())
end

function Trig_Empty_Func005A()
    PauseUnitBJ(false, GetEnumUnit())
end

function Trig_Empty_Actions()
    DisableTrigger(GetTriggeringTrigger())
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_Empty_Func002A)
        CreateSpeechEffect(GetTriggerUnit())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_239", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_240", bj_TIMETYPE_ADD, 5.00, true)
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_Empty_Func005A)
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

function Trig_FindHeal_Func002A()
    PauseUnitBJ(true, GetEnumUnit())
end

function Trig_FindHeal_Func005A()
    PauseUnitBJ(false, GetEnumUnit())
end

function Trig_FindHeal_Actions()
    DisableTrigger(GetTriggeringTrigger())
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_FindHeal_Func002A)
        CreateSpeechEffect(GetTriggerUnit())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_243", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_244", bj_TIMETYPE_ADD, 5.00, true)
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_FindHeal_Func005A)
        CreateSpeechEffect()
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

function Trig_StartTD_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_StartTD_Actions()
    DisableTrigger(GetTriggeringTrigger())
        CreateSpeechEffect(GetTriggerUnit())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_222", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_223", bj_TIMETYPE_ADD, 5.00, true)
end

function InitTrig_StartTD()
    gg_trg_StartTD = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_StartTD, gg_rct________________010)
    TriggerAddCondition(gg_trg_StartTD, Condition(Trig_StartTD_Conditions))
    TriggerAddAction(gg_trg_StartTD, Trig_StartTD_Actions)
end

function Trig_StartTD2_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_StartTD2_Func002A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(true, GetEnumUnit())
end

function Trig_StartTD2_Func006A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(false, GetEnumUnit())
end

function Trig_StartTD2_Actions()
    DisableTrigger(GetTriggeringTrigger())
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_StartTD2_Func002A)
        CreateSpeechEffect(GetTriggerUnit())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_224", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_225", bj_TIMETYPE_ADD, 8.00, true)
    IssuePointOrderLocBJ(gg_unit_nogm_0000, "attack", GetRectCenter(gg_rct_OgreDefPlace))
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_StartTD2_Func006A)
    EnableTrigger(gg_trg_StartAllWave)
        CreateSpeechEffect()
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_226", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_227", bj_TIMETYPE_ADD, 8.00, true)
end

function InitTrig_StartTD2()
    gg_trg_StartTD2 = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_StartTD2, gg_rct________________011)
    TriggerAddCondition(gg_trg_StartTD2, Condition(Trig_StartTD2_Conditions))
    TriggerAddAction(gg_trg_StartTD2, Trig_StartTD2_Actions)
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
    UnitAddAbilityBJ(FourCC("Abun"), gg_unit_hctw_0019)
    UnitAddAbilityBJ(FourCC("Avul"), gg_unit_hatw_0020)
    UnitAddAbilityBJ(FourCC("Abun"), gg_unit_hatw_0020)
    UnitAddAbilityBJ(FourCC("Avul"), gg_unit_hgtw_0018)
    UnitAddAbilityBJ(FourCC("Abun"), gg_unit_hgtw_0018)
end

function InitTrig_ReadyTower()
    gg_trg_ReadyTower = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_ReadyTower, 1.00)
    TriggerAddAction(gg_trg_ReadyTower, Trig_ReadyTower_Actions)
end

function Trig_RepairTower_Func004C()
    if (not (udg_TowerRepairCount >= 3)) then
        return false
    end
    return true
end

function Trig_RepairTower_Actions()
    UnitRemoveAbilityBJ(FourCC("Abun"), GetTriggerUnit())
    UnitRemoveAbilityBJ(FourCC("Avul"), GetTriggerUnit())
    udg_TowerRepairCount = (udg_TowerRepairCount + 1)
    if (Trig_RepairTower_Func004C()) then
        DisableTrigger(GetTriggeringTrigger())
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

function Trig_TolkWOrge_Func015C()
    if (not (udg_OgreOnPlace == true)) then
        return false
    end
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_TolkWOrge_Conditions()
    if (not Trig_TolkWOrge_Func015C()) then
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

function Trig_PeonDead_Conditions()
    if (not (GetUnitTypeId(GetTriggerUnit()) == FourCC("opeo"))) then
        return false
    end
    return true
end

function Trig_PeonDead_Actions()
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

function Trig_Table_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_Table_Actions()
    DisableTrigger(GetTriggeringTrigger())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_198", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_199", bj_TIMETYPE_ADD, 5.00, true)
        CreateSpeechEffect(GetTriggerUnit())
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_200", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_201", bj_TIMETYPE_ADD, 5.00, true)
        CreateUI()
        CreateSpeechEffect()
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_210", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_211", bj_TIMETYPE_ADD, 5.00, true)
        CreateSpeechEffect()
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_212", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_213", bj_TIMETYPE_ADD, 5.00, true)
end

function InitTrig_Table()
    gg_trg_Table = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Table, gg_rct________________009)
    TriggerAddCondition(gg_trg_Table, Condition(Trig_Table_Conditions))
    TriggerAddAction(gg_trg_Table, Trig_Table_Actions)
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
end

function InitTrig_Black()
    gg_trg_Black = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_Black, 0.01)
    TriggerAddAction(gg_trg_Black, Trig_Black_Actions)
end

function InitCustomTriggers()
    InitTrig_Empty()
    InitTrig_FindHeal()
    InitTrig_StartTD()
    InitTrig_StartTD2()
    InitTrig_StartAllWave()
    InitTrig_ReadyTower()
    InitTrig_RepairTower()
    InitTrig_OnPlaceOrge()
    InitTrig_TolkWOrge()
    InitTrig_PingTowerPlace()
    InitTrig_PeonDead()
    InitTrig_Start()
    InitTrig_NewCamp()
    InitTrig_Brod()
    InitTrig_FirstAttack()
    InitTrig_KillMurloc()
    InitTrig_Table()
    InitTrig_Aly6()
    InitTrig_DisableAttack()
    InitTrig_Black()
end

function RunInitializationTriggers()
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
    DefineStartLocation(0, 1984.0, -3136.0)
    InitCustomPlayerSlots()
    InitCustomTeams()
end

