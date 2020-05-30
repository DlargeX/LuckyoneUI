local E, L, V, P, G = unpack(ElvUI)
local L1UI = E:GetModule("LuckyoneUI");

function L1UI:SetupStyleFilters()

	for _, filterName in pairs({'Luckyone_AD', 'Luckyone_FH', 'Luckyone_KR', 'Luckyone_ML', 'Luckyone_SIEGE', 'Luckyone_SOTS', 'Luckyone_TD', 'Luckyone_TOS', 'Luckyone_UR', 'Luckyone_WM', 'Luckyone_WORK', 'Luckyone_YARD'}) do
		E.global["nameplate"]["filters"][filterName] = {}
		E.NamePlates:StyleFilterCopyDefaults(E.global["nameplate"]["filters"][filterName])
		E.db["nameplates"]["filters"][filterName] = { triggers = { enable = true } }
	end

	--Atal'Dazar
	E.global["nameplate"]["filters"]["Luckyone_AD"]["actions"]["color"]["health"] = true
	E.global["nameplate"]["filters"]["Luckyone_AD"]["actions"]["color"]["healthColor"]["g"] = 0.59607843137255
	E.global["nameplate"]["filters"]["Luckyone_AD"]["actions"]["color"]["healthColor"]["r"] = 0
	E.global["nameplate"]["filters"]["Luckyone_AD"]["actions"]["tags"]["level"] = "||cff0098ff[level]||r"
	E.global["nameplate"]["filters"]["Luckyone_AD"]["actions"]["tags"]["name"] = "||cff0098ff[name:abbrev:long]||r"
	E.global["nameplate"]["filters"]["Luckyone_AD"]["triggers"]["names"]["122969"] = true
	E.global["nameplate"]["filters"]["Luckyone_AD"]["triggers"]["names"]["122972"] = true
	E.global["nameplate"]["filters"]["Luckyone_AD"]["triggers"]["names"]["122973"] = true
	E.global["nameplate"]["filters"]["Luckyone_AD"]["triggers"]["names"]["127315"] = true
	E.global["nameplate"]["filters"]["Luckyone_AD"]["triggers"]["names"]["128434"] = true
	--Freehold
	E.global["nameplate"]["filters"]["Luckyone_FH"]["actions"]["color"]["health"] = true
	E.global["nameplate"]["filters"]["Luckyone_FH"]["actions"]["color"]["healthColor"]["g"] = 0.59607843137255
	E.global["nameplate"]["filters"]["Luckyone_FH"]["actions"]["color"]["healthColor"]["r"] = 0
	E.global["nameplate"]["filters"]["Luckyone_FH"]["actions"]["tags"]["level"] = "||cff0098ff[level]||r"
	E.global["nameplate"]["filters"]["Luckyone_FH"]["actions"]["tags"]["name"] = "||cff0098ff[name:abbrev:long]||r"
	E.global["nameplate"]["filters"]["Luckyone_FH"]["triggers"]["names"]["126918"] = true
	E.global["nameplate"]["filters"]["Luckyone_FH"]["triggers"]["names"]["127111"] = true
	E.global["nameplate"]["filters"]["Luckyone_FH"]["triggers"]["names"]["129529"] = true
	E.global["nameplate"]["filters"]["Luckyone_FH"]["triggers"]["names"]["129600"] = true
	E.global["nameplate"]["filters"]["Luckyone_FH"]["triggers"]["names"]["129602"] = true
	E.global["nameplate"]["filters"]["Luckyone_FH"]["triggers"]["names"]["130012"] = true
	E.global["nameplate"]["filters"]["Luckyone_FH"]["triggers"]["names"]["130404"] = true
	--Kings Rest
	E.global["nameplate"]["filters"]["Luckyone_KR"]["actions"]["color"]["health"] = true
	E.global["nameplate"]["filters"]["Luckyone_KR"]["actions"]["color"]["healthColor"]["g"] = 0.59607843137255
	E.global["nameplate"]["filters"]["Luckyone_KR"]["actions"]["color"]["healthColor"]["r"] = 0
	E.global["nameplate"]["filters"]["Luckyone_KR"]["actions"]["tags"]["level"] = "||cff0098ff[level]||r"
	E.global["nameplate"]["filters"]["Luckyone_KR"]["actions"]["tags"]["name"] = "||cff0098ff[name:abbrev:long]||r"
	E.global["nameplate"]["filters"]["Luckyone_KR"]["triggers"]["names"]["134158"] = true
	E.global["nameplate"]["filters"]["Luckyone_KR"]["triggers"]["names"]["134174"] = true
	E.global["nameplate"]["filters"]["Luckyone_KR"]["triggers"]["names"]["134331"] = true
	E.global["nameplate"]["filters"]["Luckyone_KR"]["triggers"]["names"]["135167"] = true
	E.global["nameplate"]["filters"]["Luckyone_KR"]["triggers"]["names"]["135235"] = true
	E.global["nameplate"]["filters"]["Luckyone_KR"]["triggers"]["names"]["137478"] = true
	E.global["nameplate"]["filters"]["Luckyone_KR"]["triggers"]["names"]["138489"] = true
	--Motherlode
	E.global["nameplate"]["filters"]["Luckyone_ML"]["actions"]["color"]["health"] = true
	E.global["nameplate"]["filters"]["Luckyone_ML"]["actions"]["color"]["healthColor"]["g"] = 0.59607843137255
	E.global["nameplate"]["filters"]["Luckyone_ML"]["actions"]["color"]["healthColor"]["r"] = 0
	E.global["nameplate"]["filters"]["Luckyone_ML"]["actions"]["tags"]["level"] = "||cff0098ff[level]||r"
	E.global["nameplate"]["filters"]["Luckyone_ML"]["actions"]["tags"]["name"] = "||cff0098ff[name:abbrev:long]||r"
	E.global["nameplate"]["filters"]["Luckyone_ML"]["triggers"]["names"]["129802"] = true
	E.global["nameplate"]["filters"]["Luckyone_ML"]["triggers"]["names"]["130661"] = true
	E.global["nameplate"]["filters"]["Luckyone_ML"]["triggers"]["names"]["133430"] = true
	E.global["nameplate"]["filters"]["Luckyone_ML"]["triggers"]["names"]["133593"] = true
	E.global["nameplate"]["filters"]["Luckyone_ML"]["triggers"]["names"]["134232"] = true
	E.global["nameplate"]["filters"]["Luckyone_ML"]["triggers"]["names"]["136470"] = true
	E.global["nameplate"]["filters"]["Luckyone_ML"]["triggers"]["names"]["136934"] = true
	--Siege of Boralus
	E.global["nameplate"]["filters"]["Luckyone_SIEGE"]["actions"]["color"]["health"] = true
	E.global["nameplate"]["filters"]["Luckyone_SIEGE"]["actions"]["color"]["healthColor"]["g"] = 0.59607843137255
	E.global["nameplate"]["filters"]["Luckyone_SIEGE"]["actions"]["color"]["healthColor"]["r"] = 0
	E.global["nameplate"]["filters"]["Luckyone_SIEGE"]["actions"]["tags"]["level"] = "||cff0098ff[level]||r"
	E.global["nameplate"]["filters"]["Luckyone_SIEGE"]["actions"]["tags"]["name"] = "||cff0098ff[name:abbrev:long]||r"
	E.global["nameplate"]["filters"]["Luckyone_SIEGE"]["triggers"]["names"]["129367"] = true
	E.global["nameplate"]["filters"]["Luckyone_SIEGE"]["triggers"]["names"]["129370"] = true
	E.global["nameplate"]["filters"]["Luckyone_SIEGE"]["triggers"]["names"]["137517"] = true
	E.global["nameplate"]["filters"]["Luckyone_SIEGE"]["triggers"]["names"]["137614"] = true
	E.global["nameplate"]["filters"]["Luckyone_SIEGE"]["triggers"]["names"]["138019"] = true
	E.global["nameplate"]["filters"]["Luckyone_SIEGE"]["triggers"]["names"]["138465"] = true
	E.global["nameplate"]["filters"]["Luckyone_SIEGE"]["triggers"]["names"]["141283"] = true
	E.global["nameplate"]["filters"]["Luckyone_SIEGE"]["triggers"]["names"]["141284"] = true
	--Shrine of the Storm
	E.global["nameplate"]["filters"]["Luckyone_SOTS"]["actions"]["color"]["health"] = true
	E.global["nameplate"]["filters"]["Luckyone_SOTS"]["actions"]["color"]["healthColor"]["g"] = 0.59607843137255
	E.global["nameplate"]["filters"]["Luckyone_SOTS"]["actions"]["color"]["healthColor"]["r"] = 0
	E.global["nameplate"]["filters"]["Luckyone_SOTS"]["actions"]["tags"]["level"] = "||cff0098ff[level]||r"
	E.global["nameplate"]["filters"]["Luckyone_SOTS"]["actions"]["tags"]["name"] = "||cff0098ff[name:abbrev:long]||r"
	E.global["nameplate"]["filters"]["Luckyone_SOTS"]["triggers"]["names"]["134139"] = true
	E.global["nameplate"]["filters"]["Luckyone_SOTS"]["triggers"]["names"]["134150"] = true
	E.global["nameplate"]["filters"]["Luckyone_SOTS"]["triggers"]["names"]["134417"] = true
	E.global["nameplate"]["filters"]["Luckyone_SOTS"]["triggers"]["names"]["134423"] = true
	E.global["nameplate"]["filters"]["Luckyone_SOTS"]["triggers"]["names"]["134514"] = true
	E.global["nameplate"]["filters"]["Luckyone_SOTS"]["triggers"]["names"]["136186"] = true
	E.global["nameplate"]["filters"]["Luckyone_SOTS"]["triggers"]["names"]["136214"] = true
	E.global["nameplate"]["filters"]["Luckyone_SOTS"]["triggers"]["names"]["136297"] = true
	--Tol'Dagor
	E.global["nameplate"]["filters"]["Luckyone_TD"]["actions"]["color"]["health"] = true
	E.global["nameplate"]["filters"]["Luckyone_TD"]["actions"]["color"]["healthColor"]["g"] = 0.59607843137255
	E.global["nameplate"]["filters"]["Luckyone_TD"]["actions"]["color"]["healthColor"]["r"] = 0
	E.global["nameplate"]["filters"]["Luckyone_TD"]["actions"]["tags"]["level"] = "||cff0098ff[level]||r"
	E.global["nameplate"]["filters"]["Luckyone_TD"]["actions"]["tags"]["name"] = "||cff0098ff[name:abbrev:long]||r"
	E.global["nameplate"]["filters"]["Luckyone_TD"]["triggers"]["names"]["127482"] = true
	E.global["nameplate"]["filters"]["Luckyone_TD"]["triggers"]["names"]["127488"] = true
	E.global["nameplate"]["filters"]["Luckyone_TD"]["triggers"]["names"]["130026"] = true
	E.global["nameplate"]["filters"]["Luckyone_TD"]["triggers"]["names"]["135699"] = true
	--Temple of Sethraliss
	E.global["nameplate"]["filters"]["Luckyone_TOS"]["actions"]["color"]["health"] = true
	E.global["nameplate"]["filters"]["Luckyone_TOS"]["actions"]["color"]["healthColor"]["g"] = 0.59607843137255
	E.global["nameplate"]["filters"]["Luckyone_TOS"]["actions"]["color"]["healthColor"]["r"] = 0
	E.global["nameplate"]["filters"]["Luckyone_TOS"]["actions"]["tags"]["level"] = "||cff0098ff[level]||r"
	E.global["nameplate"]["filters"]["Luckyone_TOS"]["actions"]["tags"]["name"] = "||cff0098ff[name:abbrev:long]||r"
	E.global["nameplate"]["filters"]["Luckyone_TOS"]["triggers"]["names"]["134364"] = true
	E.global["nameplate"]["filters"]["Luckyone_TOS"]["triggers"]["names"]["134599"] = true
	E.global["nameplate"]["filters"]["Luckyone_TOS"]["triggers"]["names"]["134629"] = true
	E.global["nameplate"]["filters"]["Luckyone_TOS"]["triggers"]["names"]["134990"] = true
	E.global["nameplate"]["filters"]["Luckyone_TOS"]["triggers"]["names"]["139110"] = true
	E.global["nameplate"]["filters"]["Luckyone_TOS"]["triggers"]["names"]["139949"] = true
	--Underrot
	E.global["nameplate"]["filters"]["Luckyone_UR"]["actions"]["color"]["health"] = true
	E.global["nameplate"]["filters"]["Luckyone_UR"]["actions"]["color"]["healthColor"]["g"] = 0.59607843137255
	E.global["nameplate"]["filters"]["Luckyone_UR"]["actions"]["color"]["healthColor"]["r"] = 0
	E.global["nameplate"]["filters"]["Luckyone_UR"]["actions"]["tags"]["level"] = "||cff0098ff[level]||r"
	E.global["nameplate"]["filters"]["Luckyone_UR"]["actions"]["tags"]["name"] = "||cff0098ff[name:abbrev:long]||r"
	E.global["nameplate"]["filters"]["Luckyone_UR"]["triggers"]["names"]["130909"] = true
	E.global["nameplate"]["filters"]["Luckyone_UR"]["triggers"]["names"]["131492"] = true
	E.global["nameplate"]["filters"]["Luckyone_UR"]["triggers"]["names"]["133835"] = true
	E.global["nameplate"]["filters"]["Luckyone_UR"]["triggers"]["names"]["134284"] = true
	E.global["nameplate"]["filters"]["Luckyone_UR"]["triggers"]["names"]["138187"] = true
	--Waycrest Manor
	E.global["nameplate"]["filters"]["Luckyone_WM"]["actions"]["color"]["health"] = true
	E.global["nameplate"]["filters"]["Luckyone_WM"]["actions"]["color"]["healthColor"]["g"] = 0.59607843137255
	E.global["nameplate"]["filters"]["Luckyone_WM"]["actions"]["color"]["healthColor"]["r"] = 0
	E.global["nameplate"]["filters"]["Luckyone_WM"]["actions"]["tags"]["level"] = "||cff0098ff[level]||r"
	E.global["nameplate"]["filters"]["Luckyone_WM"]["actions"]["tags"]["name"] = "||cff0098ff[name:abbrev:long]||r"
	E.global["nameplate"]["filters"]["Luckyone_WM"]["triggers"]["names"]["131586"] = true
	E.global["nameplate"]["filters"]["Luckyone_WM"]["triggers"]["names"]["131587"] = true
	E.global["nameplate"]["filters"]["Luckyone_WM"]["triggers"]["names"]["131812"] = true
	E.global["nameplate"]["filters"]["Luckyone_WM"]["triggers"]["names"]["131819"] = true
	E.global["nameplate"]["filters"]["Luckyone_WM"]["triggers"]["names"]["131849"] = true
	E.global["nameplate"]["filters"]["Luckyone_WM"]["triggers"]["names"]["131858"] = true
	E.global["nameplate"]["filters"]["Luckyone_WM"]["triggers"]["names"]["134041"] = true
	--Mechagon Workshop
	E.global["nameplate"]["filters"]["Luckyone_WORK"]["actions"]["color"]["health"] = true
	E.global["nameplate"]["filters"]["Luckyone_WORK"]["actions"]["color"]["healthColor"]["g"] = 0.59607843137255
	E.global["nameplate"]["filters"]["Luckyone_WORK"]["actions"]["color"]["healthColor"]["r"] = 0
	E.global["nameplate"]["filters"]["Luckyone_WORK"]["actions"]["tags"]["level"] = "||cff0098ff[level]||r"
	E.global["nameplate"]["filters"]["Luckyone_WORK"]["actions"]["tags"]["name"] = "||cff0098ff[name:abbrev:long]||r"
	E.global["nameplate"]["filters"]["Luckyone_WORK"]["triggers"]["names"]["144293"] = true
	E.global["nameplate"]["filters"]["Luckyone_WORK"]["triggers"]["names"]["144294"] = true
	E.global["nameplate"]["filters"]["Luckyone_WORK"]["triggers"]["names"]["151325"] = true
	E.global["nameplate"]["filters"]["Luckyone_WORK"]["triggers"]["names"]["151657"] = true
	--Mechagon Junkyard
	E.global["nameplate"]["filters"]["Luckyone_YARD"]["actions"]["color"]["health"] = true
	E.global["nameplate"]["filters"]["Luckyone_YARD"]["actions"]["color"]["healthColor"]["g"] = 0.59607843137255
	E.global["nameplate"]["filters"]["Luckyone_YARD"]["actions"]["color"]["healthColor"]["r"] = 0
	E.global["nameplate"]["filters"]["Luckyone_YARD"]["actions"]["tags"]["level"] = "||cff0098ff[level]||r"
	E.global["nameplate"]["filters"]["Luckyone_YARD"]["actions"]["tags"]["name"] = "||cff0098ff[name:abbrev:long]||r"
	E.global["nameplate"]["filters"]["Luckyone_YARD"]["triggers"]["names"]["150146"] = true
	E.global["nameplate"]["filters"]["Luckyone_YARD"]["triggers"]["names"]["150160"] = true
	E.global["nameplate"]["filters"]["Luckyone_YARD"]["triggers"]["names"]["150168"] = true
	E.global["nameplate"]["filters"]["Luckyone_YARD"]["triggers"]["names"]["150250"] = true
	E.global["nameplate"]["filters"]["Luckyone_YARD"]["triggers"]["names"]["150251"] = true
	E.global["nameplate"]["filters"]["Luckyone_YARD"]["triggers"]["names"]["150292"] = true
	E.global["nameplate"]["filters"]["Luckyone_YARD"]["triggers"]["names"]["150297"] = true

	--Edited default filters
	E.global["nameplate"]["filters"]["ElvUI_Explosives"]["actions"]["color"]["healthColor"]["r"] = 0.49019607843137
	E.global["nameplate"]["filters"]["ElvUI_Explosives"]["actions"]["color"]["healthColor"]["g"] = 0
	E.global["nameplate"]["filters"]["ElvUI_Explosives"]["actions"]["color"]["healthColor"]["b"] = 1
	E.global["nameplate"]["filters"]["ElvUI_Explosives"]["actions"]["scale"] = 1
	E.global["nameplate"]["filters"]["ElvUI_Explosives"]["triggers"]["priority"] = 1
	E.global["nameplate"]["filters"]["ElvUI_NonTarget"]["actions"]["alpha"] = -1
	E.global["nameplate"]["filters"]["ElvUI_Target"]["actions"]["scale"] = 1

	E:StaggeredUpdateAll(nil, true)
end