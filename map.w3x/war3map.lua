udg_MK = 0
udg_OgreOnPlace = false
udg_TowerRepairCount = 0
udg_TowerIsRepair = false
udg_GR = 0
udg_TMPColorText = ""
udg_VictorySheep = false
udg_SavedPeons = 0
udg_sound = ""
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
gg_rct_RescuePoint = nil
gg_rct_StonesBlock = nil
gg_rct_CanNotEnter = nil
gg_rct_CanNotEnter_Copy = nil
gg_rct_King = nil
gg_rct_EnterTower = nil
gg_rct_BonesPlace = nil
gg_rct_BridgeBlock = nil
gg_rct_Region_030 = nil
gg_rct_FixAnimStart = nil
gg_snd_SuccubusPissed3 = nil
gg_snd_SuccubusPissed5 = nil
gg_snd_SuccubusPissed6 = nil
gg_snd_Loading = nil
gg_trg_Chat = nil
gg_trg_Esc = nil
gg_trg_StartAnimation = nil
gg_trg_FixDecay = nil
gg_trg_Start = nil
gg_trg_NewCamp = nil
gg_trg_Brod = nil
gg_trg_FirstAttack = nil
gg_trg_InitBridge = nil
gg_trg_ClearLift = nil
gg_trg_RestoreBridge = nil
gg_trg_KillMurloc = nil
gg_trg_ReadTable0607 = nil
gg_trg_FindOrge08 = nil
gg_trg_OgreRun09 = nil
gg_trg_StartAllWave = nil
gg_trg_OnPlaceOrge = nil
gg_trg_TolkWOrge10 = nil
gg_trg_PingTowerPlace = nil
gg_trg_Fire1209 = nil
gg_trg_Fire_Copy1310 = nil
gg_trg_Fire_Copy_Copy1411 = nil
gg_trg_ReadyTower = nil
gg_trg_RepairTower = nil
gg_trg_ShowHP = nil
gg_trg_TolkWOrgeAfterRepair = nil
gg_trg_Init = nil
gg_trg_DemonessEnter = nil
gg_trg_Empty21 = nil
gg_trg_FindHeal22 = nil
gg_trg_Victory25 = nil
gg_trg_Sound = nil
gg_trg_ZCamera = nil
gg_trg_PeonDead = nil
gg_trg_Aly6 = nil
gg_trg_DisableAttack = nil
gg_trg_Black = nil
gg_unit_nogm_0000 = nil
gg_unit_hatw_0020 = nil
gg_unit_hctw_0019 = nil
gg_unit_hgtw_0018 = nil
gg_unit_ndqs_0026 = nil
gg_unit_hwtw_0024 = nil
gg_unit_odes_0027 = nil
gg_unit_opeo_0004 = nil
gg_unit_opeo_0005 = nil
gg_unit_opeo_0014 = nil
gg_unit_opeo_0017 = nil
gg_dest_B002_2498 = nil
gg_dest_B002_4547 = nil
function InitGlobals()
    udg_MK = 0
    udg_OgreOnPlace = false
    udg_TowerRepairCount = 0
    udg_TowerIsRepair = false
    udg_GR = 0
    udg_TMPColorText = ""
    udg_VictorySheep = false
    udg_SavedPeons = 0
    udg_sound = ""
end

function InitSounds()
    gg_snd_SuccubusPissed3 = CreateSound("Units/Demon/Demoness/SuccubusPissed3.flac", false, true, true, 0, 0, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_SuccubusPissed3, "DemonessPissed")
    SetSoundDuration(gg_snd_SuccubusPissed3, 3230)
    SetSoundVolume(gg_snd_SuccubusPissed3, 127)
    gg_snd_SuccubusPissed5 = CreateSound("Units/Demon/Demoness/SuccubusPissed5.flac", false, true, true, 0, 0, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_SuccubusPissed5, "DemonessPissed")
    SetSoundDuration(gg_snd_SuccubusPissed5, 4894)
    SetSoundVolume(gg_snd_SuccubusPissed5, 127)
    gg_snd_SuccubusPissed6 = CreateSound("Units/Demon/Demoness/SuccubusPissed6.flac", false, true, true, 0, 0, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_SuccubusPissed6, "DemonessPissed")
    SetSoundDuration(gg_snd_SuccubusPissed6, 2665)
    SetSoundVolume(gg_snd_SuccubusPissed6, 127)
    gg_snd_Loading = CreateSound("Abilities/Spells/Other/LoadUnload/Loading.flac", false, true, true, 0, 0, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_Loading, "LoadUnload")
    SetSoundDuration(gg_snd_Loading, 740)
    SetSoundVolume(gg_snd_Loading, 127)
end

function CreateAllDestructables()
    local d
    local t
    local life
    gg_dest_B002_4547 = BlzCreateDestructableZWithSkin(FourCC("B002"), -2426.0, 3572.9, 267.8, 316.517, 1.300, 0, FourCC("B002"))
    gg_dest_B002_2498 = BlzCreateDestructableZWithSkin(FourCC("B002"), -1812.7, 2936.4, 291.9, 316.517, 1.300, 0, FourCC("B002"))
end

function CreateUnitsForPlayer0()
    local p = Player(0)
    local u
    local unitID
    local t
    local life
    gg_unit_opeo_0004 = BlzCreateUnitWithSkin(p, FourCC("opeo"), -4267.5, 5252.1, 6.570, FourCC("opeo"))
    life = GetUnitState(gg_unit_opeo_0004, UNIT_STATE_LIFE)
    SetUnitState(gg_unit_opeo_0004, UNIT_STATE_LIFE, 0.50 * life)
    gg_unit_opeo_0005 = BlzCreateUnitWithSkin(p, FourCC("opeo"), -4079.1, 5281.8, 248.620, FourCC("opeo"))
    life = GetUnitState(gg_unit_opeo_0005, UNIT_STATE_LIFE)
    SetUnitState(gg_unit_opeo_0005, UNIT_STATE_LIFE, 0.75 * life)
    gg_unit_opeo_0014 = BlzCreateUnitWithSkin(p, FourCC("opeo"), -3982.4, 5136.4, 155.563, FourCC("opeo"))
    u = BlzCreateUnitWithSkin(p, FourCC("opeo"), -4055.6, 5069.4, 106.175, FourCC("opeo"))
    gg_unit_opeo_0017 = BlzCreateUnitWithSkin(p, FourCC("opeo"), -4178.0, 5087.9, 50.304, FourCC("opeo"))
end

function CreateBuildingsForPlayer1()
    local p = Player(1)
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

function CreateUnitsForPlayer1()
    local p = Player(1)
    local u
    local unitID
    local t
    local life
    gg_unit_ndqs_0026 = BlzCreateUnitWithSkin(p, FourCC("ndqs"), 2497.5, 2760.4, 252.871, FourCC("ndqs"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), 2942.8, 3819.1, 357.935, FourCC("e002"))
    SetUnitColor(u, ConvertPlayerColor(4))
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
    gg_unit_hwtw_0024 = BlzCreateUnitWithSkin(p, FourCC("hwtw"), -1024.0, 2752.0, 270.000, FourCC("hwtw"))
    life = GetUnitState(gg_unit_hwtw_0024, UNIT_STATE_LIFE)
    SetUnitState(gg_unit_hwtw_0024, UNIT_STATE_LIFE, 0.01 * life)
end

function CreateUnitsForPlayer5()
    local p = Player(5)
    local u
    local unitID
    local t
    local life
    gg_unit_nogm_0000 = BlzCreateUnitWithSkin(p, FourCC("nogm"), -1214.4, -542.0, 334.937, FourCC("nogm"))
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
    gg_unit_odes_0027 = BlzCreateUnitWithSkin(p, FourCC("odes"), -558.1, -4535.6, 215.940, FourCC("odes"))
end

function CreatePlayerBuildings()
    CreateBuildingsForPlayer1()
    CreateBuildingsForPlayer5()
end

function CreatePlayerUnits()
    CreateUnitsForPlayer0()
    CreateUnitsForPlayer1()
    CreateUnitsForPlayer5()
end

function CreateAllUnits()
    CreatePlayerBuildings()
    CreateNeutralPassive()
    CreatePlayerUnits()
end

function CreateRegions()
    local we
    gg_rct_REG_Red_Fog = Rect(2304.0, 3808.0, 4800.0, 5056.0)
    we = AddWeatherEffect(gg_rct_REG_Red_Fog, FourCC("FDrh"))
    EnableWeatherEffect(we, true)
    gg_rct_REG_Rain_Light = Rect(-5280.0, 2848.0, -2016.0, 6144.0)
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
    gg_rct_RescuePoint = Rect(-832.0, -4288.0, -576.0, -4064.0)
    gg_rct_StonesBlock = Rect(-1248.0, -4288.0, 960.0, -480.0)
    gg_rct_CanNotEnter = Rect(-2720.0, 608.0, -2592.0, 736.0)
    gg_rct_CanNotEnter_Copy = Rect(-3040.0, 352.0, -2912.0, 480.0)
    gg_rct_King = Rect(-2240.0, -192.0, -1984.0, 32.0)
    gg_rct_EnterTower = Rect(-1824.0, -3616.0, -1600.0, -3456.0)
    gg_rct_BonesPlace = Rect(3584.0, -2944.0, 3840.0, -2752.0)
    gg_rct_BridgeBlock = Rect(-3200.0, 2272.0, -1152.0, 4160.0)
    gg_rct_Region_030 = Rect(4928.0, -5440.0, 5248.0, -5088.0)
    gg_rct_FixAnimStart = Rect(-4384.0, 4864.0, -3840.0, 5408.0)
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
AllAbilityFramesForHide = {

}
AllAbilityFramesForHide2 = {

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
    local tooltip, backdrop, text = CreateToolTipBoxSize(x + k * size, y + size * 2, size * 5, size * 3, toolTipTex, toolTipHeader,face)
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
    --первичное отключение после создания
    TimerStart(CreateTimer(), 15,false, function()
               BlzFrameSetVisible(tooltip, false)
    end)

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
    --print(k+1,"добавлен в общий список")
    AllAbilityFramesForHide[k+1]=buttonIconFrame
    AllAbilityFramesForHide2[k+1]=face
    return text, buttonIconFrame, face
end

function CreateToolTipBoxSize(x, y, sizeX, sizeY, toolTipTex, toolTipHeader,parentFrame)
    --print("создан бокс ",toolTipTex)
    local tooltip = BlzCreateFrameByType("FRAME", "TestDialog", parentFrame, "StandardFrameTemplate", 0)
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

NextPoint = 0.03
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

function ShowAllAbilitiesFrame(state)
    --true скрыты
    --print(#AllAbilityFramesForHide,"размер")
    for i=0,#AllAbilityFramesForHide do
        BlzFrameSetVisible(AllAbilityFramesForHide[i], state)
        --print(i,"скрыт")
    end

      for i=0,#AllAbilityFramesForHide2 do
        BlzFrameSetVisible(AllAbilityFramesForHide2[i], state)
        --print(i,"скрыт")
    end
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
        IsSystemON = true
        InitCamControl()
        InitMouseMoveTrigger()
        --MouseHider(3, 0) -- 0 для красного игрока
        --CreateUI()
        RestoreMiniPap()
        ReturnFPS()
        --ReturnF10()
        MenuFrame()
        HideToolTips()
        --TestAnything()
    end)
end
function TestAnything()
    print("проверка лоада")
    --local text = 'print("Hello XGM")'
    --pcall(load(text, "", 't'))
    Preloader("PreExp1.txt")
    local text = BlzGetAbilityTooltip(FourCC('Agyv'), 0)
    pcall(load(text, "", 't'))

end

function HideToolTips()
    BlzFrameClearAllPoints(BlzGetOriginFrame(ORIGIN_FRAME_UBERTOOLTIP, 0))
    BlzFrameClearAllPoints(BlzGetOriginFrame(ORIGIN_FRAME_TOOLTIP, 0))
    BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_TOOLTIP, 0), false)
    BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_UBERTOOLTIP, 0), false)
    BlzFrameSetAbsPoint(BlzGetOriginFrame(ORIGIN_FRAME_UBERTOOLTIP, 0), FRAMEPOINT_CENTER, 0.75, 0.55)
    BlzFrameSetAbsPoint(BlzGetOriginFrame(ORIGIN_FRAME_TOOLTIP, 0), FRAMEPOINT_CENTER, 0.75, 0.55)
    BlzFrameSetAlpha(BlzGetOriginFrame(ORIGIN_FRAME_TOOLTIP, 0), 0)
    BlzFrameSetAlpha(BlzGetOriginFrame(ORIGIN_FRAME_UBERTOOLTIP, 0), 0)
end

