local L1UI, E, L, V, P, G = unpack(select(2, ...))

local next, pairs, strlower, wipe = next, pairs, strlower, wipe

local _G = _G
local DisableAddOn, EnableAddOn = DisableAddOn, EnableAddOn
local GetAddOnInfo, GetNumAddOns = GetAddOnInfo, GetNumAddOns
local LoadAddOn = LoadAddOn
local ReloadUI = ReloadUI
local SetCVar = SetCVar

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
		E.PluginInstaller:Queue(L1UI.InstallerData)
	elseif msg == 'config' then
		E:ToggleOptions()
		E.Libs.AceConfigDialog:SelectGroup('ElvUI', 'L1UI')
	end
end

local AddOns = {
	ElvUI = true,
	ElvUI_Libraries = true,
	ElvUI_LuckyoneUI = true,
	ElvUI_Options = true
}

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
		ReloadUI()
	elseif switch == 'off' then
		if next(ElvDB.LuckyoneDisabledAddOns) then
			for name in pairs(ElvDB.LuckyoneDisabledAddOns) do
				EnableAddOn(name, E.myname)
			end
			wipe(ElvDB.LuckyoneDisabledAddOns)
			ReloadUI()
		end
	else
		L1UI:Print('/luckydebug on - /luckydebug off')
	end
end

-- Register all commands
function L1UI:LoadCommands()
	self:RegisterChatCommand('luckyoneui', 'Toggles')
	self:RegisterChatCommand('luckydebug', 'DebugMode')
	if E.Retail then -- Retail chat commands
		self:RegisterChatCommand('weekly', 'WeeklyRewards')
		self:RegisterChatCommand('vault', 'WeeklyRewards')
	end
end
