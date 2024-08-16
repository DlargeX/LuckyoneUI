-- Lua functions
local tinsert = table.insert
local unpack = unpack

-- Global environment
local _G = _G

-- AddOn namespace
local _, Private = ...

-- ElvUI modules
local E, L = unpack(ElvUI)

-- Plater profile
function Private:Setup_Plater(installer)
	if not E:IsAddOnEnabled('Plater') then Private:Print('Plater ' .. L["is not installed or enabled."]) return end

	-- Profile name
	local name = (E.global.L1UI.dev and 'Luckyone') or 'Luckyone ' .. Private.Version

	-- Profile string
	local profileString = 'S3xEZTTr2((z5L)5LCRR1GUbA0nMQEVQK8sSVjw2LPZSutgrbsckHXqe8caAzLxD1N93zPbiw5MOS9K44zSBqa09PpB9VZPxWfIlE)fJMNoDv(4W8XfHzxfvmomz51Hxm5IrRIhVmmlArX4jRMpFC(YOPXHjJtI(yuYfN7CXOWvzHJNKff(HK4frWdeon6IZfYlgLpnlEzX4zHfHqtCo1opnDrEr2QPfPzpnDwe0WRwmTioDX9x(95rjZ)pV)YvlIlE1mBHxKfEteuoAXhFF4KeSixT0v)W9)x3Fj)NN8K4f5rzf3F5uOEV)YRJYIwF37)VIwmdUe(ZfJEZIxgplIB(7F19V6btcVc)ZaeaDp(Fzs4vabSeBU8)syYQOCGRuCXO3hDZYXVzXORtV9lgFzexb3TeLFxm6xwcsUOJl1ephQHFbF1C8V)EUwU)Yto5(l)ow177Gx(7wMeExu239d)W9xwCD0IAeS9pVnbOTStgfvCo00ltiknjn77Rto1OHtMMUyE8vNSOXtxJYIsYJgSzEx08SO8RhQPQxni7SIN29pGKo(gK)QLcTNwA8Uy0ZxGu4SlodS2YsUy0fJoF5uSTS6gw1LkBOkje(m8Ftu19xs01fJifl(Xbl0ZLWFFIs5B8LApLtGXX7IZDXF0Xvjd8ecTVN2rfCX5E47an5pfD3fJAYRUy0RaEi83laoYCWi)xpD2S3Si)xzE0VgFt4vr5)AkrSJNYVYZIYNcg9xhU4QisuICOOBU7(lxSMQPNfUBk(eX5v)WTOK)Y5XFkSiEXv3F5DPR(Fbe3ARLVWMXVl6JX5qdcSnn4Tl6MpgLHsVV0MXlJssE1mRYZPRkUMKeXfHZsZEYP)wwyclhJlap5X)wisFDzHpmEdl4Fbk7Ia77jGehn4VyeWJyE2tew5438Z8O4NHDo0JeGBRNMMXorEBwC6fNhe01((vp9nNp6xpDsCsCXDJT104rfW)m(DG)kw891Wi6eH8OQqxGUrFmXVux0Yp6jjXZJEBu2ua819x()5(l))H8KzzHxbQyjXxDDrx9O)Hiq7hO)N8ZRC(F(pX35fjarC1QKKO(EfvGYZR1B8E0t95PZMroEFF8vrz91yWikYYgtAF1xtCO0vGF8Nfnn8UEFpphPJ998SV39x(YvjFGAVZaFerzFO32mq44OA1KNhMf(PW81p9)tF811LwlZQ41pfaWwe96qSv71GR8pv37KRJctkUMFfIEAFRZcZ(ZC9((OpvSkl67xeNGEDsbNGGJNVBNR()m4)H8fuwrcOAO))EvfJI)n(v7Js)XOIxgHAvF)p0tLU9M5nCN6rJtyR)heROwDCa8c2xWUOnXdPXm(8nQoLKonm5(lVHFu6TjoyFob(hv)4yaG4RE2)SB1rJ7vVYgCGTweasJ)Cl)nRBUxsCMQ79NaUTJZW15Ce9wmWBxw(gXa3jEzymWnArDZshUEk)ZYAe1YDLiAWs609()wvtBLd1BfUiTyilT9Uc744FNDgnCnnBpA(D(jhYZcG2973dQZQYDB8SIRh0Dbyc(xXhyFQ4H989204ffF)3LenNW91tdIEJkVnrz)hw9d4ANF4XGBAzdwxGO)iIzyzl)h9P1(KAAThmxPMtqMdxJcoov7w42Sybz4zOpw8rCE04YdRt8xaGFrFIHyZyI)ZVneaEq)s(33dO(4fZINgsq)qq9hfnZtXeTTXgJEIpl8MAIW9N5mpoj5bZxQrbdYyWg6XJNKfbOk2bN3B0flEtaxk9p4GH)x7pDvnSvFGndXkEaDQxLJ(Jx89)Wopo0aveMDLDX77qYWT9(9YbB8Jvb52KJ1tWU1Zf0rnhc75q87jRCxzDDJ2)RPKiVdWEhilZUpozz(ysUnsxRq6uprF2S1Ut5fLfWJR8Q)LinH7zpVDsw)dIH1606kW862F23v2CKZP7wuMZ9rGSVkAomShoP2KKaPJ7VCsOnv3zr3eJU2UlDf4qFs6kqOnjnphVaZ4wCewe(rmcWkCFNuMypMSGyG2V8YNeojkPm9Svz1I7t(2(uzNbNDpUXMKeU4diLSiA)Ao6fR3CUnMadQ5AIQQ5SxiOzVqqtxHy90tWufIrjMWq)ZaHvn7hh80u8QscXodeNGeS3AcwEXOxh(jIW78c08LccNxhVaNyf4ra1pYAbNwNs(5j6G2DAcjZ(r0lwDZe0bu)CbUclqv06s2EeKRLYwX(dsY63Zut9caQwVZk1aYvIoQas(aeLCdVwkQ3GuKF2McWAKIvavjcLn7Cpa5xnneAwT(8m1ihZHikNCPtJsIYqM9tEFA2vxhMx0D(Lgov87F((zbhWCNcpxyPd3n7V1AXfvoVI0tH9lmKBsBXolLG8mh(hYna0tq02WBFZY0SIqmi8CC(1Q8dto8XKxBBVxx67)F82)z9jxP5SY1AoyQnFV4LCs8jvvk58eqjoz7OTYio)50Gqu6WRW(9TzN4BZoX3MDIVn7eFB2j(2St8TzN4BZoX3MDIVn7eFB2j(2St8TzN4l6StuBb(27kv7igAmLiHflNMpolcxdIZ44nXelEt6SX5RwIXXogIkoFmycvmoAnTLh(XOzJN(r8EjqKVJ5iI5AGwM)tdNED04j3ngRAmLkrlGa(ktQJrbb6s51r6B85C7OC8T53r5GH0QWsAHpMVOZfgLJatoZ5IapfwdyjJaQcSIKEs8hWvWSRGkIPnY11JAcOOVJhMljxQi((cOHKgxnweAjxhpd2GiTiuEoyE8XIb4nfqf6k14RiGwZ1nqb)cgwTRNVgBum9uAOIrsHk6HpGlwmqJ)kgyUXXdQEj2AgHpweBnJVpskyRf44IKn8QEcPc)vCDwl88WBcnJNuJnb(qE46ZgPkOORWLOkOONhvrWRcmjKh4QWLCSlYTDHwZZiCXoJMkICh8sOyasRWdPC8W(fYaucfYVq(Ms6PP2hkcCA8TDXIuRHjDqPKi7djjf0FWwc()Qak3ei5Rc0ouJIfnuxeAnFhhK7OG62x46JTp0A(Uu2luqR5BCXEGYflQisbAnTdj3uWDW5zHAuOOuquf8QAq9cBj4)R9bW1yJIfHW8XgfkA0OGcv40Ma81W7yCCmEy7JfbjlueU04RrwNpQi4ifiZffEchqiI9buN0jWyWYgUCa2HcqTqLhk4qMNqe4JYtsJt67I)MMup1gutrJ2aYahufuJAAUoWBG9fSSRdYo0y76b8mSJHTliWXvOVgBxpG)G9NaQSczughQSFa25iLEqoG)UKSY8qMKHT9uixYqwFWpJppz)57kiwaAA46Hplk9f(EsKpBmuzd2Uy)x4RcqPDaz)iDrwDGGkRX2hPdHwjW)f14GYUOUya2UG9dQEeGTR24J9rS)l0b(07ITRXZfLziDtLLugZGY(gQpHDcHX4rDC0HHiWrkzjhEH2bLOch0pGdW5X3fzGshq5GEh0yfm(Wwr4G2Oa)2LeXyw2aMaQDaYE8cW9d9yKhiPdQrjiFqWfKNhYlK0ZhBcb5hsQCfKIHlFHK0mqkaCgjihxKteqDcPAuzqcUtiMl6rscsws7dFwqgi9zvl6cxIxJvjCHpswebkvgpIQrcucMgKkLK9f6QOlqkWxyiHcYVK(W7t3bPanBCkqZsPg8Qs6Tg6cdPSIA2sn44M8Y6qx4tMgKlnTwr63O)kzGwGkZc0JLmW4qAVOzLRd4LMu9jpYssFtGgFG7zb)yKRqOHqEa5kd44K6j5deEyQZH(VanxpIvHUnCf(u7X(8q9xSDqdF6c6Dqka1iPlu8fk6D85Hc808e9bUDfgsY5rJm4sJMjqpAWfK3nb6tZv65WMrifibFs4JH9DWE23Lg6bPaO6i2lAYcJzziTyuU46bxr2KifOahR0Dqkq7ziRa0mXnWfAvAW7vj3cGEGGXMJ5Ijzww4N(0kBYIH623ZJh3flsKOTipYRRs7HcCLTOMg7LkAWQhaUEfanc3KaqXIWRqmj26wIdLZ1T0iqPav3UAAWgSV4ijV22IUyfI7rWISWeBLaU)ijlwjE4WwCLaIrh(XbqgROPUkFjcSPCkIaRsJfpHp4cIMGOBdxq5GT42ykhZL0zam6TTjWIAgZtsoezqjvaEWvC1jbzHdvDZIMhTip(J0MqAfo5n3efMVQIgqTAsHglgqWrCjn6a0jgPC7g4rvvE6QK8OigaCww6TLKMXakCCJfIHoFBC(1LDXGaPVWk6a9jhQlED8saO)AyvYaxpExCjrLk6HMKKMoJMCJS41DrF0WJFs)aHHLwqrPXQjadbJ8afx0NrHHfr7yYeaunLeomqZ2GnBGTyaJedlt25e4ixnyXHQqRYOPmb0pVnk8dlIYl1o1OlAAGhYcHCRH0i5EXd9mr(J0O5mnUaHsGgvqIEAixYoOBAAebxtGLqeOHxjHagMGxFsMdT91HffOyi)64OKzLYbWQt7uQf6jjvpGlZQtHlkYwDtLffyJxkwGIKrieOu(TPqSxxolf0UXjq1(0WyzU(LcrakrtD64P4mKzfqsyyvRoO0xjytvQOSYCkiO0CYfDNHcia9gBzbrbSmoJi5Lzr5rlMwzTaqPlTwGIbCvdJjhGEajzpG)21k7Dizaj71gCypnxuyL9Ukh01DaX2u0OSyfcqAy1piWGKKiWTr2)7CqlCv2SOfv2z(ONr4HwTy2DePwtxg5N04nOdiLeh(3LDcg4yDwbfjgEEbkl)qCvfdIEf)MGkehEHYJq8HSjJPuzYlGCM6tUO1e6mYMvrGEOXtC8TA2a2gPUuZw6rdMq(9u0JiyV6E8iBe3GCHliK)awoJnqJafoGhjHSZSy(Y0I6UOGUDGRvPcgyfCidpDs6Dys2MaoDkQ8NljN4OkhTJRkfWaue7R7PfSpupEKv8)bKlhDfm4eAw4tHBGqW0Cjf139GrmzbRNiGIyYHksyqrNeaYkFUFRaGmAUBRamz(CVw7sZhj2PXI2ORaS00W1AUOMJUcW7j0C0vyrB0vqrclIGGMh4YrxHf94ORapxeWdpQib7qHifDyimCrnhDfa8fBy0Xm4l1yJUcuuOOWCOIQao6Qa2lMlbVmiWgDf4CHCV46XLlJVIk7XbybLLgBew4e8raeOOcau4koglawOw6YbzrLvCuwcSl4YHzbL9W31JuZmbiSvIBcil5W7OYgkwqFBzBSwu5aoylaZNhgPa5ugGJG(1uK6QYnWHJ3Ik7YbCbLjKNkxBzFoKlqTGW3qQ0G9pQYRiyxOhFoQlmkfkercOMlb4f5OyzSEiZeaPcfUfHtedxGd9sGGC95yVOY2GVamEKyJI(cdqUm6lpWIQm6lpGpRTrFbAOO6dHNYtsjsGI(cCJJYfk6lme2YOV8GoG0g9fWzr(QMHg6JdVXOjHG09kJ(cC26xg9LpLPao6liGLQOVGXlvLrFP1IQOVmsSVtrQadOHYlB0x0yFmspYXPn6lxnYhi7fOhI9jYGbIqdLvu0xkfXBzKLkPtz0xa6B8zi84yzxB0xqzK2iG(y2vm2OVGagiBhoRlAuoqrFPmeTrrFPcCr(eH70hH0BJ(slnCeXuyFUoCyvc(coSkkWppF2dkf5Np7DGcncApsr3HJ9JWYtrFbb2PiXKJ2EHNn6lHbi4YOVaVsmSdE4ETr5yJ(cZrePRjO4)mKXaf9fGkWNd4YZErqz0xoGAwqz0xoqprvg9LdyAjkJ(ccqr5wg9fGUJKLu0xqGSC480OCkYtbh9fCbBorrGc4w9kJ(YXq4D5OVeiUXYOVeUCCmsocuIg5OVahgCCzueOoAI9sUbrtDzz0xGwhX)OOVqIUk6lWY3ug9Letswz0x4f8D8PbKKeVg1yLWaeK2JlLIlpYmKKyGfMpB7q5HdCY6yJ(cUqrElq3daGjFYDbkYbsZJKpyldxOcCSrFjXq9lJ(scHYXHIPTxOTrFbxyihluGnEGbPVn6lOV5qkHkkgyiYhHn6lPsXVdwLsmhhcB0xqCZgLXg9fasw65yJ(IUqyJ(IUqAJ(IUGmNcSxG8aS(PlOX9ii3EssY5lTxqjmHGDRzQMseiahNmq8jkiGamYzludkp07qJOjPWZidy8cYPIphfUKuk0Cu4sY9NMIc3NwlqcuZadjNejOIQ0aJorgIE2lO7OSxOj7v6cnBjRTxqwYg6cdjSqtFWBaPdjOimaJwsV2qaZ8P8pjmuSvGrl9yefyOXJe0aZgyGFxcEkdMJIpNg9oaCVtUcqkiaCXr1MHd6ICGIQJ44qKxkcClo0l5KahV2XpG0DqNHGvbN)ek7NWGM8fuWACiGcAmBqRtsxWzhMqIiiaP4fK7dcSOXHFNa(cIX4qzIWqduiDOGacOCHjDOqLD08DCj4CoeJHo0nGOPdypgeG7ak6iunbgL16Mstxeqkhog7fKBkcXcyv7s(sWl0ealjHzb8nqRzmcZkGcKDSWGw9c4KEHqBC44eeC6ayTykd5(oSuxWzIWNs6fLLCyGdxcr6vRGi7im9xXtaGnjbEArvcicOaXUjnBs8SYtVJ1juWf8I7zFwWC13Mqbd1AEC8gOzQYw0gIkwKWxNfbXEKHltVWfX3eUMeC9THvaw3E2QfmHSXA6IrysqUJNgnbc1hiTWORIZRxbLj6qqPXLQaWCPm8jbhgFHDz)FDrXY8)8F6pDB4vPNeN(N(5vt)WDqel)YREcpJK)jWvWORXzVE81qCaCSaNHHUh)B)wy2SXvhreJNNUOym(KzXZIAmJmxNE7yom2XqaFZIRwrX8PUuke4v24IRJNsXCpEzuwE6IWeAveA3XbtxvKoF(4vlHBIhOt5fHtXfY262pVEtIvSC8DJH3jpIwfXJOf84yIFtlf(X5tdtWfU4jGjmtjfX3GecoHsHlSr8o6oAH0(j6VZHEgg3bW(GhcEJ4P4A2neZqZ484FlcdpzeEetLpgUbrfi1A7e5rjruFFSD5aqluxGGsIZPQCz4cCTZogIm)kiS0BJxsQNbqxcJX5mkIsKBgE1vzPJVkj9wS3IeWyGJuSkFsygVgIhVaxGaGWy1YIglxzNYtnhWjao)magFpYc2d)1aFh()mbGPyv7vvvqFIwSSNnWSXvkdMGzKdjJkfc6sst1T8q95Ka7z2JbIjx5ApJFe1omFmMsQT8POBAQwS10kB3wzuhX2jpP8fL(0)T(fuvVGdvDLpV9c3Y7uRrAjUtttMLE7IXzr4ADoc5fn1s5hMKo4zpwE041N)y)Rv5f15slwoLNqsEckR1oS24SOPOcso(S8Sx2tZxTog6tVfxh2SIlLrIRrHbA1GAOxr)7K)fOwMxRF0rr1EsQX7jaImidqWQoeOf7QwVXr1eZjzTkYvA8cG8UMwXFwtVxea6GW4tAWJT2brJp)jGwWOPRssqt7zGvr4c6CydgQcCAMUmncijERSam0frjyNOiCcYD6XLuc6K16yAvbVFbEZV8(F(vN)8n4cRZtsD4LH0k1LofQQZXVnnlzgAlG0anHZlIUnNKEeGixiOvCEEgLHtd9yqsd8TLP3cYw0yLySJNNfhTywsCuo50JAqArkrWIhKLx6FRU99tevt0T9fk9lrUjcxnloD6QOk9O6c1UQC1jARYrfvVMuzXAdAf9Amnl92zy24Zstk9tHVT905B36jevx58OOLTwLzHDuKQhS5K6d23kRHU0AJxBdBaUVdbnPSXlxLDvNJCm7ZhS2FaMX9WvjfdQXtpeqDCA5BvH(QUuqdovjj72IILRF(4CMdhMS(X1L(p7w9vZqqx2Hxpudu74yyBNUlQFYkAhfkdpOehD2Pp9N(X39MF58NbDoWQiVMK5zp)03)YF68x9JV894LSEeD7rfzxmA(8PUIzUqLKrDl6eFdqt7QvaQZrKfOD8bFFneUkoKlXF4dgoa0PR2LYO)F9039Ux9M3nqR4he6pRSvS1heyTle(j3k(8qKaapzaaeLBfA5nabEd)fo)I42G40F(0N9QZ7VvM7zMmjW2kb0XxNbJggalABfAuRaFxpCwP9TTIMhe0ai)5m3)6t)XN3Fl4oFQoAITfK8OMiQuCWtUfGQbc5fJogIlYZ2cba4zGAcWeHqZSZBF3RE(ObKi8)rTHGQubvlK2YRFZ5)u)VLJZ85Gzdrz1ElOlhqSwfe5Rrqn(l)LZF)ZhqqfgodqPy7G8W5(yOBEvDqdltuosdgfTvqXScLVNbZ(aRo8ZV5PdqSgFJoQuDWEGccsDfUstSckx6)aDeOLDlzJ8pgamsm85cu9g4iBS)iLZNAk7pUOGq7O1Am3)w1BgqKacq2PsXtZ)iOD7H5ceAPrV80xF65dX79NpBwnEpWq4Mc01cWPEGRvdXoXjohJIfj)39lV6zdPfON6eutlaQt(4yeIwbZqIToDCzLlTpeRSpnNpp)V8MFAi(bW9C1rLkWm8tq1NY1MLZZwNquJ6a)sLiVasT2t5t5yfAK39MF8xE(GkW4QMPoP32yKRu2KhafJtyed9JaRn(MW8)ByytlAxkge0dmpAeH9fGIKNoVGWkhoLctQgCU(qMjlrM53c73TiinSeDCA24WRv2RpweKjFmawZBl(Y1haF9O2L7(B1jItCgioSEc)IWool(JX5PzvJ8ohxxIYM9pvZiMOGErsKWDcK)I8KyIh2k0LcEdN0mUiiKJ0XfPxDfifSaLUdBhGPuChdsjMWsJmj64(DkTXJXUpHoJdCQj65OzaBPQ52YwES5BjxJKHewFQkmtNYGDRPgqpdrlZI4dFycA00QiJBQbTifWOvGa3qToSZutTGEEgKc82eFK0mME34jrxh(XyqaGBTU2X6IvtZw3kT3fSgw(2I80KyCl3WeocD714UZJbbUwcnn9MjHncXPPEDX10STvfQXML9xNM(HXu1Z7DrAPGo6Dre1F)LvNXKu3(zP4c4)LH4kH4uGQ5tgsYQi)(lFpH6Kpewp9gCHsqV0t5JP1tH2G5w0B98pfb68q98oAXJI)0tPTr5z4oXe3NS4ocgxR00gCeBn4zzYI2OJpfydP3FjTm9ZP9UmUwDbkoAfUQs4JXs2gJjSYDym(YNwytVX9xocpQQNhp1EUxIn2Zr(jqj2gt2Y3rDKWBgHkhtgjt2sizRd3zzK1UDjkSMnMu1YRT6Aj3bIDiq06EMi3aBiCO1Qx0bVBDTRRtXorvWCCGCvh83TZRdgHhYbXfEq(TygywhUceVj2zi7UZQFJQTnBlx6C8vduLCmr0uppAbfLkkLbog3fRNOKM(aNC1aEbXuA1WxJnoQANghN)gmE1oKihcOWPENI8gm5oWFF0yC5LJuceAng(lBWfoDAeCnLGcg7(zDDgToiNjDIVdCLH7U(MRjBuJGoXqWHPin(xTyTv8irTdSzErUV8Va)6jAgwGhenGRMRb8Ti30)CAE0PycXEbuNxFXiNA1b(Gphvzaw5QCQ(REpIeqBlYSFeza0GaWx(f2bCEFAr0n5nR83AtujAz)SiC79ebmMz4tHBW(ERN3gv0QwSDZx2STzNcVlCwCyYBtZJ51yF93d6r2TTpGLP2V)UO80vztJEZcUoO3cqfCZs(6kU97tH4oJIw0LJDkewzdQ51HF6zLzJzeLnME7CO(koCtZ(hOHLDwAb4F9vlqv3rpPBh9SORb14gnJBFYr0LqdHy5bhrFIpklwrZSCP2sw42ZB11HF59Pl7JkFDkPJSmcdraq4QgqhJ7(dPeD(BFAE)04g1(AXqzAPLakUpfyI1pqpQu5LL3GFR8U6bVzbqZ0w6VDJr801YQNiugptWjUcaqoeG0a9)FCf4IooSTgcY37ri9ZOMrtQVsS)Y0S4FdxNN9j4FZ0PjRMzf8Vgtut36nR696bIdnIbU16gNGjQdDHLKEvmM7xA9vYlfarFZcaTNsqFHjXOJx87irDqRu2TSlesHPv(8Nt(VMu3lnJm)UXPOK0IWpVVb26j)M28Z3C0itJCd2DSRbYkAZhQ(q38SDupHGTXcYzJdh2oEks6LSd7LulUgfm(RNv7Hst79PWF(SY6LFMYKBZ)MDWiIzTg(ID1uoX(OvTs1tFw1zL0BX8l)SZqQNJgO(VtBgl8wLZIehRyjpVkGH27oPAswaH(m4k(COHyIvt8vl9NqY8KETk8cCwtZzaT2eEwHOytZELqWjrLseFnWeKQfa9mRaIz6dqDuMXFqJXcB3VYwPMI3Upfa4BsDYXzy)FneClEHQjyCNJlB98uujH11JfUmyeeCvuFwn1P6bonF240k0husYWAGjrGV5MepMkECnTgOhXD8)A8SRya41uPHieSQi4nysK3hNuuYSG992OcT7T5UYUHZaF33RBxNNqJgpudnItkNNTYPyR2NPduFUSzvwxJKcZG06M1Z6sVBm3lSbrnUDZxTYXwj626pz3EDT7U2zv9jdhjooni972UN6SwEB6016wb0h1O6YPtZIXaopNxq)JomHuiEC8SMU7TMVjCbmy4IkV(9irPoxD)HnR2EmBA(aOdrAw4WGzQ1t3nn5E4T7UA1DJxAXHx528jqNBBv6gOMd4v6r5yBRuHMQl8WM14CvSCo2Xb4PBorcLMgmDpMjHA1udAu0Kg1RNtVQfVqLcPIY7BPwjLPDRQz5DkjHE4mDvMOro3OcAB1TDMf0YUE)Kk73tpS5ZomCwl6SNbXgMdSLHiQ9sv5BO1n2bcKb(uCDw6QRiWWOxLDrwT1rv7rfPB3VLMiI9(6L1tUrnitLvfNww(IEKkR5g1nUAYIA6lO6EnAbM0Qgezq)4dWyhQj(4YsaMvwgTheSNWeWShrP6R2QSQR8(aCe21QTBVDObR504vU8foBJKZMD2xDq32VVc56NP3Bv33xjoAnUEcNTkjQdCGdCaP(g4HeRbniG1XfuSoSQ1Oc7rVExa8rS6RwfNmRkK3oA3M6MciQ8wZnvDGFcE9uAEa4(Mh)jmlJ1AJT7j84dtCRa864G7Ga11a89Xdrx9QTx4Co2DFyZAafUSYa38tEai7a7K0fqi5ZcXG8O4zpaKsuvGNnlOY5zd7L1)a9zTV4KC2BCsScyZPiUxam1nDoe8lo7g(fDLLGZUaGr00W5H4ORx0f(T1)yxB5dQbUdUew)gCLTFVZqE(o0rchYxZgWW3CmZ9QVpeyMHh9DY2g9D7a0en1Pow4A0hsSHhaGhAg1Q6K1DaU7uCpzaOhqFtge8WreDJWFq0nnUvDe51hp4qtWux0sIDiqLTbXzXYPOU2K4Rg3RnQE3a60lM96ixK1b(v1AfXfjr9nqZxaeh9XcEazt7Rd0j)3RIYBxFQA2B1InFl9)Hvm3eciAPFIjXFbnbz7cIN(uo2Lmq3ZRT7WP8FO(c3TxPpICl6c2z25Ru4x9LMQETU39vXEBnjz3Ojh8z6dD3bGoz328ahjqKdMgOTMVRTXO3sGX7vU1MNMKGRhMQ55z5u7EmPhTZdkUYDNYPOwyhkNTpqYoiZ6nJwBddswdaypUw7A13tkg6592QlTTMGVbY6YMsW2gbrpaqSJfk1GdothhyY5gsiYdLoy4gD4l9G)ZRpZ)DU)KfbYbCLKyNPwCnq2e)zd3GBfj8grlu)96rnCdikor1slRbUZRssNeMuUlPQVGlAENY1al(v4IwQcRZf3GyvnhVKYHlBLHZk3KpZzLZ5eVE2pw7cozNDdM82sj8xBOL7QBVv3RFoG3E2rdEB1wZ9HdTv95bABtFhGbBR(dDqNmqehBen8xP5KuSZ5Ku48iGkEdPZ8RDaV7)8VU98S(4cfEVYs72TQ2pKQBM03jiIdKsK(YxADZ4f8UWOLHC5oCDlj31Fltj5oHjE4efz2k(Rb3Sx7u6J35uWSrSXFXYTR)W4ppqyXhciWoqM7jgNEtR5aarhAko2qwy3LK4EWiY3uOphsszPXnTzK9aNX5(ME5HWQUrRRVbV83nWl)gwX)TbRO)NxOI7XYs)HUg6(kdd3Xyb8DmwiH7e(TJnGZJjiVJd(UEsLtFOt3iIYDklLpeTQp75(0)qbLEms9zB0y140dbTChHT9GxslBaV3EJ4Ux8N7mQXduTAaaGLBQLgcLgNmAn33BvNyrJNsPOEE60v5R3xq8UH5f4pwFRWeLeZ7ZNg79TYeUAAVRz4NS1PErVBbEV60wrAAsrmTOGZS7128g7eRzzRINvUlVk3xo2Kax)5ONW(D0gFImAtONXBPjyiViAVgcWKIVAbUr3l3YJ8BAx)n0ogd378D24xE9UiOlpgZK22Fw0YeCFPtQZ8MzdtrxX6ox5jUgDYlSArKD3(tNWb2Z3a6hEzAYDVL2VK0LJsxLm66WSYVw0NMnnCr0tPd(YYQ46yQaDy8Nz3PDqyTprOcmpX5fUpxjoZPzt18rEUVwjepREJ38bo75V4u8eENARYBfODEIJZzENbcBW)ro)niO1l(mPu7i6VXlRGNjepDtK3lup3ZhpgB2qpqCQJ)ZE(MEKZEXPNDwGQnlSvtfiFU8SGb7oVqyKEMsjyZB(uNN9mhXznKzLpb(XHb6RMN6IN7ZBQV65)IxOoDnbuu5lz9rrYy6Wm490bdSXEum((gHxr6GJxT8VHhnN4Cvu9Qf4x(ERo6O6hFDAG1uUvk5dlsvz9GpYFNhcP2V83A8lRw(352I(Yhmpfji(47ZXE4LT(OJI7pXZk7aJMrFe3P(65Uk3GE7tZdNfHJXYNTKqFAsEAYQIiWV)IO)gz4w)x(7SPCZ(nnOg4h(dL8G)M9K7REpxGv(nlb3GRShnluthZSfH9n)72JhP1Cqfw)rWGClMEh9LkydSIYJ7S1ScUF3GvGFPR8C3kVqCm5fYM8IMSc6KUBiUbGkSb)Oj3WXztSd7HW1AUHTR3GD45h4B(8YnARz0IBeO2vDdrdUboTLB2oHoX9wZo4UEdUHuR06GJIHYzp2gkp5OAPy75nnve4X(3w9eQomxHD9eA64j002tOIKsBs2e0NSPT(2HlQQlAq(zwmDiFuDMnFy(12OhE6awSMvmjvAQ2knUkVF37FVfJW2RBoqh(19PIr0u3H(Q0GFfB0EET1H5dXhPRXdpwX7OQVwHKReTVqzeED1GBD7gk8EDni63UzlQ4cTTNiXp5shnprDeOnpyJQjC9aRm6)CaiKs)MIA7TcWZTudEZDtWFIp9IMaLtGYuxly9G5KSTuzGpsfxRJ0Cm(a8BxYwShC9yk1Zbaj0LrEwt(HN94hhpHq98pyFinTsoXyLL4xWg)ECNqUjxZE3rUPsCsavXkpP01VRnLaWfPfk6GN0YpRF4GwhYaXjBXD145l7xtiOmhickXEJGI66nyhgvG3oGGYAwGFv28vhtwdB3ao1esb(H1yxTIFuCrx)euEnBJzrTuIu43lPTW2Wp8Q1D00ORzVNVNKoeEpEiY6WrRX1CpXxzCLUoEGXfDMWVft2d2JO7jkPY331vRmkVQbfAmMg(5meRzHl(HnT5yATU3WJPHN6UiFmaCUPc6gFARB3ge3UoMwpUGWV3TcN2U0RzTr6inhGx47l(I67PD8k6DnEL9j2TwqD4EDtmFoUAZwhJZXIiXh)8mJQbBEqUsvvAirx)dMNnKzrJX(2vZKNS7qNxJnK5o9o4w9Ha9PCG1KVk3H0d8V7qP7gnm3VBMBap8J88FWIQG70T85e4U9mc64ESIdoq31hTUTNF3dis4Z2wKWt25qfQjv8)8egCpz3JKlnevkxxLO34)AlTyazgNaP)HMadBeb432bLPLuu0JiKbag45BmE1fB7x8EBKgo8Os6AcVwcRoXVg3sCu8B72kiYni57evclLBHN0tP3bJ0JwYQcuDLWQ2gPFnLUk5xkZuROPn8FCsB2YylIg5tPfFHVLX4OdC0hr4)nH7VpXKdXH6vpYH9KhYis4VwfLJnHFbtAaiMMQRg4vWVCkQF)JiUJtaBhVPAf(nZW5HckUTfOnprch8B46Xlo9g8SwnYJwuLnzYR1Sygxt9UAbQfqFb5BYR14hI3Et1kIjSvSOhKBxXMgHDqCs7(aRIJLR2Tm(P8Kb8yC0gISBMQiPt7zjqfy(AcpV8ZZSeG96wCcj(D4)BWe)DfmX(Z9Ovw3u(duNsVnWITtncipcegzGujLETKBI2t2uZjuQhGx7OQ0MNGPTHUSDwN3yUEQz7DWHf2xhT(WCQ9zMJ6QSTb9KGtGUPVlyRd1Sz)qsWQdnZ9bQh)1Aw97ApxpVAoUUoogFWbINr)5lj)mhRz04G4EROX(8mDMBIL5EsGJ0r7inUgkx5pCCwUNuFI9C3FUjZ6ALzs)axNVnQ1Fuh1se4l1MVOr61kh(psH61DjnA76TyhAJ7V)x0lDMumUB3gzVVZ2d7939lnklFOPAIVCxMqN9lLanXoPoIt182N3SJXWt9pPzww1wN0mTRQRRjJiO)KbiBmqyR1DvZ1K13w3vGh36j2SPvL64GmXLFrpPwhO6xrGfN7YsTs6udM8aan(QyP2TH1c42IIYk3nsHW4l(si5fNCildm5jAMB7cCi9albJa3nTemiXBRyN9e7akeZJz(MLBk7ABAOfz7SHUN7ScUV3KFGFNM3)uo)GMkJjh2OYDnA(mLM56QBshJEy1nMz2AkD1)XdLh1PBPNP8uYVf93VVI(RtE7TI52l4wTJ5pcBzPEw)XuxV9Ch75Uv2X2DQUpl8Thra9(N45xBu6dyEIKRxMb7ccSbw0O9TGs331eXGRK0ExOP1Dt03yfoEo0GudU6qr1GMRfBF4D2QMXJ5yfQnnbxQhlGjC)U1uH7On7uob2D7GJiweXUa(4bKJagSHkq4m4IPGzqnXAif9d24OSJ30poB5n52CU9aw0cT0NpEl1p1EUznzjtRKoGZ7Y21W3Sg9J0kG(eEJxO9HaScOTT02ghyWfjGJDUeKUAhFWZ52SeEy7tGnocYJ1EgO3rcQLocsqVd5Lkq2jyv3)qIBI64nTwukr)7M3FVXm6FgvS9)wHwQc(DXc7(Xkp(UFPwZOSKPfGgJr5(hTTJGTx3kNREdS8vEiRYXhqwm3EmohRjTOJHrhl12gtdBW1WS8bVR2QLYus6SlB9iDhanghV9fY(J1cHUDgOf8y6kiECmm1hqQdbqUKUja4aUJN3oSni1(APwgOgaEJ3WtXuR79ONnmX2JRf64A5gMGxslOPfVNY1yESouICpWZKOTS2ZoEoIBVwE8300ITZUH3N8XAfanekAPV5pC7evQt3EXh4Tdti0djmm1)(gg2GdvT7jH7l821U(QRaf07YaBTWz764Pe)rd5g3PBnaVXX9yV9uCBTikoAR40TAQ4CYJ7EsH5wBpSFrB9nHNr4Q(Qj3NTrsPvhZKF6dWPqHM0hxLCbdNkuLzWuHY8RozxZt)WMx7J5HYHkO5wRB)2KEp8yoAfxHTxtXM1kgK636iL3G6(03YicMTI)eSyWf(Zwo4FyXFRZdoG7V9jER5ozRHcXEUcQoCFx13ldByB2TrfK(1P2GUIWNRfimbFJ3qgI(U1waeTnezoCRO9vqWlFfnroB84X5ZZ06ymdUhzTSRgSqF3VWPbwipshYLBFLt3AEtOUEZ5i1XtoW22uDK2T8(BzFB2)wNFNx1ioQEIh8rz1HOpshsnh9veIW3O2E(a6nViRfdEntCuBrsV3U)mUC47VTn5ZAR5bFFDXT7AfB2vAdiW1pfYAfxHDWgTJiq7BwRS4XdzR9qlfvWMxka2fTNbWx5zc2Z9nbRN0DZV6TNB(XHtb2)MU5h7Td17MF8Sd)mVQnU)MRe(9zVpE2MbEyX1WGopSnBuNdsvpL3)wEskCexJRYnNmGt8vOLDGrQnMhRLG1wW6VLifoOjEFWLRBxhmw1KUR8iVVsJ((ZdavFxHCJR7OMwBfn((Fusv4ab2pciB(ZBIG)yXJFhs2Y3bf(tey5hlR4PaJJ(aVmkh4B3Fzy(9xAV5fJ4p)hJZIUI(MFCBuErugui(QfPzGmiDErm(zajCAX40j)ROPf0xte8Juprf2VKgR)6KCt4vX0x2KISWf503wLP3nEs01HFmg)IkTy88S4OfZsIJOAk6tWdAjs89JwKfEv0yMLu9f5XOSFsEKD)CntFAUWpC3RYX(l2MFy81HjZ5pPlfPGah)cKmolmE24zRwCve0vbz514psFL0SFolhVmI7EDVtrAr0n58htWRtt)W4zHfHvA)))7UN1DBBDM8DP7pAk(AdSKLVOcCwGeNKMCoPj9e72IDtBuKLOTfSSKo6ss8zXg89ASVE7tYoZqsjkjk70ZfGDxuKghlYHdho35qXtR4(VH9qqgXTdkCVB6187UKV4gwiV1rUeW3ZbqCQFaEVNm9UPhvKJxBktVSWB924i27U0Ty5QGOLpF)01fHHLGHdGt48utrGq3kkxbRRj4vsZZ3)5eaXqOUOiIUhxoiJfU4TpFFruq(f(IpCgkbbFMf9WmeZFZZ)8Z3Z)xymWzYB1ve7Ypbav8hhWbIsRF37auew2E((ZcsZYF(EEFU9RRG5gExB88954a89wdWcS9LJW)r1ZL)72(dmh9D6P5Pfi2Id25m3qoHjpL5U557NHlmA6T5W(9A17tDtZxnhKc7UFGroRbT64ex8I8deC7UJdSnB3VpKgxe5tiCx9dmtAnWO9icDeK7YYtdwZ2DV1qMMUE7II0TD3p7r9hA3QBxg8BfbaX5JUl34UdABVrJSh2Q3hxKgrt1jGMHSScqpZbNTn1D9AaIBXR4O3Odygw9mmBbStaP4xgK(p1YocIn)iCJqZ3fZic4Bnm7BnO20whoeSaqwP4ZBGwUIf1gGIXfiYW8Do8Jh8dkEIZ)f0qal9zOfTdE9Z3)63wjscFCGgcjoULcv3wkLFiELDr3xvxL4DH)37cHK)RQJ8RQRJDtpuoYVFklFgOW(axnJplmJr4GGu(3mkurH1Ij)jHompqzDg)x(8F5X)1C(V0sdanl)CT)a(puL9NsdIj3mWrPsr)NVayT4SPYlvSjGzxQLK29zSnjCL(Z4oEmcca1cVfpUB6fEOf7lqTelC9yF7IjxF10Vfe9GZMGmpNhrlVRCq3CUm21FsmOhQ8E0kh8(ikNd5LGokXGW9Lzg)2tnXjqE3zLgdoRqFk5He1(6UyrWtI2a4a)tW4YvEvba66oBMWniUh06TzILICnJDnidVytLQwC3LbZByBIF4pJbt5xDi307XKJlhO2PfUad5B48ctN4IQHGfG08)YgtKt4tXz0YB1i)dHJO(S6OiVP)9JJ8HewXauaVIb)JpIOs6zRcaJf4pGoMNVNltb6s5x7DpF)R4toqOhA))Q0AbICVsdQJpfFgPpMdRd9NFysA8Ia4X1DXgHuLgHMwyW2sJ6pPQcs(TnBDPQPgTV67B2JajAka5HeE3SvzRcyH(1AhNzyk)bAWF5QXpoxN66cxmtSQiXIfOEuONOUI0cqUfaohXY0dLVIpgd7qaiT9Dos1sz(TbbFCF)5G39hObp1BtvdZaz(sWUHMis40hKRteh8BLliaxrbovNdTZpiJIMWVBJtyNE)KqMB6rHH8R5oTyQ4FFk4jw4NZdcpemCrn)aecWO)6zx)Plp9SzOJdLmn43F81ZMD9hLpQh(ZB2d(Coly5Q8dgVV29v8IUC)ndPJh0LzB9uvGY1nzfcwZFxUtWNdDSM32I9pGeGg9OidiOOPd)ZepDFoavxrwCb60bnupF)JRcQXNJna18SdOv5Mdhi)54VAcTDXRP897Jr7fosCU3BWuB(63wQdtZt6A82TVH)Ge(9X59)JP8A0PSFAFNYAiD)JUyCUzfPW))iQTmo61GLAmzlWsXd4AGlg4o9XArBffNRXMQa3NSYnAjd98d072HChogzmpyOrr9dAbkCoIkqWjxPZjV5hW1pC2QHG8YWzr0M7jWIgXhmSv8eTt7K2yrMiZm4)3n8cSka0fgqJqj(8fNC30Epn00CU3ydtt3rdmT9vIs4cy5jWnm435PVUYV0nX(6898sY1YcIx49pFVXO31Z6D4MU0YnmF2c3IWCGbHMHSmAv(v)l96Ty(IfV6T4NNm0(4HN8kDgKKJ)Hq80tOSWUR8wCKyi0LhhRbdfzjtGiISVCbqJttawheBpMH2S0c7VGtdqMCHWHmOFUPrW8hWOB)Y1ZU476YzLnqTfz8PIsGG7NlEGfr6zplngjMFknop(DNK6UmoslKW6xshKO(d(xUeLG(3HPbOJqp1zo6)ioVPjWu6Mgh70eiCeUtL3kAZ31sc7p2q7C5uVvXCkZvmqvPBk5bXr((6xjmTL5JRoyMIBuGx8MnGYpuh4u301UPS8vYmH1fmPj3MGu)uqOli89c3QobtB6RHLNZJtO5wvt0p)gBn0qpIfN6XJ8(yqhgqPY2tQcR3)2zluFGdfZ3IjMCbgnxCCiYyDZLFslF14rJT1YnCcBras8qgPvQbpP03XMww66lOHDdkf8ZflxYaE7ICTmIdmmS7U7uUhbhF9wJA6zAXa7rdThRdeZwvGR9GjxFT9BCp9YaOQogoWO9Kiwyxd7G(d019ZbV(v7793S9bqtyhCAHlbEY)7)5)f6B0rEU(SnBrURJ0RayiyHsltfU)zZXCMJmySKUivdhosltj)gkhqv3hCx2181u)k1xifpGs8vDnOdS0U(CuKxayYIKdaBI67lOOqRwcqRdxl7nWsfOWv)qBoCCpDD)dfUP(bUGIfWSyE6w9loxfVEvbqrVEXcwuwagh(TxDT(vgZX90ossyCjmfzB6MjEWq9I7kYbc(55m0EPwyyBQLHgVE4bX3hOnPeM8GlOBCD7ceJFbG4KcWPVOoGq)EVai8rqVS76vDHe2VaqmRyth4qFRHATTCSBU76oee)DYdAHH5Bp6lDOP0yGEuBvAaBnPx(RRyHjD1zTAmW72FKtezN)fglPl5iddTSits3MLJ99ScDCYOFdJ63TrY5KK)LbSICwKBuUEu30s7QkyzyDCeU3xhdIJR7aZT7pulx15GuilI71aFoODTb0p4TMfH7UmA)nmeZ94ThFUEjX(9hOU4VUCWWTmpWB9o2uWXdbALEdHEUBj1SDnhhd(dRD15mwosEUjopdyp6UZALC)iLF3yCJ84OG21ME91QJCAEq065WYs(QowtnT6wHoGWRyp1XcApl9twbDQtcSD)r2A5eHrZdSyMVRT8LZXeIUYGUhEr0IImY5WBp)6oCyUxFlTkcGWUYDdI2qMFokjXnfldc98U96p6L4GcSmf3LKBVo4)plecLeKbj3eoA7MGo69O9Hbx4jbJ(vREA17quqHZXbBD7Wii3lCKf82Ro9YzDy(B0yTZWF1fIDDvaA8YTydqKHil0YmIVG52jaogI1guq53HeKTPEVXU(bwAgdNKx62LlS2wd1YnFrkWMGERJmmYij0YvBQxTXrjSNamp093zp2zSGFo03fGneOXLSLUEB5C3Z2cO8TF(Yt0BhAOLPw9XuLAGzz)Rm3h6Guz1tFFpViKBb7yKKL2LIolJE1zhlnIHbvHrEYW9Js7M8Rl5WLrLZZgefy(b7zlR6onw8nzUkdrxKbb7)1G8vXf5NtjFJsdzZgDgV4Q2(jQSLA3EorfIFeI(QzcVvwl)alVCNwwKgVrBoh6QOge97N01PDuvaArKP)HqeQgmOE9M9LRDXU6bJt5Mc3ELtaQx4(9VZ6XcqSxY2A(2Qj6B0K4NxalMibH1ZliEB5()Qsx3pqAg1xWa471GAfmW(Rqaz5aS7IYGZBT30O2ijH5YQHmZH9eygnann7g6WZkOdrsd8CyPU48qP4h55faRB2WGiaBU(ZZU8IRovcSeSinJF0XDdsmnXQFCQyxXCI3aAS8WsRKAlVShb4(iUFCas3hRW0SmG5XjRijjon3rPCD5zYxPakNVuP(spBuFRr9SST6JLB8ObM3T4DdgHLWrxpPFNpX6UZgByAzakEb)NgBmONf(K(QvRAUlyyn3jJsd3(k01YQ)0TWpi2RmrVZHLJFhCj3jski6eIW1zbyhKxlSxHxlCjWirejr54EMDVEJmSH4BgboJ2BCpo6bmZGdVoERyERlPCsISAT7M5mFlVgLLp1RacQFJqqOrLUMG(q0Oqxfv5QT5aAEwRkxtaD2mFIrrmp)TcimahmCcCHeMjiPdPIyAiic30T0bd4j(74aSHxrhzXmV0GKCQiwDaSkBvluel05ubTAmQIGwxwfSCviUBWAwAmAIYIbzoMajFh0dn(Ouw)SQdT(Yfg6KJFGqyFEjZQsfHdOj0cynwuJ5Mho0yqFtQIUbm0b8LmXbu4WWIY2SRQfgOmXv1sqdrtO1azUTKzkllUi1J46MU1jEXImworPL)HGDMOGkhxKWKvU0NA0oGzeCrLKHVIF(X8cXvyajjTPiX1WuqTh2ybJ3VzAeMqUEq95tjacN9O727Mwe4qK6CIBcOrpWc5NGK69uV2ihzTYZ5JZEmiHyaRG68IflmvaRQKcMZ61raMqSm1KTcIC4)zCjgq0k1sgNiG1vjwKhtdpWRuTMlfbnDwInYpiL5j4qe4dXHJDuQCSCALdKvPAcRoyzW2aYJQMUoY3)6OSVXny8nGdDjl7BuR73IYwt85q7HqKZJKc)2Mgdg2uyQoXf5O9cWt3aS(N7E30JpAYV8HBU(ZxDsh4R6aAOxETr)q6jDEjylwiR7FQatDslImRBLbxmYIJCdXdlsBvDKeugsRZDJaA3kmyE5biyU65IqSsVfiO5czE(zlaSA1qSuWpjwNACGh4kEfwLvn3H68xrf0YEu6td7tLs14r)SC23NoiD4mtOqceTGzaHXh31zAqr)f4biNB0b3nBWv9xYYdDOeknTjpbhAocfq4m808wEaiiLRKDq8GBGwf7GSZD5dE0A2wSo5fkuQAiDOikBvdogYEezoAEnZrVacnxh7lGkiQ9oAsu5Zwl5Jg6EeR4vCP49pGcDd51ljT1ooo69qQu6)JbrIKxuN3eMn(PXj79O6m0WS808jPX45uzdkZwZmUrDZ42CwcP5yymxH8soy0aoG2my2JlqKyGpllyj)iViJeuojrAjo2sDyU((GN0FlPMoSYE9n64mi7RzYtvsDk(fLe)ilTRVRgXfMlHasxbL)QWQMd3FzttX3bUENJBecTG0IOU7N2yQ3evR15Yh(hBc4MXAH6ng(k07VGH4pbiQWJkUMAhSmHsuqECzy8CW0NW1PNQKYZP8RtcmKsa(F7JIFM49(qpaM0LDZaB8tGEOHdgZhhS9IGhWEc(SIkl8w5IN8nPJR(SQMX)SW5wCe6B33gIYbGB)XJhnya(Pr9m5Gx06keI7XlOYBddcx1NFwSz7ySBoA97pyaAg6kWD3rLFWcPpYpG3LKqqw8jn8jduqu2CaKXkHnNRly02oo2kmT4hPJoD5QuSClgD881yHOUBp9m7pW02YWy0qiGXHkk8LQhTLVKjgBB1JUCJebsdUqeNNJwvgyBznAGXillayMWkayvXsA3lE5sWwbzCjiAPQcPgig6Od4TRJ4SuJhb0onR25Ht0AWEpDI44eevom9Ahrszuiuuo8Zeo6ulQDpveQNoQki8ffKTIZE0iOSwNGuvd6LUgP6koP4Hhlzz0kQpxytSSbnDrpp2dtyn5WTb(QcWS5jsvW6OGje9wA8dxJuhqK)pRJXQrSPnNle1Q(uPIHLl0Lv5Aq9azaDtA9XUkccr0ckjSq6ZOQFmVZqB81TLWueLIc3IFknhTjGfgbpBprIZKk)G4gd8jK)5i)Tx8M5U5kZtUpbvUjiEcDBbuxnkprbjU5ERCkx5WtODZap6Iyq4CdAzhkaC84fvcGYDYSIY(K8oSa0mQF64f3mHevt6i2Jzo0HehTeWdh7k47ot(vLHINRlVmvQW0MBMHAeYvvDkdIKbU)QlkXjIg8nSba95bGQi2acGtf4yRIHVvqCG91Wg5POA5H)sciViI1EP0r42Czq(TaTs2lAhwaLW2kIoYSVvHGx1HFRGLLZJZlbMvrbycRQhQRmkxbv0UIkkJdhPJz1D(1SrsSgRBHRmre1ZjOKBdCwNmRPH3HhEaLMgTcuQj9B5Y0yyHksOCbApesB1tGjqWIaEoHQ5Xvv0FvgcrtN4EmrrZu2oyQvP70UbvxGrOYbDX(vE87RKj5jFzlyYKj0Cqj9ODosvYoAZrTBdNCUNkEHMzKYzdMaPzTEJe4MdgLxbwODOv0PHSf5I3FcQrtR8QLyEfeKRxgMAev4QykfsQmiEy)EgGdfJgB13Op4eeNrS5x2x3xkzrJIDiuKwVczrlHLZWGnb5nnx1vQSQS(OA8qML1MRMLPOA5QyILMNIpvsIij)uGgCIsVYmmsUXab)HBxnTlucx1iyO(wIzg2RzYJMzo)TAGOsQjDKYx5y7THIxSv7TD0Rr192QpDZfNo9fGEIxSH7FuXxshVKjl9cqzVnu9LQ4SYhlACVYjH4Epy)G7gSK0Bbi(ZVYQbyp9lx)lVK5m)LC9(Ag10AVmqCkZ2vJuAXzCBNA4gXgOzpimLQVhQS9a83qhBWTLIevNEeWHs7a3XGZeyLLYsPB2e5btfRoasbnwA7ub0X)(B)03PHa8MkmMxqnuPV)89F8FWtKBjKpHC6Rc2MkWEI6j8b3900kqx2OphMJG6ccTDJYfW33NEkF)2XAdel(Gmn9F6gx89tGY4l7Bjif9cal(63GE2hDdGj1mXEkG7GvfTcwmwZXxS(lwKZ33pjuN5U857VIwERWMs42aFBqqM5Iq(IsNoONw2xvsGHsV(1cQe1odR6L6ZDAs)89)J6u3YLhKSlonQLyQCA8vxrnJtpyGcAWphVNgXsxUvL08v(X2AI8G3rDufppoyz16GL6sKahuM4M4ophg4byO9HMa9clGu61jtg9WPjb5SffHcgp69qKe1jUsSU)q(YtcyvOYrGaGOqh4BqDDcPcdbFLVnz5keMNggGfCWmCl1QOPLG5AOjFiMxW91exOx0i838r1gxieUKschbRZcEIQPbSG85eEUeAlU7ZW6ncReKjyQzjrxEFBmeFim(rLvLEkp6lm8TxIkZLQ8)KGuVIquiDk5ZNk2Ht0)T4cAOKjqQY0BdFf(7DVU7n0AKTHH1aJXdmhxUx3k(xxTlhD(6scZ4o6pzDLWLEa1y7P1gGSMullcbI7Hqc5qq57ZPPzWNkDAsMCJw7in45lUmdo)U3MsUgxlEyi8PE4B(7MPNikwTT7aKjGKsv8JsGoUb8ebqYDnNMwhxYu0CFbXcciSyzae7H4L7uTTDt6pSM4FfebfkOa7CWswYrHgjXZrnN3UryzQMwJCoYSmyjJr7IKUZfjn0(2eDEufvbPXZi3GXJn7pq6OSH5al7s)Ifok3t2kkpEJ396JrRvN2BwTIdXJQZ5MQSFw1ZRhrXDtZ3YZ8ta3rxyvJkYgVGCX7AShJtd9LCavGrgL7EJYr4R946DN2sSFCui)U7(F('

	local data = _G.Plater.DecompressData(profileString, 'print')

	-- Profile import
	if _G.PlaterDB.profiles[name] then
		tinsert(_G.PlaterDB.profileKeys, E.mynameRealm)
		_G.PlaterDB.profileKeys[E.mynameRealm] = name
	else
		_G.PlaterDB.profiles[name] = data
		_G.PlaterDB.profileKeys[E.mynameRealm] = name
	end

	if installer then
		_G.LuckyoneInstallStepComplete.message = L["Plater profile has been set."]
		_G.LuckyoneInstallStepComplete:Show()
	end

	Private:Print(L["Plater profile has been set."])
end
