local L1UI, E, L, V, P, G = unpack(select(2, ...))
if not E.Retail then return end

-- OmniCD Profile
function L1UI:Get_OmniCD_Profile()

	-- Profile Names
	local Main, Heal = "Luckyone DPS/TANK", "Luckyone Healing"

	-- Global stuff
	OmniCDDB["cooldowns"] = {}
	OmniCDDB["global"]["disableElvMsg"] = true

	-- Create profiles if they don't exist
	OmniCDDB["profiles"][Main] = OmniCDDB["profiles"][Main] or {}
	OmniCDDB["profiles"][Heal] = OmniCDDB["profiles"][Heal] or {}

	-- DPS/TANK
	OmniCDDB["profiles"][Main]["General"] = {
		["fonts"] = {
			["statusBar"] = {
				["font"] = "Expressway",
				["flag"] = "OUTLINE",
				["size"] = 18,
			},
			["optionSmall"] = {
				["font"] = "Expressway",
				["flag"] = "OUTLINE",
			},
			["anchor"] = {
				["font"] = "Expressway",
				["flag"] = "OUTLINE",
			},
			["icon"] = {
				["font"] = "Expressway",
				["size"] = 12,
			},
			["option"] = {
				["font"] = "Expressway",
				["flag"] = "OUTLINE",
			},
		},
		["textures"] = {
			["statusBar"] = {
				["BG"] = "Minimalist",
				["bar"] = "Minimalist",
			},
		},
	}
	OmniCDDB["profiles"][Main]["Party"] = {
		["noneZoneSetting"] = "party",
		["scenarioZoneSetting"] = "party",
		["visibility"] = {
			["none"] = true,
			["scenario"] = true,
			["finder"] = true,
		},
		["party"] = {
			["extraBars"] = {
				["interruptBar"] = {
					["scale"] = 0.6000000000000001,
					["statusBarWidth"] = 213,
					["barColors"] = {
						["classColor"] = false,
						["inactiveColor"] = {
							["a"] = 0.800000011920929,
							["r"] = 0.05882352941176471,
							["g"] = 0.05882352941176471,
							["b"] = 0.05882352941176471,
						},
						["activeColor"] = {
							["b"] = 0.05882352941176471,
							["g"] = 0.05882352941176471,
							["r"] = 0.05882352941176471,
						},
						["useClassColor"] = {
							["inactive"] = false,
							["recharge"] = false,
							["active"] = false,
						},
					},
					["locked"] = true,
					["paddingY"] = 2,
					["columns"] = 10,
					["bgColors"] = {
						["classColor"] = true,
						["useClassColor"] = {
							["active"] = true,
						},
						["activeColor"] = {
							["a"] = 0.800000011920929,
							["b"] = 0.05882352941176471,
							["g"] = 0.05882352941176471,
							["r"] = 0.05882352941176471,
						},
					},
					["textColors"] = {
						["classColor"] = true,
						["useClassColor"] = {
							["inactive"] = true,
							["recharge"] = true,
							["active"] = true,
						},
					},
					["hideSpark"] = true,
				},
			},
			["highlight"] = {
				["glowType"] = "actionBar",
			},
			["spells"] = {
				["326059"] = true,
				["198589"] = false,
				["322109"] = false,
				["312202"] = true,
				["8143"] = false,
				["12975"] = true,
				["279302"] = true,
				["202138"] = true,
				["115750"] = false,
				["22812"] = false,
				["212295"] = false,
				["187650"] = false,
				["8122"] = false,
				["235219"] = false,
				["329554"] = true,
				["205180"] = true,
				["328923"] = true,
				["319217"] = false,
				["1122"] = true,
				["102793"] = true,
				["113860"] = true,
				["5246"] = false,
				["215652"] = false,
				["114050"] = false,
				["306830"] = true,
				["319952"] = true,
				["210918"] = false,
				["118000"] = false,
				["108978"] = false,
				["46924"] = false,
				["213602"] = false,
				["121471"] = true,
				["102560"] = true,
				["107574"] = true,
				["108968"] = false,
				["325289"] = true,
				["314793"] = true,
				["1719"] = true,
				["109964"] = false,
				["328278"] = true,
				["137639"] = true,
				["122783"] = false,
				["10060"] = true,
				["132578"] = true,
				["53480"] = false,
				["63560"] = true,
				["13750"] = true,
				["20711"] = false,
				["325197"] = true,
				["312321"] = true,
				["108199"] = true,
				["48707"] = false,
				["55233"] = false,
				["325028"] = true,
				["324143"] = true,
				["210256"] = false,
				["338142"] = true,
				["102558"] = true,
				["323639"] = true,
				["47482"] = false,
				["23920"] = false,
				["198111"] = false,
				["236320"] = false,
				["327104"] = true,
				["31230"] = false,
				["194223"] = true,
				["322118"] = true,
				["123904"] = true,
				["204336"] = false,
				["307443"] = true,
				["152279"] = true,
				["31935"] = false,
				["228049"] = false,
				["108280"] = true,
				["328547"] = true,
				["205179"] = false,
				["336135"] = false,
				["325727"] = true,
				["327661"] = true,
				["51052"] = false,
				["114052"] = false,
				["205604"] = false,
				["122470"] = false,
				["196029"] = false,
				["324386"] = true,
				["265187"] = true,
				["116849"] = false,
				["109248"] = true,
				["308491"] = true,
				["108238"] = false,
				["192077"] = true,
				["202137"] = true,
				["55342"] = false,
				["215982"] = false,
				["320674"] = true,
				["314791"] = true,
				["328231"] = true,
				["204018"] = true,
				["321792"] = true,
				["324128"] = true,
				["49206"] = true,
				["62618"] = false,
				["86659"] = true,
				["19236"] = false,
				["152173"] = true,
				["311648"] = true,
				["47568"] = true,
				["325640"] = true,
				["114018"] = true,
				["106951"] = true,
				["19574"] = true,
				["198103"] = true,
				["192058"] = false,
				["1856"] = false,
				["325013"] = true,
				["114051"] = false,
				["50334"] = true,
				["342245"] = false,
				["853"] = false,
				["323673"] = true,
				["198067"] = true,
				["12042"] = true,
				["30884"] = false,
				["323547"] = true,
				["42650"] = true,
				["64044"] = false,
				["6789"] = false,
				["113858"] = true,
				["109304"] = false,
				["104773"] = false,
				["193530"] = true,
				["198838"] = false,
				["316958"] = true,
				["199452"] = false,
				["47536"] = false,
				["114556"] = false,
				["205636"] = true,
				["323654"] = true,
				["324724"] = true,
				["227847"] = false,
				["86949"] = false,
				["324149"] = true,
				["2094"] = false,
				["304971"] = true,
				["228260"] = false,
				["197268"] = false,
				["48020"] = false,
				["325216"] = true,
				["310454"] = true,
				["102342"] = false,
				["12472"] = true,
				["102543"] = true,
				["307865"] = true,
				["108271"] = false,
				["265202"] = false,
				["325886"] = true,
				["275699"] = true,
				["5277"] = false,
				["243435"] = false,
				["319454"] = false,
				["288613"] = true,
				["323546"] = true,
				["323764"] = true,
				["77761"] = true,
				["328305"] = true,
				["317320"] = false,
				["192249"] = true,
				["326860"] = true,
				["315443"] = true,
				["324220"] = true,
				["317009"] = true,
				["323436"] = false,
				["328204"] = true,
				["184364"] = false,
			},
			["icons"] = {
				["scale"] = 1.1,
				["showTooltip"] = true,
			},
			["position"] = {
				["paddingX"] = 2,
				["attach"] = "TOPLEFT",
				["preset"] = "TOPLEFT",
				["offsetX"] = 2,
				["anchor"] = "TOPRIGHT",
				["paddingY"] = 2,
			},
			["general"] = {
				["showPlayer"] = true,
			},
			["manualPos"] = {
				["raidCDBar"] = {
					["y"] = 384.3555214597109,
					["x"] = 682.3111276328564,
				},
				["interruptBar"] = {
					["y"] = 388.6224920491441,
					["x"] = 320.3553462988748,
				},
			},
		},
		["arena"] = {
			["extraBars"] = {
				["interruptBar"] = {
					["scale"] = 0.6000000000000001,
					["statusBarWidth"] = 213,
					["barColors"] = {
						["classColor"] = false,
						["inactiveColor"] = {
							["a"] = 0.800000011920929,
							["r"] = 0.05882352941176471,
							["g"] = 0.05882352941176471,
							["b"] = 0.05882352941176471,
						},
						["activeColor"] = {
							["b"] = 0.05882352941176471,
							["g"] = 0.05882352941176471,
							["r"] = 0.05882352941176471,
						},
						["useClassColor"] = {
							["inactive"] = false,
							["recharge"] = false,
							["active"] = false,
						},
					},
					["locked"] = true,
					["paddingY"] = 2,
					["enabled"] = true,
					["columns"] = 10,
					["bgColors"] = {
						["classColor"] = true,
						["useClassColor"] = {
							["active"] = true,
						},
						["activeColor"] = {
							["a"] = 0.800000011920929,
							["b"] = 0.05882352941176471,
							["g"] = 0.05882352941176471,
							["r"] = 0.05882352941176471,
						},
					},
					["textColors"] = {
						["classColor"] = true,
						["useClassColor"] = {
							["inactive"] = true,
							["recharge"] = true,
							["active"] = true,
						},
					},
					["hideSpark"] = true,
				},
			},
			["general"] = {
				["showPlayer"] = true,
			},
			["spells"] = {
				["326059"] = true,
				["198589"] = false,
				["322109"] = false,
				["312202"] = true,
				["8143"] = false,
				["12975"] = true,
				["279302"] = true,
				["202138"] = true,
				["115750"] = false,
				["22812"] = false,
				["212295"] = false,
				["187650"] = false,
				["8122"] = false,
				["235219"] = false,
				["329554"] = true,
				["205180"] = true,
				["328923"] = true,
				["319217"] = false,
				["1122"] = true,
				["102793"] = true,
				["113860"] = true,
				["5246"] = false,
				["215652"] = false,
				["114050"] = false,
				["306830"] = true,
				["319952"] = true,
				["210918"] = false,
				["118000"] = false,
				["108978"] = false,
				["46924"] = false,
				["213602"] = false,
				["121471"] = true,
				["102560"] = true,
				["107574"] = true,
				["108968"] = false,
				["325289"] = true,
				["314793"] = true,
				["1719"] = true,
				["109964"] = false,
				["328278"] = true,
				["137639"] = true,
				["122783"] = false,
				["10060"] = true,
				["132578"] = true,
				["53480"] = false,
				["63560"] = true,
				["13750"] = true,
				["20711"] = false,
				["325197"] = true,
				["312321"] = true,
				["108199"] = true,
				["48707"] = false,
				["55233"] = false,
				["325028"] = true,
				["324143"] = true,
				["210256"] = false,
				["338142"] = true,
				["102558"] = true,
				["323639"] = true,
				["47482"] = false,
				["23920"] = false,
				["198111"] = false,
				["236320"] = false,
				["327104"] = true,
				["31230"] = false,
				["194223"] = true,
				["322118"] = true,
				["123904"] = true,
				["204336"] = false,
				["307443"] = true,
				["152279"] = true,
				["31935"] = false,
				["228049"] = false,
				["108280"] = true,
				["328547"] = true,
				["205179"] = false,
				["336135"] = false,
				["325727"] = true,
				["327661"] = true,
				["51052"] = false,
				["114052"] = false,
				["205604"] = false,
				["122470"] = false,
				["196029"] = false,
				["324386"] = true,
				["265187"] = true,
				["116849"] = false,
				["109248"] = true,
				["308491"] = true,
				["108238"] = false,
				["192077"] = true,
				["202137"] = true,
				["55342"] = false,
				["215982"] = false,
				["320674"] = true,
				["314791"] = true,
				["328231"] = true,
				["204018"] = true,
				["321792"] = true,
				["324128"] = true,
				["49206"] = true,
				["62618"] = false,
				["86659"] = true,
				["19236"] = false,
				["152173"] = true,
				["311648"] = true,
				["47568"] = true,
				["325640"] = true,
				["114018"] = true,
				["106951"] = true,
				["19574"] = true,
				["198103"] = true,
				["192058"] = false,
				["1856"] = false,
				["325013"] = true,
				["114051"] = false,
				["50334"] = true,
				["342245"] = false,
				["853"] = false,
				["323673"] = true,
				["198067"] = true,
				["12042"] = true,
				["30884"] = false,
				["323547"] = true,
				["42650"] = true,
				["64044"] = false,
				["6789"] = false,
				["113858"] = true,
				["109304"] = false,
				["104773"] = false,
				["193530"] = true,
				["198838"] = false,
				["316958"] = true,
				["199452"] = false,
				["47536"] = false,
				["114556"] = false,
				["205636"] = true,
				["323654"] = true,
				["324724"] = true,
				["227847"] = false,
				["86949"] = false,
				["324149"] = true,
				["2094"] = false,
				["304971"] = true,
				["228260"] = false,
				["197268"] = false,
				["48020"] = false,
				["325216"] = true,
				["310454"] = true,
				["102342"] = false,
				["12472"] = true,
				["102543"] = true,
				["307865"] = true,
				["108271"] = false,
				["265202"] = false,
				["325886"] = true,
				["275699"] = true,
				["5277"] = false,
				["243435"] = false,
				["319454"] = false,
				["288613"] = true,
				["323546"] = true,
				["323764"] = true,
				["77761"] = true,
				["328305"] = true,
				["317320"] = false,
				["192249"] = true,
				["326860"] = true,
				["315443"] = true,
				["324220"] = true,
				["317009"] = true,
				["323436"] = false,
				["328204"] = true,
				["184364"] = false,
			},
			["icons"] = {
				["showTooltip"] = true,
				["scale"] = 1.1,
			},
			["position"] = {
				["attach"] = "TOPLEFT",
				["paddingX"] = 2,
				["preset"] = "TOPLEFT",
				["offsetX"] = 2,
				["anchor"] = "TOPRIGHT",
				["paddingY"] = 2,
			},
			["manualPos"] = {
				["interruptBar"] = {
					["y"] = 388.6224920491441,
					["x"] = 320.3553462988748,
				},
				["raidCDBar"] = {
					["y"] = 384.3555214597109,
					["x"] = 682.3111276328564,
				},
			},
			["highlight"] = {
				["glowType"] = "actionBar",
			},
		},
	}

	-- Healing
	OmniCDDB["profiles"][Heal]["General"] = {
		["fonts"] = {
			["statusBar"] = {
				["font"] = "Expressway",
				["flag"] = "OUTLINE",
				["size"] = 18,
			},
			["optionSmall"] = {
				["font"] = "Expressway",
				["flag"] = "OUTLINE",
			},
			["anchor"] = {
				["font"] = "Expressway",
				["flag"] = "OUTLINE",
			},
			["icon"] = {
				["font"] = "Expressway",
				["size"] = 12,
			},
			["option"] = {
				["font"] = "Expressway",
				["flag"] = "OUTLINE",
			},
		},
		["textures"] = {
			["statusBar"] = {
				["BG"] = "Minimalist",
				["bar"] = "Minimalist",
			},
		},
	}
	OmniCDDB["profiles"][Heal]["Party"] = {
		["noneZoneSetting"] = "party",
		["scenarioZoneSetting"] = "party",
		["visibility"] = {
			["none"] = true,
			["scenario"] = true,
			["finder"] = true,
		},
		["party"] = {
			["extraBars"] = {
				["interruptBar"] = {
					["scale"] = 0.6000000000000001,
					["statusBarWidth"] = 213,
					["barColors"] = {
						["classColor"] = false,
						["inactiveColor"] = {
							["a"] = 0.800000011920929,
							["r"] = 0.05882352941176471,
							["g"] = 0.05882352941176471,
							["b"] = 0.05882352941176471,
						},
						["activeColor"] = {
							["b"] = 0.05882352941176471,
							["g"] = 0.05882352941176471,
							["r"] = 0.05882352941176471,
						},
						["useClassColor"] = {
							["inactive"] = false,
							["recharge"] = false,
							["active"] = false,
						},
					},
					["locked"] = true,
					["growUpward"] = true,
					["paddingY"] = 2,
					["columns"] = 10,
					["bgColors"] = {
						["classColor"] = true,
						["useClassColor"] = {
							["active"] = true,
						},
						["activeColor"] = {
							["a"] = 0.800000011920929,
							["b"] = 0.05882352941176471,
							["g"] = 0.05882352941176471,
							["r"] = 0.05882352941176471,
						},
					},
					["textColors"] = {
						["classColor"] = true,
						["useClassColor"] = {
							["inactive"] = true,
							["recharge"] = true,
							["active"] = true,
						},
					},
					["hideSpark"] = true,
				},
			},
			["general"] = {
				["showPlayer"] = true,
			},
			["spells"] = {
				["326059"] = true,
				["198589"] = false,
				["322109"] = false,
				["312202"] = true,
				["8143"] = false,
				["12975"] = true,
				["279302"] = true,
				["202138"] = true,
				["115750"] = false,
				["22812"] = false,
				["212295"] = false,
				["187650"] = false,
				["8122"] = false,
				["235219"] = false,
				["329554"] = true,
				["205180"] = true,
				["328923"] = true,
				["319217"] = false,
				["1122"] = true,
				["102793"] = true,
				["113860"] = true,
				["5246"] = false,
				["215652"] = false,
				["114050"] = false,
				["306830"] = true,
				["319952"] = true,
				["210918"] = false,
				["118000"] = false,
				["108978"] = false,
				["46924"] = false,
				["213602"] = false,
				["121471"] = true,
				["102560"] = true,
				["107574"] = true,
				["108968"] = false,
				["325289"] = true,
				["314793"] = true,
				["1719"] = true,
				["109964"] = false,
				["328278"] = true,
				["137639"] = true,
				["122783"] = false,
				["10060"] = true,
				["132578"] = true,
				["53480"] = false,
				["63560"] = true,
				["13750"] = true,
				["20711"] = false,
				["325197"] = true,
				["312321"] = true,
				["108199"] = true,
				["48707"] = false,
				["55233"] = false,
				["325028"] = true,
				["324143"] = true,
				["210256"] = false,
				["338142"] = true,
				["102558"] = true,
				["323639"] = true,
				["47482"] = false,
				["23920"] = false,
				["198111"] = false,
				["236320"] = false,
				["327104"] = true,
				["31230"] = false,
				["194223"] = true,
				["322118"] = true,
				["123904"] = true,
				["204336"] = false,
				["307443"] = true,
				["152279"] = true,
				["31935"] = false,
				["228049"] = false,
				["108280"] = true,
				["328547"] = true,
				["205179"] = false,
				["336135"] = false,
				["325727"] = true,
				["327661"] = true,
				["51052"] = false,
				["114052"] = false,
				["205604"] = false,
				["122470"] = false,
				["196029"] = false,
				["324386"] = true,
				["265187"] = true,
				["116849"] = false,
				["109248"] = true,
				["308491"] = true,
				["108238"] = false,
				["192077"] = true,
				["202137"] = true,
				["55342"] = false,
				["215982"] = false,
				["320674"] = true,
				["314791"] = true,
				["328231"] = true,
				["204018"] = true,
				["321792"] = true,
				["324128"] = true,
				["49206"] = true,
				["62618"] = false,
				["86659"] = true,
				["19236"] = false,
				["152173"] = true,
				["311648"] = true,
				["47568"] = true,
				["325640"] = true,
				["114018"] = true,
				["106951"] = true,
				["19574"] = true,
				["198103"] = true,
				["192058"] = false,
				["1856"] = false,
				["325013"] = true,
				["114051"] = false,
				["50334"] = true,
				["342245"] = false,
				["853"] = false,
				["323673"] = true,
				["198067"] = true,
				["12042"] = true,
				["30884"] = false,
				["323547"] = true,
				["42650"] = true,
				["64044"] = false,
				["6789"] = false,
				["113858"] = true,
				["109304"] = false,
				["104773"] = false,
				["193530"] = true,
				["198838"] = false,
				["316958"] = true,
				["199452"] = false,
				["47536"] = false,
				["114556"] = false,
				["205636"] = true,
				["323654"] = true,
				["324724"] = true,
				["227847"] = false,
				["86949"] = false,
				["324149"] = true,
				["2094"] = false,
				["304971"] = true,
				["228260"] = false,
				["197268"] = false,
				["48020"] = false,
				["325216"] = true,
				["310454"] = true,
				["102342"] = false,
				["12472"] = true,
				["102543"] = true,
				["307865"] = true,
				["108271"] = false,
				["265202"] = false,
				["325886"] = true,
				["275699"] = true,
				["5277"] = false,
				["243435"] = false,
				["319454"] = false,
				["288613"] = true,
				["323546"] = true,
				["323764"] = true,
				["77761"] = true,
				["328305"] = true,
				["317320"] = false,
				["192249"] = true,
				["326860"] = true,
				["315443"] = true,
				["324220"] = true,
				["317009"] = true,
				["323436"] = false,
				["328204"] = true,
				["184364"] = false,
			},
			["icons"] = {
				["counterScale"] = 0.8,
				["showTooltip"] = true,
				["chargeScale"] = 0.8,
			},
			["position"] = {
				["offsetX"] = 0,
				["anchor"] = "LEFT",
				["paddingY"] = 2,
				["attachMore"] = "LEFT",
				["columns"] = 3,
				["paddingX"] = 2,
				["attach"] = "LEFT",
				["preset"] = "manual",
				["offsetY"] = 50,
				["anchorMore"] = "LEFT",
			},
			["highlight"] = {
				["glowType"] = "actionBar",
			},
			["manualPos"] = {
				["interruptBar"] = {
					["y"] = 304.0002243750678,
					["x"] = 385.7776569108137,
				},
				["raidCDBar"] = {
					["y"] = 384.3555214597109,
					["x"] = 682.3111276328564,
				},
			},
		},
		["arena"] = {
			["extraBars"] = {
				["interruptBar"] = {
					["scale"] = 0.6000000000000001,
					["statusBarWidth"] = 213,
					["barColors"] = {
						["classColor"] = false,
						["inactiveColor"] = {
							["a"] = 0.800000011920929,
							["r"] = 0.05882352941176471,
							["g"] = 0.05882352941176471,
							["b"] = 0.05882352941176471,
						},
						["activeColor"] = {
							["b"] = 0.05882352941176471,
							["g"] = 0.05882352941176471,
							["r"] = 0.05882352941176471,
						},
						["useClassColor"] = {
							["inactive"] = false,
							["recharge"] = false,
							["active"] = false,
						},
					},
					["locked"] = true,
					["paddingY"] = 2,
					["enabled"] = true,
					["columns"] = 10,
					["bgColors"] = {
						["classColor"] = true,
						["useClassColor"] = {
							["active"] = true,
						},
						["activeColor"] = {
							["a"] = 0.800000011920929,
							["b"] = 0.05882352941176471,
							["g"] = 0.05882352941176471,
							["r"] = 0.05882352941176471,
						},
					},
					["textColors"] = {
						["classColor"] = true,
						["useClassColor"] = {
							["inactive"] = true,
							["recharge"] = true,
							["active"] = true,
						},
					},
					["hideSpark"] = true,
				},
			},
			["general"] = {
				["showPlayer"] = true,
			},
			["spells"] = {
				["326059"] = true,
				["198589"] = false,
				["322109"] = false,
				["312202"] = true,
				["8143"] = false,
				["12975"] = true,
				["279302"] = true,
				["202138"] = true,
				["115750"] = false,
				["22812"] = false,
				["212295"] = false,
				["187650"] = false,
				["8122"] = false,
				["235219"] = false,
				["329554"] = true,
				["205180"] = true,
				["328923"] = true,
				["319217"] = false,
				["1122"] = true,
				["102793"] = true,
				["113860"] = true,
				["5246"] = false,
				["215652"] = false,
				["114050"] = false,
				["306830"] = true,
				["319952"] = true,
				["210918"] = false,
				["118000"] = false,
				["108978"] = false,
				["46924"] = false,
				["213602"] = false,
				["121471"] = true,
				["102560"] = true,
				["107574"] = true,
				["108968"] = false,
				["325289"] = true,
				["314793"] = true,
				["1719"] = true,
				["109964"] = false,
				["328278"] = true,
				["137639"] = true,
				["122783"] = false,
				["10060"] = true,
				["132578"] = true,
				["53480"] = false,
				["63560"] = true,
				["13750"] = true,
				["20711"] = false,
				["325197"] = true,
				["312321"] = true,
				["108199"] = true,
				["48707"] = false,
				["55233"] = false,
				["325028"] = true,
				["324143"] = true,
				["210256"] = false,
				["338142"] = true,
				["102558"] = true,
				["323639"] = true,
				["47482"] = false,
				["23920"] = false,
				["198111"] = false,
				["236320"] = false,
				["327104"] = true,
				["31230"] = false,
				["194223"] = true,
				["322118"] = true,
				["123904"] = true,
				["204336"] = false,
				["307443"] = true,
				["152279"] = true,
				["31935"] = false,
				["228049"] = false,
				["108280"] = true,
				["328547"] = true,
				["205179"] = false,
				["336135"] = false,
				["325727"] = true,
				["327661"] = true,
				["51052"] = false,
				["114052"] = false,
				["205604"] = false,
				["122470"] = false,
				["196029"] = false,
				["324386"] = true,
				["265187"] = true,
				["116849"] = false,
				["109248"] = true,
				["308491"] = true,
				["108238"] = false,
				["192077"] = true,
				["202137"] = true,
				["55342"] = false,
				["215982"] = false,
				["320674"] = true,
				["314791"] = true,
				["328231"] = true,
				["204018"] = true,
				["321792"] = true,
				["324128"] = true,
				["49206"] = true,
				["62618"] = false,
				["86659"] = true,
				["19236"] = false,
				["152173"] = true,
				["311648"] = true,
				["47568"] = true,
				["325640"] = true,
				["114018"] = true,
				["106951"] = true,
				["19574"] = true,
				["198103"] = true,
				["192058"] = false,
				["1856"] = false,
				["325013"] = true,
				["114051"] = false,
				["50334"] = true,
				["342245"] = false,
				["853"] = false,
				["323673"] = true,
				["198067"] = true,
				["12042"] = true,
				["30884"] = false,
				["323547"] = true,
				["42650"] = true,
				["64044"] = false,
				["6789"] = false,
				["113858"] = true,
				["109304"] = false,
				["104773"] = false,
				["193530"] = true,
				["198838"] = false,
				["316958"] = true,
				["199452"] = false,
				["47536"] = false,
				["114556"] = false,
				["205636"] = true,
				["323654"] = true,
				["324724"] = true,
				["227847"] = false,
				["86949"] = false,
				["324149"] = true,
				["2094"] = false,
				["304971"] = true,
				["228260"] = false,
				["197268"] = false,
				["48020"] = false,
				["325216"] = true,
				["310454"] = true,
				["102342"] = false,
				["12472"] = true,
				["102543"] = true,
				["307865"] = true,
				["108271"] = false,
				["265202"] = false,
				["325886"] = true,
				["275699"] = true,
				["5277"] = false,
				["243435"] = false,
				["319454"] = false,
				["288613"] = true,
				["323546"] = true,
				["323764"] = true,
				["77761"] = true,
				["328305"] = true,
				["317320"] = false,
				["192249"] = true,
				["326860"] = true,
				["315443"] = true,
				["324220"] = true,
				["317009"] = true,
				["323436"] = false,
				["328204"] = true,
				["184364"] = false,
			},
			["icons"] = {
				["counterScale"] = 0.8,
				["showTooltip"] = true,
				["chargeScale"] = 0.8,
			},
			["position"] = {
				["offsetX"] = 0,
				["anchor"] = "LEFT",
				["paddingY"] = 2,
				["attachMore"] = "LEFT",
				["columns"] = 3,
				["paddingX"] = 2,
				["attach"] = "LEFT",
				["preset"] = "manual",
				["offsetY"] = 50,
				["anchorMore"] = "LEFT",
			},
			["highlight"] = {
				["glowType"] = "actionBar",
			},
			["manualPos"] = {
				["interruptBar"] = {
					["y"] = 304.0002243750678,
					["x"] = 385.7776569108137,
				},
				["raidCDBar"] = {
					["y"] = 384.3555214597109,
					["x"] = 682.3111276328564,
				},
			},
		},
	}

	-- Profile Key
	OmniCDDB["profileKeys"][E.mynameRealm] = Main
end
