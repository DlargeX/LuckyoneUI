local L1UI, E, L, V, P, G = unpack(select(2, ...))

-- Dragonflight layout
function L1UI:Layout_Dragonflight(layout)

	-- Temporary E.global & Custom DataText
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
	E.DataTexts:BuildPanelFrame('Luckyone_MiniMap_DT')

	local ActionBarsDT = E.global.datatexts.customPanels.Luckyone_ActionBars_DT
	ActionBarsDT.backdrop = true
	ActionBarsDT.border = true
	ActionBarsDT.enable = true
	ActionBarsDT.fonts.enable = true
	ActionBarsDT.fonts.font = L1UI.DefaultFont
	ActionBarsDT.fonts.fontOutline = 'OUTLINE'
	ActionBarsDT.fonts.fontSize = 10
	ActionBarsDT.frameLevel = 1
	ActionBarsDT.frameStrata = 'BACKGROUND'
	ActionBarsDT.growth = 'HORIZONTAL'
	ActionBarsDT.height = 12
	ActionBarsDT.mouseover = false
	ActionBarsDT.name = 'Luckyone_ActionBars_DT'
	ActionBarsDT.numPoints = 3
	ActionBarsDT.panelTransparency = false
	ActionBarsDT.textJustify = 'CENTER'
	ActionBarsDT.tooltipAnchor = 'ANCHOR_TOP'
	ActionBarsDT.tooltipXOffset = 0
	ActionBarsDT.tooltipYOffset = 5
	ActionBarsDT.visibility = E.Retail and '[petbattle] hide;show' or 'show'
	ActionBarsDT.width = 323

	local MiniMapDT = E.global.datatexts.customPanels.Luckyone_MiniMap_DT
	MiniMapDT.backdrop = false
	MiniMapDT.border = false
	MiniMapDT.fonts.enable = true
	MiniMapDT.fonts.font = L1UI.DefaultFont
	MiniMapDT.fonts.fontOutline = 'OUTLINE'
	MiniMapDT.fonts.fontSize = 13
	MiniMapDT.frameLevel = 1
	MiniMapDT.frameStrata = 'MEDIUM'
	MiniMapDT.growth = 'HORIZONTAL'
	MiniMapDT.height = 12
	MiniMapDT.mouseover = false
	MiniMapDT.name = 'Luckyone_MiniMap_DT'
	MiniMapDT.numPoints = 1
	MiniMapDT.panelTransparency = true
	MiniMapDT.textJustify = 'CENTER'
	MiniMapDT.tooltipAnchor = 'ANCHOR_BOTTOMLEFT'
	MiniMapDT.tooltipXOffset = -6
	MiniMapDT.tooltipYOffset = -7
	MiniMapDT.visibility = E.Retail and '[petbattle] hide;show' or 'show'
	MiniMapDT.width = 152

	-- AB conversion
	E.db.convertPages = true

	-- General shared
	E.db.general.afkChat = false
	E.db.general.autoAcceptInvite = true
	E.db.general.autoRepair = E.Retail and 'GUILD' or 'PLAYER'
	E.db.general.backdropcolor.b = 0.13
	E.db.general.backdropcolor.g = 0.13
	E.db.general.backdropcolor.r = 0.13
	E.db.general.backdropfadecolor.a = 1
	E.db.general.backdropfadecolor.b = 0.05
	E.db.general.backdropfadecolor.g = 0.05
	E.db.general.backdropfadecolor.r = 0.05
	E.db.general.bottomPanel = false
	E.db.general.customGlow.color.a = 1
	E.db.general.customGlow.color.b = 1
	E.db.general.customGlow.color.g = 1
	E.db.general.customGlow.color.r = 1
	E.db.general.customGlow.style = 'Autocast Shine'
	E.db.general.customGlow.useColor = true
	E.db.general.durabilityScale = 0.5
	E.db.general.enhancedPvpMessages = false
	E.db.general.interruptAnnounce = 'EMOTE'
	E.db.general.loginmessage = false
	E.db.general.lootRoll.buttonSize = 22
	E.db.general.lootRoll.spacing = 3
	E.db.general.lootRoll.statusBarTexture = 'Minimalist'
	E.db.general.lootRoll.style = 'fullbar'
	E.db.general.lootRoll.width = 340
	E.db.general.minimap.icons.difficulty.scale = 0.7
	E.db.general.minimap.icons.difficulty.xOffset = 1
	E.db.general.minimap.icons.difficulty.yOffset = 1
	E.db.general.minimap.locationFont = L1UI.DefaultFont
	E.db.general.minimap.locationFontSize = 11
	E.db.general.minimap.locationText = 'SHOW'
	E.db.general.minimap.size = 153

	-- General Retail
	if E.Retail then
		E.db.general.altPowerBar.font = L1UI.DefaultFont
		E.db.general.altPowerBar.statusBar = 'Minimalist'
		E.db.general.bonusObjectivePosition = 'AUTO'
		E.db.general.itemLevel.itemLevelFont = L1UI.DefaultFont
		E.db.general.itemLevel.itemLevelFontSize = 11
		E.db.general.talkingHeadFrameBackdrop = true
		E.db.general.talkingHeadFrameScale = 0.7
		E.db.general.vehicleSeatIndicatorSize = 64
	end

	-- General Wrath and Retail
	if E.Retail or E.Wrath then
		E.db.general.objectiveFrameAutoHide = false
		E.db.general.objectiveFrameHeight = 600
	end

	-- ActionBars shared
	E.db.actionbar.bar1.buttonSize = 26
	E.db.actionbar.bar1.buttonSpacing = 1
	E.db.actionbar.bar1.countFont = L1UI.DefaultFont
	E.db.actionbar.bar1.countFontOutline = 'OUTLINE'
	E.db.actionbar.bar1.countFontSize = 9
	E.db.actionbar.bar1.countTextPosition = 'BOTTOM'
	E.db.actionbar.bar1.hotkeyFont = L1UI.DefaultFont
	E.db.actionbar.bar1.hotkeyFontOutline = 'OUTLINE'
	E.db.actionbar.bar1.hotkeyFontSize = 9
	E.db.actionbar.bar1.hotkeyTextPosition = 'TOPLEFT'
	E.db.actionbar.bar1.hotkeyTextYOffset = -1
	E.db.actionbar.bar1.macroFont = L1UI.DefaultFont
	E.db.actionbar.bar1.macroFontOutline = 'OUTLINE'
	E.db.actionbar.bar1.macroFontSize = 9
	E.db.actionbar.bar1.macrotext = true
	E.db.actionbar.bar1.macroTextPosition = 'BOTTOM'
	E.db.actionbar.bar1.macroTextYOffset = 1
	E.db.actionbar.bar2.buttonSize = 26
	E.db.actionbar.bar2.buttonSpacing = 1
	E.db.actionbar.bar2.countFont = L1UI.DefaultFont
	E.db.actionbar.bar2.countFontOutline = 'OUTLINE'
	E.db.actionbar.bar2.countFontSize = 9
	E.db.actionbar.bar2.countTextPosition = 'BOTTOM'
	E.db.actionbar.bar2.enabled = true
	E.db.actionbar.bar2.hotkeyFont = L1UI.DefaultFont
	E.db.actionbar.bar2.hotkeyFontOutline = 'OUTLINE'
	E.db.actionbar.bar2.hotkeyFontSize = 9
	E.db.actionbar.bar2.hotkeyTextPosition = 'TOPLEFT'
	E.db.actionbar.bar2.hotkeyTextYOffset = -1
	E.db.actionbar.bar2.macroFont = L1UI.DefaultFont
	E.db.actionbar.bar2.macroFontOutline = 'OUTLINE'
	E.db.actionbar.bar2.macroFontSize = 9
	E.db.actionbar.bar2.macrotext = true
	E.db.actionbar.bar2.macroTextPosition = 'BOTTOM'
	E.db.actionbar.bar2.macroTextYOffset = 1
	E.db.actionbar.bar3.buttons = 12
	E.db.actionbar.bar3.buttonSize = 26
	E.db.actionbar.bar3.buttonSpacing = 1
	E.db.actionbar.bar3.buttonsPerRow = 12
	E.db.actionbar.bar3.countFont = L1UI.DefaultFont
	E.db.actionbar.bar3.countFontOutline = 'OUTLINE'
	E.db.actionbar.bar3.countFontSize = 9
	E.db.actionbar.bar3.countTextPosition = 'BOTTOM'
	E.db.actionbar.bar3.hotkeyFont = L1UI.DefaultFont
	E.db.actionbar.bar3.hotkeyFontOutline = 'OUTLINE'
	E.db.actionbar.bar3.hotkeyFontSize = 9
	E.db.actionbar.bar3.hotkeyTextPosition = 'TOPLEFT'
	E.db.actionbar.bar3.hotkeyTextYOffset = -1
	E.db.actionbar.bar3.macroFont = L1UI.DefaultFont
	E.db.actionbar.bar3.macroFontOutline = 'OUTLINE'
	E.db.actionbar.bar3.macroFontSize = 9
	E.db.actionbar.bar3.macrotext = true
	E.db.actionbar.bar3.macroTextPosition = 'BOTTOM'
	E.db.actionbar.bar3.macroTextYOffset = 1
	E.db.actionbar.bar4.backdrop = false
	E.db.actionbar.bar4.buttons = 12
	E.db.actionbar.bar4.buttonSize = 26
	E.db.actionbar.bar4.buttonSpacing = 1
	E.db.actionbar.bar4.buttonsPerRow = 12
	E.db.actionbar.bar4.countFont = L1UI.DefaultFont
	E.db.actionbar.bar4.countFontOutline = 'OUTLINE'
	E.db.actionbar.bar4.countFontSize = 9
	E.db.actionbar.bar4.countTextPosition = 'BOTTOM'
	E.db.actionbar.bar4.enabled = false
	E.db.actionbar.bar4.hotkeyFont = L1UI.DefaultFont
	E.db.actionbar.bar4.hotkeyFontOutline = 'OUTLINE'
	E.db.actionbar.bar4.hotkeyFontSize = 9
	E.db.actionbar.bar4.hotkeyTextPosition = 'TOPLEFT'
	E.db.actionbar.bar4.hotkeyTextYOffset = -1
	E.db.actionbar.bar4.macroFont = L1UI.DefaultFont
	E.db.actionbar.bar4.macroFontOutline = 'OUTLINE'
	E.db.actionbar.bar4.macroFontSize = 9
	E.db.actionbar.bar4.macrotext = true
	E.db.actionbar.bar4.macroTextPosition = 'BOTTOM'
	E.db.actionbar.bar4.macroTextYOffset = 1
	E.db.actionbar.bar4.point = 'BOTTOMLEFT'
	E.db.actionbar.bar5.buttons = 12
	E.db.actionbar.bar5.buttonSize = 26
	E.db.actionbar.bar5.buttonSpacing = 1
	E.db.actionbar.bar5.buttonsPerRow = 1
	E.db.actionbar.bar5.countFont = L1UI.DefaultFont
	E.db.actionbar.bar5.countFontOutline = 'OUTLINE'
	E.db.actionbar.bar5.countFontSize = 9
	E.db.actionbar.bar5.countTextPosition = 'BOTTOM'
	E.db.actionbar.bar5.enabled = true
	E.db.actionbar.bar5.hotkeyFont = L1UI.DefaultFont
	E.db.actionbar.bar5.hotkeyFontOutline = 'OUTLINE'
	E.db.actionbar.bar5.hotkeyFontSize = 9
	E.db.actionbar.bar5.hotkeyTextPosition = 'TOPLEFT'
	E.db.actionbar.bar5.hotkeyTextYOffset = -1
	E.db.actionbar.bar5.macroFont = L1UI.DefaultFont
	E.db.actionbar.bar5.macroFontOutline = 'OUTLINE'
	E.db.actionbar.bar5.macroFontSize = 9
	E.db.actionbar.bar5.macrotext = true
	E.db.actionbar.bar5.macroTextPosition = 'BOTTOM'
	E.db.actionbar.bar5.macroTextYOffset = 1
	E.db.actionbar.bar5.mouseover = true
	E.db.actionbar.bar6.buttons = 12
	E.db.actionbar.bar6.buttonSize = 26
	E.db.actionbar.bar6.buttonSpacing = 1
	E.db.actionbar.bar6.buttonsPerRow = 12
	E.db.actionbar.bar6.countFont = L1UI.DefaultFont
	E.db.actionbar.bar6.countFontOutline = 'OUTLINE'
	E.db.actionbar.bar6.countFontSize = 9
	E.db.actionbar.bar6.countTextPosition = 'BOTTOM'
	E.db.actionbar.bar6.enabled = false
	E.db.actionbar.bar6.hotkeyFont = L1UI.DefaultFont
	E.db.actionbar.bar6.hotkeyFontOutline = 'OUTLINE'
	E.db.actionbar.bar6.hotkeyFontSize = 9
	E.db.actionbar.bar6.hotkeyTextPosition = 'TOPLEFT'
	E.db.actionbar.bar6.hotkeyTextYOffset = -1
	E.db.actionbar.bar6.macroFont = L1UI.DefaultFont
	E.db.actionbar.bar6.macroFontOutline = 'OUTLINE'
	E.db.actionbar.bar6.macroFontSize = 9
	E.db.actionbar.bar6.macrotext = true
	E.db.actionbar.bar6.macroTextPosition = 'BOTTOM'
	E.db.actionbar.bar6.macroTextYOffset = 1
	E.db.actionbar.bar7.buttonSize = 26
	E.db.actionbar.bar7.buttonSpacing = 1
	E.db.actionbar.bar7.countFont = L1UI.DefaultFont
	E.db.actionbar.bar7.countFontOutline = 'OUTLINE'
	E.db.actionbar.bar7.countFontSize = 9
	E.db.actionbar.bar7.countTextPosition = 'BOTTOM'
	E.db.actionbar.bar7.hotkeyFont = L1UI.DefaultFont
	E.db.actionbar.bar7.hotkeyFontOutline = 'OUTLINE'
	E.db.actionbar.bar7.hotkeyFontSize = 9
	E.db.actionbar.bar7.hotkeyTextPosition = 'TOPLEFT'
	E.db.actionbar.bar7.hotkeyTextYOffset = -1
	E.db.actionbar.bar7.macroFont = L1UI.DefaultFont
	E.db.actionbar.bar7.macroFontOutline = 'OUTLINE'
	E.db.actionbar.bar7.macroFontSize = 9
	E.db.actionbar.bar7.macrotext = true
	E.db.actionbar.bar7.macroTextPosition = 'BOTTOM'
	E.db.actionbar.bar7.macroTextYOffset = 1
	E.db.actionbar.bar8.buttonSize = 26
	E.db.actionbar.bar8.buttonSpacing = 1
	E.db.actionbar.bar8.countFont = L1UI.DefaultFont
	E.db.actionbar.bar8.countFontOutline = 'OUTLINE'
	E.db.actionbar.bar8.countFontSize = 9
	E.db.actionbar.bar8.countTextPosition = 'BOTTOM'
	E.db.actionbar.bar8.hotkeyFont = L1UI.DefaultFont
	E.db.actionbar.bar8.hotkeyFontOutline = 'OUTLINE'
	E.db.actionbar.bar8.hotkeyFontSize = 9
	E.db.actionbar.bar8.hotkeyTextPosition = 'TOPLEFT'
	E.db.actionbar.bar8.hotkeyTextYOffset = -1
	E.db.actionbar.bar8.macroFont = L1UI.DefaultFont
	E.db.actionbar.bar8.macroFontOutline = 'OUTLINE'
	E.db.actionbar.bar8.macroFontSize = 9
	E.db.actionbar.bar8.macrotext = true
	E.db.actionbar.bar8.macroTextPosition = 'BOTTOM'
	E.db.actionbar.bar8.macroTextYOffset = 1
	E.db.actionbar.bar9.buttonSize = 26
	E.db.actionbar.bar9.buttonSpacing = 1
	E.db.actionbar.bar9.countFont = L1UI.DefaultFont
	E.db.actionbar.bar9.countFontOutline = 'OUTLINE'
	E.db.actionbar.bar9.countFontSize = 9
	E.db.actionbar.bar9.countTextPosition = 'BOTTOM'
	E.db.actionbar.bar9.hotkeyFont = L1UI.DefaultFont
	E.db.actionbar.bar9.hotkeyFontOutline = 'OUTLINE'
	E.db.actionbar.bar9.hotkeyFontSize = 9
	E.db.actionbar.bar9.hotkeyTextPosition = 'TOPLEFT'
	E.db.actionbar.bar9.hotkeyTextYOffset = -1
	E.db.actionbar.bar9.macroFont = L1UI.DefaultFont
	E.db.actionbar.bar9.macroFontOutline = 'OUTLINE'
	E.db.actionbar.bar9.macroFontSize = 9
	E.db.actionbar.bar9.macrotext = true
	E.db.actionbar.bar9.macroTextPosition = 'BOTTOM'
	E.db.actionbar.bar9.macroTextYOffset = 1
	E.db.actionbar.bar10.buttonSize = 26
	E.db.actionbar.bar10.buttonSpacing = 1
	E.db.actionbar.bar10.countFont = L1UI.DefaultFont
	E.db.actionbar.bar10.countFontOutline = 'OUTLINE'
	E.db.actionbar.bar10.countFontSize = 9
	E.db.actionbar.bar10.countTextPosition = 'BOTTOM'
	E.db.actionbar.bar10.hotkeyFont = L1UI.DefaultFont
	E.db.actionbar.bar10.hotkeyFontOutline = 'OUTLINE'
	E.db.actionbar.bar10.hotkeyFontSize = 9
	E.db.actionbar.bar10.hotkeyTextPosition = 'TOPLEFT'
	E.db.actionbar.bar10.hotkeyTextYOffset = -1
	E.db.actionbar.bar10.macroFont = L1UI.DefaultFont
	E.db.actionbar.bar10.macroFontOutline = 'OUTLINE'
	E.db.actionbar.bar10.macroFontSize = 9
	E.db.actionbar.bar10.macrotext = true
	E.db.actionbar.bar10.macroTextPosition = 'BOTTOM'
	E.db.actionbar.bar10.macroTextYOffset = 1
	E.db.actionbar.barPet.backdrop = false
	E.db.actionbar.barPet.buttonSize = 26
	E.db.actionbar.barPet.buttonSpacing = 1
	E.db.actionbar.barPet.buttonsPerRow = 10
	E.db.actionbar.barPet.countFont = L1UI.DefaultFont
	E.db.actionbar.barPet.countFontOutline = 'OUTLINE'
	E.db.actionbar.barPet.countFontSize = 9
	E.db.actionbar.barPet.hotkeyFont = L1UI.DefaultFont
	E.db.actionbar.barPet.hotkeyFontOutline = 'OUTLINE'
	E.db.actionbar.barPet.hotkeyFontSize = 8
	E.db.actionbar.barPet.hotkeyTextPosition = 'TOPLEFT'
	E.db.actionbar.barPet.hotkeyTextYOffset = 0
	E.db.actionbar.barPet.point = 'TOPLEFT'
	E.db.actionbar.cooldown.override = false
	E.db.actionbar.countTextPosition = 'BOTTOM'
	E.db.actionbar.countTextYOffset = 1
	E.db.actionbar.flyoutSize = 26
	E.db.actionbar.font = L1UI.DefaultFont
	E.db.actionbar.fontOutline = 'OUTLINE'
	E.db.actionbar.hotkeyTextPosition = 'TOPLEFT'
	E.db.actionbar.macroTextPosition = 'BOTTOM'
	E.db.actionbar.microbar.buttonHeight = 26
	E.db.actionbar.microbar.buttonSize = 18
	E.db.actionbar.microbar.buttonSpacing = 1
	E.db.actionbar.microbar.enabled = true
	E.db.actionbar.microbar.mouseover = true
	E.db.actionbar.stanceBar.buttonHeight = 24
	E.db.actionbar.stanceBar.buttonSize = 26
	E.db.actionbar.stanceBar.buttonSpacing = 1
	E.db.actionbar.stanceBar.hotkeyFont = L1UI.DefaultFont
	E.db.actionbar.stanceBar.hotkeyFontOutline = 'OUTLINE'
	E.db.actionbar.stanceBar.hotkeyFontSize = 9
	E.db.actionbar.stanceBar.hotkeyTextPosition = 'TOPLEFT'
	E.db.actionbar.stanceBar.hotkeyTextYOffset = -1
	E.db.actionbar.stanceBar.mouseover = true
	E.db.actionbar.stanceBar.style = 'classic'
	E.db.actionbar.transparent = true
	E.db.actionbar.vehicleExitButton.hotkeyFont = L1UI.DefaultFont
	E.db.actionbar.vehicleExitButton.hotkeyFontOutline = 'OUTLINE'

	-- ActionBars Retail
	if E.Retail then
		E.db.actionbar.extraActionButton.alpha = 1
		E.db.actionbar.extraActionButton.clean = true
		E.db.actionbar.extraActionButton.hotkeyFont = L1UI.DefaultFont
		E.db.actionbar.extraActionButton.hotkeyFontOutline = 'OUTLINE'
		E.db.actionbar.extraActionButton.hotkeyTextPosition = 'TOPLEFT'
		E.db.actionbar.extraActionButton.hotkeyTextYOffset = -1
		E.db.actionbar.extraActionButton.scale = 1
		E.db.actionbar.zoneActionButton.alpha = 1
		E.db.actionbar.zoneActionButton.clean = true
		E.db.actionbar.zoneActionButton.scale = 1
	end

	-- Bags
	E.db.bags.bagSize = 30
	E.db.bags.bagWidth = 414
	E.db.bags.bankSize = 30
	E.db.bags.bankWidth = 414
	E.db.bags.clearSearchOnClose = true
	E.db.bags.countFont = L1UI.DefaultFont
	E.db.bags.countFontOutline = 'OUTLINE'
	E.db.bags.countFontSize = 11
	E.db.bags.itemInfoFont = L1UI.DefaultFont
	E.db.bags.itemInfoFontOutline = 'OUTLINE'
	E.db.bags.itemInfoFontSize = 11
	E.db.bags.itemLevelFont = L1UI.DefaultFont
	E.db.bags.itemLevelFontOutline = 'OUTLINE'
	E.db.bags.itemLevelFontSize = 11
	E.db.bags.moneyFormat = 'BLIZZARD'
	E.db.bags.transparent = true
	E.db.bags.vendorGrays.enable = true

	if E.Retail then
		E.db.bags.autoToggle.guildBank = true
		E.db.bags.autoToggle.soulBind = false
	end

	-- Auras
	E.db.auras.buffs.countFont = L1UI.DefaultFont
	E.db.auras.buffs.countFontOutline = 'OUTLINE'
	E.db.auras.buffs.countFontSize = 11
	E.db.auras.buffs.countYOffset = 2
	E.db.auras.buffs.fadeThreshold = -1
	E.db.auras.buffs.horizontalSpacing = 1
	E.db.auras.buffs.seperateOwn = 0
	E.db.auras.buffs.size = 22
	E.db.auras.buffs.timeFont = L1UI.DefaultFont
	E.db.auras.buffs.timeFontOutline = 'OUTLINE'
	E.db.auras.buffs.verticalSpacing = 14
	E.db.auras.debuffs.countFont = L1UI.DefaultFont
	E.db.auras.debuffs.countFontOutline = 'OUTLINE'
	E.db.auras.debuffs.countFontSize = 11
	E.db.auras.debuffs.countYOffset = 2
	E.db.auras.debuffs.fadeThreshold = -1
	E.db.auras.debuffs.horizontalSpacing = 1
	E.db.auras.debuffs.maxWraps = 2
	E.db.auras.debuffs.seperateOwn = 0
	E.db.auras.debuffs.size = 22
	E.db.auras.debuffs.timeFont = L1UI.DefaultFont
	E.db.auras.debuffs.timeFontOutline = 'OUTLINE'
	E.db.auras.debuffs.verticalSpacing = 14

	-- Chat
	E.db.chat.desaturateVoiceIcons = false
	E.db.chat.editboxHistorySize = 5
	E.db.chat.editBoxPosition = 'ABOVE_CHAT_INSIDE'
	E.db.chat.enableCombatRepeat = false
	E.db.chat.fade = false
	E.db.chat.fadeTabsNoBackdrop = false
	E.db.chat.font = L1UI.DefaultFont
	E.db.chat.fontOutline = 'OUTLINE'
	E.db.chat.hideChatToggles = true
	E.db.chat.historySize = 200
	E.db.chat.keywords = '%MYNAME%'
	E.db.chat.lfgIcons = false
	E.db.chat.maxLines = 500
	E.db.chat.numScrollMessages = 2
	E.db.chat.panelColor.a = 1
	E.db.chat.panelColor.b = 0.05
	E.db.chat.panelColor.g = 0.05
	E.db.chat.panelColor.r = 0.05
	E.db.chat.panelHeight = 138
	E.db.chat.panelWidth = 414
	E.db.chat.showHistory.CHANNEL = false
	E.db.chat.showHistory.EMOTE = false
	E.db.chat.showHistory.GUILD = false
	E.db.chat.showHistory.INSTANCE = false
	E.db.chat.showHistory.PARTY = false
	E.db.chat.showHistory.RAID = false
	E.db.chat.showHistory.SAY = false
	E.db.chat.showHistory.YELL = false
	E.db.chat.tabFont = L1UI.DefaultFont
	E.db.chat.tabFontOutline = 'OUTLINE'
	E.db.chat.tabFontSize = 10
	E.db.chat.tabSelector = 'NONE'
	E.db.chat.throttleInterval = 0

	-- Cooldown
	E.db.cooldown.daysIndicator.g = 0.4
	E.db.cooldown.daysIndicator.r = 0.4
	E.db.cooldown.expireIndicator.b = 0
	E.db.cooldown.expireIndicator.g = 0
	E.db.cooldown.fonts.font = L1UI.DefaultFont
	E.db.cooldown.fonts.fontSize = 12
	E.db.cooldown.hoursIndicator.r = 0.4
	E.db.cooldown.secondsColor.b = 1
	E.db.cooldown.threshold = 5

	-- DataBars shared
	E.db.databars.experience.font = L1UI.DefaultFont
	E.db.databars.experience.height = 138
	E.db.databars.experience.orientation = 'VERTICAL'
	E.db.databars.experience.questCompletedOnly = true
	E.db.databars.experience.showBubbles = true
	E.db.databars.experience.width = 10
	E.db.databars.reputation.enable = true
	E.db.databars.reputation.font = L1UI.DefaultFont
	E.db.databars.reputation.height = 138
	E.db.databars.reputation.orientation = 'VERTICAL'
	E.db.databars.reputation.width = 10
	E.db.databars.threat.enable = false

	-- DataBars nonRetail
	if E.Retail then
		E.db.databars.azerite.enable = false
		E.db.databars.honor.enable = false
	else
		E.db.databars.petExperience.enable = false
	end

	-- DataTexts custom
	E.db.datatexts.panels.Luckyone_ActionBars_DT.enable = true
	E.db.datatexts.panels.Luckyone_ActionBars_DT[1] = 'System'
	E.db.datatexts.panels.Luckyone_ActionBars_DT[2] = 'Combat'
	E.db.datatexts.panels.Luckyone_ActionBars_DT[3] = 'Durability'
	E.db.datatexts.panels.Luckyone_MiniMap_DT.enable = true
	E.db.datatexts.panels.Luckyone_MiniMap_DT[1] = 'Time'

	-- DataTexts default
	E.db.datatexts.panels.MinimapPanel.enable = false
	E.db.datatexts.panels.LeftChatDataPanel.enable = false
	E.db.datatexts.panels.RightChatDataPanel.enable = false

	-- Tooltip shared
	E.db.tooltip.alwaysShowRealm = true
	E.db.tooltip.colorAlpha = 1
	E.db.tooltip.font = L1UI.DefaultFont
	E.db.tooltip.fontOutline = 'OUTLINE'
	E.db.tooltip.headerFont = L1UI.DefaultFont
	E.db.tooltip.headerFontOutline = 'OUTLINE'
	E.db.tooltip.headerFontSize = 11
	E.db.tooltip.healthBar.font = L1UI.DefaultFont
	E.db.tooltip.healthBar.fontSize = 11
	E.db.tooltip.healthBar.height = 4
	E.db.tooltip.healthBar.statusPosition = 'DISABLED'
	E.db.tooltip.itemCount = 'NONE'
	E.db.tooltip.itemQuality = true
	E.db.tooltip.showElvUIUsers = true
	E.db.tooltip.showMount = false
	E.db.tooltip.smallTextFontSize = 11
	E.db.tooltip.targetInfo = false
	E.db.tooltip.textFontSize = 11

	-- Tooltip Retail
	if E.Retail then
		E.db.tooltip.inspectDataEnable = false
		E.db.tooltip.mythicDataEnable = false
		E.db.tooltip.role = false
	end

	-- Shared UnitFrames media
	E.db.unitframe.colors.castbar_backdrop.b = 0.05
	E.db.unitframe.colors.castbar_backdrop.g = 0.05
	E.db.unitframe.colors.castbar_backdrop.r = 0.05
	E.db.unitframe.colors.castColor.b = 0
	E.db.unitframe.colors.castColor.g = 1
	E.db.unitframe.colors.castColor.r = 0.02
	E.db.unitframe.colors.castNoInterrupt.b = 0
	E.db.unitframe.colors.castNoInterrupt.g = 0
	E.db.unitframe.colors.castNoInterrupt.r = 1
	E.db.unitframe.colors.colorhealthbyvalue = false
	E.db.unitframe.colors.customcastbarbackdrop = true
	E.db.unitframe.colors.customhealthbackdrop = true
	E.db.unitframe.colors.frameGlow.mouseoverGlow.texture = 'Minimalist'
	E.db.unitframe.colors.healPrediction.overabsorbs.b = 1
	E.db.unitframe.colors.healPrediction.overabsorbs.r = 0
	E.db.unitframe.colors.health_backdrop_dead.b = 0.09
	E.db.unitframe.colors.health_backdrop_dead.g = 0.12
	E.db.unitframe.colors.health_backdrop_dead.r = 0.61
	E.db.unitframe.colors.health_backdrop.b = 0.61
	E.db.unitframe.colors.health_backdrop.g = 0.56
	E.db.unitframe.colors.health_backdrop.r = 0.54
	E.db.unitframe.colors.health.b = 0.05
	E.db.unitframe.colors.health.g = 0.05
	E.db.unitframe.colors.health.r = 0.05
	E.db.unitframe.colors.healthMultiplier = 0.75
	E.db.unitframe.colors.power.LUNAR_POWER.b = 0.9
	E.db.unitframe.colors.power.LUNAR_POWER.g = 0.52
	E.db.unitframe.colors.power.LUNAR_POWER.r = 0.3
	E.db.unitframe.colors.tapped.g = 0.56
	E.db.unitframe.colors.tapped.r = 0.54
	E.db.unitframe.colors.useDeadBackdrop = true
	E.db.unitframe.cooldown.override = false
	E.db.unitframe.font = L1UI.DefaultFont
	E.db.unitframe.fontOutline = 'OUTLINE'
	E.db.unitframe.fontSize = 12
	E.db.unitframe.smartRaidFilter = false
	E.db.unitframe.statusbar = 'Minimalist'

	-- Shared MA/MT
	E.db.unitframe.units.assist.enable = false
	E.db.unitframe.units.tank.enable = false

	if not E.Classic then

		-- Shared Arena
		E.db.unitframe.units.arena.customTexts = E.db.unitframe.units.arena.customTexts or {}
		E.db.unitframe.units.arena.customTexts.Luckyone_Power = {attachTextTo = 'Frame', enable = true, font = L1UI.DefaultFont, fontOutline = 'OUTLINE', justifyH = 'RIGHT', size = 12, text_format = '[powercolor][perpp<%]', xOffset = -1, yOffset = 0}

		E.db.unitframe.units.arena.buffs.anchorPoint = 'RIGHT'
		E.db.unitframe.units.arena.buffs.countFont = L1UI.DefaultFont
		E.db.unitframe.units.arena.buffs.countFontSize = 10
		E.db.unitframe.units.arena.buffs.countXOffset = 1
		E.db.unitframe.units.arena.buffs.growthY = 'DOWN'
		E.db.unitframe.units.arena.buffs.maxDuration = 0
		E.db.unitframe.units.arena.buffs.perrow = 2
		E.db.unitframe.units.arena.buffs.priority = 'Blacklist,Dispellable,RaidBuffsElvUI'
		E.db.unitframe.units.arena.buffs.sizeOverride = 32
		E.db.unitframe.units.arena.buffs.xOffset = 1
		E.db.unitframe.units.arena.buffs.yOffset = 1
		E.db.unitframe.units.arena.castbar.customTextFont.enable = true
		E.db.unitframe.units.arena.castbar.customTextFont.font = L1UI.DefaultFont
		E.db.unitframe.units.arena.castbar.customTimeFont.enable = true
		E.db.unitframe.units.arena.castbar.customTimeFont.font = L1UI.DefaultFont
		E.db.unitframe.units.arena.castbar.height = 12
		E.db.unitframe.units.arena.castbar.iconAttachedTo = 'Castbar'
		E.db.unitframe.units.arena.castbar.spark = false
		E.db.unitframe.units.arena.castbar.textColor.b = 1
		E.db.unitframe.units.arena.castbar.textColor.g = 1
		E.db.unitframe.units.arena.castbar.textColor.r = 1
		E.db.unitframe.units.arena.castbar.width = 190
		E.db.unitframe.units.arena.castbar.xOffsetText = 2
		E.db.unitframe.units.arena.castbar.xOffsetTime = -2
		E.db.unitframe.units.arena.debuffs.countFont = L1UI.DefaultFont
		E.db.unitframe.units.arena.debuffs.countFontSize = 10
		E.db.unitframe.units.arena.debuffs.countXOffset = 1
		E.db.unitframe.units.arena.debuffs.desaturate = true
		E.db.unitframe.units.arena.debuffs.growthX = 'LEFT'
		E.db.unitframe.units.arena.debuffs.growthY = 'DOWN'
		E.db.unitframe.units.arena.debuffs.maxDuration = 0
		E.db.unitframe.units.arena.debuffs.priority = 'Blacklist,Personal,CCDebuffs'
		E.db.unitframe.units.arena.debuffs.sizeOverride = 32
		E.db.unitframe.units.arena.debuffs.xOffset = -1
		E.db.unitframe.units.arena.debuffs.yOffset = 1
		E.db.unitframe.units.arena.disableMouseoverGlow = true
		E.db.unitframe.units.arena.disableTargetGlow = true
		E.db.unitframe.units.arena.healPrediction.enable = false
		E.db.unitframe.units.arena.health.attachTextTo = 'Frame'
		E.db.unitframe.units.arena.health.text_format = '[luckyone:health:percent]'
		E.db.unitframe.units.arena.height = 32
		E.db.unitframe.units.arena.infoPanel.height = 16
		E.db.unitframe.units.arena.name.attachTextTo = 'Frame'
		E.db.unitframe.units.arena.name.text_format = '[classcolor][name:last]'
		E.db.unitframe.units.arena.power.enable = false
		E.db.unitframe.units.arena.pvpclassificationindicator.size = 24
		E.db.unitframe.units.arena.pvpclassificationindicator.xOffset = -40
		E.db.unitframe.units.arena.pvpSpecIcon = false
		E.db.unitframe.units.arena.pvpTrinket.enable = false
		E.db.unitframe.units.arena.pvpTrinket.position = 'LEFT'
		E.db.unitframe.units.arena.pvpTrinket.size = 45
		E.db.unitframe.units.arena.pvpTrinket.xOffset = -1
		E.db.unitframe.units.arena.spacing = 14
		E.db.unitframe.units.arena.width = 190

		-- Shared Focus
		E.db.unitframe.units.focus.customTexts = E.db.unitframe.units.focus.customTexts or {}
		E.db.unitframe.units.focus.customTexts.Luckyone_HP = {attachTextTo = 'Frame', enable = true, font = L1UI.DefaultFont, fontOutline = 'OUTLINE', justifyH = 'LEFT', size = 14, text_format = '[luckyone:health:percent] • [health:current:shortvalue]', xOffset = 3, yOffset = 0}
		E.db.unitframe.units.focus.customTexts.Luckyone_Name = {attachTextTo = 'Frame', enable = true, font = L1UI.DefaultFont, fontOutline = 'OUTLINE', justifyH = 'RIGHT', size = 14, text_format = '[classcolor][name:last]', xOffset = -3, yOffset = 0}

		E.db.unitframe.units.focus.buffs.anchorPoint = 'TOPRIGHT'
		E.db.unitframe.units.focus.buffs.countFont = L1UI.DefaultFont
		E.db.unitframe.units.focus.buffs.countPosition = 'TOP'
		E.db.unitframe.units.focus.buffs.countYOffset = 14
		E.db.unitframe.units.focus.buffs.enable = true
		E.db.unitframe.units.focus.buffs.growthX = 'LEFT'
		E.db.unitframe.units.focus.buffs.maxDuration = 0
		E.db.unitframe.units.focus.buffs.perrow = 10
		E.db.unitframe.units.focus.buffs.priority = 'Blacklist,Dispellable,RaidBuffsElvUI'
		E.db.unitframe.units.focus.castbar.customTextFont.enable = true
		E.db.unitframe.units.focus.castbar.customTextFont.font = L1UI.DefaultFont
		E.db.unitframe.units.focus.castbar.customTextFont.fontSize = 11
		E.db.unitframe.units.focus.castbar.customTimeFont.enable = true
		E.db.unitframe.units.focus.castbar.customTimeFont.font = L1UI.DefaultFont
		E.db.unitframe.units.focus.castbar.customTimeFont.fontSize = 11
		E.db.unitframe.units.focus.castbar.spark = false
		E.db.unitframe.units.focus.castbar.textColor.b = 1
		E.db.unitframe.units.focus.castbar.textColor.g = 1
		E.db.unitframe.units.focus.castbar.textColor.r = 1
		E.db.unitframe.units.focus.castbar.timeToHold = 2
		E.db.unitframe.units.focus.castbar.width = 241
		E.db.unitframe.units.focus.castbar.xOffsetText = 2
		E.db.unitframe.units.focus.castbar.xOffsetTime = -2
		E.db.unitframe.units.focus.CombatIcon.enable = false
		E.db.unitframe.units.focus.debuffs.anchorPoint = 'TOPLEFT'
		E.db.unitframe.units.focus.debuffs.countFont = L1UI.DefaultFont
		E.db.unitframe.units.focus.debuffs.countPosition = 'TOP'
		E.db.unitframe.units.focus.debuffs.countYOffset = 14
		E.db.unitframe.units.focus.debuffs.desaturate = false
		E.db.unitframe.units.focus.debuffs.growthX = 'RIGHT'
		E.db.unitframe.units.focus.debuffs.maxDuration = 0
		E.db.unitframe.units.focus.debuffs.perrow = 10
		E.db.unitframe.units.focus.debuffs.priority = 'Blacklist,Personal,CCDebuffs'
		E.db.unitframe.units.focus.disableMouseoverGlow = true
		E.db.unitframe.units.focus.disableTargetGlow = true
		E.db.unitframe.units.focus.healPrediction.absorbStyle = 'WRAPPED'
		E.db.unitframe.units.focus.height = 40
		E.db.unitframe.units.focus.name.text_format = ''
		E.db.unitframe.units.focus.orientation = 'LEFT'
		E.db.unitframe.units.focus.power.enable = false
		E.db.unitframe.units.focus.raidicon.enable = false
		E.db.unitframe.units.focus.threatStyle = 'NONE'
		E.db.unitframe.units.focus.width = 240
		E.db.unitframe.units.focustarget.enable = false
	end

	if E.Retail or E.Wrath then

		-- Shared Boss
		E.db.unitframe.units.boss.customTexts = E.db.unitframe.units.boss.customTexts or {}
		E.db.unitframe.units.boss.customTexts.Luckyone_Power = {attachTextTo = 'Frame', enable = true, font = L1UI.DefaultFont, fontOutline = 'OUTLINE', justifyH = 'RIGHT', size = 12, text_format = '[powercolor][perpp<%]', xOffset = -1, yOffset = 0}

		E.db.unitframe.units.boss.buffIndicator.enable = false
		E.db.unitframe.units.boss.buffs.anchorPoint = 'RIGHT'
		E.db.unitframe.units.boss.buffs.countFont = L1UI.DefaultFont
		E.db.unitframe.units.boss.buffs.countFontSize = 10
		E.db.unitframe.units.boss.buffs.countXOffset = 1
		E.db.unitframe.units.boss.buffs.growthY = 'DOWN'
		E.db.unitframe.units.boss.buffs.perrow = 2
		E.db.unitframe.units.boss.buffs.priority = 'Blacklist,Dispellable,RaidBuffsElvUI'
		E.db.unitframe.units.boss.buffs.sizeOverride = 32
		E.db.unitframe.units.boss.buffs.xOffset = 1
		E.db.unitframe.units.boss.buffs.yOffset = 1
		E.db.unitframe.units.boss.castbar.customTextFont.enable = true
		E.db.unitframe.units.boss.castbar.customTextFont.font = L1UI.DefaultFont
		E.db.unitframe.units.boss.castbar.customTimeFont.enable = true
		E.db.unitframe.units.boss.castbar.customTimeFont.font = L1UI.DefaultFont
		E.db.unitframe.units.boss.castbar.height = 12
		E.db.unitframe.units.boss.castbar.iconAttachedTo = 'Castbar'
		E.db.unitframe.units.boss.castbar.spark = false
		E.db.unitframe.units.boss.castbar.textColor.b = 1
		E.db.unitframe.units.boss.castbar.textColor.g = 1
		E.db.unitframe.units.boss.castbar.textColor.r = 1
		E.db.unitframe.units.boss.castbar.width = 190
		E.db.unitframe.units.boss.castbar.xOffsetText = 2
		E.db.unitframe.units.boss.castbar.xOffsetTime = -2
		E.db.unitframe.units.boss.debuffs.countFont = L1UI.DefaultFont
		E.db.unitframe.units.boss.debuffs.countFontSize = 10
		E.db.unitframe.units.boss.debuffs.countXOffset = 1
		E.db.unitframe.units.boss.debuffs.growthX = 'LEFT'
		E.db.unitframe.units.boss.debuffs.growthY = 'DOWN'
		E.db.unitframe.units.boss.debuffs.priority = 'Blacklist,Personal,CCDebuffs'
		E.db.unitframe.units.boss.debuffs.sizeOverride = 32
		E.db.unitframe.units.boss.debuffs.xOffset = -1
		E.db.unitframe.units.boss.debuffs.yOffset = 1
		E.db.unitframe.units.boss.disableMouseoverGlow = true
		E.db.unitframe.units.boss.disableTargetGlow = true
		E.db.unitframe.units.boss.health.attachTextTo = 'Frame'
		E.db.unitframe.units.boss.health.text_format = '[luckyone:health:percent]'
		E.db.unitframe.units.boss.height = 32
		E.db.unitframe.units.boss.name.attachTextTo = 'Frame'
		E.db.unitframe.units.boss.name.text_format = '[classcolor][name:last]'
		E.db.unitframe.units.boss.power.enable = false
		E.db.unitframe.units.boss.spacing = 14
		E.db.unitframe.units.boss.width = 190
	end

	-- Shared Pet
	E.db.unitframe.units.pet.customTexts = E.db.unitframe.units.pet.customTexts or {}
	E.db.unitframe.units.pet.customTexts.Luckyone_HP = {attachTextTo = 'Frame', enable = true, font = L1UI.DefaultFont, fontOutline = 'OUTLINE', justifyH = 'RIGHT', size = 12, text_format = '[health:current:shortvalue] • [luckyone:health:percent]', xOffset = -3, yOffset = 0}
	E.db.unitframe.units.pet.customTexts.Luckyone_Name = {attachTextTo = 'Frame', enable = true, font = L1UI.DefaultFont, fontOutline = 'OUTLINE', justifyH = 'LEFT', size = 12, text_format = '[classcolor][name]', xOffset = 3, yOffset = 0}

	E.db.unitframe.units.pet.buffs.enable = false
	E.db.unitframe.units.pet.castbar.enable = false
	E.db.unitframe.units.pet.debuffs.enable = false
	E.db.unitframe.units.pet.disableMouseoverGlow = true
	E.db.unitframe.units.pet.healPrediction.absorbStyle = 'WRAPPED'
	E.db.unitframe.units.pet.height = 20
	E.db.unitframe.units.pet.name.text_format = ''
	E.db.unitframe.units.pet.power.enable = false
	E.db.unitframe.units.pet.raidicon.enable = false
	E.db.unitframe.units.pet.threatStyle = 'NONE'
	E.db.unitframe.units.pet.width = 269

	-- Shared Player
	E.db.unitframe.units.player.customTexts = E.db.unitframe.units.player.customTexts or {}
	E.db.unitframe.units.player.customTexts.Luckyone_HP = {attachTextTo = 'Frame', enable = true, font = L1UI.DefaultFont, fontOutline = 'OUTLINE', justifyH = 'RIGHT', size = 14, text_format = '[health:current:shortvalue] • [luckyone:health:percent]', xOffset = -2, yOffset = 0}
	E.db.unitframe.units.player.customTexts.Luckyone_Name = {attachTextTo = 'Frame', enable = true, font = L1UI.DefaultFont, fontOutline = 'OUTLINE', justifyH = 'LEFT', size = 14, text_format = '[classcolor][name]', xOffset = 5, yOffset = 0}

	E.db.unitframe.units.player.aurabar.enable = false
	E.db.unitframe.units.player.buffs.attachTo = 'FRAME'
	E.db.unitframe.units.player.buffs.countFont = L1UI.DefaultFont
	E.db.unitframe.units.player.buffs.perrow = 10
	E.db.unitframe.units.player.buffs.priority = 'Blacklist,Personal,nonPersonal'
	E.db.unitframe.units.player.buffs.yOffset = 1
	E.db.unitframe.units.player.castbar.customTextFont.enable = true
	E.db.unitframe.units.player.castbar.customTextFont.font = L1UI.DefaultFont
	E.db.unitframe.units.player.castbar.customTextFont.fontSize = 11
	E.db.unitframe.units.player.castbar.customTimeFont.enable = true
	E.db.unitframe.units.player.castbar.customTimeFont.font = L1UI.DefaultFont
	E.db.unitframe.units.player.castbar.customTimeFont.fontSize = 11
	E.db.unitframe.units.player.castbar.latency = false
	E.db.unitframe.units.player.castbar.spark = false
	E.db.unitframe.units.player.castbar.textColor.b = 1
	E.db.unitframe.units.player.castbar.textColor.g = 1
	E.db.unitframe.units.player.castbar.textColor.r = 1
	E.db.unitframe.units.player.castbar.timeToHold = 2
	E.db.unitframe.units.player.castbar.width = 241
	E.db.unitframe.units.player.castbar.xOffsetText = 2
	E.db.unitframe.units.player.castbar.xOffsetTime = -2
	E.db.unitframe.units.player.classbar.enable = false
	E.db.unitframe.units.player.CombatIcon.enable = false
	E.db.unitframe.units.player.debuffs.anchorPoint = 'TOPRIGHT'
	E.db.unitframe.units.player.debuffs.countFont = L1UI.DefaultFont
	E.db.unitframe.units.player.debuffs.countPosition = 'TOP'
	E.db.unitframe.units.player.debuffs.countYOffset = 14
	E.db.unitframe.units.player.debuffs.desaturate = false
	E.db.unitframe.units.player.debuffs.growthX = 'LEFT'
	E.db.unitframe.units.player.debuffs.perrow = 10
	E.db.unitframe.units.player.disableMouseoverGlow = true
	E.db.unitframe.units.player.healPrediction.absorbStyle = 'WRAPPED'
	E.db.unitframe.units.player.health.text_format = ''
	E.db.unitframe.units.player.height = 40
	E.db.unitframe.units.player.partyIndicator.enable = false
	E.db.unitframe.units.player.power.enable = false
	E.db.unitframe.units.player.pvp.text_format = ''
	E.db.unitframe.units.player.pvpIcon.scale = 0.85
	E.db.unitframe.units.player.raidicon.enable = false
	E.db.unitframe.units.player.raidRoleIcons.yOffset = 1
	E.db.unitframe.units.player.RestIcon.enable = false
	E.db.unitframe.units.player.threatStyle = 'NONE'
	E.db.unitframe.units.player.width = 240

	-- Shared Target
	E.db.unitframe.units.target.customTexts = E.db.unitframe.units.target.customTexts or {}
	E.db.unitframe.units.targettarget.customTexts = E.db.unitframe.units.targettarget.customTexts or {}
	E.db.unitframe.units.target.customTexts.Luckyone_HP = {attachTextTo = 'Frame', enable = true, font = L1UI.DefaultFont, fontOutline = 'OUTLINE', justifyH = 'LEFT', size = 14, text_format = '[luckyone:health:percent] • [health:current:shortvalue]', xOffset = 3, yOffset = 0}
	E.db.unitframe.units.target.customTexts.Luckyone_Name = {attachTextTo = 'Frame', enable = true, font = L1UI.DefaultFont, fontOutline = 'OUTLINE', justifyH = 'RIGHT', size = 14, text_format = '[classcolor][name:last]', xOffset = -3, yOffset = 0}
	E.db.unitframe.units.targettarget.customTexts.Luckyone_Name = {attachTextTo = 'Frame', enable = true, font = L1UI.DefaultFont, fontOutline = 'OUTLINE', justifyH = 'CENTER', size = 12, text_format = '[classcolor][name:last]', xOffset = 0, yOffset = 0}

	E.db.unitframe.units.target.aurabar.enable = false
	E.db.unitframe.units.target.buffs.countFont = L1UI.DefaultFont
	E.db.unitframe.units.target.buffs.countPosition = 'TOP'
	E.db.unitframe.units.target.buffs.countYOffset = 14
	E.db.unitframe.units.target.buffs.perrow = 10
	E.db.unitframe.units.target.buffs.priority = 'Blacklist,Dispellable,RaidBuffsElvUI'
	E.db.unitframe.units.target.castbar.customTextFont.enable = true
	E.db.unitframe.units.target.castbar.customTextFont.font = L1UI.DefaultFont
	E.db.unitframe.units.target.castbar.customTextFont.fontSize = 11
	E.db.unitframe.units.target.castbar.customTimeFont.enable = true
	E.db.unitframe.units.target.castbar.customTimeFont.font = L1UI.DefaultFont
	E.db.unitframe.units.target.castbar.customTimeFont.fontSize = 11
	E.db.unitframe.units.target.castbar.spark = false
	E.db.unitframe.units.target.castbar.textColor.b = 1
	E.db.unitframe.units.target.castbar.textColor.g = 1
	E.db.unitframe.units.target.castbar.textColor.r = 1
	E.db.unitframe.units.target.castbar.timeToHold = 2
	E.db.unitframe.units.target.castbar.width = 241
	E.db.unitframe.units.target.castbar.xOffsetText = 2
	E.db.unitframe.units.target.castbar.xOffsetTime = -2
	E.db.unitframe.units.target.CombatIcon.enable = false
	E.db.unitframe.units.target.debuffs.anchorPoint = 'TOPLEFT'
	E.db.unitframe.units.target.debuffs.attachTo = 'FRAME'
	E.db.unitframe.units.target.debuffs.countFont = L1UI.DefaultFont
	E.db.unitframe.units.target.debuffs.countPosition = 'TOP'
	E.db.unitframe.units.target.debuffs.countYOffset = 14
	E.db.unitframe.units.target.debuffs.desaturate = false
	E.db.unitframe.units.target.debuffs.growthX = 'RIGHT'
	E.db.unitframe.units.target.debuffs.maxDuration = 0
	E.db.unitframe.units.target.debuffs.perrow = 10
	E.db.unitframe.units.target.debuffs.priority = 'Blacklist,Personal,CCDebuffs'
	E.db.unitframe.units.target.disableMouseoverGlow = true
	E.db.unitframe.units.target.healPrediction.absorbStyle = 'WRAPPED'
	E.db.unitframe.units.target.health.text_format = ''
	E.db.unitframe.units.target.height = 40
	E.db.unitframe.units.target.middleClickFocus = false
	E.db.unitframe.units.target.name.text_format = ''
	E.db.unitframe.units.target.orientation = 'LEFT'
	E.db.unitframe.units.target.phaseIndicator.anchorPoint = 'LEFT'
	E.db.unitframe.units.target.phaseIndicator.scale = 0.5
	E.db.unitframe.units.target.phaseIndicator.xOffset = 5
	E.db.unitframe.units.target.power.detachedWidth = 189
	E.db.unitframe.units.target.power.enable = false
	E.db.unitframe.units.target.raidicon.enable = false
	E.db.unitframe.units.target.raidRoleIcons.position = 'TOPRIGHT'
	E.db.unitframe.units.target.raidRoleIcons.yOffset = 1
	E.db.unitframe.units.target.threatStyle = 'NONE'
	E.db.unitframe.units.target.width = 240
	E.db.unitframe.units.targettarget.debuffs.enable = false
	E.db.unitframe.units.targettarget.disableMouseoverGlow = true
	E.db.unitframe.units.targettarget.height = 20
	E.db.unitframe.units.targettarget.name.text_format = ''
	E.db.unitframe.units.targettarget.power.enable = false
	E.db.unitframe.units.targettarget.raidicon.enable = false
	E.db.unitframe.units.targettarget.width = 278

	-- UnitFrames nonRetail
	if not E.Retail then E.db.unitframe.units.player.power.EnergyManaRegen = false end

	-- Shared growth directions
	E.db.unitframe.units.raid.growthDirection = 'RIGHT_DOWN'
	E.db.unitframe.units.raid40.growthDirection = 'RIGHT_DOWN'

	-- Shared movers
	E.db.movers = E.db.movers or {}

	E.db.movers.AlertFrameMover = 'TOP,ElvUIParent,TOP,0,-178'
	E.db.movers.ArenaHeaderMover = 'TOPRIGHT,UIParent,TOPRIGHT,-243,-240'
	E.db.movers.BelowMinimapContainerMover = 'TOPRIGHT,UIParent,TOPRIGHT,-80,-208'
	E.db.movers.BNETMover = 'BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,1,140'
	E.db.movers.BossBannerMover = 'TOP,ElvUIParent,TOP,0,-199'
	E.db.movers.BuffsMover = 'TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-1'
	E.db.movers.DebuffsMover = 'TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-110'
	E.db.movers.DTPanelLuckyone_ActionBars_DTMover = 'BOTTOM,ElvUIParent,BOTTOM,0,1'
	E.db.movers.DTPanelLuckyone_MiniMap_DTMover = 'TOPRIGHT,ElvUIParent,TOPRIGHT,-1,-140'
	E.db.movers.DurabilityFrameMover = 'TOPRIGHT,ElvUIParent,TOPRIGHT,-1,-184'
	E.db.movers.ElvAB_1 = 'BOTTOM,ElvUIParent,BOTTOM,0,14'
	E.db.movers.ElvAB_2 = 'BOTTOM,ElvUIParent,BOTTOM,0,68'
	E.db.movers.ElvAB_3 = 'BOTTOM,ElvUIParent,BOTTOM,0,41'
	E.db.movers.ElvAB_4 = 'BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-1,200'
	E.db.movers.ElvAB_5 = 'TOPRIGHT,ElvUIParent,TOPRIGHT,-1,-370'
	E.db.movers.ElvAB_6 = 'BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-1,173'
	E.db.movers.ElvAB_7 = 'BOTTOM,ElvUIParent,BOTTOM,0,183'
	E.db.movers.ElvAB_8 = 'BOTTOM,ElvUIParent,BOTTOM,0,210'
	E.db.movers.ElvAB_9 = 'BOTTOM,ElvUIParent,BOTTOM,0,237'
	E.db.movers.ElvAB_10 = 'BOTTOM,ElvUIParent,BOTTOM,0,264'
	E.db.movers.ElvUIBagMover = 'BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-1,140'
	E.db.movers.ElvUIBankMover = 'BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,1,140'
	E.db.movers.ExperienceBarMover = 'BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,416,1'
	E.db.movers.GMMover = 'TOPRIGHT,ElvUIParent,TOPRIGHT,-434,-1'
	E.db.movers.LeftChatMover = 'BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,1,1'
	E.db.movers.LootFrameMover = 'TOP,ElvUIParent,TOP,0,-155'
	E.db.movers.MicrobarMover = 'TOPLEFT,ElvUIParent,TOPLEFT,163,-1'
	E.db.movers.MinimapMover = 'TOPRIGHT,ElvUIParent,TOPRIGHT,-1,-1'
	E.db.movers.MirrorTimer1Mover = 'TOP,ElvUIParent,TOP,0,-60'
	E.db.movers.MirrorTimer2Mover = 'TOP,ElvUIParent,TOP,0,-79'
	E.db.movers.MirrorTimer3Mover = 'TOP,ElvUIParent,TOP,0,-98'
	E.db.movers.PetAB = 'BOTTOM,ElvUIParent,BOTTOM,0,95'
	E.db.movers.PowerBarContainerMover = 'TOP,ElvUIParent,TOP,0,-39'
	E.db.movers.ReputationBarMover = 'BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-416,1'
	E.db.movers.RightChatMover = 'BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-1,1'
	E.db.movers.ShiftAB = 'TOPLEFT,ElvUIParent,TOPLEFT,1,-1'
	E.db.movers.TooltipMover = 'BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,102'
	E.db.movers.TopCenterContainerMover = 'TOP,ElvUIParent,TOP,0,-18'
	E.db.movers.UIErrorsFrameMover = 'TOP,ElvUIParent,TOP,0,-117'
	E.db.movers.VehicleLeaveButton = 'BOTTOM,ElvUIParent,BOTTOM,0,143'
	E.db.movers.VehicleSeatMover = 'BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,427,1'
	E.db.movers.VOICECHAT = 'TOPLEFT,ElvUIParent,TOPLEFT,1,-27'

	if E.Retail then
		E.db.movers.AltPowerBarMover = 'TOP,UIParent,TOP,0,-18'
		E.db.movers.BossButton = 'BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,427,119'
		E.db.movers.BossHeaderMover = 'TOPRIGHT,ElvUIParent,TOPRIGHT,-243,-240'
		E.db.movers.EventToastMover = 'TOP,ElvUIParent,TOP,0,-117'
		E.db.movers.LossControlMover = 'TOP,ElvUIParent,TOP,0,-490'
		E.db.movers.MawBuffsBelowMinimapMover = 'TOPLEFT,ElvUIParent,TOPLEFT,1,-48'
		E.db.movers.ObjectiveFrameMover = 'TOPRIGHT,ElvUIParent,TOPRIGHT,-80,-184'
		E.db.movers.PlayerChoiceToggle = 'BOTTOM,UIParent,BOTTOM,0,369'
		E.db.movers.TalkingHeadFrameMover = 'BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,140'
		E.db.movers.TorghastBuffsMover = 'TOPLEFT,ElvUIParent,TOPLEFT,4,-51'
		E.db.movers.TorghastChoiceToggle = 'BOTTOM,UIParent,BOTTOM,0,369'
		E.db.movers.ZoneAbility = 'BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,427,66'
	elseif E.Wrath then
		E.db.movers.BossHeaderMover = 'TOPRIGHT,ElvUIParent,TOPRIGHT,-250,-240'
		E.db.movers.ObjectiveFrameMover = 'TOPRIGHT,ElvUIParent,TOPRIGHT,-80,-184'
	else -- Classic & TBC
		E.db.movers.QuestTimerFrameMover = 'TOP,ElvUIParent,TOP,0,-1'
		E.db.movers.QuestWatchFrameMover = 'TOPRIGHT,ElvUIParent,TOPRIGHT,-80,-184'
	end

	if layout == 'main' then

		-- Main growth directions
		E.db.unitframe.units.party.growthDirection = 'DOWN_RIGHT'

		-- Main movers
		E.db.movers.ElvUF_FocusCastbarMover = 'BOTTOM,ElvUIParent,BOTTOM,278,391'
		E.db.movers.ElvUF_FocusMover = 'BOTTOM,ElvUIParent,BOTTOM,278,410'
		E.db.movers.ElvUF_PartyMover = 'TOPLEFT,ElvUIParent,TOPLEFT,360,-360'
		E.db.movers.ElvUF_PetMover = 'BOTTOM,UIParent,BOTTOM,0,122'
		E.db.movers.ElvUF_PlayerCastbarMover = 'BOTTOM,ElvUIParent,BOTTOM,-278,281'
		E.db.movers.ElvUF_PlayerMover = 'BOTTOM,ElvUIParent,BOTTOM,-278,300'
		E.db.movers.ElvUF_Raid40Mover = 'BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,1,140'
		E.db.movers.ElvUF_RaidMover = 'BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,1,140'
		E.db.movers.ElvUF_TargetCastbarMover = 'BOTTOM,ElvUIParent,BOTTOM,278,281'
		E.db.movers.ElvUF_TargetMover = 'BOTTOM,ElvUIParent,BOTTOM,278,300'
		E.db.movers.ElvUF_TargetTargetMover = 'BOTTOM,ElvUIParent,BOTTOM,0,252'

		-- Main Party
		E.db.unitframe.units.party.customTexts = E.db.unitframe.units.party.customTexts or {}
		E.db.unitframe.units.party.customTexts.Luckyone_Name = {attachTextTo = 'Health', enable = true, font = L1UI.DefaultFont, fontOutline = 'OUTLINE', justifyH = 'CENTER', size = 14, text_format = '[classcolor][name:short]', xOffset = 0, yOffset = 0}

		E.db.unitframe.units.party.buffIndicator.size = 12
		E.db.unitframe.units.party.buffs.countFont = L1UI.DefaultFont
		E.db.unitframe.units.party.buffs.perrow = 3
		E.db.unitframe.units.party.classbar.enable = false
		E.db.unitframe.units.party.debuffs.countFont = L1UI.DefaultFont
		E.db.unitframe.units.party.debuffs.countFontSize = 13
		E.db.unitframe.units.party.debuffs.countXOffset = 1
		E.db.unitframe.units.party.debuffs.maxDuration = 0
		E.db.unitframe.units.party.debuffs.perrow = 2
		E.db.unitframe.units.party.debuffs.priority = 'Blacklist,RaidDebuffs,Dispellable'
		E.db.unitframe.units.party.debuffs.sizeOverride = 32
		E.db.unitframe.units.party.debuffs.xOffset = 1
		E.db.unitframe.units.party.debuffs.yOffset = -1
		E.db.unitframe.units.party.disableMouseoverGlow = true
		E.db.unitframe.units.party.disableTargetGlow = true
		E.db.unitframe.units.party.healPrediction.absorbStyle = 'WRAPPED'
		E.db.unitframe.units.party.healPrediction.enable = true
		E.db.unitframe.units.party.health.text_format = ''
		E.db.unitframe.units.party.height = 32
		E.db.unitframe.units.party.horizontalSpacing = 1
		E.db.unitframe.units.party.infoPanel.height = 17
		E.db.unitframe.units.party.name.text_format = ''
		E.db.unitframe.units.party.orientation = 'MIDDLE'
		E.db.unitframe.units.party.phaseIndicator.anchorPoint = 'LEFT'
		E.db.unitframe.units.party.phaseIndicator.scale = 0.5
		E.db.unitframe.units.party.phaseIndicator.xOffset = 2
		E.db.unitframe.units.party.power.enable = false
		E.db.unitframe.units.party.raidicon.attachTo = 'RIGHT'
		E.db.unitframe.units.party.raidicon.size = 14
		E.db.unitframe.units.party.raidicon.xOffset = -3
		E.db.unitframe.units.party.raidicon.yOffset = 0
		E.db.unitframe.units.party.raidRoleIcons.yOffset = 1
		E.db.unitframe.units.party.rdebuffs.enable = false
		E.db.unitframe.units.party.readycheckIcon.position = 'RIGHT'
		E.db.unitframe.units.party.readycheckIcon.xOffset = -2
		E.db.unitframe.units.party.readycheckIcon.yOffset = 0
		E.db.unitframe.units.party.roleIcon.enable = false
		E.db.unitframe.units.party.summonIcon.attachTo = 'RIGHT'
		E.db.unitframe.units.party.summonIcon.size = 24
		E.db.unitframe.units.party.summonIcon.xOffset = -2
		E.db.unitframe.units.party.targetsGroup.height = 10
		E.db.unitframe.units.party.threatStyle = 'NONE'
		E.db.unitframe.units.party.verticalSpacing = 1
		E.db.unitframe.units.party.width = 190

		-- Main Raid
		E.db.unitframe.units.raid.buffIndicator.enable = false
		E.db.unitframe.units.raid.classbar.enable = false
		E.db.unitframe.units.raid.debuffs.anchorPoint = 'BOTTOM'
		E.db.unitframe.units.raid.debuffs.countFont = L1UI.DefaultFont
		E.db.unitframe.units.raid.debuffs.countFontSize = 14
		E.db.unitframe.units.raid.debuffs.desaturate = false
		E.db.unitframe.units.raid.debuffs.maxDuration = 0
		E.db.unitframe.units.raid.debuffs.priority = 'Blacklist,RaidDebuffs,Dispellable'
		E.db.unitframe.units.raid.debuffs.sizeOverride = 16
		E.db.unitframe.units.raid.debuffs.spacing = 0
		E.db.unitframe.units.raid.debuffs.yOffset = 16
		E.db.unitframe.units.raid.disableMouseoverGlow = true
		E.db.unitframe.units.raid.disableTargetGlow = true
		E.db.unitframe.units.raid.healPrediction.absorbStyle = 'WRAPPED'
		E.db.unitframe.units.raid.healPrediction.enable = true
		E.db.unitframe.units.raid.health.text_format = '[healthcolor][luckyone:health:percent]'
		E.db.unitframe.units.raid.health.xOffset = 0
		E.db.unitframe.units.raid.health.yOffset = 1
		E.db.unitframe.units.raid.height = 38
		E.db.unitframe.units.raid.horizontalSpacing = 1
		E.db.unitframe.units.raid.name.attachTextTo = 'Frame'
		E.db.unitframe.units.raid.name.position = 'TOP'
		E.db.unitframe.units.raid.name.text_format = '[classcolor][name:veryshort]'
		E.db.unitframe.units.raid.name.yOffset = -1
		E.db.unitframe.units.raid.numGroups = 4
		E.db.unitframe.units.raid.phaseIndicator.anchorPoint = 'BOTTOMRIGHT'
		E.db.unitframe.units.raid.phaseIndicator.scale = 0.5
		E.db.unitframe.units.raid.phaseIndicator.xOffset = 1
		E.db.unitframe.units.raid.power.enable = false
		E.db.unitframe.units.raid.pvpclassificationindicator.size = 18
		E.db.unitframe.units.raid.raidicon.attachTo = 'TOPRIGHT'
		E.db.unitframe.units.raid.raidicon.attachToObject = 'Health'
		E.db.unitframe.units.raid.raidicon.size = 12
		E.db.unitframe.units.raid.raidicon.xOffset = 1
		E.db.unitframe.units.raid.raidicon.yOffset = 1
		E.db.unitframe.units.raid.raidRoleIcons.scale = 0.8
		E.db.unitframe.units.raid.raidRoleIcons.yOffset = 1
		E.db.unitframe.units.raid.rdebuffs.font = L1UI.DefaultFont
		E.db.unitframe.units.raid.rdebuffs.fontOutline = 'OUTLINE'
		E.db.unitframe.units.raid.rdebuffs.fontSize = 9
		E.db.unitframe.units.raid.rdebuffs.size = 14
		E.db.unitframe.units.raid.rdebuffs.stack.position = 'CENTER'
		E.db.unitframe.units.raid.rdebuffs.stack.xOffset = 1
		E.db.unitframe.units.raid.rdebuffs.stack.yOffset = 0
		E.db.unitframe.units.raid.rdebuffs.xOffset = 33
		E.db.unitframe.units.raid.rdebuffs.yOffset = 1
		E.db.unitframe.units.raid.readycheckIcon.attachTo = 'Frame'
		E.db.unitframe.units.raid.readycheckIcon.position = 'CENTER'
		E.db.unitframe.units.raid.readycheckIcon.yOffset = 0
		E.db.unitframe.units.raid.resurrectIcon.size = 18
		E.db.unitframe.units.raid.roleIcon.attachTo = 'Frame'
		E.db.unitframe.units.raid.roleIcon.damager = false
		E.db.unitframe.units.raid.roleIcon.position = 'BOTTOMLEFT'
		E.db.unitframe.units.raid.roleIcon.size = 12
		E.db.unitframe.units.raid.roleIcon.xOffset = 0
		E.db.unitframe.units.raid.roleIcon.yOffset = 0
		E.db.unitframe.units.raid.summonIcon.size = 18
		E.db.unitframe.units.raid.threatStyle = 'NONE'
		E.db.unitframe.units.raid.verticalSpacing = 1
		E.db.unitframe.units.raid.visibility = '[@raid6,noexists][@raid31,exists] hide;show'
		E.db.unitframe.units.raid.width = 82

		-- Main Raid40
		E.db.unitframe.units.raid40.buffIndicator.enable = false
		E.db.unitframe.units.raid40.classbar.enable = false
		E.db.unitframe.units.raid40.debuffs.countFont = L1UI.DefaultFont
		E.db.unitframe.units.raid40.debuffs.desaturate = false
		E.db.unitframe.units.raid40.debuffs.maxDuration = 0
		E.db.unitframe.units.raid40.debuffs.priority = 'Blacklist,RaidDebuffs,Dispellable'
		E.db.unitframe.units.raid40.disableMouseoverGlow = true
		E.db.unitframe.units.raid40.disableTargetGlow = true
		E.db.unitframe.units.raid40.healPrediction.absorbStyle = 'WRAPPED'
		E.db.unitframe.units.raid40.health.text_format = ''
		E.db.unitframe.units.raid40.height = 24
		E.db.unitframe.units.raid40.horizontalSpacing = 1
		E.db.unitframe.units.raid40.name.text_format = '[classcolor][name:veryshort]'
		E.db.unitframe.units.raid40.phaseIndicator.anchorPoint = 'BOTTOMRIGHT'
		E.db.unitframe.units.raid40.phaseIndicator.scale = 0.5
		E.db.unitframe.units.raid40.phaseIndicator.xOffset = 1
		E.db.unitframe.units.raid40.pvpclassificationindicator.size = 18
		E.db.unitframe.units.raid40.raidicon.attachTo = 'TOPRIGHT'
		E.db.unitframe.units.raid40.raidicon.attachToObject = 'Health'
		E.db.unitframe.units.raid40.raidicon.size = 12
		E.db.unitframe.units.raid40.raidicon.xOffset = 1
		E.db.unitframe.units.raid40.raidicon.yOffset = 1
		E.db.unitframe.units.raid40.raidRoleIcons.scale = 0.8
		E.db.unitframe.units.raid40.raidRoleIcons.yOffset = 1
		E.db.unitframe.units.raid40.rdebuffs.enable = true
		E.db.unitframe.units.raid40.rdebuffs.font = L1UI.DefaultFont
		E.db.unitframe.units.raid40.rdebuffs.fontOutline = 'OUTLINE'
		E.db.unitframe.units.raid40.rdebuffs.fontSize = 9
		E.db.unitframe.units.raid40.rdebuffs.size = 14
		E.db.unitframe.units.raid40.rdebuffs.stack.position = 'CENTER'
		E.db.unitframe.units.raid40.rdebuffs.stack.yOffset = 0
		E.db.unitframe.units.raid40.rdebuffs.xOffset = 33
		E.db.unitframe.units.raid40.rdebuffs.yOffset = 1
		E.db.unitframe.units.raid40.readycheckIcon.position = 'TOPRIGHT'
		E.db.unitframe.units.raid40.readycheckIcon.xOffset = -1
		E.db.unitframe.units.raid40.readycheckIcon.yOffset = 0
		E.db.unitframe.units.raid40.resurrectIcon.attachTo = 'LEFT'
		E.db.unitframe.units.raid40.resurrectIcon.size = 18
		E.db.unitframe.units.raid40.roleIcon.attachTo = 'Frame'
		E.db.unitframe.units.raid40.roleIcon.damager = false
		E.db.unitframe.units.raid40.roleIcon.enable = true
		E.db.unitframe.units.raid40.roleIcon.position = 'BOTTOMLEFT'
		E.db.unitframe.units.raid40.roleIcon.size = 12
		E.db.unitframe.units.raid40.roleIcon.xOffset = 0
		E.db.unitframe.units.raid40.roleIcon.yOffset = 0
		E.db.unitframe.units.raid40.summonIcon.attachTo = 'LEFT'
		E.db.unitframe.units.raid40.summonIcon.size = 18
		E.db.unitframe.units.raid40.threatStyle = 'NONE'
		E.db.unitframe.units.raid40.verticalSpacing = 1
		E.db.unitframe.units.raid40.visibility = '[@raid31,noexists] hide;show'
		E.db.unitframe.units.raid40.width = 82

	elseif layout == 'healing' then

		-- Healing growth directions
		E.db.unitframe.units.party.growthDirection = 'RIGHT_DOWN'

		-- Healing movers

		-- Healing Party

		-- Healing Raid

		-- Healing Raid40

	end
end