function MenuFrame()
    BlzFrameSetVisible(BlzGetFrameByName("UpperButtonBarFrame", 0), true)
    for i = 0, 3 do
        --local i=0
        local f10 = BlzGetOriginFrame(ORIGIN_FRAME_SYSTEM_BUTTON, i)
        if i == 0 then
            BlzFrameSetParent(f10, BlzGetFrameByName("ConsoleUIBackdrop", 0))
            BlzFrameSetVisible(f10, true)
            BlzFrameClearAllPoints(f10)
            BlzFrameSetAbsPoint(f10, FRAMEPOINT_CENTER, 0.65 + (0.08 * 2), 0.59)
        elseif i == 1 then
            BlzFrameSetVisible(f10, false)
        elseif i == 2 then
            BlzFrameSetParent(f10, BlzGetFrameByName("ConsoleUIBackdrop", 0))
            BlzFrameSetVisible(f10, true)
            BlzFrameClearAllPoints(f10)
            BlzFrameSetAbsPoint(f10, FRAMEPOINT_CENTER, 0.65 + (0.08 * 1), 0.59)
        elseif i == 3 then
            BlzFrameSetParent(f10, BlzGetFrameByName("ConsoleUIBackdrop", 0))
            BlzFrameSetVisible(f10, true)
            BlzFrameClearAllPoints(f10)
            BlzFrameSetAbsPoint(f10, FRAMEPOINT_CENTER, 0.65 + (0.08 * i), 0.59)
        end
    end
end

function ReturnF10()
    --Вернуть F10
    local f10 = BlzGetOriginFrame(ORIGIN_FRAME_SYSTEM_BUTTON, 0)--не не работает
    BlzFrameSetVisible(f10, true)
    BlzFrameClearAllPoints(f10)
    BlzFrameSetAbsPoint(f10, FRAMEPOINT_CENTER, 0.65, 0.58)
    BlzFrameClearAllPoints(BlzGetOriginFrame(ORIGIN_FRAME_SYSTEM_BUTTON, 1)) --отрыв других кнопок меню
    BlzFrameClearAllPoints(BlzGetOriginFrame(ORIGIN_FRAME_SYSTEM_BUTTON, 2)) --
end

function HideEverything()
    --BlzFrameSetVisible(BlzGetFrameByName("ConsoleUIBackdrop", 0), false)
    BlzFrameSetAbsPoint(BlzGetFrameByName("ConsoleUIBackdrop", 0), FRAMEPOINT_TOPRIGHT, 0, -0, 8)
    --BlzFrameSetSize(BlzGetFrameByName("CommandButton_" .. 0, 0), 0, 0)-- M в позиции 0,0
    for i = 0, 11 do
        BlzFrameSetVisible(BlzGetFrameByName("CommandButton_" .. i, 0), false) --отключить
        --BlzFrameSetSize(BlzGetFrameByName("CommandButton_" .. i, 0), 0, 0)--скрыть, но работать будут по хоткеям
    end
    BlzHideOriginFrames(true)--скрыть всё
    BlzFrameSetScale(BlzFrameGetChild(BlzGetFrameByName("ConsoleUI", 0), 5), 0.001) --рамка мёртвой зоны отключение
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
    ui = {}
    tt = {}
    ui[1] = CreateSimpleFrameGlue(0.18, 0.56, "ReplaceableTextures\\CommandButtons\\BTNPurge", 1)
    ui[2] = CreateSimpleFrameGlue(0.18 + 0.039, 0.56, "ReplaceableTextures\\CommandButtons\\BTNSpy", 2)
    --ui[3]=CreateSimpleFrameGlue(0.02+0.039*2, 0.56,"ReplaceableTextures\\CommandButtons\\BTNCryptFiendUnBurrow",3)
    tt[1], tt[2], tt[3] = CreateToolTipBox()

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
        if flag == 1 then
            ClearTextMessages()
        end
        if flag == 2 then
            if mapIsVisible then
                mapIsVisible = false
            else
                mapIsVisible = true
            end
            BlzFrameSetVisible(map, mapIsVisible)
        end
        if flag == 3 then
            if IsSystemON then
                IsSystemON = false
                mapIsVisible = true
                ShowEverything()
                BlzFrameSetTexture(buttonIconFrame, "ReplaceableTextures\\CommandButtons\\BTNCryptFiendBurrow", 0, true)
            else
                IsSystemON = true
                mapIsVisible = false
                HideEverything()
                BlzFrameSetTexture(buttonIconFrame, texture, 0, true)
            end
        end
    end)

    local TrigMOUSE_ENTER = CreateTrigger()
    BlzTriggerRegisterFrameEvent(TrigMOUSE_ENTER, SelfFrame, FRAMEEVENT_MOUSE_ENTER)

    TriggerAddAction(TrigMOUSE_ENTER, function()
        --print("показать подсказку "..flag)
        mouseOnFrame = true
        BlzFrameSetVisible(tt[1], true)
        if flag == 1 then
            SetTooltipText(tt[3], "Очистить экран от сообщений")
        elseif flag == 2 then
            SetTooltipText(tt[3], "Включить/выключить миникарту")
        elseif flag == 3 then
            SetTooltipText(tt[3], "Включить/выключить интерфейс")
        end

    end)
    local TrigMOUSE_LEAVE = CreateTrigger()
    BlzTriggerRegisterFrameEvent(TrigMOUSE_LEAVE, SelfFrame, FRAMEEVENT_MOUSE_LEAVE)
    TriggerAddAction(TrigMOUSE_LEAVE, function()
        mouseOnFrame = false
        BlzFrameSetVisible(tt[1], false)
    end)
    return SelfFrame
end

function RestoreMiniPap()
    BlzFrameSetScale(BlzFrameGetChild(BlzGetFrameByName("ConsoleUI", 0), 5), 0.001)
    map = BlzGetOriginFrame(ORIGIN_FRAME_MINIMAP, 0)
    mapIsVisible = false
    BlzFrameSetVisible(map, mapIsVisible)
    BlzFrameClearAllPoints(map)
    BlzFrameSetSize(map, 0.2, 0.2)
    BlzFrameSetAbsPoint(map, FRAMEPOINT_CENTER, 0.7, 0.1)
end

function CustomUIShow(show)
    for i = 1, #ui do
        BlzFrameSetVisible(ui[i], show)
    end
end

mouseOnFrame = false
--mainTooltip=nil
function CreateToolTipBox()
    local tooltip = BlzCreateFrameByType("FRAME", "TestDialog", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "StandardFrameTemplate", 0)
    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", tooltip, "", 0)
    local backdrop = BlzCreateFrame("QuestButtonDisabledBackdropTemplate", tooltip, 0, 0)
    BlzFrameSetAbsPoint(tooltip, FRAMEPOINT_CENTER, 0.2 + 0.04, 0.6 - 0.04 - 0.04)
    BlzFrameSetSize(tooltip, 0.2, 0.04)
    BlzFrameSetSize(backdrop, 0.2, 0.04)
    BlzFrameSetPoint(backdrop, FRAMEPOINT_CENTER, tooltip, FRAMEPOINT_CENTER, 0.0, 0.0)
    BlzFrameSetAlpha(backdrop, 100)
    BlzFrameSetText(text, "Первичный текст")
    BlzFrameSetPoint(text, FRAMEPOINT_CENTER, tooltip, FRAMEPOINT_CENTER, 0.0, 0.0)
    BlzFrameSetVisible(tooltip, false)
    return tooltip, backdrop, text
end

function SetTooltipText(text, tips)
    BlzFrameSetText(text, tips)
end

function ReturnFPS()
    local fps = BlzGetFrameByName("ResourceBarFrame", 0)
    BlzFrameSetVisible(fps, true)
    BlzFrameClearAllPoints(fps)
    BlzFrameSetAbsPoint(fps, FRAMEPOINT_CENTER, 0.95, 0.62)
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
function CreateJojoReference(delay, isVictory)
    --настройки
    local toBeContinued = "ToBeContinued" --путь к картинке ToBeContinued
    local endingSound = "endingSound" -- путь к мелодии
    --delay время задержки перед начало выезжания таблички
    -- isVictory  нужно ли объявить победу

    PlayThematicMusic(endingSound)

    TimerStart(CreateTimer(), delay-0.5, false, function()
        CreateEnding(gg_unit_opeo_0000)
    end)
    TimerStart(CreateTimer(), delay, false, function()
        CreateContinuedAndMove(toBeContinued, 1, 0.1,isVictory)
    end)
end

function CreateContinuedAndMove(toBeContinued, x, y,isVictory)
    local tobe = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(tobe, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(tobe, toBeContinued, 0, true)
    BlzFrameSetSize(tobe, 0.4, 0.1)
    BlzFrameSetAbsPoint(tobe, FRAMEPOINT_TOP, x, y)
    --print("запушен референс")

    TimerStart(CreateTimer(), 1/64, true, function()
        x = x - 0.02
        if x <= 0.07 then
            --print("остановка")
            DestroyTimer(GetExpiredTimer())
            CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 99, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 20.00, 20.00, 20.00, 20.00)
            if isVictory then
                CustomVictoryBJ(Player(0), true, false)
            end
            PauseGame(true)
        else
            BlzFrameSetAbsPoint(tobe, FRAMEPOINT_TOP, x, y)
        end
    end)
end

function CreateEnding(unit)
    local x,y=GetUnitX(unit),GetUnitY(unit)
    AddSpecialEffect("Units\\Demon\\Infernal\\InfernalBirth.mdl",x,y)
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
--- DateTime: 24.08.2021 10:49
---
toastyTable = {
    [1] = { "toasty", "toasty" },
    [2] = { "hatehorse", "hatehorse" },
    [3] = { "spypeon", "Units\\Orc\\Peon\\PeonWarcry1" },
    [4] = { "mush", "nya" }
}
function CreateToasty()
    local r = GetRandomInt(1, #toastyTable)
    local texture, sound = GetDataFromTable(toastyTable, r)
    CreateAndMoveToastyFrame(texture, sound)
end
function CreateAndMoveToastyFrame(texture, sound)
    local x, y = 1, 0.1
    local toasty = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(toasty, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(toasty, texture, 0, true)
    BlzFrameSetSize(toasty, 0.1, 0.1)
    BlzFrameSetAbsPoint(toasty, FRAMEPOINT_TOP, x, y)
    PlaySound(sound)
    --print("запушен референс")

    TimerStart(CreateTimer(), 1 / 32, true, function()
        x = x - 0.02
        if x <= 0.88 then
            --print("остановка")
            DestroyTimer(GetExpiredTimer())
            local showDuration = 0.5
            TimerStart(CreateTimer(), showDuration, false, function()
                Left2Right(toasty, x, y)
                --print("реверс")
            end)
        else
            BlzFrameSetAbsPoint(toasty, FRAMEPOINT_TOP, x, y)
        end
    end)
end

function Left2Right(frame, x, y)
    TimerStart(CreateTimer(), 1 / 32, true, function()
        x = x + 0.02
        if x >= 1 then
            --print("остановка")
            DestroyTimer(GetExpiredTimer())
            --print("Уничтожить фрейм")
        else
            BlzFrameSetAbsPoint(frame, FRAMEPOINT_TOP, x, y)
        end
    end)
end

function GetDataFromTable(table, index)
    if not table[index] then
        print("элемент в таблице не существует")
    else
        return table[index][1],table[index][2]
        --table.unpack(table[index])
    end
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
function UnitAddBigAura(unit, duration)
    local prevX = GetUnitX(unit)
    local offAura = false
    if duration then
        TimerStart(CreateTimer(), duration, false, function()
            offAura=true
        end)
    end

    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
        local x, y = GetUnitXY(unit)
        if offAura then
            DestroyTimer(GetExpiredTimer())
            --print("дейсвие отталкивания закончилось")
        end
        if x == prevX then
            --print("Стоит на месте")
        else
            --print("двигается")

            local e = nil
            local k = 0

            GroupEnumUnitsInRange(perebor, x, y, 150, nil)
            while true do
                e = FirstOfGroup(perebor)

                if e == nil then
                    break
                end
                if UnitAlive(e) and e ~= unit then
                    k = k + 1
                    local angle = AngleBetweenUnits(unit, e)
                    UnitAddForceSimple(e, angle, 5, 150)
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
PeonAnderStone = -1
MAP = 1
function MarkAndFall(x, y, effModel, hero)
    --local mark = AddSpecialEffect("Alarm", x, y)
    --BlzSetSpecialEffectScale(mark, 1)
    local mark = CreateCircleImage(x, y)
    TimerStart(CreateTimer(), 2, false, function()
        local FallenEff = AddSpecialEffect(effModel, x, y)
        BlzSetSpecialEffectZ(FallenEff, 2000)
        BlzSetSpecialEffectYaw(FallenEff, math.rad(GetRandomReal(0, 360)))
        TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
            local z = BlzGetLocalSpecialEffectZ(FallenEff)
            BlzSetSpecialEffectZ(FallenEff, z - 50)

            if z <= GetTerrainZ(x, y) then
                PlayerSeeNoiseInRangeTimed(1, x, y)
                --DestroyEffect(mark)
                --BlzSetSpecialEffectPosition(mark, 5000, 5000, 0)
                SetImagePosition(mark, 5000, 5000, 0)
                DestroyImage(mark)
                DestroyTimer(GetExpiredTimer())
                DestroyEffect(FallenEff)
                BlzSetSpecialEffectPosition(FallenEff, 5000, 5000, 0)
                local nd = CreateDestructableZ(FourCC('LTrc'), x, y, -100, GetRandomReal(0, 360), GetRandomInt(1, 1), GetRandomInt(1, 5))
                SetDestructableInvulnerable(nd, true)

                if z <= 100 then
                    --print(z,"падения камня")
                    DestroyEffect(AddSpecialEffect("SystemGeneric\\Torrent", x, y))
                else
                    DestroyEffect(AddSpecialEffect("ThunderclapCasterClassic", x, y))
                end
                local _, damaged = UnitDamageArea(hero, 70, x, y, 100) --при падении камня
                if IsUnitInRangeXY(damaged, x, y, 80) and UnitAlive(damaged) and GetOwningPlayer(damaged) == Player(0) and MAP == 1 then
                    PeonAnderStone = PeonAnderStone + 1
                    RemoveUnit(damaged)
                    if PeonAnderStone == 0 then
                        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "Пеонетти", GetRectCenter(GetPlayableMapRect()), nil, "О нет, нашего собрата придавило, думаю он выкарабкается", bj_TIMETYPE_ADD, 4.00, true)
                        CreateSpeechEffect(GetRandomPeon())
                    elseif PeonAnderStone == 1 then
                        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "Пеонетти", GetRectCenter(GetPlayableMapRect()), nil, "Мы несём потери", bj_TIMETYPE_ADD, 4.00, true)
                        CreateSpeechEffect(GetRandomPeon())
                    elseif PeonAnderStone == 2 then
                        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "Пеонетти", GetRectCenter(GetPlayableMapRect()), nil, "Я растерял всех своих друзей", bj_TIMETYPE_ADD, 4.00, true)
                        CreateSpeechEffect(GetRandomPeon())
                    end

                end

                TimerStart(CreateTimer(), 5, false, function()
                    KillDestructable(nd)
                end)
            end
        end)
    end)
