local L1UI, E, L, V, P, G = unpack(select(2, ...))
local CH = E:GetModule('Chat')
local LuckyDT

local print = print

local IsAddOnLoaded = IsAddOnLoaded
local ReloadUI = ReloadUI
local SetCVar = SetCVar

-- Chat print
function L1UI:Print(msg)
	print(L1UI.Name..': '..msg)
end

-- Reload popup
E.PopupDialogs.L1UI_RL = {
	text = "Reload required - continue?",
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = ReloadUI,
	whileDead = 1,
	hideOnEscape = false,
}

-- Version check popup
E.PopupDialogs.L1UI_VC = {
	text = "Your ElvUI is outdated - please update and reload.",
	button1 = OKAY,
	whileDead = 1,
	hideOnEscape = false,
}

-- Version check
function L1UI:VersionCheck()
	if E.Retail and E.version < 12.63 then
		E:StaticPopup_Show('L1UI_VC')
		L1UI:Print('|cffbf0008Your ElvUI is outdated - please update and reload.|r')
	elseif E.TBC and E.version < 2.35 then
		E:StaticPopup_Show('L1UI_VC')
		L1UI:Print('|cffbf0008Your ElvUI is outdated - please update and reload.|r')
	elseif E.Classic and E.version < 1.61 then
		E:StaticPopup_Show('L1UI_VC')
		L1UI:Print('|cffbf0008Your ElvUI is outdated - please update and reload.|r')
	end
end

-- Load AddOnSkins Profile
function L1UI:Setup_AddOnSkins()
	if not IsAddOnLoaded('AddOnSkins') then return end
	L1UI:Get_AddOnSkins_Profile()
	L1UI:Print('AddOnSkins profile has been set.')
end

-- Load BigWigs Profile
function L1UI:Setup_BigWigs()
	if not IsAddOnLoaded('BigWigs') then return end
	L1UI:Get_BigWigs_Profile()
	L1UI:Print('BigWigs profile has been set.')
end

-- Load DBM Profile
function L1UI:Setup_DBM()
	if not IsAddOnLoaded('DBM-Core') then return end
	L1UI:Get_DBM_Profile()
	L1UI:Print('DBM profile has been set.')
end

-- Load Details Profile
function L1UI:Setup_Details()
	if not IsAddOnLoaded('Details') then return end
	L1UI:Get_Details_Profile()
	L1UI:Print('Details profile has been set.')
end

-- Load OmniCD Profile
function L1UI:Setup_OmniCD()
	if not IsAddOnLoaded('OmniCD') then return end
	L1UI:Get_OmniCD_Profile()
	L1UI:Print('OmniCD profile has been set.')
end

-- Load Plater Profile
function L1UI:Setup_Plater()
	if not IsAddOnLoaded('Plater') then return end
	L1UI:Get_Plater_Profile()
	L1UI:Print('Plater profile has been set.')
end

-- Load ProjectAzilroka Profile
function L1UI:Setup_ProjectAzilroka()
	if not IsAddOnLoaded('ProjectAzilroka') then return end
	L1UI:Get_ProjectAzilroka_Profile()
	L1UI:Print('ProjectAzilroka profile has been set.')
end

-- Load Shadow&Light Profile
function L1UI:Setup_ShadowAndLight()
	if not IsAddOnLoaded('ElvUI_SLE') then return end
	L1UI:Get_ShadowAndLight_Profile()
	L1UI:Print('Shadow&Light profile has been set.')
end

-- Set UI Scale
function L1UI:SetupScale()
	E.global.general.UIScale = 0.71111111111111
	SetCVar('uiScale', 0.71111111111111)
end

-- General CVars
function L1UI:SetupCVars()

	-- Set ElvUI CVars first
	E:SetupCVars(noDisplayMsg)

	SetCVar('advancedCombatLogging', 1)
	SetCVar('ffxDeath', 0)
	SetCVar('ffxGlow', 0)
	SetCVar('rawMouseEnable', 1)

	-- I want those in Classic and TBC
	if not E.Retail then
		SetCVar('autoLootDefault', 1)
		SetCVar('instantQuestText', 1)
		SetCVar('profanityFilter', 0)
	end

	L1UI:Print('CVars have been set.')
end

