local L1UI, E, L, V, P, G = unpack(select(2, ...))

--OmniCD profile setup
function L1UI:GetOmniCDProfile()

	OmniCDDB = {
		["version"] = 2,
		["global"] = {
			["disableElvMsg"] = true,
		},
		["cooldowns"] = {
		},
		["profileKeys"] = {
			[E.mynameRealm] = "Luckyone DPS/TANK",
		},
		["namespaces"] = {
			["LibDualSpec-1.0"] = {
			},
		},
		["profiles"] = {
			["Luckyone Healing"] = {
				["Party"] = {
					["highlight"] = {
						["glowBuffs"] = false,
						["glowBuffTypes"] = {
							["defensive"] = false,
							["immunity"] = false,
						},
						["markEnhanced"] = false,
					},
					["visibility"] = {
						["none"] = true,
						["scenario"] = true,
						["finder"] = true,
					},
					["manualPos"] = {
						[5] = {
							["y"] = 473.2440201214122,
							["x"] = 383.6454376241891,
						},
					},
					["position"] = {
						["manual"] = {
							["attach"] = "TOPLEFT",
							["preset"] = "TOPLEFT",
							["anchor"] = "TOPRIGHT",
						},
						["party"] = {
							["attachMore"] = "LEFT",
							["growUpward"] = false,
							["attach"] = "TOPLEFT",
							["preset"] = "TOPLEFT",
							["anchor"] = "TOPRIGHT",
						},
						["arena"] = {
							["noTheme"] = true,
							["offsetX"] = 1,
							["attach"] = "TOPLEFT",
							["preset"] = "TOPLEFT",
							["anchor"] = "TOPRIGHT",
						},
						["locked"] = true,
					},
					["general"] = {
						["player"] = true,
						["tooltip"] = true,
					},
					["spells"] = {
						["spell200166"] = true,
						["spell187827"] = true,
						["spell152277"] = true,
						["spell121471"] = true,
						["spell102558"] = true,
						["spell46924"] = true,
						["spell201318"] = true,
						["spell108271"] = true,
						["spell86659"] = false,
						["spell740"] = true,
						["spell116849"] = true,
						["spell196555"] = true,
						["spell243435"] = true,
						["spell2094"] = false,
						["spell190319"] = true,
						["spell79140"] = true,
						["spell235219"] = true,
						["spell204018"] = true,
						["spell271466"] = true,
						["spell33891"] = true,
						["spell114018"] = true,
						["spell114050"] = true,
						["spell205636"] = true,
						["spell152279"] = true,
						["spell12472"] = true,
						["spell1719"] = true,
						["spell114051"] = true,
						["spell42650"] = false,
						["spell97462"] = true,
						["spell108280"] = true,
						["spell216331"] = true,
						["spell105809"] = true,
						["spell194223"] = true,
						["spell642"] = true,
						["spell191634"] = true,
						["spell192077"] = true,
						["spell107574"] = true,
						["spell288613"] = true,
						["spell80240"] = true,
						["spell129597"] = false,
						["spell228920"] = true,
						["spell102543"] = true,
						["spell47788"] = true,
						["spell113858"] = true,
						["spell13750"] = true,
						["spell227847"] = true,
						["spell115310"] = true,
						["spell113860"] = true,
						["spell184364"] = true,
						["spell186265"] = true,
						["spell198067"] = true,
						["spell871"] = true,
						["spell47568"] = true,
						["spell179057"] = false,
						["spell73325"] = true,
						["spell228049"] = false,
						["spell279302"] = true,
						["spell196718"] = true,
						["spell33206"] = true,
						["spell49206"] = true,
						["spell114052"] = true,
						["spell115080"] = true,
						["spell106951"] = true,
						["spell204150"] = true,
						["spell12975"] = true,
						["spell104773"] = true,
						["spell31224"] = true,
						["spell152173"] = false,
						["spell108199"] = true,
						["spell62618"] = true,
						["spell115203"] = true,
						["spell212182"] = false,
						["spell47585"] = true,
						["spell2825"] = true,
						["spell122278"] = true,
						["spell123904"] = true,
						["spell137639"] = false,
						["spell31884"] = true,
						["spell31821"] = true,
						["spell122783"] = true,
						["spell205180"] = true,
						["spell231895"] = true,
						["spell45438"] = true,
						["spell19574"] = true,
						["spell122470"] = true,
						["spell1122"] = true,
						["spell6940"] = false,
						["spell102560"] = true,
						["spell47536"] = true,
						["spell193530"] = true,
						["spell1022"] = true,
						["spell198664"] = true,
						["spell12042"] = true,
						["spell265187"] = true,
						["spell15286"] = true,
					},
					["icons"] = {
						["scale"] = 1.1,
						["desaturateActive"] = true,
						["paddingX"] = 1,
						["paddingY"] = 1,
					},
					["noDefault"] = true,
				},
			},
			["Luckyone DPS/TANK"] = {
				["Party"] = {
					["manualPos"] = {
						[5] = {
							["y"] = 538.6662453170684,
							["x"] = 317.5119774036411,
						},
					},
					["spells"] = {
						["spell200166"] = true,
						["spell187827"] = true,
						["spell152277"] = true,
						["spell121471"] = true,
						["spell102558"] = true,
						["spell46924"] = true,
						["spell201318"] = true,
						["spell108271"] = true,
						["spell86659"] = false,
						["spell740"] = true,
						["spell116849"] = true,
						["spell196555"] = true,
						["spell243435"] = true,
						["spell2094"] = false,
						["spell190319"] = true,
						["spell79140"] = true,
						["spell235219"] = true,
						["spell204018"] = true,
						["spell271466"] = true,
						["spell33891"] = true,
						["spell114018"] = true,
						["spell114050"] = true,
						["spell205636"] = true,
						["spell152279"] = true,
						["spell12472"] = true,
						["spell1719"] = true,
						["spell114051"] = true,
						["spell42650"] = false,
						["spell97462"] = true,
						["spell108280"] = true,
						["spell216331"] = true,
						["spell105809"] = true,
						["spell194223"] = true,
						["spell642"] = true,
						["spell191634"] = true,
						["spell192077"] = true,
						["spell107574"] = true,
						["spell288613"] = true,
						["spell80240"] = true,
						["spell129597"] = false,
						["spell228920"] = true,
						["spell102543"] = true,
						["spell47788"] = true,
						["spell113858"] = true,
						["spell13750"] = true,
						["spell227847"] = true,
						["spell115310"] = true,
						["spell113860"] = true,
						["spell184364"] = true,
						["spell186265"] = true,
						["spell198067"] = true,
						["spell871"] = true,
						["spell47568"] = true,
						["spell179057"] = false,
						["spell73325"] = true,
						["spell228049"] = false,
						["spell279302"] = true,
						["spell196718"] = true,
						["spell33206"] = true,
						["spell49206"] = true,
						["spell114052"] = true,
						["spell115080"] = true,
						["spell106951"] = true,
						["spell204150"] = true,
						["spell12975"] = true,
						["spell104773"] = true,
						["spell31224"] = true,
						["spell152173"] = false,
						["spell108199"] = true,
						["spell62618"] = true,
						["spell115203"] = true,
						["spell212182"] = false,
						["spell47585"] = true,
						["spell2825"] = true,
						["spell122278"] = true,
						["spell123904"] = true,
						["spell137639"] = false,
						["spell31884"] = true,
						["spell31821"] = true,
						["spell122783"] = true,
						["spell205180"] = true,
						["spell231895"] = true,
						["spell45438"] = true,
						["spell19574"] = true,
						["spell122470"] = true,
						["spell1122"] = true,
						["spell6940"] = false,
						["spell102560"] = true,
						["spell47536"] = true,
						["spell193530"] = true,
						["spell1022"] = true,
						["spell198664"] = true,
						["spell12042"] = true,
						["spell265187"] = true,
						["spell15286"] = true,
					},
					["icons"] = {
						["scale"] = 1.09,
						["desaturateActive"] = true,
					},
					["highlight"] = {
						["glowBuffs"] = false,
						["markEnhanced"] = false,
						["glowBuffTypes"] = {
							["immunity"] = false,
							["defensive"] = false,
						},
					},
					["position"] = {
						["manual"] = {
							["attach"] = "TOPLEFT",
							["preset"] = "TOPLEFT",
							["anchor"] = "TOPRIGHT",
						},
						["party"] = {
							["attachMore"] = "LEFT",
							["attach"] = "TOPLEFT",
							["preset"] = "TOPLEFT",
							["growUpward"] = false,
							["anchor"] = "TOPRIGHT",
						},
						["locked"] = true,
						["arena"] = {
							["noTheme"] = true,
							["attach"] = "TOPLEFT",
							["preset"] = "TOPLEFT",
							["offsetX"] = 1,
							["anchor"] = "TOPRIGHT",
						},
					},
					["noDefault"] = true,
					["visibility"] = {
						["scenario"] = true,
						["finder"] = true,
						["none"] = true,
					},
					["general"] = {
						["tooltip"] = true,
						["player"] = true,
					},
				},
			},
			["Default"] = {
				["Party"] = {
					["visibility"] = {
						["finder"] = true,
						["scenario"] = true,
						["none"] = true,
					},
					["icons"] = {
						["displayBorder"] = false,
					},
					["position"] = {
						["uf"] = "ElvUI",
						["party"] = {
							["attach"] = "TOPLEFT",
							["preset"] = "TOPLEFT",
							["anchor"] = "TOPRIGHT",
						},
					},
				},
			},
		},
	}
end