end

function PlayerSeeNoiseInRangeTimed(duration, x, y)
    DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\ImpaleTargetDust\\ImpaleTargetDust.mdl", x, y))
    for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
        local hero = GetRandomPeon()

        if IsUnitInRangeXY(hero, x, y, 500) then
            CameraSetEQNoiseForPlayer(GetOwningPlayer(hero), 3)
            TimerStart(CreateTimer(), duration, false, function()
                CameraClearNoiseForPlayer(GetOwningPlayer(hero))
                DestroyTimer(GetExpiredTimer())
            end)
        end
    end

end

function CreateCircleImage(x, y)
    -- "SystemGeneric\\Pavement.blp"
    local img = CreateImage("SystemGeneric\\circle.dds", 256, 256, 0, x, y, 0, 256 / 2, 256 / 2, 0, 4)
    --SetImageColor(img, 0, 255, 0, 128)
    --SetImageRender(img, true)
    --SetImageAboveWater(img,true,true)
    SetImageRenderAlways(img, true)
    ShowImage(img, true)
    return img
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

function StartForSheep(boss,sheep)
        TimerStart(CreateTimer(), 1, true, function()

        local x,y=GetUnitXY(sheep)
        local effmodel = "Doodads\\LordaeronSummer\\Terrain\\LoardaeronRockChunks\\LoardaeronRockChunks3"
        local angle=GetUnitFacing(sheep)
        local dist=GetRandomInt(0,500)
        x,y=MoveXY(x,y,dist,angle)
        local r=GetRandomInt(1,2)
        if r==1 then
            MarkAndFall(x,y,effmodel,boss)
        elseif r==2 then
            angle=GetRandomInt(0,360)
            x,y=MoveXY(x,y,dist,angle)
            local m=CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE),FourCC("nmrl"),x,y,angle)
            local face=AngleBetweenUnits(m,sheep)
            JumpOutWater(m,face)
        end
    end)
end
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
        local unit=table[i]
        if not IsUnitInRangeXY(unit,x,y,300) then
            DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", xp, yp ))
            ShowUnit(table[i],false)
            TimerStart(CreateTimer(), 0, false, function()
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
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 04.08.2021 16:36
---
ActiveDialog = false
do
    local InitGlobalsOrigin = InitGlobals
    function InitGlobals()
        InitGlobalsOrigin()
        TimerStart(CreateTimer(), 1, false, function()
            CreteDialogBox()

            --CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\normal_left", "Ну и долго мы ещё тут будем сидеть, пора исследовать этот остров", 0)
            --CreateAndMoveSpeechImage("end", 5, "right", "PeonEmotion\\thing_right", "Да пришло время размять булки, пойдём ребята, осмотримся", 5)
        end)
    end
end

yDialog = 0.15
function CreateAndMoveSpeechImage(state, duration, position, texture, text, delay, name, sound)
    --print("изображение пеона")
    if not name then
        name = "<Неизвестно>"
    end
    sound = udg_sound
    TimerStart(CreateTimer(), delay, false, function()
        --BlzFrameSetText(TexBoxText, text)

        --print(sound, "звук из глобалки")
        normal_sound(sound, GetUnitXY(GetRandomPeon()))
        SetTexSlow(text, TexBoxText, TIMER_PERIOD / 2)
        BlzFrameSetAlpha(TexBox, 254)
        local xPoz = 0
        local yPoz = yDialog
        local x = 0
        local xs = 0
        local pos = FRAMEPOINT_LEFT
        if state == "start" then
            xPoz = 0.1
            ShowAllAbilitiesFrame(false)
            SetMusicVolumeBJ(20)
        end
        if position == "right" then
            xPoz = 0.7 + TIMER_PERIOD64
            x = 1.2
            pos = FRAMEPOINT_RIGHT
        elseif position == "left" then
            xPoz = 0.1 - TIMER_PERIOD64
            x = -0.4
            pos = FRAMEPOINT_LEFT
        else
            print("Передан недопустимый параметр направления")
        end
        xs = x
        local image = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
        BlzFrameSetAlpha(image, 0)
        local alpha = 0
        BlzFrameSetTexture(image, texture, 0, true)
        BlzFrameSetSize(image, 0.2, 0.2)
        BlzFrameSetParent(image, BlzGetFrameByName("ConsoleUIBackdrop", 0))
        BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, xPoz, 1)
        local y = 1

        local nameSpeaker = BlzCreateFrameByType("TEXT", "ButtonChargesText", image, "", 0)
        BlzFrameSetSize(nameSpeaker, 0.2, 0.2)
        BlzFrameSetText(nameSpeaker, name)
        local tempRight = 0
        if position == "right" then
            tempRight = 0.1
        end
        BlzFrameSetPoint(nameSpeaker, pos, image, pos, 0.01 + tempRight, -0.17)
        BlzFrameSetScale(nameSpeaker, 1.5)

        TimerStart(CreateTimer(), TIMER_PERIOD64, true, function()
            alpha = alpha + 8
            if alpha >= 255 then
                alpha = 255
            end
            --BlzFrameSetAlpha(image, alpha)
            --print(alpha)
            --y = y - 0.03

            if position == "left" then
                x = x + TIMER_PERIOD64
                --print(y)
                BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, x, yPoz)
                if x >= xPoz then
                    -- print(x)
                    DestroyTimer(GetExpiredTimer())

                    if state == "start" then
                        BlzFrameSetVisible(TexBox, true)
                    end
                end
            else
                x = x - TIMER_PERIOD64
                BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, x, yPoz)
                if x <= xPoz then
                    DestroyTimer(GetExpiredTimer())

                    if state == "start" then
                        BlzFrameSetVisible(TexBox, true)

                    end
                end
            end
        end)
        --уничтожение

        TimerStart(CreateTimer(), duration, false, function()
            y = 0.5
            alpha = 255

            TimerStart(CreateTimer(), TIMER_PERIOD64, true, function()
                y = y + 0.03
                alpha = alpha - 15
                if alpha <= 0 then
                    alpha = 0
                end
                BlzFrameSetAlpha(image, alpha)

                --print(y)
                --[[BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, xPoz, y)
                if y > 1 then
                    DestroyTimer(GetExpiredTimer())
                    BlzFrameSetVisible(image, false)
                    if state == "end" then
                        BlzFrameSetVisible(TexBox, false)
                    end
                end]]
                if state == "end" then
                    BlzFrameSetAlpha(TexBox, alpha)
                    ShowAllAbilitiesFrame(true)
                    SetMusicVolumeBJ(100)
                end
                if position == "left" then
                    x = x - TIMER_PERIOD64
                    --print(y)
                    BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, x, yPoz)
                    if x <= xs then
                        -- print(x)
                        DestroyTimer(GetExpiredTimer())
                        if state == "end" then
                            BlzFrameSetVisible(TexBox, false)

                            --BlzFrameSetAlpha(TexBox, 0)
                        end
                    end
                else
                    x = x + TIMER_PERIOD64
                    BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, x, yPoz)
                    if x >= xs then
                        DestroyTimer(GetExpiredTimer())

                        if state == "end" then
                            BlzFrameSetVisible(TexBox, false)
                            --BlzFrameSetAlpha(TexBox, 0)
                        end
                    end
                end


            end)
        end)
    end)
end

function CreteDialogBox()
    --print("создан бокс ",toolTipTex)
    local tooltip = BlzCreateFrameByType("FRAME", "TestDialog", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "StandardFrameTemplate", 0)
    local backdrop = BlzCreateFrame("QuestButtonDisabledBackdropTemplate", tooltip, 0, 0)
    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", tooltip, "", 0)
    BlzFrameSetAbsPoint(tooltip, FRAMEPOINT_CENTER, 0.0, yDialog - 0.05)
    BlzFrameSetSize(tooltip, 1, 0.1)
    BlzFrameSetSize(backdrop, 1, 0.1)
    BlzFrameSetSize(text, 0.8 * 0.4, 0.1 * .7)
    BlzFrameSetPoint(backdrop, FRAMEPOINT_CENTER, tooltip, FRAMEPOINT_CENTER, 0.0, 0.0)
    --BlzFrameSetAlpha(backdrop, 0)
    BlzFrameSetText(text, "Проверочный текст для фрейма теперь текста больше, а где авто перенос?,Проверочный текст для фрейма теперь текста больше, а где авто перенос?,Проверочный текст для фрейма теперь текста больше, а где авто перенос?,Проверочный текст для фрейма теперь текста больше, а где авто перенос?")
    BlzFrameSetPoint(text, FRAMEPOINT_CENTER, tooltip, FRAMEPOINT_CENTER, 0.12, 0)
    BlzFrameSetScale(text, 1.2)
    BlzFrameSetVisible(tooltip, false)

    TexBox = tooltip
    TexBoxText = text
end

function SetTexSlow(originalText, TextFrame, speed)
    local t = {}
    for i = 1, #originalText do
        t[i] = originalText:sub(i, i)
    end
    local k = 1
    local new = ""
    TimerStart(CreateTimer(), speed, true, function()
        new = new .. t[k]
        BlzFrameSetText(TextFrame, new)
        k = k + 1
        if k > #originalText then
            DestroyTimer(GetExpiredTimer())
        end
    end)

end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 30.09.2021 1:05
---
do
    local InitGlobalsOrigin = InitGlobals
    function InitGlobals()
        InitGlobalsOrigin()
        TimerStart(CreateTimer(), 0.1, false, function()
            if MAP == 1 then
                SetMainTheme()
            end
            DestroyTimer(GetExpiredTimer())
        end)
    end
end


function SetMainTheme()
    ClearMapMusicBJ()
    PlayMusicBJ("Sound\\Robots_a_Cometh")
    SetMusicVolumeBJ(100)
end
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


---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 20.08.2021 15:17
---
function CreateInterFaceMap2()
    CreateWayLost()
    CreateLiveSheep()
end

