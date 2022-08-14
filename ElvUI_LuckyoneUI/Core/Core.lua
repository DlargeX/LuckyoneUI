local L1UI, E, L, V, P, G = unpack(select(2, ...))
local CH = E:GetModule('Chat')

local format, print = format, print

local _G = _G
local IsAddOnLoaded = IsAddOnLoaded
local ReloadUI = ReloadUI
local SetCVar = SetCVar

-- Chat print
function L1UI:Print(msg)
	print(L1UI.Name..': '..msg)
end

-- Reload popup
E.PopupDialogs.L1UI_RL = {
	text = L["Reload required - continue?"],
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = ReloadUI,
	whileDead = 1,
	hideOnEscape = false,
}

-- Version check popup
E.PopupDialogs.L1UI_VC = {
	text = format('|cffbf0008%s|r', L["Your ElvUI is outdated - please update and reload."]),
	button1 = OKAY,
	whileDead = 1,
	hideOnEscape = false,
}

-- Version check
function L1UI:VersionCheck()
	if E.version < L1UI.RequiredVersion then
		E:StaticPopup_Show('L1UI_VC')
		L1UI:Print(format('|cffbf0008%s|r', L["Your ElvUI is outdated - please update and reload."]))
	end
end

-- General CVars
function L1UI:Setup_CVars()

	-- Core CVars
	SetCVar('advancedCombatLogging', 1)
	SetCVar('alwaysShowActionBars', 1)
	SetCVar('autoLootDefault', 1)
	SetCVar('cameraDistanceMaxZoomFactor', 2.6)
	SetCVar('ffxDeath', 0)
	SetCVar('ffxGlow', 0)
	SetCVar('ffxNether', 0)
	SetCVar('fstack_preferParentKeys', 0)
	SetCVar('lockActionBars', 1)
	SetCVar('profanityFilter', 0)
	SetCVar('rawMouseEnable', 1)
	SetCVar('screenshotQuality', 10)
	SetCVar('showNPETutorials', 0)
	SetCVar('showTutorials', 0)
	SetCVar('threatWarning', 3)
	SetCVar('UberTooltips', 1)

	-- Wrath | TBC | Classic CVars
	if not E.Retail then
		SetCVar('instantQuestText', 1)
	end

	-- Wrath CVars
	if E.Wrath then
		SetCVar('equipmentManager', 1)
		SetCVar('previewTalents', 1)
	end

	-- My CVars
	if L1UI.Me then
		SetCVar('disableServerNagle', 0)
		SetCVar('displaySpellActivationOverlays', 0)
		SetCVar('doNotFlashLowHealthWarning', 1)
		SetCVar('floatingCombatTextCombatDamage', 0)
		SetCVar('floatingCombatTextCombatHealing', 0)
		SetCVar('maxFPSLoading', 30)
		SetCVar('nameplateShowOnlyNames', 1)
		SetCVar('RAIDweatherDensity', 0)
		SetCVar('showToastOffline', 0)
		SetCVar('showToastOnline', 0)
		SetCVar('showToastWindow', 0)
		SetCVar('SpellQueueWindow', 180)
		SetCVar('useIPv6', 0)
		SetCVar('weatherDensity', 0)
	end

	_G.InterfaceOptionsActionBarsPanelPickupActionKeyDropDown:SetValue('SHIFT')
	_G.InterfaceOptionsActionBarsPanelPickupActionKeyDropDown:RefreshValue()

	L1UI:Print(L["CVars have been set."])
end

