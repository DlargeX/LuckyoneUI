-- Lua functions
local format = format
local ipairs = ipairs
local next = next
local pairs = pairs
local print = print
local strfind = string.find
local strlower = string.lower
local strmatch = string.match
local tonumber = tonumber
local unpack = unpack
local wipe = table.wipe

-- API cache
local C_UI_Reload = C_UI.Reload
local DisableAddOn = C_AddOns.DisableAddOn
local EnableAddOn = C_AddOns.EnableAddOn
local GetAddOnInfo = C_AddOns.GetAddOnInfo
local GetNumAddOns = C_AddOns.GetNumAddOns
local LoadAddOn = C_AddOns.LoadAddOn
local SetCVar = C_CVar.SetCVar

-- Global environment
local _G = _G

-- Global strings
local ACCEPT = ACCEPT
local CANCEL = CANCEL

-- AddOn namespace
local _, Private = ...

-- ElvUI modules
local E, L = unpack(ElvUI)
local PI = E:GetModule('PluginInstaller')

-- Keep these enabled in debug mode
local AddOns = {
	ElvUI = true,
	ElvUI_Libraries = true,
	ElvUI_LuckyoneUI = true,
	ElvUI_Options = true
}

-- Chat print
function Private:Print(msg)
	print(Private.Name .. ': ' .. msg)
end

-- Gets the number from the profile string
-- If it matches the specified profile type (Main/Healing/Support) or if no profile type is specified
local function GetNumber(str, profileType)
	if profileType and not str:find(profileType, 1, true) then
		return nil
	end

	local number = str:match('%d+%.?%d*')
	return number and tonumber(number) or nil
end

-- Find the profile with the highest number
-- Optionally filtering by the specified profile type
function Private:GetMostRecentProfile(profileType)
	local profiles = E.data:GetProfiles()
	local mostRecentNumber, mostRecentProfile
	local devProfiles = {
		Main = 'Luckyone Main',
		Healing = 'Luckyone Healing',
		Support = 'Luckyone Support'
	}

	for _, profile in ipairs(profiles) do
		local number = GetNumber(profile, profileType)
		if number and (not mostRecentNumber or number > mostRecentNumber) then
			mostRecentNumber, mostRecentProfile = number, profile
		end
	end

	return mostRecentProfile or (profileType and devProfiles[profileType]) or nil
end

-- Reload popup
E.PopupDialogs.L1UI_RL = {
	text = L["Reload required - continue?"],
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = C_UI_Reload,
	whileDead = 1,
	hideOnEscape = false,
}

-- Version check popup
E.PopupDialogs.L1UI_VC = {
	text = format('|cffC80000%s|r', L["Your ElvUI is outdated - please update and reload."]),
	whileDead = 1,
	hideOnEscape = false,
}

-- Editbox popup from ElvUI\Core\General\StaticPopups.lua
-- Slightly modified for title text and additional chat print
E.PopupDialogs.L1UI_EDITBOX = {
	text = Private.Name,
	button1 = OKAY,
	hasEditBox = 1,
	OnShow = function(self, data)
		self.editBox:SetAutoFocus(true)
		self.editBox.width = self.editBox:GetWidth()
		self.editBox:Width(280)
		self.editBox:AddHistoryLine('text')
		self.editBox.temptxt = data
		self.editBox:SetText(data)
		self.editBox:HighlightText()
		self.editBox:SetJustifyH('CENTER')
		Private:Print(data)
	end,
	OnHide = function(self)
		self.editBox:Width(self.editBox.width or 50)
		self.editBox.width = nil
		self.temptxt = nil
	end,
	EditBoxOnEnterPressed = function(self)
		self:GetParent():Hide()
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide()
	end,
	EditBoxOnTextChanged = function(self)
		if self:GetText() ~= self.temptxt then
			self:SetText(self.temptxt)
		end
		self:HighlightText()
		self:ClearFocus()
	end,
	OnAccept = E.noop,
	whileDead = 1,
	preferredIndex = 3,
	hideOnEscape = 1,
}

-- Version check
function Private:VersionCheck()
	if E.version < Private.RequiredElvUI then
		E:StaticPopup_Show('L1UI_VC')
		Private:Print(format('|cffbf0008%s|r', L["Your ElvUI is outdated - please update and reload."]))
	end
end

-- Addon Compartment OnClick TOC func
function L1UI_OnAddonCompartmentClick()
	E:ToggleOptions()
	E.Libs.AceConfigDialog:SelectGroup('ElvUI', 'L1UI')
end

-- Weekly Rewards Frame chat commands
function L1UI:WeeklyRewards()
	LoadAddOn('Blizzard_WeeklyRewards')
	if _G.WeeklyRewardsFrame:IsShown() then
		_G.WeeklyRewardsFrame:Hide()
	else
		_G.WeeklyRewardsFrame:Show()
	end
end

-- LuckyoneUI chat commands
function L1UI:Toggles(msg)
	if msg == 'install' then
		PI:Queue(L1UI.InstallerData)
	elseif msg == 'config' then
		E:ToggleOptions()
		E.Libs.AceConfigDialog:SelectGroup('ElvUI', 'L1UI')
	end
end