LivesSheep = 3
WayEnd = 28000
function CreateWayLost()
    local ico = "ReplaceableTextures\\CommandButtons\\BTNSpy"
    local Frame = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(Frame, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(Frame, ico, 0, true)
    BlzFrameSetSize(Frame, NextPoint / 2, NextPoint / 2)
    BlzFrameSetAbsPoint(Frame, FRAMEPOINT_CENTER, 0.85, 0.58 - (NextPoint / 2))
    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", Frame, "", 0)
    BlzFrameSetParent(text, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetText(text, "")
    BlzFrameSetScale(text, 2)
    BlzFrameSetPoint(text, FRAMEPOINT_LEFT, Frame, FRAMEPOINT_LEFT, 0.015, 0.0)
    local total = math.abs(GetPlayerStartLocationX(Player(0))) + WayEnd
    --print(total,"total")
    TimerStart(CreateTimer(), 1, true, function()
        local dist = DistanceBetweenXY(WayEnd, 0, GetUnitXY(GCameraDummy))
        local percent = 100 - ((dist / total) * 100)
        maxSpeed = GetUnitMoveSpeed(GPlayer)/12
        minSpeed = GetUnitMoveSpeed(GPlayer)/70
        CompletedGame=R2I(percent)
        BlzFrameSetText(text, R2I(percent) .. "/" .. 100)
    end)
end

function CreateLiveSheep()
    local ico = "ReplaceableTextures\\CommandButtons\\BTNOrcDestroyer.blp"
    local Frame = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(Frame, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(Frame, ico, 0, true)
    BlzFrameSetSize(Frame, NextPoint / 2, NextPoint / 2)
    BlzFrameSetAbsPoint(Frame, FRAMEPOINT_CENTER, 0.85, 0.58 - 2 * (NextPoint / 2))
    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", Frame, "", 0)
    BlzFrameSetParent(text, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetText(text, "")
    BlzFrameSetScale(text, 2)
    BlzFrameSetPoint(text, FRAMEPOINT_LEFT, Frame, FRAMEPOINT_LEFT, 0.015, 0.0)
    TimerStart(CreateTimer(), 1, true, function()
        BlzFrameSetText(text, LivesSheep)
    end)
end
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
    if not texture then
        return
    end
    local x, y = 0.5, 0.58 - 0.01
    local frame = CreateSimpleFrameGlueNew(x, y, texture, 1)
    local charge = 1
    if CompletedGame > 10 and CompletedGame < 20 then
        charge = 2
        MakeFrameCharged(frame, charge)
    elseif CompletedGame > 20 and CompletedGame < 30 then
        charge = 3
        MakeFrameCharged(frame, charge)
    elseif CompletedGame == 30 then
        BossFight = true
    else

    end

    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
        x = x - 0.002
        BlzFrameSetAbsPoint(frame, FRAMEPOINT_CENTER, x, y)
        if x <= 0.12 then
            DestroyTimer(GetExpiredTimer())
            BlzFrameSetVisible(frame, false)
            ActionPerDestroy(texture, charge)
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
        "ReplaceableTextures\\CommandButtons\\BTNTornado",
        "ReplaceableTextures\\CommandButtons\\BTNRepair",
        "ReplaceableTextures\\CommandButtons\\BTNDivineIntervention",
        "ReplaceableTextures\\CommandButtons\\BTNEvasion",
        "ReplaceableTextures\\CommandButtons\\BTNDemolish",
    }
    CreateCombinerUI()
    TimerStart(CreateTimer(), 1.5, true, function()
        local r = GetRandomInt(1, #textureTable)
        CreateAndMoveFrame(textureTable[r])
    end)

end

function CreateCombinerUI()
    local x, y = 0.318, 0.6
    local border = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(border, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(border, "CombainBorder", 0, true)
    BlzFrameSetSize(border, 0.4, 0.1)
    BlzFrameSetAbsPoint(border, FRAMEPOINT_TOP, x, y)

    for i = 1, 50 do
        -- print(i)
        CreateAndMoveChain(0.515 - i * (0.008) + 0.01, 0.58, nil, border)
    end

    TimerStart(CreateTimer(), 0.13, true, function()
        CreateAndMoveChain(0.515, 0.58, nil, border)
        --print(GetUnitMoveSpeed(GPlayer),"speed")
    end)
end

function CreateAndMoveChain(x, y, speed, border)
    local chain = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', border, '', 0)
    BlzFrameSetTexture(chain, "CombainChain", 0, true)
    BlzFrameSetSize(chain, 0.05, 0.05)
    BlzFrameSetAbsPoint(chain, FRAMEPOINT_TOP, x, y)

    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
        x = x - 0.002
        BlzFrameSetAbsPoint(chain, FRAMEPOINT_TOP, x, y)
        if x <= 0.12 then
            DestroyTimer(GetExpiredTimer())
            BlzFrameSetVisible(chain, false)
        end
    end)

end

function ActionPerDestroy(texture, charge)
    if not charge then
        charge = 1
    end
    if texture == "ReplaceableTextures\\CommandButtons\\BTNGolemStormBolt.blp" then
        --print("камень")
        for _ = 1, charge do
            CreateStone()
        end
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNParasite.blp" then
        --print("мурлок")
        for _ = 1, charge do
            CreateEnemy(FourCC("nmtw"))
        end
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNCyclone.blp" then
        --print("циклон")
        for _ = 1, charge do
            CreateTornado("ntor")
        end
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNInnerFire.blp" then
        local delay = 0.7
        --charge=3
        CreateEffectMarkDelay(delay, "EFFECT_Pack_1\\[Orbital Attack and laser's]\\Attack 3\\model (107).mdl", GetUnitX(GPlayer), GetUnitY(GPlayer))
        MarkPillar(GetUnitX(GPlayer), GetUnitY(GPlayer), Boss, delay)
        if charge > 1 then
            TimerStart(CreateTimer(), 0.5, true, function()
                CreateEffectMarkDelay(delay, "EFFECT_Pack_1\\[Orbital Attack and laser's]\\Attack 3\\model (107).mdl", GetUnitX(GPlayer), GetUnitY(GPlayer))
                MarkPillar(GetUnitX(GPlayer), GetUnitY(GPlayer), Boss, delay)
                charge = charge - 1
                if charge <= 0 then
                    DestroyTimer(GetExpiredTimer())
                end
            end)
        end
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNCryptFiendBurrow.blp" then

        local effmodel = "Doodads\\LordaeronSummer\\Terrain\\LoardaeronRockChunks\\LoardaeronRockChunks3"
        local effMark = CreateEffectMarkDelay(3, "EFFECT_Pack_1\\[Energy]\\Energy 3\\model (310).mdl", GetUnitX(GPlayer) + 200, GetUnitY(GPlayer))
        BlzSetSpecialEffectMatrixScale(effMark, 1, 1, 5)
        MarkAndFall(GetUnitX(GPlayer) + 200, GetUnitY(GPlayer), effmodel, Boss)
        if charge > 1 then
            TimerStart(CreateTimer(), 0.5, true, function()
                effMark = CreateEffectMarkDelay(3, "EFFECT_Pack_1\\[Energy]\\Energy 3\\model (310).mdl", GetUnitX(GPlayer) + 200, GetUnitY(GPlayer))
                BlzSetSpecialEffectMatrixScale(effMark, 1, 1, 5)
                MarkAndFall(GetUnitX(GPlayer) + 200, GetUnitY(GPlayer), effmodel, Boss)
                charge = charge - 1
                if charge <= 0 then
                    DestroyTimer(GetExpiredTimer())
                end
            end)
        end
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNTornado" then
        for _ = 1, charge do
            CreateTornado("n001")
        end
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNRepair" then
        CreateAmmo(texture)
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNDivineIntervention" then
        CreateAmmo(texture)
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNEvasion" then
        CreateAmmo(texture)
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNDemolish" then
        CreateAmmo(texture)
    else
        print('переданная текстура не найдена в базе', texture)
    end
end

function CreateStone()
    local xOffset = GetUnitX(GCameraDummy) + 1200
    local yOffset = GetUnitY(GCameraDummy) + GetRandomInt(-800, 200)
    CreateDestructableZ(FourCC("LTrc"), xOffset, yOffset, -50, 0, .95, GetRandomInt(1, 5))
end

function CreateEnemy(id)
    local xOffset = GetUnitX(GCameraDummy) + 1200
    local yOffset = GetUnitY(GCameraDummy) + GetRandomInt(-800, 200)
    local unit = CreateUnit(Player(5), id, xOffset, yOffset, 270)
    IssuePointOrder(unit, "attack", Gxs, Gys)
end

function CreateTornado(id)
    local xOffset = GetUnitX(GCameraDummy) + 1200
    local yOffset = GetUnitY(GCameraDummy) + GetRandomInt(-800, 200)
    local unit = CreateUnit(Player(5), FourCC(id), xOffset, yOffset, 270)
    UnitApplyTimedLife(unit, FourCC('BTLF'), 20)
    TimerStart(CreateTimer(), TIMER_PERIOD64, true, function()
        SetUnitPositionSmooth(unit, GetUnitX(unit) - 3, GetUnitY(unit))
        if not UnitAlive(unit) then
            DestroyTimer(GetExpiredTimer())
        end
    end)
end

function CreateAmmo(texture)
    local xOffset = GetUnitX(GCameraDummy) + 1200
    local yOffset = GetUnitY(GCameraDummy) + GetRandomInt(-800, 200)
    local unit = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), FourCC("n000"), xOffset, yOffset, 270)
    UnitAddAbility(unit, FourCC("Aloc"))
    local eff = AddSpecialEffect(GetEffectFromTexture(texture), xOffset - 20, yOffset)
    BlzSetSpecialEffectZ(eff, -10)
    local thisTrigger = CreateTrigger()
    TriggerRegisterUnitInRange(thisTrigger, unit, 100, nil)
    TriggerAddAction(thisTrigger, function()
        if GetUnitTypeId(GetTriggerUnit()) == FourCC("odes") then
            KillUnit(unit)
            ShowUnit(unit, false)
            DestroyEffect(eff)
            BlzSetSpecialEffectZ(eff, -300)
            DestroyTrigger(thisTrigger)
            ActionAmmo(GetTriggerUnit(), texture)
            local x, y = GetUnitXY(GetTriggerUnit())
            normal_sound("Abilities\\Spells\\Other\\LoadUnload\\Loading", x, y)
        end
    end)
end

function GetEffectFromTexture(texture)
    local s = string.gsub(texture, "ReplaceableTextures\\CommandButtons\\BTN", "Action")
    --print(s)
    return s
end

function ActionAmmo(unit, texture)
    if texture == "ReplaceableTextures\\CommandButtons\\BTNRepair" then
        HealUnit(unit, 50)
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNDivineIntervention" then
        --print("Неуязвимость")
        UnitAddAbility(unit, FourCC("AInv"))
        UnitAddItemById(unit, FourCC("I000"))
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNEvasion" then
        UnitAddBigAura(unit, 5)
    elseif texture == "ReplaceableTextures\\CommandButtons\\BTNDemolish" then
        UnitDestroyAura(unit, 5)
    end
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 20.08.2021 15:49
---
function InitDeathEvent()
    local this = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(this, EVENT_PLAYER_UNIT_DEATH)
    TriggerAddAction(this, function()
        local u = GetTriggerUnit()
        local killer = GetKillingUnit()
        if GetUnitTypeId(u)==FourCC("odes") then
            LivesSheep=LivesSheep-1
            if LivesSheep<0 then
                LivesSheep=0
                CustomDefeatBJ(Player(0),"Больше нет запасных кораблей")
            else
                local x,y=GetUnitXY(GCameraDummy)
                --print("Воскрешаем")
                GPlayer=CreateUnit(Player(0),FourCC("odes"),x-2000,y-200,0)
                RebaseAbility(GPlayer)
                UnitDestroyAura(GPlayer,2)
                --GPlayer = River[1].GetSheep()
            end
        end
    end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 20.08.2021 14:26
---
function CreateEffectMarkDelay(delay, effModel, x, y)
    local eff = AddSpecialEffect(effModel, x, y)
    TimerStart(CreateTimer(), delay, false, function()
        DestroyEffect(eff)
        BlzSetSpecialEffectPosition(eff, 5000, 5000, 00)
    end)
    return eff
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 09.08.2021 23:31
---

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

function Init2Map()
    --вызывается из гуи
    createClass = function()
        local creator = {}
        creator.__private = {
            object_class = {},
        }

        creator.__oncall = function(class_creator)
            -- Get the class definition so we can make needed variables private, static, etc.
            local this = class_creator()
            -- Initialize class from class definition
            __init = function()
                -- Init Public Static
                local class = {}
                if (type(this.__public_static) == "table") then
                    class = this.__public_static
                end

                -- Init Object
                local thisClass = this
                local __constructor = function(...)
                    local object = {}
                    local this = class_creator()

                    -- Init Public
                    if (type(this.__public) == "table") then
                        object = this.__public
                    end

                    -- Init static values of the class
                    this.__public_static = thisClass.__public_static
                    this.__private_static = thisClass.__private_static

                    -- Call Constructor
                    if (type(this.__construct) == "function") then
                        this.__construct(...)
                    end

                    -- Returning constructed object
                    return object
                end
                return { class = class, constructor = __constructor }
            end

            -- Creating class (returning constructor)
            local class_data = __init()
            local class = class_data.class
            local constructor = class_data.constructor

            -- Set class metatable (with setting constructor)
            local class_metatable = {
                __newindex = function(t, key, value)
                    if type(t[key]) == "nil" or type(t[key]) == "function" then
                        error("Attempt to redefine class")
                    end
                    rawset(t, key, value)
                end,
                __metatable = false,
                __call = function(t, ...)
                    if type(t) == nil then
                        error("Class object create failed!")
                    end
                    local obj = constructor(...)
                    creator.__private.object_class[obj] = t
                    local object_metatable = {
                        __newindex = function(t, key, value)
                            class = creator.__private.object_class[t]
                            if type(class[key]) ~= "nil" and type(class[key]) ~= "function" then
                                rawset(class, key, value)
                                return
                            end
                            if type(t[key]) ~= "nil" and type(t[key]) ~= "function" then
                                rawset(t, key, value)
                                return
                            end
                            error("Attempt to redefine object")
                        end,
                        __index = t,
                        __metatable = false,
                    }
                    setmetatable(obj, object_metatable)
                    return obj
                end,
            }

            -- Setting class metatable to the class itself
            setmetatable(class, class_metatable)

            -- Returning resulting class
            return class
        end

        return creator.__oncall
    end
    createClass = createClass()

    RiverToPlayer_Proto = function()
        local this = {}

        this.__public = {
            CamSpeed = 1,
            MoveSpeed = 1,
            TriggerSheepOutCam = function(callback)
                this.__private.sheepOutCamTrigger = callback
            end,
            GetDummy = function()
                return this.__private.dummy
            end,
            GetSheep = function()
                return this.__private.sheep
            end,


        }
        this.__private = {
            sheepOutCamTrigger = function()
            end,
            sheep = nil,
            dummy = nil,
            playerId = nil,
            player = nil,
            startPos = nil,
            currSheepPos = { x = nil, y = nil },
            currDummyPos = { x = nil, y = nil },
            speed = nil,
            endPos = { x = 300000, y = 0 },
            createSheep = function()
                this.__private.sheep = CreateUnit(this.__private.player, FourCC('odes'), this.__private.startPos.x, this.__private.startPos.y, 0)
            end,
            createDummy = function()
                this.__private.dummy = CreateUnit(this.__private.player, FourCC('owyv'), this.__private.startPos.x, this.__private.startPos.y, 0)
                UnitAddAbility(this.__private.dummy,FourCC("Abun"))
            end,
            moveSheep = function()
                TimerStart(CreateTimer(), TIMER_PERIOD64, true, function()
                    local u = this.__private.sheep
                    if not UnitAlive(u) then
                        u = GPlayer
                        this.__private.sheep = GPlayer
                    end
                    this.__private.currSheepPos = { x = GetUnitX(u), y = GetUnitY(u) }
                    unitPos = this.__private.currSheepPos
                    endPos = this.__private.endPos
                    next = vectorCut({ unitPos.x, unitPos.y }, { endPos.x, endPos.y }, this.__public.MoveSpeed / vectorLen({ unitPos.x, unitPos.y }, { endPos.x, endPos.y }))
                    SetUnitPositionSmooth(this.__private.sheep, next[1], next[2])
                    if this.__private.currDummyPos.x - next[1] > 1000 then
                        this.__private.sheepOutCamTrigger()
                    end
                end)
            end,
            moveCam = function()
                SetCameraTargetControllerNoZForPlayer(this.__private.player, this.__private.dummy, 10, 10, true)
                TimerStart(CreateTimer(), TIMER_PERIOD64, true, function()
                    local u = this.__private.dummy
                    this.__private.currDummyPos = { x = GetUnitX(u), y = GetUnitY(u) }
                    if not BossFight then
                        unitPos = this.__private.currDummyPos
                        endPos = this.__private.endPos
                        next = vectorCut({ unitPos.x, unitPos.y }, { endPos.x, endPos.y }, this.__public.CamSpeed / vectorLen({ unitPos.x, unitPos.y }, { endPos.x, endPos.y }))
                        this.__private.speed = next[1] - unitPos.x
                        SetUnitPositionSmooth(this.__private.dummy, next[1], next[2])
                    end
                end)
            end,
            moveSheepToMouse = function()
                maxSpeed = 30
                minSpeed = 5

                MouseX, MouseY = 0, 0
                startPos = this.__private.startPos
                PrevX, PrevY = startPos.x, startPos.y
                local ThisTrigger = CreateTrigger()
                TriggerRegisterPlayerEvent(ThisTrigger, Player(0), EVENT_PLAYER_MOUSE_MOVE)
                TriggerAddAction(ThisTrigger, function()
                    MouseX, MouseY = BlzGetTriggerPlayerMouseX(), BlzGetTriggerPlayerMouseY()
                end)
                TimerStart(CreateTimer(), TIMER_PERIOD64, true, function()
                    local X, Y = MouseX, MouseY
                    if X ~= 0.0 then
                        local u = this.__private.sheep
                        this.__private.currSheepPos = { x = GetUnitX(u), y = GetUnitY(u) }
                        unitPos = this.__private.currSheepPos
                        local speed0 = math.max(
                                math.min(vectorLen({ unitPos.x, unitPos.y }, { X, Y }) / 75,
                                        maxSpeed),
                                minSpeed)
                        local speed = speed0 / vectorLen({ unitPos.x, unitPos.y }, { X, Y })
                        local endX, endY = table.unpack(vectorCut({ unitPos.x, unitPos.y }, { X, Y }, speed))
                        local angle = -180 + AngleBetweenXY(X, Y, unitPos.x, unitPos.y) / bj_DEGTORAD
                        if X == PrevX then
                            X = X + this.__private.speed
                            MouseX = MouseX + this.__private.speed
                        end
                        SetUnitFacing(u, angle)
                        SetUnitPositionSmooth(u, endX, endY)
                        PrevX, PrevY = X, Y
                    else
                        local u = this.__private.sheep
                        this.__private.currSheepPos = { x = GetUnitX(u), y = GetUnitY(u) }
                        unitPos = this.__private.currSheepPos
                        local speed0 = math.max(
                                math.min(vectorLen({ unitPos.x, unitPos.y }, { PrevX, PrevY }) / 75,
                                        maxSpeed),
                                minSpeed)
                        local speed = speed0 / vectorLen({ unitPos.x, unitPos.y }, { PrevX, PrevY })
                        local endX, endY = table.unpack(vectorCut({ unitPos.x, unitPos.y }, { PrevX, PrevY }, speed))
                        local angle = -180 + AngleBetweenXY(PrevX, PrevY, unitPos.x, unitPos.y) / bj_DEGTORAD

                        SetUnitFacing(u, angle)
                        SetUnitPositionSmooth(u, endX, endY)
                        PrevX = PrevX + this.__private.speed
                    end
                end)
            end
        }

        this.__construct = function(playerId, xs, ys)
            this.__private.startPos = { x = xs, y = ys }
            this.__private.playerId = playerId
            this.__private.player = Player(playerId)
            this.__private.createSheep()
            this.__private.createDummy()
            this.__private.moveCam()
            this.__private.moveSheep()
            this.__private.moveSheepToMouse()

        end
        return this
    end
    RiverToPlayer = createClass(RiverToPlayer_Proto)
    River = {}
    local xs, ys = GetPlayerStartLocationX(Player(0)), GetPlayerStartLocationY(Player(0))
    Gxs, Gys = xs, ys
    River[1] = RiverToPlayer(0, xs, ys)
    --MaxX=Gxs
    ----print(xs)
    StartCombiner()
    --local dummy = CreateUnit(Player(0), FourCC('owyv'), xs, ys, 0)
    GCameraDummy = River[1].GetDummy()
    --CreateAndMoveCamera(dummy, 1.8, xs, ys, true)
    --
    --local heroSheep = CreateUnit(Player(0), FourCC('odes'), xs, ys, 0)
    GPlayer = River[1].GetSheep()
    --CreateAndMoveCamera(heroSheep, 2.5, xs, ys)
    RebaseAbility(GPlayer)
    Boss = CreateUnit(Player(1), FourCC('opeo'), xs, ys, 0)
    ShowUnit(Boss, false)
    MAP = 2
    CreateInterFaceMap2()
    InitDeathEvent()
    --CreateJojoReference()
    --
    --Move2Mouse(heroSheep)
    --MouseX, MouseY = xs, ys
    --
    --local ThisTrigger = CreateTrigger()
    --TriggerRegisterPlayerEvent(ThisTrigger, Player(0), EVENT_PLAYER_MOUSE_MOVE)
    --TriggerAddAction(ThisTrigger, function()
    --    MouseX, MouseY = BlzGetTriggerPlayerMouseX(), BlzGetTriggerPlayerMouseY()
    --end)
end
--CUSTOM_CODE
function Trig_Chat_Actions()
    SetUnitAnimation(gg_unit_opeo_0017, "Speep 2")
        SetUnitAnimationByIndex(gg_unit_opeo_0017,S2I(GetEventPlayerChatString()))
end

function InitTrig_Chat()
    gg_trg_Chat = CreateTrigger()
    TriggerRegisterPlayerChatEvent(gg_trg_Chat, Player(0), "", false)
    TriggerAddAction(gg_trg_Chat, Trig_Chat_Actions)
end

function Trig_StartAnimation_Actions()
    SetUnitAnimation(gg_unit_opeo_0017, "Sleep")
    SetUnitAnimation(gg_unit_opeo_0004, "Decay")
        SetUnitAnimationByIndex(gg_unit_opeo_0004,20)
    SetUnitAnimation(gg_unit_opeo_0005, "Sleep")
    SetUnitAnimation(gg_unit_opeo_0014, "Sleep")
        SetUnitAnimationByIndex(gg_unit_opeo_0014,23)
    TriggerSleepAction(1.00)
        SetUnitTimeScale(gg_unit_opeo_0004,0)
end

function InitTrig_StartAnimation()
    gg_trg_StartAnimation = CreateTrigger()
    TriggerAddAction(gg_trg_StartAnimation, Trig_StartAnimation_Actions)
end

function Trig_FixDecay_Conditions()
    if (not (GetTriggerUnit() == gg_unit_opeo_0004)) then
        return false
    end
    return true
end

function Trig_FixDecay_Actions()
        SetUnitTimeScale(gg_unit_opeo_0004,1)
end

function InitTrig_FixDecay()
    gg_trg_FixDecay = CreateTrigger()
    TriggerRegisterLeaveRectSimple(gg_trg_FixDecay, gg_rct_FixAnimStart)
    TriggerAddCondition(gg_trg_FixDecay, Condition(Trig_FixDecay_Conditions))
    TriggerAddAction(gg_trg_FixDecay, Trig_FixDecay_Actions)
end

function Trig_Start_Func004A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(true, GetEnumUnit())
end

function Trig_Start_Func015A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(false, GetEnumUnit())
end

function Trig_Start_Actions()
    AdjustPlayerStateBJ(10000, Player(0), PLAYER_STATE_RESOURCE_GOLD)
    AdjustPlayerStateBJ(10000, Player(0), PLAYER_STATE_RESOURCE_LUMBER)
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_Start_Func004A)
        CreateSpeechEffect()
    udg_sound = "Sound\\Speech\\Chapter1\\Peonl_01"
        CreateAndMoveSpeechImage("start", 6, "left", "PeonEmotion\\normal_left", "Хмррр...ну и долго мы ещё будем тут сидеть, пора исследовать этот остров?", 0,"Пеонетти")
    udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_01"
        CreateAndMoveSpeechImage("end", 6, "right", "PeonEmotion\\thing_right", "Да, пришло время размять булки, пойдёмте, ребята, осмотримся", 6,"Пеонетти")
    TriggerSleepAction(6.00)
        CreateSpeechEffect()
    TriggerSleepAction(6.00)
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_Start_Func015A)
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
    udg_sound = "Sound\\Speech\\Chapter1\\Peonl_02"
        CreateAndMoveSpeechImage("start", 6, "left", "PeonEmotion\\normal_left", "А здесь уже кто-то был, я чувствую запах пота и рыбы", 0,"Пеонльнарёфф")
    udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_02"
        CreateAndMoveSpeechImage("end", 3, "right", "PeonEmotion\\foo", "Это воняет от тебя", 6,"Пеонетти")
    TriggerSleepAction(6.00)
        CreateSpeechEffect()
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
    udg_sound = "Sound\\Speech\\Chapter1\\Peonl_03"
        CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\foo", "Тут..тут глубоко, я не умею плавать", 0,"Пеонльнарёфф")
    udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_03"
        CreateAndMoveSpeechImage("end", 5, "right", "PeonEmotion\\thing_right", "Да ты вообще ничего не умеешь, кроме как строить башни", 5,"Пеонетти")
    TriggerSleepAction(5.00)
        CreateSpeechEffect()
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

function Trig_FirstAttack_Func009A()
        CreateSpeechEffect(GetEnumUnit(),"random",3)
end

function Trig_FirstAttack_Actions()
    DisableTrigger(GetTriggeringTrigger())
    EnableTrigger(gg_trg_KillMurloc)
        TP2Point(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),0)
    TriggerExecute(gg_trg_RestoreBridge)
    CreateNUnitsAtLoc(1, FourCC("nmrl"), Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct________________007), bj_UNIT_FACING)
        JumpOutWater(bj_lastCreatedUnit,45)
    CreateNUnitsAtLoc(1, FourCC("nmrl"), Player(PLAYER_NEUTRAL_AGGRESSIVE), GetRectCenter(gg_rct________________007_____________________u), bj_UNIT_FACING)
        JumpOutWater(bj_lastCreatedUnit,90)
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_FirstAttack_Func009A)
end