-- NamePlate CVars
function L1UI:NameplateCVars()

	SetCVar('nameplateLargerScale', 1)
	SetCVar('nameplateMinAlpha', 1)
	SetCVar('nameplateMinScale', 1)
	SetCVar('nameplateMotion', 1)
	SetCVar('nameplateOccludedAlphaMult', 1)
	SetCVar('nameplateOverlapH', 1)
	SetCVar('nameplateOverlapV', 1.7)
	SetCVar('nameplateSelectedScale', 1)
	SetCVar('nameplateSelfAlpha', 1)

	SetCVar('UnitNameEnemyGuardianName', 1)
	SetCVar('UnitNameEnemyMinionName', 1)
	SetCVar('UnitNameEnemyPetName', 1)
	SetCVar('UnitNameEnemyPlayerName', 1)

	if not E.Classic then SetCVar('UnitNameEnemyTotem', 1) end

	if not E.Retail then SetCVar('nameplateNotSelectedAlpha', 1) end

	L1UI:Print('NamePlate CVars have been set.')
end

-- E.private & Media
function L1UI:SetupPrivate()

	E.db.general.font = "Expressway"
	E.db.general.fontSize = 11
	E.db.general.fontStyle = "OUTLINE"

	E.private.general.chatBubbleFont = "Expressway"
	E.private.general.chatBubbleFontOutline = "OUTLINE"
	E.private.general.dmgfont = "Expressway"
	E.private.general.glossTex = "Minimalist"
	E.private.general.namefont = "Expressway"
	E.private.general.nameplateFont = "Expressway"
	E.private.general.nameplateLargeFont = "Expressway"
	E.private.general.normTex = "Minimalist"
	E.private.skins.parchmentRemoverEnable = true

	if E.Retail then
		E.private.install_complete = "12.62"
		E.private.general.totemBar = false
	elseif E.TBC then
		E.private.install_complete = "2.34"
		E.private.general.totemBar = true
	elseif E.Classic then
		E.private.install_complete = "1.60"
		E.private.general.totemBar = true
	end
end

-- E.global
function L1UI:SetupGlobal()

	E.global.general.commandBarSetting = "DISABLED"
	E.global.general.fadeMapWhenMoving = false
	E.global.general.mapAlphaWhenMoving = 0.35
	E.global.general.smallerWorldMapScale = 0.8
	E.global.general.WorldMapCoordinates.position = "TOPLEFT"

	do -- Luckyone Custom DataText (below ActionBars)
		E.DataTexts:BuildPanelFrame("Luckyone_ActionBars_DT")
		LuckyDT = E.global.datatexts.customPanels.Luckyone_ActionBars_DT
		LuckyDT.backdrop = true
		LuckyDT.border = true
		LuckyDT.enable = true
		LuckyDT.fonts.enable = true
		LuckyDT.fonts.font = "Expressway"
		LuckyDT.fonts.fontOutline = "NONE"
		LuckyDT.fonts.fontSize = 11
		LuckyDT.frameLevel = 1
		LuckyDT.frameStrata = "LOW"
		LuckyDT.growth = "HORIZONTAL"
		LuckyDT.height = 13
		LuckyDT.mouseover = false
		LuckyDT.name = "Luckyone_ActionBars_DT"
		LuckyDT.numPoints = 3
		LuckyDT.panelTransparency = true
		LuckyDT.textJustify = "CENTER"
		LuckyDT.tooltipAnchor = "ANCHOR_TOP"
		LuckyDT.tooltipXOffset = 0
		LuckyDT.tooltipYOffset = 5
		LuckyDT.visibility = E.Retail and "[petbattle] hide;show" or "show"
		LuckyDT.width = 358
	end
end

-- Performance config section
function L1UI:Cleanup_Cache(addon, type)

	if addon == 'elvui' then

		if type == 'chat' then

			CH:ResetHistory()

		elseif type == 'editbox' then

			CH:ResetEditboxHistory()

		end

	elseif addon == 'details' then

		_detalhes.encounter_spell_pool = {}
		_detalhes.npcid_pool = {}
		_detalhes.spell_pool = {}
		_detalhes.spell_school_cache = {}

	elseif addon == 'plater' then

		PlaterDB.captured_casts = {}
		PlaterDB.captured_spells = {}
		PlaterDB.profiles.Luckyone.npc_cache = {}

	end
end