-- LuckyoneUI debug mode
function L1UI:DebugMode(msg)
	local switch = strlower(msg)
	if switch == 'on' then
		for i = 1, GetNumAddOns() do
			local name = GetAddOnInfo(i)
			if not AddOns[name] and E:IsAddOnEnabled(name) then
				DisableAddOn(name, E.myname)
				ElvDB.LuckyoneDisabledAddOns[name] = i
			end
		end
		SetCVar('scriptErrors', 1)
		C_UI_Reload()
	elseif switch == 'off' then
		if next(ElvDB.LuckyoneDisabledAddOns) then
			for name in pairs(ElvDB.LuckyoneDisabledAddOns) do
				EnableAddOn(name, E.myname)
			end
			wipe(ElvDB.LuckyoneDisabledAddOns)
			C_UI_Reload()
		end
	else
		Private:Print('/luckydebug on - /luckydebug off')
	end
end

-- Register all commands
function L1UI:LoadCommands()
	self:RegisterChatCommand('luckydebug', 'DebugMode')
	self:RegisterChatCommand('lucky', 'Toggles')
	if E.Retail then -- Retail chat commands
		self:RegisterChatCommand('vault', 'WeeklyRewards')
		self:RegisterChatCommand('weekly', 'WeeklyRewards')
	end
end

-- Luckyone characters by GUID
function Private:HandleToons()
	local guid = E.myguid
	local toons = E.Retail and {
		-- (1598: LaughingSkull)
		['Player-1598-0F5E4639'] = true, -- [Alliance] Druid
		['Player-1598-0F3E51B0'] = true, -- [Alliance] Druid 2
		['Player-1598-0F46FF5A'] = true, -- [Horde] Evoker
		['Player-1598-0F92E2B9'] = true, -- [Horde] Evoker 2
		['Player-1598-0BFF3341'] = true, -- [Horde] DH
		['Player-1598-0BD22704'] = true, -- [Horde] Priest
		['Player-1598-0BEFA545'] = true, -- [Horde] Monk
		['Player-1598-0E1A06DE'] = true, -- [Horde] Rogue
		['Player-1598-0BF2E377'] = true, -- [Horde] Hunter
		['Player-1598-0BF18248'] = true, -- [Horde] DK
		['Player-1598-0BFABB95'] = true, -- [Horde] Mage
		['Player-1598-0E67511D'] = true, -- [Horde] Paladin
		['Player-1598-0C0DD01B'] = true, -- [Horde] Warlock
		['Player-1598-0BF8013A'] = true, -- [Horde] Warrior
		['Player-1598-0BF56103'] = true, -- [Horde] Shaman
		['Player-1598-0F87B5AA'] = true, -- [Alliance] Priest
	} or E.Cata and {
		-- (4467: Firemaw, 4440: Everlook, 4476: Gehennas)
		['Player-4467-04540395'] = true, -- [Alliance] Druid
		['Player-4467-04542B4A'] = true, -- [Alliance] Priest
		['Player-4467-04571AA2'] = true, -- [Alliance] Warlock
		['Player-4467-04571911'] = true, -- [Alliance] Paladin
		['Player-4467-04571A9F'] = true, -- [Alliance] Mage
		['Player-4467-04571A8D'] = true, -- [Alliance] DK
		['Player-4467-048C4EED'] = true, -- [Alliance] Hunter
		['Player-4467-0489BE11'] = true, -- [Alliance] Shaman
		['Player-4467-0489BDFD'] = true, -- [Alliance] Rogue
		['Player-4467-04571A98'] = true, -- [Alliance] Warrior
		['Player-4440-03AD654A'] = true, -- [Alliance] Rogue
		['Player-4440-03ADE2DF'] = true, -- [Alliance] Shaman
		['Player-4476-03BF41C9'] = true, -- [Horde] Hunter
	} or E.Classic and {
		-- (5826: Lone Wolf, 5827: Living Flame)
		['Player-5826-0202765F'] = true, -- [Alliance] Hunter
		['Player-5826-020F7F10'] = true, -- [Alliance] Paladin
		['Player-5826-02172E79'] = true, -- [Alliance] Warlock
		['Player-5826-0234253E'] = true, -- [Alliance] Mage
		['Player-5826-02342508'] = true, -- [Alliance] Priest
		['Player-5826-023424EF'] = true, -- [Alliance] Druid
		['Player-5826-02342520'] = true, -- [Alliance] Rogue
		['Player-5826-02342556'] = true, -- [Alliance] Warrior
		['Player-5827-02331C4B'] = true, -- [Horde] Shaman
		-- (5261: Nek'Rosh)
		['Player-5261-01ADAC25'] = true, -- [Horde] Rogue
		['Player-5261-019F4B67'] = true, -- [Horde] Hunter
		['Player-5261-01B3C53A'] = true, -- [Horde] Mage
		['Player-5261-01B50AC4'] = true, -- [Horde] Druid
		-- (5233: Firemaw)
		['Player-5233-01D22A72'] = true, -- [Horde] Hunter: Unluckyone
		['Player-5233-01D27011'] = true, -- [Horde] Druid: Luckydruid
	}

	Private.itsLuckyone = toons[guid]
end

-- Events
function L1UI:PLAYER_ENTERING_WORLD(_, initLogin, isReload)
	if initLogin or not ElvDB.LuckyoneDisabledAddOns then
		ElvDB.LuckyoneDisabledAddOns = {}
	end

	if initLogin or isReload then
		Private:VersionCheck()
	end

	Private:DisabledFrames()
	Private:EasyDelete()
	Private:HandleToons()
	L1UI:LoadCommands()
end

-- Register events
function L1UI:RegisterEvents()
	L1UI:RegisterEvent('PLAYER_ENTERING_WORLD')
end