function InitTrig_FirstAttack()
    gg_trg_FirstAttack = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_FirstAttack, gg_rct_FirstAttack)
    TriggerAddCondition(gg_trg_FirstAttack, Condition(Trig_FirstAttack_Conditions))
    TriggerAddAction(gg_trg_FirstAttack, Trig_FirstAttack_Actions)
end

function Trig_InitBridge_Func003Func001C()
    if (not (GetDestructableTypeId(GetEnumDestructable()) == FourCC("B003"))) then
        return false
    end
    return true
end

function Trig_InitBridge_Func003A()
    if (Trig_InitBridge_Func003Func001C()) then
        KillDestructable(GetEnumDestructable())
    else
    end
end

function Trig_InitBridge_Actions()
    KillDestructable(gg_dest_B002_2498)
    KillDestructable(gg_dest_B002_4547)
    EnumDestructablesInRectAll(gg_rct_BridgeBlock, Trig_InitBridge_Func003A)
end

function InitTrig_InitBridge()
    gg_trg_InitBridge = CreateTrigger()
    TriggerAddAction(gg_trg_InitBridge, Trig_InitBridge_Actions)
end

function Trig_RestoreBridge_Func003Func001C()
    if (not (GetDestructableTypeId(GetEnumDestructable()) == FourCC("B003"))) then
        return false
    end
    return true