-- NamePlate CVars
function L1UI:NameplateCVars()

	SetCVar('nameplateLargerScale', 1)
	SetCVar('nameplateLargeTopInset', -1)
	SetCVar('nameplateMinAlpha', 1)
	SetCVar('nameplateMinScale', 1)
	SetCVar('nameplateMotion', 1)
	SetCVar('nameplateOccludedAlphaMult', 1)
	SetCVar('nameplateOtherBottomInset', -1)
	SetCVar('nameplateOtherTopInset', -1)
	SetCVar('nameplateOverlapH', 1.1)
	SetCVar('nameplateOverlapV', 1.8)
	SetCVar('nameplateSelectedScale', 1)
	SetCVar('nameplateSelfAlpha', 1)
	SetCVar('nameplateSelfTopInset', -1)

	SetCVar('UnitNameEnemyGuardianName', 1)
	SetCVar('UnitNameEnemyMinionName', 1)
	SetCVar('UnitNameEnemyPetName', 1)
	SetCVar('UnitNameEnemyPlayerName', 1)

	if not E.Classic then SetCVar('UnitNameEnemyTotem', 1) end

	if not E.Retail then SetCVar('nameplateNotSelectedAlpha', 1) end

	L1UI:Print(L["NamePlate CVars have been set."])
end

-- E.private & Media
function L1UI:Setup_PrivateDB()

	E.db.general.font = 'Expressway'
	E.db.general.fontSize = 11
	E.db.general.fontStyle = 'OUTLINE'

	E.private.general.chatBubbleFont = 'Expressway'
	E.private.general.chatBubbleFontOutline = 'OUTLINE'
	E.private.general.dmgfont = 'Expressway'
	E.private.general.glossTex = 'Minimalist'
	E.private.general.namefont = 'Expressway'
	E.private.general.nameplateFont = 'Expressway'
	E.private.general.nameplateLargeFont = 'Expressway'
	E.private.general.normTex = 'Minimalist'
	E.private.general.totemBar = false

	E.private.install_complete = E.version
	E.private.skins.parchmentRemoverEnable = true

	if L1UI.Me then
		E.private.general.chatBubbles = 'disabled'
		E.private.L1UI.disabledFrames.AlertFrame = true
		E.private.L1UI.disabledFrames.BossBanner = true
	end
end

-- E.global & Custom DataText
function L1UI:Setup_GlobalDB()

	SetCVar('uiScale', 0.71111111111111)
	E.global.general.UIScale = 0.71111111111111

	E.global.datatexts.settings.Combat.TimeFull = false
	E.global.datatexts.settings.System.latency = 'HOME'
	E.global.general.commandBarSetting = 'DISABLED'
	E.global.general.fadeMapWhenMoving = false
	E.global.general.mapAlphaWhenMoving = 0.35
	E.global.general.smallerWorldMapScale = 0.8
	E.global.general.WorldMapCoordinates.position = 'TOPLEFT'

	E.DataTexts:BuildPanelFrame('Luckyone_ActionBars_DT')

	local ActionBarsDT = E.global.datatexts.customPanels.Luckyone_ActionBars_DT
	ActionBarsDT.backdrop = true
	ActionBarsDT.border = true
	ActionBarsDT.enable = true
	ActionBarsDT.fonts.enable = true
	ActionBarsDT.fonts.font = 'Expressway'
	ActionBarsDT.fonts.fontOutline = 'OUTLINE'
	ActionBarsDT.fonts.fontSize = 11
	ActionBarsDT.frameLevel = 1
	ActionBarsDT.frameStrata = 'BACKGROUND'
	ActionBarsDT.growth = 'HORIZONTAL'
	ActionBarsDT.height = 13
	ActionBarsDT.mouseover = false
	ActionBarsDT.name = 'Luckyone_ActionBars_DT'
	ActionBarsDT.numPoints = 3
	ActionBarsDT.panelTransparency = true
	ActionBarsDT.textJustify = 'CENTER'
	ActionBarsDT.tooltipAnchor = 'ANCHOR_TOP'
	ActionBarsDT.tooltipXOffset = 0
	ActionBarsDT.tooltipYOffset = 5
	ActionBarsDT.visibility = E.Retail and '[petbattle] hide;show' or 'show'
	ActionBarsDT.width = 358
end

