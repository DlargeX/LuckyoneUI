local L1UI, E, L, V, P, G = unpack(select(2, ...))

-- Ingame config buttons 'Update Main' & 'Update Healing'
function L1UI:UpdateLayout(layout)
	-- Bump install version
	E.db.L1UI.install_version = L1UI.Version

	if E.Retail then
		-- General db updates
		E.db.general.altPowerBar.statusBarColorGradient = true
		E.db.general.itemLevel.itemLevelFontSize = 10
	end

	L1UI:Print(L["Successfully updated your current layout to LuckyoneUI version "] .. L1UI.Version)
end