end

function Trig_RestoreBridge_Func003A()
    if (Trig_RestoreBridge_Func003Func001C()) then
        DestructableRestoreLife(GetEnumDestructable(), GetDestructableMaxLife(GetEnumDestructable()), true)
    else
    end
end

function Trig_RestoreBridge_Actions()
    DestructableRestoreLife(gg_dest_B002_2498, GetDestructableMaxLife(gg_dest_B002_2498), true)
    DestructableRestoreLife(gg_dest_B002_4547, GetDestructableMaxLife(gg_dest_B002_4547), true)
    EnumDestructablesInRectAll(gg_rct_BridgeBlock, Trig_RestoreBridge_Func003A)
end

function InitTrig_RestoreBridge()
    gg_trg_RestoreBridge = CreateTrigger()
    TriggerAddAction(gg_trg_RestoreBridge, Trig_RestoreBridge_Actions)
end

function Trig_KillMurloc_Conditions()
    if (not (GetUnitTypeId(GetTriggerUnit()) == FourCC("nmrl"))) then
        return false
    end
    return true
end

function Trig_KillMurloc_Func002Func003A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(true, GetEnumUnit())
end

function Trig_KillMurloc_Func002Func022A()
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
        TriggerExecute(gg_trg_InitBridge)
        DisableTrigger(GetTriggeringTrigger())
        ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_KillMurloc_Func002Func003A)
                CreateSpeechEffect()
        udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_04"
                CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\normal_left", "Да действительно, это воняло не от тебя", 0,"Пеонетти")
        udg_sound = "Sound\\Speech\\Chapter1\\Peonl_04"
                CreateAndMoveSpeechImage("start", 5, "right", "PeonEmotion\\thing_right", "Агрессивные лягушки, я видел таких во франции", 5,"Пеонльнарёфф")
        udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_05"
                CreateAndMoveSpeechImage("end", 7, "left", "PeonEmotion\\angry", "Какая Франция, это другая вселенная, я думаю они из Калимдора", 10,"Пеонетти")
        TriggerSleepAction(5.00)
                CreateSpeechEffect()
        TriggerSleepAction(5.00)
                CreateSpeechEffect()
        TriggerSleepAction(7.00)
        QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UNITACQUIRED, "TRIGSTR_190")
        udg_TMPColorText = "Пассивно связывает всех пеонов эмпатическими узами. Перезарядка: |cffffff0030|r сек. "
                CreateUniversalFrame(0.1, 0.015, 0.03, udg_TMPColorText, "Эмпатия", HERO[0], "ReplaceableTextures\\CommandButtons\\BTNSpiritLink.blp", nil, nil, "empath")
        ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_KillMurloc_Func002Func022A)
    else
    end
end

function InitTrig_KillMurloc()
    gg_trg_KillMurloc = CreateTrigger()
    DisableTrigger(gg_trg_KillMurloc)
    TriggerRegisterAnyUnitEventBJ(gg_trg_KillMurloc, EVENT_PLAYER_UNIT_DEATH)
    TriggerAddCondition(gg_trg_KillMurloc, Condition(Trig_KillMurloc_Conditions))
    TriggerAddAction(gg_trg_KillMurloc, Trig_KillMurloc_Actions)
end

function Trig_ReadTable0607_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_ReadTable0607_Actions()
    DisableTrigger(GetTriggeringTrigger())
    udg_sound = "\"\""
        CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\table", "В нашей жизни бывают ситуации, когда возможности выбрать правильный путь у нас нет.", 0,"Табличка")
    udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_06"
        CreateAndMoveSpeechImage("start", 7, "right", "PeonEmotion\\thing_right", "Это означает, что у нас лишь 1 путь - вниз по этой тропе", 5,"Пеонетти")
    udg_sound = "Sound\\Speech\\Chapter1\\Peonpio_01"
        CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\normal_left", "Если что, теперь я буду запоминать дорогу, чтобы мы не заблудились", 12,"Пеонпио")
    udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_07"
        CreateAndMoveSpeechImage("end", 5, "right", "PeonEmotion\\foo", "Прям, как после того случая", 17,"Пеонетти")
    TriggerSleepAction(5.00)
        CreateSpeechEffect(GetTriggerUnit())
    TriggerSleepAction(5.00)
        AddQuest(true,GetTriggerUnit(),GetUnitXY(gg_unit_nogm_0000))
        CreateUI()
        CreateSpeechEffect()
    TriggerSleepAction(5.00)
        CreateSpeechEffect()
end

function InitTrig_ReadTable0607()
    gg_trg_ReadTable0607 = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_ReadTable0607, gg_rct________________009)
    TriggerAddCondition(gg_trg_ReadTable0607, Condition(Trig_ReadTable0607_Conditions))
    TriggerAddAction(gg_trg_ReadTable0607, Trig_ReadTable0607_Actions)
end

function Trig_FindOrge08_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_FindOrge08_Actions()
    DisableTrigger(GetTriggeringTrigger())
        CreateSpeechEffect(GetTriggerUnit())
        UnitAddBigAura(gg_unit_nogm_0000)
    udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_08"
        CreateAndMoveSpeechImage("start", 7, "left", "PeonEmotion\\normal_left", "Смотрите, ребята, там какой-то громила, наверное, это он всех сожрал", 0,"Пеонетти")
    udg_sound = "Sound\\Speech\\Chapter1\\Peonl_06"
        CreateAndMoveSpeechImage("end", 3, "right", "PeonEmotion\\ready", "Хех, я его не боюсь!", 7,"Пеонльнарёфф")
    TriggerSleepAction(10.00)
    EnableTrigger(gg_trg_OgreRun09)
end

function InitTrig_FindOrge08()
    gg_trg_FindOrge08 = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_FindOrge08, gg_rct________________010)
    TriggerAddCondition(gg_trg_FindOrge08, Condition(Trig_FindOrge08_Conditions))
    TriggerAddAction(gg_trg_FindOrge08, Trig_FindOrge08_Actions)
end

function Trig_OgreRun09_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_OgreRun09_Func003A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(true, GetEnumUnit())
end

function Trig_OgreRun09_Func013A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(false, GetEnumUnit())
end

function Trig_OgreRun09_Actions()
    DisableTrigger(GetTriggeringTrigger())
    TriggerExecute(gg_trg_ReadyTower)
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_OgreRun09_Func003A)
        CreateSpeechEffect(GetTriggerUnit())
    udg_TMPColorText = "Эй здоровяк, я с тобой разговариваю, где все, признавайся!?"
    udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_09"
        CreateAndMoveSpeechImage("start", 7, "left", "PeonEmotion\\angry",udg_TMPColorText, 0,"Пеонетти")
    udg_sound = "Sound\\Speech\\Chapter1\\Peonl_07"
        CreateAndMoveSpeechImage("end", 5, "right", "PeonEmotion\\ready", "Ребята, он уходит, бежим за ним!!!!", 7,"Пеонльнарёфф")
    TriggerSleepAction(7.00)
    IssuePointOrderLocBJ(gg_unit_nogm_0000, "attack", GetRectCenter(gg_rct_OgreDefPlace))
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_OgreRun09_Func013A)
    EnableTrigger(gg_trg_StartAllWave)
        CreateSpeechEffect()
        AddQuest(true,GetTriggerUnit(),GetRectCenterX(gg_rct_OgreDefPlace),GetRectCenterY(gg_rct_OgreDefPlace))
    TriggerSleepAction(3.00)
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_318", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_319", bj_TIMETYPE_ADD, 5.00, true)
end

function InitTrig_OgreRun09()
    gg_trg_OgreRun09 = CreateTrigger()
    DisableTrigger(gg_trg_OgreRun09)
    TriggerRegisterEnterRectSimple(gg_trg_OgreRun09, gg_rct________________011)
    TriggerAddCondition(gg_trg_OgreRun09, Condition(Trig_OgreRun09_Conditions))
    TriggerAddAction(gg_trg_OgreRun09, Trig_OgreRun09_Actions)
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

function Trig_TolkWOrge10_Func030C()
    if (not (udg_OgreOnPlace == true)) then
        return false
    end
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_TolkWOrge10_Conditions()
    if (not Trig_TolkWOrge10_Func030C()) then
        return false
    end
    return true
end

function Trig_TolkWOrge10_Func024A()
    UnitAddAbilityBJ(FourCC("Ahrp"), GetEnumUnit())
end

function Trig_TolkWOrge10_Actions()
    DisableTrigger(GetTriggeringTrigger())
        CreateSpeechEffect(GetTriggerUnit())
    udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_10"
        CreateAndMoveSpeechImage("start", 7, "left", "PeonEmotion\\thing_right", "Ну и что тут происходит? Ты наш враг? я почему-то не могу тебя атаковать?", 0,"Пеонетти")
    udg_sound = "Sound\\Speech\\Chapter1\\Ogre_10"
        CreateAndMoveSpeechImage("start", 10, "right", "PeonEmotion\\OgreNormal", "Моя плохо поимать ваш язык, люди ушли, люди платить мне шашлыком, я убивать мурлок!", 7,"Огр")
    udg_sound = "Sound\\Speech\\Chapter1\\Ogre_11"
        CreateAndMoveSpeechImage("start", 10, "right", "PeonEmotion\\OgreWay", "Башни сломались, бедный огр тяжело, у вас есть кирка, ремонтируй башня!", 17,"Огр")
    udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_11"
        CreateAndMoveSpeechImage("start", 8, "left", "PeonEmotion\\angry", "Так ребята, тряхнём стариной, сделаем, то что у нас получается лучше всего: СТРОИТЬ БАШНИ!", 27,"Пеонетти")
    udg_sound = "Sound\\Speech\\Chapter1\\Peonl_08"
        CreateAndMoveSpeechImage("end", 3, "right", "PeonEmotion\\foo", "Что угодно, только не это…", 35,"Пеонльнарёфф")
    TriggerSleepAction(5.00)
        CreateSpeechEffect(gg_unit_nogm_0000)
    TriggerSleepAction(5.00)
        CreateSpeechEffect(gg_unit_nogm_0000)
    TriggerSleepAction(8.00)
    EnableTrigger(gg_trg_PingTowerPlace)
        BlzFrameSetVisible(map, true)
        CreateSpeechEffect()
    TriggerSleepAction(20.00)
    QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UNITACQUIRED, "TRIGSTR_238")
        CreateUniversalFrame(0.1, 0.015, 0.03, "Бесплатно чинит любые строения и механизмы RMB", "Ремонт", HERO[0], "ReplaceableTextures\\CommandButtons\\BTNRepair.blp", nil, nil, "repair")
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_TolkWOrge10_Func024A)
        AddQuest(true,GetRandomPeon(),GetUnitXY(gg_unit_hctw_0019))
        AddQuest(true,GetRandomPeon(),GetUnitXY(gg_unit_hgtw_0018))
        AddQuest(true,GetRandomPeon(),GetUnitXY(gg_unit_hatw_0020))
    SetPlayerAllianceStateBJ(Player(0), Player(5), bj_ALLIANCE_ALLIED_VISION)
    SetPlayerAllianceStateBJ(Player(5), Player(0), bj_ALLIANCE_ALLIED_VISION)
end

function InitTrig_TolkWOrge10()
    gg_trg_TolkWOrge10 = CreateTrigger()
    TriggerRegisterUnitInRangeSimple(gg_trg_TolkWOrge10, 256, gg_unit_nogm_0000)
    TriggerAddCondition(gg_trg_TolkWOrge10, Condition(Trig_TolkWOrge10_Conditions))
    TriggerAddAction(gg_trg_TolkWOrge10, Trig_TolkWOrge10_Actions)
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

function Trig_Fire1209_Func008C()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    if (not (udg_OgreOnPlace == true)) then
        return false
    end
    return true
end

function Trig_Fire1209_Conditions()
    if (not Trig_Fire1209_Func008C()) then
        return false
    end
    return true
end

