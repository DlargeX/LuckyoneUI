local L1UI, E, L, V, P, G = unpack(select(2, ...))

local _G = _G
local SetCVar = SetCVar
local IsAddOnLoaded = IsAddOnLoaded

-- LuckyoneUI print
function L1UI:Print(msg)
	print('|cff4beb2cLuckyoneUI|r: '..msg)
end

-- Hide certain Blizzard Frames
function L1UI:DisabledFrames()

	if E.private.L1UI.disabledFrames.BossBanner == true then
		_G.BossBanner:UnregisterAllEvents()
	end

	if E.private.L1UI.disabledFrames.LevelUpDisplay == true then
		_G.LevelUpDisplay:UnregisterAllEvents()
	end

	if E.private.L1UI.disabledFrames.ZoneTextFrame == true then
		_G.ZoneTextFrame:UnregisterAllEvents()
	end

	if E.private.L1UI.disabledFrames.AlertFrame == true then
		_G.AlertFrame:UnregisterAllEvents()
	end
end

-- AddOnSkins Profile
function L1UI:AddonSetupAS()

	if IsAddOnLoaded('AddOnSkins') then
		L1UI:GetASProfile()
		L1UI:Print('AddOnSkins profile has been set.')
	end
end

-- BigWigs Profile
function L1UI:AddonSetupBW()

	if IsAddOnLoaded('BigWigs') then
		L1UI:GetBigWigsProfile()
		L1UI:Print('BigWigs profile has been set.')
	end
end

-- Details Profile
function L1UI:AddonSetupDT()

	if IsAddOnLoaded('Details') then
		L1UI:GetDetailsProfile()
		L1UI:Print('Details profile has been set.')
	end
end

-- OmniCD Profile
function L1UI:AddonSetupOCD()

	if IsAddOnLoaded('OmniCD') then
		L1UI:GetOmniCDProfile()
		L1UI:Print('OmniCD profile has been set.')
	end
end

-- ProjectAzilroka Profile
function L1UI:AddonSetupPA()

	if IsAddOnLoaded('ProjectAzilroka') then
		L1UI:GetPAProfile()
		L1UI:Print('ProjectAzilroka profile has been set.')
	end
end

-- Shadow&Light Profile
function L1UI:AddonSetupSLE()

	if IsAddOnLoaded('ElvUI_SLE') then
		L1UI:GetSLEProfile()
		L1UI:Print('Shadow&Light profile has been set.')
	end
end

-- CVars General
function L1UI:SetupCVars()

	-- ElvUI CVars
	E:SetupCVars(noDisplayMsg)

	SetCVar('advancedCombatLogging', 1)
	SetCVar('cameraDistanceMaxZoomFactor', 2.6)
	SetCVar('ffxDeath', 0)
	SetCVar('rawMouseEnable', 1)
	SetCVar('SpellQueueWindow', 50)

	L1UI:Print('CVars have been set.')
end

-- CVars NamePlates
function L1UI:NameplateReset()

	-- NamePlate CVars
	SetCVar('nameplateLargerScale', 1)
	SetCVar('nameplateMinAlpha', 1)
	SetCVar('nameplateMinScale', 1)
	SetCVar('nameplateMotion', 1)
	SetCVar('nameplateOccludedAlphaMult', 1)
	SetCVar('nameplateOverlapH', 1)
	SetCVar('nameplateOverlapV', 1.6)
	SetCVar('nameplateSelectedScale', 1)
	SetCVar('nameplateSelfAlpha', 1)

	-- Name CVars
	SetCVar('UnitNameEnemyGuardianName', 1)
	SetCVar('UnitNameEnemyMinionName', 1)
	SetCVar('UnitNameEnemyPetName', 1)
	SetCVar('UnitNameEnemyPlayerName', 1)
	SetCVar('UnitNameEnemyTotem', 1)

	L1UI:Print('NamePlate CVars have been reset to default.')
end

-- Private DB
function L1UI:SetupPrivate()

	-- ElvUI Private DB
	E.private["general"]["chatBubbleFont"] = "Expressway"
	E.private["general"]["dmgfont"] = "Expressway"
	E.private["general"]["glossTex"] = "Solid"
	E.private["general"]["namefont"] = "Expressway"
	E.private["general"]["normTex"] = "Solid"
	E.private["general"]["totemBar"] = false
	E.private["install_complete"] = "11.52"
	E.private["skins"]["parchmentRemoverEnable"] = true

	E:StaggeredUpdateAll(nil, true)

	L1UI:Print('Note: Fonts do not change until you restart WoW.')
end

-- Global DB
function L1UI:SetupGlobal()

	-- ElvUI Global DB
	E.global["general"]["commandBarSetting"] = "DISABLED"
	E.global["general"]["mapAlphaWhenMoving"] = 0.35
	E.global["general"]["smallerWorldMapScale"] = 0.8
	E.global["general"]["WorldMapCoordinates"]["position"] = "TOPLEFT"

	-- Custom DataText
	do
		E.DataTexts:BuildPanelFrame("Luckyone_ActionBars_DT")
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["backdrop"] = true
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["border"] = true
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["enable"] = true
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["fonts"]["enable"] = true
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["fonts"]["font"] = "Expressway"
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["fonts"]["fontOutline"] = "NONE"
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["fonts"]["fontSize"] = 12
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["frameLevel"] = 1
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["frameStrata"] = "LOW"
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["growth"] = "HORIZONTAL"
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["height"] = 13
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["mouseover"] = false
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["name"] = "Luckyone_ActionBars_DT"
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["numPoints"] = 3
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["panelTransparency"] = true
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["textJustify"] = "CENTER"
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["tooltipAnchor"] = "ANCHOR_TOP"
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["tooltipXOffset"] = 0
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["tooltipYOffset"] = 5
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["visibility"] = "[petbattle] hide;show"
		E.global["datatexts"]["customPanels"]["Luckyone_ActionBars_DT"]["width"] = 358
	end
end

-- UI Scale
function L1UI:SetupScale()

	E.global["general"]["UIScale"] = 0.71111111111111
	SetCVar('uiScale', 0.71111111111111)
end
