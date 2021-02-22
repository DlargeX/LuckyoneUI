local L1UI, E, L, V, P, G = unpack(select(2, ...))

-- OmniCD profile setup
function L1UI:GetOmniCDProfile()

	OmniCDDB = {
		["profileKeys"] = {
			[E.mynameRealm] = "Luckyone",
		},
		["cooldowns"] = {
		},
		["namespaces"] = {
			["LibDualSpec-1.0"] = {
			},
		},
		["global"] = {
			["oodVer"] = 2511,
			["oodChk"] = 210206,
			["disableElvMsg"] = true,
		},
		["version"] = 2.51,
		["profiles"] = {
			["Luckyone"] = {
				["Party"] = {
					["noneZoneSetting"] = "party",
					["party"] = {
						["extraBars"] = {
							["interruptBar"] = {
								["scale"] = 0.6000000000000001,
								["statusBarWidth"] = 213,
								["barColors"] = {
									["classColor"] = false,
									["activeColor"] = {
										["a"] = 1,
										["b"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["r"] = 0.05882352941176471,
									},
									["inactiveColor"] = {
										["a"] = 0.800000011920929,
										["r"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["b"] = 0.05882352941176471,
									},
								},
								["locked"] = true,
								["paddingY"] = 4,
								["columns"] = 10,
								["bgColors"] = {
									["classColor"] = true,
									["activeColor"] = {
										["a"] = 0.800000011920929,
										["b"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["r"] = 0.05882352941176471,
									},
								},
								["textColors"] = {
									["classColor"] = true,
								},
							},
							["raidCDBar"] = {
								["enabled"] = false,
							},
						},
						["manualPos"] = {
							["raidCDBar"] = {
								["y"] = 384.3555214597109,
								["x"] = 682.3111276328564,
							},
							["interruptBar"] = {
								["y"] = 381.5113373630629,
								["x"] = 320.3553462988748,
							},
						},
						["spells"] = {
							["326059"] = true,
							["118038"] = false,
							["198589"] = false,
							["322109"] = true,
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
							["48020"] = false,
							["1122"] = true,
							["102793"] = true,
							["113860"] = true,
							["5246"] = false,
							["215652"] = false,
							["114050"] = true,
							["306830"] = true,
							["319952"] = true,
							["210918"] = false,
							["118000"] = true,
							["108978"] = false,
							["46924"] = true,
							["213602"] = false,
							["317320"] = true,
							["102560"] = true,
							["107574"] = true,
							["108968"] = false,
							["325289"] = true,
							["314793"] = true,
							["1719"] = true,
							["109964"] = false,
							["328278"] = true,
							["137639"] = true,
							["47568"] = true,
							["10060"] = true,
							["132578"] = true,
							["53480"] = false,
							["63560"] = true,
							["13750"] = true,
							["325197"] = true,
							["312321"] = true,
							["48707"] = false,
							["108199"] = true,
							["324143"] = true,
							["109248"] = true,
							["210256"] = false,
							["304971"] = true,
							["338142"] = true,
							["108280"] = true,
							["323436"] = false,
							["323639"] = true,
							["47482"] = false,
							["23920"] = false,
							["198111"] = false,
							["236320"] = false,
							["327104"] = true,
							["325028"] = true,
							["31230"] = false,
							["51052"] = false,
							["194223"] = true,
							["320674"] = true,
							["204336"] = false,
							["307443"] = true,
							["152279"] = true,
							["31935"] = false,
							["228049"] = false,
							["328547"] = true,
							["205179"] = false,
							["325727"] = true,
							["64044"] = false,
							["327661"] = true,
							["322118"] = true,
							["152173"] = true,
							["123904"] = true,
							["122470"] = false,
							["324386"] = true,
							["108238"] = false,
							["202137"] = true,
							["324724"] = true,
							["215982"] = false,
							["204018"] = true,
							["314791"] = true,
							["321792"] = true,
							["199452"] = false,
							["49206"] = true,
							["19236"] = false,
							["86659"] = true,
							["102543"] = true,
							["323654"] = true,
							["324220"] = true,
							["265202"] = false,
							["325640"] = true,
							["114018"] = true,
							["121471"] = true,
							["342245"] = false,
							["198838"] = false,
							["197268"] = false,
							["311648"] = true,
							["308491"] = true,
							["55342"] = true,
							["50334"] = true,
							["288613"] = true,
							["853"] = false,
							["323673"] = true,
							["323546"] = true,
							["12042"] = true,
							["30884"] = false,
							["323547"] = true,
							["42650"] = true,
							["1856"] = false,
							["102342"] = false,
							["113858"] = true,
							["109304"] = false,
							["325013"] = true,
							["193530"] = true,
							["104773"] = false,
							["19574"] = true,
							["6789"] = false,
							["47536"] = false,
							["114556"] = false,
							["122783"] = false,
							["328231"] = true,
							["328204"] = true,
							["227847"] = true,
							["86949"] = false,
							["324149"] = true,
							["326860"] = true,
							["2094"] = false,
							["228260"] = true,
							["108271"] = false,
							["328305"] = true,
							["325216"] = true,
							["310454"] = true,
							["324128"] = true,
							["12472"] = true,
							["20711"] = false,
							["307865"] = true,
							["184364"] = false,
							["325886"] = true,
							["106951"] = true,
							["275699"] = true,
							["5277"] = false,
							["243435"] = false,
							["319454"] = false,
							["114051"] = true,
							["102558"] = true,
							["323764"] = true,
							["77761"] = true,
							["205604"] = false,
							["62618"] = false,
							["192249"] = true,
							["198067"] = true,
							["315443"] = true,
							["265187"] = true,
							["317009"] = true,
							["205636"] = true,
							["55233"] = true,
							["316958"] = true,
						},
						["icons"] = {
							["scale"] = 1.1,
							["showTooltip"] = true,
						},
						["position"] = {
							["preset"] = "TOPLEFT",
							["attach"] = "TOPLEFT",
							["offsetX"] = 3,
							["anchor"] = "TOPRIGHT",
						},
						["general"] = {
							["showPlayer"] = true,
						},
					},
					["arena"] = {
						["extraBars"] = {
							["interruptBar"] = {
								["scale"] = 0.6000000000000001,
								["statusBarWidth"] = 213,
								["barColors"] = {
									["classColor"] = false,
									["activeColor"] = {
										["a"] = 1,
										["r"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["b"] = 0.05882352941176471,
									},
									["inactiveColor"] = {
										["a"] = 0.800000011920929,
										["b"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["r"] = 0.05882352941176471,
									},
								},
								["locked"] = true,
								["paddingY"] = 4,
								["enabled"] = true,
								["columns"] = 10,
								["bgColors"] = {
									["classColor"] = true,
									["activeColor"] = {
										["a"] = 0.800000011920929,
										["r"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["b"] = 0.05882352941176471,
									},
								},
								["textColors"] = {
									["classColor"] = true,
								},
							},
						},
						["general"] = {
							["showPlayer"] = true,
							["zoneSelected"] = "party",
						},
						["spells"] = {
							["326059"] = true,
							["118038"] = false,
							["198589"] = false,
							["322109"] = true,
							["312202"] = true,
							["8143"] = false,
							["12975"] = true,
							["279302"] = true,
							["202138"] = true,
							["115750"] = false,
							["108199"] = true,
							["212295"] = false,
							["8122"] = false,
							["235219"] = false,
							["329554"] = true,
							["205180"] = true,
							["328923"] = true,
							["48020"] = false,
							["1122"] = true,
							["102793"] = true,
							["113860"] = true,
							["215652"] = false,
							["114050"] = true,
							["306830"] = true,
							["319952"] = true,
							["210918"] = false,
							["118000"] = true,
							["108978"] = false,
							["46924"] = true,
							["317320"] = true,
							["102560"] = true,
							["107574"] = true,
							["325289"] = true,
							["314793"] = true,
							["1719"] = true,
							["109964"] = false,
							["137639"] = true,
							["325028"] = true,
							["10060"] = true,
							["132578"] = true,
							["53480"] = false,
							["63560"] = true,
							["13750"] = true,
							["325197"] = true,
							["312321"] = true,
							["316958"] = true,
							["55233"] = true,
							["324143"] = true,
							["205636"] = true,
							["210256"] = false,
							["47568"] = true,
							["338142"] = true,
							["265187"] = true,
							["323436"] = false,
							["323639"] = true,
							["47482"] = false,
							["23920"] = false,
							["198111"] = false,
							["236320"] = false,
							["327104"] = true,
							["108968"] = false,
							["213602"] = false,
							["31230"] = false,
							["198067"] = true,
							["194223"] = true,
							["322118"] = true,
							["192249"] = true,
							["62618"] = false,
							["204336"] = false,
							["307443"] = true,
							["152279"] = true,
							["205604"] = false,
							["31935"] = false,
							["77761"] = true,
							["228049"] = false,
							["187650"] = false,
							["102558"] = true,
							["114051"] = true,
							["328547"] = true,
							["205179"] = false,
							["325727"] = true,
							["243435"] = false,
							["327661"] = true,
							["51052"] = false,
							["106951"] = true,
							["325886"] = true,
							["123904"] = true,
							["122470"] = false,
							["324386"] = true,
							["184364"] = false,
							["20711"] = false,
							["49206"] = true,
							["324128"] = true,
							["108238"] = false,
							["102543"] = true,
							["202137"] = true,
							["324724"] = true,
							["215982"] = false,
							["320674"] = true,
							["314791"] = true,
							["323654"] = true,
							["328305"] = true,
							["199452"] = false,
							["108280"] = true,
							["108271"] = false,
							["86659"] = true,
							["325640"] = true,
							["2094"] = false,
							["326860"] = true,
							["121471"] = true,
							["86949"] = false,
							["198838"] = false,
							["342245"] = false,
							["328204"] = true,
							["197268"] = false,
							["328231"] = true,
							["122783"] = false,
							["50334"] = true,
							["323546"] = true,
							["853"] = false,
							["323673"] = true,
							["22812"] = false,
							["12042"] = true,
							["30884"] = false,
							["323547"] = true,
							["42650"] = true,
							["6789"] = false,
							["113858"] = true,
							["109304"] = false,
							["19574"] = true,
							["193530"] = true,
							["104773"] = false,
							["325013"] = true,
							["102342"] = false,
							["47536"] = false,
							["114556"] = false,
							["55342"] = true,
							["308491"] = true,
							["5246"] = false,
							["227847"] = true,
							["324149"] = true,
							["114018"] = true,
							["304971"] = true,
							["228260"] = true,
							["265202"] = false,
							["328278"] = true,
							["325216"] = true,
							["310454"] = true,
							["19236"] = false,
							["12472"] = true,
							["321792"] = true,
							["307865"] = true,
							["204018"] = true,
							["275699"] = true,
							["5277"] = false,
							["1856"] = false,
							["319454"] = false,
							["288613"] = true,
							["323764"] = true,
							["311648"] = true,
							["152173"] = true,
							["64044"] = false,
							["315443"] = true,
							["324220"] = true,
							["317009"] = true,
							["48707"] = false,
							["109248"] = true,
						},
						["icons"] = {
							["showTooltip"] = true,
							["scale"] = 1.1,
						},
						["position"] = {
							["attach"] = "TOPLEFT",
							["preset"] = "TOPLEFT",
							["anchor"] = "TOPRIGHT",
							["offsetX"] = 3,
						},
						["manualPos"] = {
							["interruptBar"] = {
								["y"] = 381.5113373630629,
								["x"] = 320.3553462988748,
							},
							["raidCDBar"] = {
								["y"] = 384.3555214597109,
								["x"] = 682.3111276328564,
							},
						},
					},
					["visibility"] = {
						["scenario"] = true,
						["finder"] = true,
						["none"] = true,
					},
					["scenarioZoneSetting"] = "party",
				},
				["General"] = {
					["fonts"] = {
						["statusBar"] = {
							["font"] = "Expressway",
							["flag"] = "OUTLINE",
							["size"] = 18,
						},
						["icon"] = {
							["font"] = "Expressway",
							["flag"] = "OUTLINE",
							["size"] = 12,
						},
						["anchor"] = {
							["font"] = "Expressway",
							["flag"] = "OUTLINE",
						},
					},
					["textures"] = {
						["statusBar"] = {
							["BG"] = "Solid",
							["bar"] = "Solid",
						},
					},
				},
			},
			["Default"] = {
				["Party"] = {
					["party"] = {
						["manualPos"] = {
							["interruptBar"] = {
								["y"] = 384.3555214597109,
								["x"] = 682.3111276328564,
							},
							["raidCDBar"] = {
								["y"] = 384.3555214597109,
								["x"] = 682.3111276328564,
							},
						},
						["general"] = {
							["showPlayer"] = true,
						},
					},
				},
			},
		},
	}

end