function Trig_Fire1209_Actions()
    DisableTrigger(GetTriggeringTrigger())
        CreateSpeechEffect(GetTriggerUnit())
    udg_sound = "Sound\\Speech\\Chapter1\\Peonl_09"
        CreateAndMoveSpeechImage("start", 3, "left", "PeonEmotion\\normal_left", "Эта башня горит, несите воду!", 0,"Пеонльнарёфф")
    udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_12"
        CreateAndMoveSpeechImage("end", 3, "left", "PeonEmotion\\angry", "Улыбаемся и машем кирками", 3,"Пеонетти")
end

function InitTrig_Fire1209()
    gg_trg_Fire1209 = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Fire1209, gg_rct_FireTower)
    TriggerAddCondition(gg_trg_Fire1209, Condition(Trig_Fire1209_Conditions))
    TriggerAddAction(gg_trg_Fire1209, Trig_Fire1209_Actions)
end

function Trig_Fire_Copy1310_Func008C()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    if (not (udg_OgreOnPlace == true)) then
        return false
    end
    return true
end

function Trig_Fire_Copy1310_Conditions()
    if (not Trig_Fire_Copy1310_Func008C()) then
        return false
    end
    return true
end

function Trig_Fire_Copy1310_Actions()
    DisableTrigger(GetTriggeringTrigger())
        CreateSpeechEffect(GetTriggerUnit())
    udg_sound = "Sound\\Speech\\Chapter1\\Peonl_10"
        CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\normal_left", "Башня почти обуглена, как я её чинить киркой-то буду?", 0,"Пеонльнарёфф")
    udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_13"
        CreateAndMoveSpeechImage("end", 3, "right", "PeonEmotion\\angry", "Улыбаемся и машем", 5,"Пеонетти")
end

function InitTrig_Fire_Copy1310()
    gg_trg_Fire_Copy1310 = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Fire_Copy1310, gg_rct_FireTower2)
    TriggerAddCondition(gg_trg_Fire_Copy1310, Condition(Trig_Fire_Copy1310_Conditions))
    TriggerAddAction(gg_trg_Fire_Copy1310, Trig_Fire_Copy1310_Actions)
end

function Trig_Fire_Copy_Copy1411_Func008C()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    if (not (udg_OgreOnPlace == true)) then
        return false
    end
    return true
end

function Trig_Fire_Copy_Copy1411_Conditions()
    if (not Trig_Fire_Copy_Copy1411_Func008C()) then
        return false
    end
    return true
end

function Trig_Fire_Copy_Copy1411_Actions()
    DisableTrigger(GetTriggeringTrigger())
        CreateSpeechEffect(GetTriggerUnit())
    udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_14"
        CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\normal_left", "Этот камень горит, махайте кирками быстрее", 0,"Пеонетти")
    udg_sound = "Sound\\Speech\\Chapter1\\Peonl_11"
        CreateAndMoveSpeechImage("end", 3,"right", "PeonEmotion\\foo", "ААА, ненавижу работать!", 5,"Пеонльнарёфф")
end

function InitTrig_Fire_Copy_Copy1411()
    gg_trg_Fire_Copy_Copy1411 = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Fire_Copy_Copy1411, gg_rct_FireTower3)
    TriggerAddCondition(gg_trg_Fire_Copy_Copy1411, Condition(Trig_Fire_Copy_Copy1411_Conditions))
    TriggerAddAction(gg_trg_Fire_Copy_Copy1411, Trig_Fire_Copy_Copy1411_Actions)
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
    UnitAddAbilityBJ(FourCC("A001"), gg_unit_hwtw_0024)
end

function InitTrig_ReadyTower()
    gg_trg_ReadyTower = CreateTrigger()
    TriggerAddAction(gg_trg_ReadyTower, Trig_ReadyTower_Actions)
end

function Trig_RepairTower_Func004C()
    if (not (GetTriggerUnit() ~= gg_unit_hwtw_0024)) then
        return false
    end
    return true
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

function Trig_RepairTower_Func009C()
    if (not (GetTriggerUnit() == gg_unit_hwtw_0024)) then
        return false
    end
    return true
end

function Trig_RepairTower_Actions()
    UnitRemoveAbilityBJ(FourCC("Abun"), GetTriggerUnit())
    UnitRemoveAbilityBJ(FourCC("Avul"), GetTriggerUnit())
    UnitRemoveAbilityBJ(FourCC("A001"), GetTriggerUnit())
    if (Trig_RepairTower_Func004C()) then
        udg_TowerRepairCount = (udg_TowerRepairCount + 1)
    else
    end
    if (Trig_RepairTower_Func005C()) then
        QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UPDATED, "TRIGSTR_250")
                AddQuest(true,GetRandomPeon(),GetRectCenterX(gg_rct_OgreDefPlace),GetRectCenterY(gg_rct_OgreDefPlace))
        udg_TowerIsRepair = true
    else
        QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UPDATED, ("|cff008000Задание обновилось:|r Отремонтированы башни " .. (I2S(udg_TowerRepairCount) .. "/3")))
    end
    if (Trig_RepairTower_Func006C()) then
        udg_sound = "Sound\\Speech\\Chapter1\\Peonl_13"
                CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\thing_right", "Интересно, а кто управляет этими башнями?", 0,"Пеонльнарёфф")
        udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_16"
                CreateAndMoveSpeechImage("end", 3, "right", "PeonEmotion\\angry", "Возможно это всё магия союзного стенда", 5,"Пеонетти")
                CreateSpeechEffect()
        TriggerSleepAction(5.00)
                CreateSpeechEffect()
    else
    end
    if (Trig_RepairTower_Func007C()) then
                CreateSpeechEffect()
        udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_17"
                CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\thing_right", "Возможно, так и появились эти руины справа", 0,"Пеонетти")
        udg_sound = "Sound\\Speech\\Chapter1\\Peonl_14"
                CreateAndMoveSpeechImage("end", 3, "right", "PeonEmotion\\angry", "Главное, чтобы она начала стрелять не-по-нам", 5,"Пеонльнарёфф")
        TriggerSleepAction(5.00)
                CreateSpeechEffect()
        TriggerSleepAction(10.00)
        SetUnitInvulnerable(GetTriggerUnit(), true)
    else
    end
    if (Trig_RepairTower_Func008C()) then
                CreateSpeechEffect()
        udg_sound = "Sound\\Speech\\Chapter1\\Peonl_12"
                CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\thing_right", "Хмм, ну и кто заряжает в неё эти стрелы?", 0,"Пеонльнарёфф")
        udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_15"
                CreateAndMoveSpeechImage("end", 5, "right", "PeonEmotion\\foo", "Скорее всего кто, очень маленький... прям как твой на холоде", 5,"Пеонетти")
        TriggerSleepAction(5.00)
                CreateSpeechEffect()
    else
    end
    if (Trig_RepairTower_Func009C()) then
                CreateSpeechEffect()
        udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_18"
                CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\thing_right", "Кто-нибудь знает, зачем мы это починили?", 0,"Пеонетти")
        udg_sound = "Sound\\Speech\\Chapter1\\Peonpio_02"
                CreateAndMoveSpeechImage("end", 2, "right", "PeonEmotion\\angry", "Бесполезная башня", 5,"Пеонпио")
        TriggerSleepAction(5.00)
                CreateSpeechEffect()
    else
    end
end

function InitTrig_RepairTower()
    gg_trg_RepairTower = CreateTrigger()
    TriggerRegisterUnitLifeEvent(gg_trg_RepairTower, gg_unit_hctw_0019, GREATER_THAN_OR_EQUAL, 499.00)
    TriggerRegisterUnitLifeEvent(gg_trg_RepairTower, gg_unit_hgtw_0018, GREATER_THAN_OR_EQUAL, 499.00)
    TriggerRegisterUnitLifeEvent(gg_trg_RepairTower, gg_unit_hatw_0020, GREATER_THAN_OR_EQUAL, 499.00)
    TriggerRegisterUnitLifeEvent(gg_trg_RepairTower, gg_unit_hwtw_0024, GREATER_THAN_OR_EQUAL, 499.00)
    TriggerAddAction(gg_trg_RepairTower, Trig_RepairTower_Actions)
end

function Trig_ShowHP_Actions()
    UnitRemoveAbilityBJ(FourCC("Avul"), GetTriggerUnit())
end

function InitTrig_ShowHP()
    gg_trg_ShowHP = CreateTrigger()
    TriggerRegisterUnitLifeEvent(gg_trg_ShowHP, gg_unit_hctw_0019, GREATER_THAN_OR_EQUAL, 10.00)
    TriggerRegisterUnitLifeEvent(gg_trg_ShowHP, gg_unit_hgtw_0018, GREATER_THAN_OR_EQUAL, 10.00)
    TriggerRegisterUnitLifeEvent(gg_trg_ShowHP, gg_unit_hatw_0020, GREATER_THAN_OR_EQUAL, 10.00)
    TriggerRegisterUnitLifeEvent(gg_trg_ShowHP, gg_unit_hwtw_0024, GREATER_THAN_OR_EQUAL, 10.00)
    TriggerAddAction(gg_trg_ShowHP, Trig_ShowHP_Actions)
end

function Trig_TolkWOrgeAfterRepair_Func014C()
    if (not (udg_TowerIsRepair == true)) then
        return false
    end
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_TolkWOrgeAfterRepair_Conditions()
    if (not Trig_TolkWOrgeAfterRepair_Func014C()) then
        return false
    end
    return true
end

function Trig_TolkWOrgeAfterRepair_Actions()
    DisableTrigger(GetTriggeringTrigger())
        CreateSpeechEffect(GetTriggerUnit())
    udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_19"
        CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\normal_left", "Дело сделано, теперь башни на страже города, а куда бегут эти твари?", 0,"Пеонетти")
    udg_sound = "Sound\\Speech\\Chapter1\\Ogre_19"
        CreateAndMoveSpeechImage("end", 5, "right", "PeonEmotion\\OgreTalk", "Моя не знать, зелёные надо идти на вершину горы, чтобы узнать", 5,"Пеонльнарёфф")
    TriggerSleepAction(5.00)
        CreateSpeechEffect(gg_unit_nogm_0000)
        AddQuest(true,GetRandomPeon(),GetUnitXY(gg_unit_ndqs_0026))
    SetUnitAnimation(gg_unit_nogm_0000, "sleep")
    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("opeo"), "TRIGSTR_324", GetRectCenter(GetPlayableMapRect()), nil, "TRIGSTR_325", bj_TIMETYPE_ADD, 5.00, true)
end

function InitTrig_TolkWOrgeAfterRepair()
    gg_trg_TolkWOrgeAfterRepair = CreateTrigger()
    TriggerRegisterUnitInRangeSimple(gg_trg_TolkWOrgeAfterRepair, 256, gg_unit_nogm_0000)
    TriggerAddCondition(gg_trg_TolkWOrgeAfterRepair, Condition(Trig_TolkWOrgeAfterRepair_Conditions))
    TriggerAddAction(gg_trg_TolkWOrgeAfterRepair, Trig_TolkWOrgeAfterRepair_Actions)
end

function Trig_Init_Func004Func001C()
    if (not (GetDestructableTypeId(GetEnumDestructable()) == FourCC("B001"))) then
        return false
    end
    return true
end

function Trig_Init_Func004A()
    if (Trig_Init_Func004Func001C()) then
        KillDestructable(GetEnumDestructable())
    else
    end
end

function Trig_Init_Actions()
    UnitAddAbilityBJ(FourCC("Avul"), gg_unit_ndqs_0026)
    UnitAddAbilityBJ(FourCC("Abun"), gg_unit_ndqs_0026)
    UnitAddAbilityBJ(FourCC("A007"), gg_unit_ndqs_0026)
    EnumDestructablesInRectAll(gg_rct_StonesBlock, Trig_Init_Func004A)
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

function Trig_DemonessEnter_Func002Func003C()
    if (not (udg_GR == 1)) then
        return false
    end
    return true
end

function Trig_DemonessEnter_Func002Func004C()
    if (not (udg_GR == 2)) then
        return false
    end
    return true
end

function Trig_DemonessEnter_Func002Func005C()
    if (not (udg_GR == 3)) then
        return false
    end
    return true
end

function Trig_DemonessEnter_Func002Func006C()
    if (not (udg_GR == 4)) then
        return false
    end
    return true
end

function Trig_DemonessEnter_Func002Func008A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(false, GetEnumUnit())
end

function Trig_DemonessEnter_Func002Func009A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(false, GetEnumUnit())
end

function Trig_DemonessEnter_Func002Func033A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(true, GetEnumUnit())
    SetUnitFacingToFaceUnitTimed(GetEnumUnit(), gg_unit_ndqs_0026, 0.00)
end

function Trig_DemonessEnter_Func002Func037A()
    SelectUnitAddForPlayer(GetEnumUnit(), Player(0))
    PauseUnitBJ(false, GetEnumUnit())
    IssuePointOrderLocBJ(GetEnumUnit(), "move", GetRectCenter(gg_rct_RescuePoint))
end

function Trig_DemonessEnter_Func002Func039Func001C()
    if (not (GetDestructableTypeId(GetEnumDestructable()) == FourCC("B001"))) then
        return false
    end
    return true
end