-- ElvUI Layouts setup
function L1UI:Setup_Layout(layout)

	-- Create a fresh profile in ElvUI
	if layout == 'main' then
		if L1UI.Me then
			E.data:SetProfile('Luckyone Main')
		else
			E.data:SetProfile('Luckyone DPS/TANK v'..L1UI.Version)
		end
	elseif layout == 'healing' then
		if L1UI.Me then
			E.data:SetProfile('Luckyone Healing')
		else
			E.data:SetProfile('Luckyone Healing v'..L1UI.Version)
		end
	end

	-- E.global & Custom DataText
	if not L1UI.Me then L1UI:Setup_GlobalDB() end

	-- E.private & Media
	L1UI:Setup_PrivateDB()

	-- E.db & Movers
	if layout == 'main' then
		if L1UI.Me then
			L1UI:Layout_Dragonflight('main')
		else
			L1UI:Layout_Shadowlands('main')
		end
	elseif layout == 'healing' then
		if L1UI.Me then
			L1UI:Layout_Dragonflight('healing')
		else
			L1UI:Layout_Shadowlands('healing')
		end
	end

	-- AddOnSkins profile
	if IsAddOnLoaded('AddOnSkins') then L1UI:Setup_AddOnSkins(true) end

	-- ProjectAzilroka profile
	if IsAddOnLoaded('ProjectAzilroka') then L1UI:Setup_ProjectAzilroka(true) end

	-- Shadow & Light profile
	if IsAddOnLoaded('ElvUI_SLE') and E.Retail then L1UI:Setup_ShadowAndLight(true) end

	-- Push the update
	E:StaggeredUpdateAll()

	L1UI:Print(L["Layout has been set."])
end

-- Performance config section
function L1UI:Cleanup_Cache(addon, type)
	if addon == 'elvui' and E.private.chat.enable then
		if type == 'chat' then
			CH:ResetHistory()
			L1UI:Print(L["Cleared ElvUI Chat History."])
		elseif type == 'editbox' then
			CH:ResetEditboxHistory()
			L1UI:Print(L["Cleared ElvUI Editbox History."])
		end
	elseif addon == 'details' and IsAddOnLoaded('Details') then
		_detalhes.boss_mods_timers = {}
		_detalhes.encounter_spell_pool = {}
		_detalhes.npcid_pool = {}
		_detalhes.spell_pool = {}
		_detalhes.spell_school_cache = {}
		L1UI:Print(L["Cleared Details Cache."])
	elseif addon == 'plater' and IsAddOnLoaded('Plater') then
		PlaterDB.captured_casts = {}
		PlaterDB.captured_spells = {}
		if PlaterDB.profiles.Luckyone then PlaterDB.profiles.Luckyone.npc_cache = {} end
		L1UI:Print(L["Cleared Plater Cache."])
	elseif addon == 'rc' and IsAddOnLoaded('RCLootCouncil') then
		RCLootCouncilDB.global.cache = {}
		RCLootCouncilDB.global.errors = {}
		RCLootCouncilDB.global.log = {}
		RCLootCouncilDB.global.verTestCandidates = {}
		L1UI:Print(L["Cleared RCLootCouncil Cache."])
	elseif addon == 'mrt' and IsAddOnLoaded('MRT') then
		VMRT.Encounter.list = {}
		VMRT.Encounter.names = {}
		VMRT.ExCD2.gnGUIDs = {}
		VMRT.Inspect.Soulbinds = {}
		L1UI:Print(L["Cleared Method Raid Tools Cache."])
	end
end

----------------------------------------------------------------------
------------------------------- Events -------------------------------
----------------------------------------------------------------------

function L1UI:PLAYER_ENTERING_WORLD(_, initLogin, isReload)
	if initLogin or not ElvDB.LuckyoneDisabledAddOns then
		ElvDB.LuckyoneDisabledAddOns = {}
	end

	if initLogin or isReload then
		L1UI:VersionCheck()
	end

	L1UI:DisabledFrames()
	L1UI:LoadCommands()
end

-- This is called in L1UI:Initialize()
function L1UI:RegisterEvents()
	L1UI:RegisterEvent('PLAYER_ENTERING_WORLD')
end
