local E, _, V, P, G = unpack(ElvUI)
local L = E.Libs.ACL:GetLocale('ElvUI', E.global.general.locale)
local EP = LibStub('LibElvUIPlugin-1.0')
local addon, Engine = ...

local format = format

local _G = _G
local GetAddOnMetadata = GetAddOnMetadata

local L1UI = E:NewModule(addon, 'AceConsole-3.0', 'AceHook-3.0', 'AceEvent-3.0', 'AceTimer-3.0')

Engine[1] = L1UI -- LuckyoneUI
Engine[2] = E -- ElvUI Engine
Engine[3] = L -- ElvUI Locales
Engine[4] = V -- ElvUI PrivateDB
Engine[5] = P -- ElvUI ProfileDB
Engine[6] = G -- ElvUI GlobalDB
_G[addon] = Engine

-- My characters
local name = format('%s-%s', E.myname, E:ShortenRealm(E.myrealm))
local toons = {
	-- Retail
	['Luckyone-LaughingSkull'] = true,
	['Luckypriest-LaughingSkull'] = true,
	['Luckymonkas-LaughingSkull'] = true,
	['Luckydk-LaughingSkull'] = true,
	['Luckyhunter-LaughingSkull'] = true,
	['Unluckyone-LaughingSkull'] = true,
	['Notlucky-LaughingSkull'] = true,
	['Luckymage-LaughingSkull'] = true,
	['Luckydh-LaughingSkull'] = true,
	['Luckywl-LaughingSkull'] = true,
	['Luckyrogue-LaughingSkull'] = true,
	['Luckypala-LaughingSkull'] = true,
	-- Public Test Realm
	['Luckyone-Nobundo'] = true,
	-- Wrath Classic
	['Luckyone-Gehennas'] = true,
	['Luckyd-Golemagg'] = true,
	['Luckyp-Golemagg'] = true,
	['Luckysh-Golemagg'] = true,
	-- Season of Mastery
	['Luckyone-Dreadnaught'] = true,
}

-- Constants
L1UI.Config = {}
L1UI.CreditsList = {}
L1UI.DefaultFont = 'Expressway'
L1UI.Logo = 'Interface\\AddOns\\ElvUI_LuckyoneUI\\Media\\Textures\\Clover.tga'
L1UI.Me = toons[name]
L1UI.Name = '|cff4beb2cLuckyoneUI|r'
L1UI.RequiredVersion = E.Retail and 12.82 or E.TBC and 2.48 or E.Classic and 1.73 or E.Wrath and 0.22
L1UI.Version = GetAddOnMetadata(addon, 'Version')

function L1UI:Initialize()
	if E.private.install_complete and E.db.L1UI.install_version == nil then
		E.PluginInstaller:Queue(L1UI.InstallerData)
	end

	if L1UI.Me and E.Retail then
		ElvDB.ShadowLightAlpha = false
	end

	EP:RegisterPlugin(addon, L1UI.Config)
	L1UI:RegisterEvents()
end

local function CallbackInitialize()
	L1UI:Initialize()
end

E:RegisterModule(addon, CallbackInitialize)