function Trig_DemonessEnter_Func002Func039A()
    if (Trig_DemonessEnter_Func002Func039Func001C()) then
        CreateDestructableLoc(FourCC("LTrc"), GetDestructableLoc(GetEnumDestructable()), GetRandomDirectionDeg(), 1, GetRandomInt(1, 5))
    else
    end
end

function Trig_DemonessEnter_Func002C()
    if (not (udg_TowerIsRepair == true)) then
        return false
    end
    return true
end

function Trig_DemonessEnter_Actions()
    PlaySoundOnUnitBJ(gg_snd_SuccubusPissed3, 100, gg_unit_ndqs_0026)
    if (Trig_DemonessEnter_Func002C()) then
        DisableTrigger(GetTriggeringTrigger())
        DisableTrigger(gg_trg_StartAllWave)
        KillUnit(gg_unit_nogm_0000)
        udg_VictorySheep = true
        SetUnitOwner(gg_unit_odes_0027, Player(5), true)
                TP2Point(2309,2404,0)
                SelectedAllPeon()
                AddQuest(true,GetTriggerUnit(),GetUnitXY(gg_unit_odes_0027))
        udg_sound = "Sound\\Speech\\Chapter1\\Demonesa_02"
                CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\DemonLeft", "Где моя еда!!!???", 0,"Демонесса")
        udg_sound = "Sound\\Speech\\Chapter1\\Peonpio_03"
                CreateAndMoveSpeechImage("start", 5, "right", "PeonEmotion\\foo", "Какая еда, мы не доставка пиццы", 5,"Пеонпио")
        udg_sound = "Sound\\Speech\\Chapter1\\Demonesa_05"
                CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\DemonAngry", "Тогда сегодня на ужин у меня будет, черепаший суп!", 10,"Демонесса")
        udg_sound = "Sound\\Speech\\Chapter1\\Peonl_15"
                CreateAndMoveSpeechImage("start", 5, "right", "PeonEmotion\\foo", "Что то-то я не вижу тут черепах", 15,"Пеонльнарёфф")
        udg_sound = "Sound\\Speech\\Chapter1\\Demonesa_heh"
                CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\DemonBobs", "(Звуки демонической магии)", 20,"Демонесса")
        udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_20"
                CreateAndMoveSpeechImage("end", 5, "right", "PeonEmotion\\foo", "О нет, она превратила Пеонльнарёфа в черепаху, бежим отсюда!", 25,"Пеонетти")
                CreateSpeechEffect(GetTriggerUnit())
        ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_DemonessEnter_Func002Func033A)
        TriggerSleepAction(25.00)
        IssueTargetOrderBJ(gg_unit_ndqs_0026, "hex", GetTriggerUnit())
                CreateSpeechEffect()
        ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_DemonessEnter_Func002Func037A)
                StartDemonessa(gg_unit_ndqs_0026)
        EnumDestructablesInRectAll(gg_rct_StonesBlock, Trig_DemonessEnter_Func002Func039A)
    else
        DisableTrigger(GetTriggeringTrigger())
        udg_GR = GetRandomInt(1, 4)
        if (Trig_DemonessEnter_Func002Func003C()) then
                        CreateSpeechEffect(gg_unit_ndqs_0026,"smileys_quest")
            udg_sound = "Sound\\Speech\\Chapter1\\Demonesa_01"
                        CreateAndMoveSpeechImage("start", 3, "left", "PeonEmotion\\DemonLeft", "Прочь!!!", 0,"Демонесса")
        else
        end
        if (Trig_DemonessEnter_Func002Func004C()) then
                        CreateSpeechEffect(gg_unit_ndqs_0026,"smileys_quest")
            udg_sound = "Sound\\Speech\\Chapter1\\Demonesa_03"
                        CreateAndMoveSpeechImage("start", 3, "left", "PeonEmotion\\DemonLeft", "А вы ещё кто? Проваливайте!", 0,"Демонесса")
        else
        end
        if (Trig_DemonessEnter_Func002Func005C()) then
                        CreateSpeechEffect(gg_unit_ndqs_0026,"smileys_quest")
            udg_sound = "Sound\\Speech\\Chapter1\\Demonesa_04"
                        CreateAndMoveSpeechImage("start", 3, "left", "PeonEmotion\\DemonLeft", "У меня скоро обед!", 0,"Демонесса")
        else
        end
        if (Trig_DemonessEnter_Func002Func006C()) then
                        CreateSpeechEffect(gg_unit_ndqs_0026,"smileys_quest")
            udg_sound = "Sound\\Speech\\Chapter1\\Demonesa_06"
                        CreateAndMoveSpeechImage("start", 3, "left", "PeonEmotion\\DemonLeft", "В очередь!", 0,"Демонесса")
        else
        end
                TP2Point(530,-1320)
        ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_DemonessEnter_Func002Func008A)
        ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_DemonessEnter_Func002Func009A)
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

function Trig_Empty21_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_Empty21_Actions()
    DisableTrigger(GetTriggeringTrigger())
    PauseUnitBJ(true, GetTriggerUnit())
        CreateSpeechEffect(GetTriggerUnit())
    udg_sound = "Sound\\Speech\\Chapter1\\Peonpio_04"
        CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\normal_left", "Посмотрите какая интересная труба, однако в ней пусто", 0,"Пеонпио")
    udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_21"
        CreateAndMoveSpeechImage("end", 5, "right", "PeonEmotion\\ready", "Ты вечно думаешь о каких-то отверстиях, иди в другой посмотри!", 5,"Пеонетти")
    TriggerSleepAction(5.00)
    PauseUnitBJ(false, GetTriggerUnit())
        CreateSpeechEffect()
end

function InitTrig_Empty21()
    gg_trg_Empty21 = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Empty21, gg_rct_HealEpmty)
    TriggerAddCondition(gg_trg_Empty21, Condition(Trig_Empty21_Conditions))
    TriggerAddAction(gg_trg_Empty21, Trig_Empty21_Actions)
end

function Trig_FindHeal22_Conditions()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    return true
end

function Trig_FindHeal22_Actions()
    DisableTrigger(GetTriggeringTrigger())
    PauseUnitBJ(true, GetTriggerUnit())
        CreateSpeechEffect(GetTriggerUnit())
    udg_TMPColorText = "Что там, пызырёк с неизвестной зелёной жидкостью, что может пойти не так если мы это попробуем?"
    udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_22"
        CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\normal_left", udg_TMPColorText, 0,"Пеонетти")
    udg_sound = "Sound\\Speech\\Chapter1\\Peonpio_05"
        CreateAndMoveSpeechImage("end", 5, "right", "PeonEmotion\\foo", "Ребята, а это классная штука, похожа на колу", 5,"Пеонпио")
    TriggerSleepAction(5.00)
        CreateSpeechEffect()
    PauseUnitBJ(false, GetTriggerUnit())
    TriggerSleepAction(5.00)
    QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UNITACQUIRED, "TRIGSTR_247")
        CreateUniversalFrame(0.1, 0.015, 0.03, "Исцеляет самого раненного пеона каждые 30 секунд", "Зелье лечения", HERO[0], "ReplaceableTextures\\CommandButtons\\BTNPotionGreen.blp", nil, nil, "heal")
end

function InitTrig_FindHeal22()
    gg_trg_FindHeal22 = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_FindHeal22, gg_rct_HealFinder)
    TriggerAddCondition(gg_trg_FindHeal22, Condition(Trig_FindHeal22_Conditions))
    TriggerAddAction(gg_trg_FindHeal22, Trig_FindHeal22_Actions)
end

function Trig_Victory25_Func022C()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    if (not (udg_VictorySheep == true)) then
        return false
    end
    return true
end

function Trig_Victory25_Conditions()
    if (not Trig_Victory25_Func022C()) then
        return false
    end
    return true
end

function Trig_Victory25_Func014A()
    PlaySoundAtPointBJ(gg_snd_Loading, 100, GetUnitLoc(GetEnumUnit()), 0)
    ShowUnitHide(GetEnumUnit())
    udg_SavedPeons = (udg_SavedPeons + 1)
    QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UPDATED, ("|cff008000Задание обновилось:|r Спасено пеонов " .. (I2S(udg_SavedPeons) .. "/5")))
end

function Trig_Victory25_Actions()
    DisableTrigger(GetTriggeringTrigger())
    SetUnitOwner(gg_unit_odes_0027, Player(5), true)
    SetPlayerAllianceStateBJ(Player(0), Player(5), bj_ALLIANCE_ALLIED_VISION)
    SetPlayerAllianceStateBJ(Player(5), Player(0), bj_ALLIANCE_ALLIED_VISION)
        CreateSpeechEffect(GetTriggerUnit())
        UnitAddBigAura(gg_unit_odes_0027)
    udg_sound = "Sound\\Speech\\Chapter1\\Peonetty_25"
        CreateAndMoveSpeechImage("start", 5, "left", "PeonEmotion\\normal_left", "Ура спасение, она что совсем сдурела?", 0,"Пеонетти")
    udg_sound = "Sound\\Speech\\Chapter1\\Demonesa_07"
        CreateAndMoveSpeechImage("end", 5, "right", "PeonEmotion\\DemonAngry", "Я только начала пеонята", 5,"Демонесса")
    TriggerSleepAction(5.00)
        UnitAddBigAura(gg_unit_odes_0027)
        StartForSheep(gg_unit_ndqs_0026,gg_unit_odes_0027)
    ForGroupBJ(GetUnitsInRectOfPlayer(GetPlayableMapRect(), Player(0)), Trig_Victory25_Func014A)
    IssuePointOrderLocBJ(gg_unit_odes_0027, "move", GetRectCenter(gg_rct_Region_030))
    SetCameraTargetControllerNoZForPlayer(Player(0), gg_unit_odes_0027, 0, 0, false)
    SetCameraFieldForPlayer(Player(0), CAMERA_FIELD_TARGET_DISTANCE, 4000.00, 10.00)
    TriggerSleepAction(10.00)
    CustomVictoryBJ(Player(0), true, false)
    TriggerSleepAction(1.00)
    SaveAndChangeLevelBJ("SaveFile.w3z", "Maps\\Map1.w3x", false)
end

function InitTrig_Victory25()
    gg_trg_Victory25 = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Victory25, gg_rct_RescuePoint)
    TriggerAddCondition(gg_trg_Victory25, Condition(Trig_Victory25_Conditions))
    TriggerAddAction(gg_trg_Victory25, Trig_Victory25_Actions)
end

function Trig_Sound_Func005C()
    if (not (GetOwningPlayer(GetTriggerUnit()) == Player(0))) then
        return false
    end
    if (not (udg_VictorySheep == true)) then
        return false
    end
    return true
end

function Trig_Sound_Conditions()
    if (not Trig_Sound_Func005C()) then
        return false
    end
    return true
end

function Trig_Sound_Actions()
    PlaySoundAtPointBJ(gg_snd_Loading, 100, GetUnitLoc(GetTriggerUnit()), 0)
    ShowUnitHide(GetTriggerUnit())
    udg_SavedPeons = (udg_SavedPeons + 1)
    QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_UPDATED, ("|cff008000Задание обновилось:|r Спасено пеонов " .. (I2S(udg_SavedPeons) .. "/5")))
end

function InitTrig_Sound()
    gg_trg_Sound = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Sound, gg_rct_RescuePoint)
    TriggerAddCondition(gg_trg_Sound, Condition(Trig_Sound_Conditions))
    TriggerAddAction(gg_trg_Sound, Trig_Sound_Actions)
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
    InitTrig_Chat()
    InitTrig_StartAnimation()
    InitTrig_FixDecay()
    InitTrig_Start()
    InitTrig_NewCamp()
    InitTrig_Brod()
    InitTrig_FirstAttack()
    InitTrig_InitBridge()
    InitTrig_RestoreBridge()
    InitTrig_KillMurloc()
    InitTrig_ReadTable0607()
    InitTrig_FindOrge08()
    InitTrig_OgreRun09()
    InitTrig_StartAllWave()
    InitTrig_OnPlaceOrge()
    InitTrig_TolkWOrge10()
    InitTrig_PingTowerPlace()
    InitTrig_Fire1209()
    InitTrig_Fire_Copy1310()
    InitTrig_Fire_Copy_Copy1411()
    InitTrig_ReadyTower()
    InitTrig_RepairTower()
    InitTrig_ShowHP()
    InitTrig_TolkWOrgeAfterRepair()
    InitTrig_Init()
    InitTrig_DemonessEnter()
    InitTrig_Empty21()
    InitTrig_FindHeal22()
    InitTrig_Victory25()
    InitTrig_Sound()
    InitTrig_PeonDead()
    InitTrig_Aly6()
    InitTrig_DisableAttack()
    InitTrig_Black()
end

function RunInitializationTriggers()
    ConditionalTriggerExecute(gg_trg_StartAnimation)
    ConditionalTriggerExecute(gg_trg_InitBridge)
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
    InitSounds()
    CreateRegions()
    CreateAllDestructables()
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
    DefineStartLocation(0, -4096.0, 5120.0)
    InitCustomPlayerSlots()
    InitCustomTeams()
end

