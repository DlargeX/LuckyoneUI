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
	local profileString = 'S33c3TTrs6(B5M7zpwEpXAq34DoNz3JEyhRj2Y(AkhN9MjMcKeueRPi4caABL7m63(T(QQbiaiafLSCCgNeNedqa0pQUE8vvxD3Vv92ZE7GOvzrdhNMoFs6hwmml(9Xz5XV9W3oyuAE(LPtgYVWS4KlMv82tvb0dMN8R)Au2KHlIUmE58OI4HttxummL(0SKjXdJxenAE8eui8hpknBsC2WIzjJF3I48CQyE7GfXFiF40mQiqR4LOyYoL(TNu(t5JJMhJxTG(Juq5frJF3W0vfZtwe)2bV41N9Sto9XVDq8hlONMmoDXWIKlPQAs84KlJMN)2rn(s0mF7Gh)XLzuR4drx92bttYYlgMTAHDvRvkHcQmjYY80mQTqnc8VA()BZ)FhPLvVQZNL(HHPtNgVip59XMET5RT4V2AFpxUaS2VwrW16YOjtswCbEK7BhSkH(HSyIOoA10PdZxs9NO5dNtJoZrHnizXKKXrfPzejmjEXK5xnnACrs6c0JB3MMe3DBA)axtZYPVMf)9YG4vdtlMrugAe)kIhPI0wJEfTy8mMGn4kUv(r()Nt8eV90quMVl(QrutpNEf6UXreTNgzkwLpkI6jrtIPXwUan0HzXrZlMnC8QcIUUEWSzNA8e8eqOYhsDz8kA8l9qeZjItr0BhC4bh9dF)REXRp9yuSfPdlsV4I5uXLE5OOIkM4YkvKagUK66PlIOrbn6AGTIg2wlkKxN7N7GrRMKKoEf9KXZIwSGgah8C63PHHbxmpDe1IO(wECXqHMTPWcn8eY)JVLk03RBjW5rzxyKdZt(vi3OAWimMRYoKDYIwqF44zXK8HqdJMVCwujFvsSiUkmcxCrw6qQv)b07wtF5(5AMtzqknRqKPisBYcWemmlkzYWjROkKyujUKzI2I4lVYWvrJbfXxY8wB(SLXf4jnznNpNkqAaLy9nn)QrOYrUXruVd8VlmAwQyDU(8XPRwq0LlJJYxLfBem0H(kBBw0qhg6OdyHdBlRWqpw(W2Yo0HfsMehvm76Z)qs(Ss9eHHAprzHTTYvzHxllMg7PbORppAbPyY8Q2ALTNV8QAhlhpPE0(6alPE0(okpuattZY)qA2IRpFs64ImmeAkdLFOTxz1rfiE7rZttNC95KqfniwkUR90HbIEiTxOkqe5Pl1bktTP9DdF7PUYLEuP6jx6tVOpU02jG(CqpOYYXcs1YL0Ft9u(AxnZ8DQTVTV2HLZNrdtX0OE2dYPw1kIbFrzJYYJOr4LwTyYvKK01NNfDrvNZg1U05CDPHfHa565eAiq4sn(8pmlzzJVvhA7y6TuPiddJsjjQzrf0i(1NNpljE(KYAYX2XxEDBhhhTqgxn)drzV76ZtNE95K5KjzrF8JRYRACEoOFRLlDTKghU0qpD9D0Ec9ex6l0tCzak(eA0K0OsTKLPKujSVAA6AAm1WcP0e7e3bjohqEk(qs931o0o01m(Jl9X7MtY0RiEKRppXOqwkwpNaPbtx6QKgmFPwAWowe)U0GDSiwsPb7OT8z6r8IA03a3qPSuAVaHZv5A5zmG4AHblxCLVsyKioolfZhPczsuaUka1nkinlNHgLM60bcpen05WvbyuTCG4fZZAHVxrvKoW2hxIMSLd4PrTrYDySxb(fviEOI5z9XNOaplrPcyv4u3ZJh4zowQGrtHV0bVagr9d9XVccualKQrTfOGacgFTd88qtb1wOfpWrFQJs7IFnex64GhcEwTpQc8s0LSzxq7Tv2CRIU0HzuSPpLisSCe9so(2GAdbDNaLn6m(8LG6GBPldrBfJEwoOFbcGljBHYKkfxnZFJ33LO04RTXLCT5q1gjFbYhAsUu)b1e4Dd9WajA(UK9hUsXLbCxKQnpllqDa3VhPnd1pvBEICluf4fyJEGRnU0LBkuT5BXJBU0t8vAlUsPl1kUvrFkPjke1e9F(Ekl0zcXLbEOmPB9d8Xafy48dcXNHNeyzfa2wBCPduUIHMapFq6a4lLfPJeVb4iTObr0hapPvyaeo8cKRHcg8mfXkHboq8uQqpmEYCCApB8B(m7PFa4uGAssE1cSG(GtZMmyJRr9ABBbYHpQxhIMHogQxAa3ceeuVoe9b9Nq(AxqOGgB6AslnDnZ0tJd431SuMdisbISNlOsbS0h9Z49z5ppBftcGObP)guguVEoAqNdc4Rdq9I(VYZneJ2HS8J2gK6qfFTpQF0ou(Uk83GJJU2g8IHOEj5hWEeI61pWd9r0)jtuE83I6nWXgJzODZxJYb1BGxa3NqNqfe4WDCl2GQLwlJC4gFlmIQSGEalIYZwEGGMfXCWFdewjHpulkliJs0BBEigMsiIa4oOXECdP(HFnwdK2sZ2USKBynpSwiTJhQcfRhs7ARygdB5gnZzGwaPmsXkUyLie7eA1GzqtQtyIl0iPPrwM7dVlngO9ewl(gBMwJIKUXdnlUbQDdC4wnAGAs0GzP0IUqBx(g0c8ub8GcOxAp675NGwGViCQyZP(KwvMVnGVjGzwbNnbaWIBbGLNUXJfnyvA((Um)TTwaiXM5zuseQcM71MrgrAPzwFwJSM53uq4JupRKxJvfsveObSQmIIZSNSoqajYLLrWnoomPYHr64X1NOZd8VOEGGpFd)nomGixB(gx5gx(B8etboSihJLrfWJCoSLbB2AMYHXZyZA3uSfDcxMigX41iDs41CzB(wE2SPh2QVM1KOGilzZkG5IDDfGfImPNaxHhTHKNTpznMRNa22nvRST7casHCQO0QDqyORblqOXqRRdR7dQXc4bCU)gYfRh3y9z9u84Hll(ZuwlpdKnskx7xczt7WKvUd6YVIs6FoYym3j4oJITbsA1cmMCdDXqpJLjFzsgdqboxhVyCjoby23G6axgkOoi9hHy0IHDsyfSnWoTyiQmSt)aiI6lxQmWoTDTaBwi3MCzncOaj1VccVltZgLqqFNM8r2NGkSAuv7yWQf4zzqAtxQmajPsd9qxZLgSV4sU)bNhjFPMxbU0I5Ff4I(mJldLGKg5xpD188443bCMeiCYFjt7iiGyiBcrlFj5vDf1I0ovsT8ivXm045PxfnNaotoPuuH(uZqoHVfrxiadJwuKT6YAqNDkDdHUK5TgVklpwGZ(H4iX9s519bPKnzW82ScjJtiKMLswm4oIWH5Z23z95AOJGvMAbfSSUC7GqJhbkiYu6rajs5ZXbG8i9cY1(4jWdSffupy9qLgaknoffO8DndvWDIkuQm2bZLmbpzC8iYvoQ8IIVijVUdwLLLITxZoyrLAjVNYmEWmmvJcKLadTZXxjdUoIIn8VKmIaUL0nG(MhJ2dwa9LRCzcc56Ms4vDuHmGvl(sgcaaasg28eHnxYoIViR5sMe9ernFBxhhrsdxAa3sqzyTL(YL(c4wYCRYxa3IlnGBPlztbkgzuOTaUfx6iGBj)az9(o8LSwFxyO2sSGix6lGBjChOIHUrYh3ad4ws7edc2IV0nua3gk(eAZw3ddnGBjoeMhX2rUUeElFTJGVLUwhya4sx7Y6NzqzeiixbIlzv2xBlyC5RDfqUk0fSfuU01o4BDyM5GqGAGPMKHDbDnFDadf3ZCTbQlFDOG1Lm56aGASlUK1aWe5Y6iDTdTe4U812cEx6A2WVRT5ApbXlXwWMxy9OKknON1LT6b)NfqVaKiJqNTtAZ4naffxJYH1ntATy0USzAGwtq(Qagdpb6lFTb7lzILh2yWVW)KsWVoKA8sWVoeD23a(L4qb7dBoZrZ(XXGFjNIX4cd(fEquc(1H6aAd4xIYc6QVyz2da6eJ5KMwNsWVeAmVsWVESJAc4xcVyf4xFp0EfWV((QkWVbA03zGIKwjmEza)YkWedTSTad4xBFqhy5fQhI(elWqaKXyfd(11LPTIHDxTvj4xc8dEhgoeU22a(LUgTngNfCUnWa(LWRXYoItV(yCGb)6gWTng8RBOnOtSzFpGOYa(1xhioKWOUTTeuTk5gbvlJ72XtmBZaV9eTdmYuQ(ygDlb6ndLIb)s4QD5HjlFZnogWVQaQbxc(L0kjbXr0z7h4Aza)cx0zEnfd)oGfgyWVKQDpbVRJ5MWsWVweBwyj4xlQN4wc(1IeTuLGFj8HU2LGFTSd5Xsg8l5hH4nfhJixwtHa(LUreNyhaiZLoLGFTcydXc4xfIwxj4xLTaJuloaWTrb8lPWqGfZoay5ZKxwnie11LGFjUoM(XGFrJUc8lj5huc(vJyuuc(f3ipXJJOJMP1GJvtgiyUhBocdoSyipIrsyEISdhgKqTiaWbcjKbLWGFjd7ES6cmKtnnhE8b1mDJBOLb8RgEAvc(vtiPfKW(MB8nGFPBcyflCWSixqz2gx2uabFuza)QjUnrwGDbXv(guKA4IPYa(LCBjWnWa(v7bYOb8lFJYa(LVrBa)Y3WItHMBanaLpFdB3JdGPJMh580MBy)vzNG8LwnhhgVqraXJBbHC4rLG14tmp83Ww00CSpybyCdRuXtCcsZmf(ItqAw9Np7eKNLwCmw8iIhsaJQoGSoXcIoMB4N4AUXNLx5B8fjzFZnSKCaFtapybrFsBaZdP441scTmFDa7nGh7(VcTwsjCatDc4wqaBpsXgMdid)2mIBXdc29i26DiPENvfGwqiPIJlTaju3ScuWoc7qSwkgVom9YkjG9AlVqM3bkdjPcX9vo4tKrt5g2rWWa20fBZM4608nsW5yKikoCU4gw9b7HsGL8nHYnmHXIDemGnuOTyyKHCOi0wmUolF5jmYosMJvsWy78y0zC0LidUHmexg6p5bJOMYNVjKzoScm3WQPyelKuTnRlb34ZaS0mMfs3qiFddrKQt(gXtjNqjMdaAJL46JscbSWfZbO0Zsg1vIJGSBiAoiLKHdBtWQNZZsuzGYf6jpSd4s4vUyfHGNb)FHm1ggqVo(QQ4shgktGkpxMvZrB1StX)Sz(4wS6YrXzdZIbC8HvtnkE36Zse)Dyc74jkINDOXZtOhKVmACm9RFi6QCE6zWuWGjDbtl3f8Fp6)M8JAxMx11tXZLK3bJrjTEoplNA49j26bfrlhojErs8KgLR1(HMj3m0m3MHRlDZ8kUEUhhDbMatmfqdEEcMIM5j5fTMaVQzjxMO06ZqfEpQy4jUAC0suqtWeooFUH0wN(158RXfw186zkVM9Am7zxgL9UMtZQQJPzT9eaN)HKL8q(KyzQqXpoE8MtrzNZllnSsvkAGPlsWSLLTAzr13U(96KcYeHH8SEb)XRM2yEE6gMXZUCrA7ufq4kXC2vCf1Ybv99ryA9NgTAEHmJEsBLNT3HxGcAsswSmh404E9z)nkpUZz91qLhwGPMROJSdyssoMl3HPxUiz84YjxE9uFpkJ8IgZNQW6Z(Y1MQm6IMCLWeuaH1XZLGO7xob8B8R2D(Ro8S2BMnypY4PsMGT1IFR9G1eeH2CFgw)MYVgkqfV2BhC6lWKdViLyoMofK1fx0XmJpL4AYx)zBK5hFizsXmgZK5hApqr19YS0PjerMND2bpB143DvkMHAKikYGzqdoAH75szkql6IVbsgj580bVdPFrJz1QworO38vtYRM15Q33386QnF9XuNDcIVrw6633UvXRx)(v5oYo0QRMd7DlzoiljirdYgUCv2fTl)Y3h2GRv(quR5BkVx1lvSweQsxdg6zDzDO3phpSMw8LXJnwlaV0lwYkiEz0I45hF46KcQ(V3tYbvMQs5RwUmnJnoLlzKsngsEKt4(5NJgC60cwJw04IkEwoNK0nvY62ujlhsW)NvqOBMXyQrcAwYfZKPN9WsPJk1Is35j4h3ufnNfnBsFevnTtof0QkZ7NHIXrXouAkFdBhzDFfVYH1(IEEl8ZhwwsCPwSHU6lr(sWSSMEh9qtxx0M0m9JQsBm7saiZJZwIEgnMWAl7nxLAvsIIxMBe2xMC95dsr(iX66FXswNnJe6vPKDtIpDWG05rzxF(HXrxkrOUkJPwNPujxSinlUbFqfV6OnuLl9GPK1T8zXtAiAOAjASHDVMyw60c7A1XcPTHDJneaHylGaolLnGluNbvx88d((hJ)wlkjTL)sj)Lf)x0fp)fN(d4Tmp2v(lD3V8lF1jpEWz3CH(YdE2bhFYP38l(MdE1Ro5fV6MFXJFm1qF6Rp9Shx)L7O4E2lo6hU5IBJsQN37vV47F9oqep(vV(KJXR50416Pv(4F8f)WUu5dE6bp)Gt3fAZbN90F40t((NEZdnqEwyY4SRJToZQ1QzsVuK1c2aYjouc3eRaLXvUmAbmkpSil5IlIZyCLNXr2(qG98W1qY(OjT24sAv2CQKlkwM)D)L)YhIUiD)K0)sPP(xFYJevJ)fyPNAuqBclwiImKHj5FCiOqUK38dwcnTs(4177Sy5464eRPkzvEnK21boWA)QPYzZSz8r6staEY8PKxKEjrMi9i49wM(H4movgjanqLd1PiTnX)9OjtiDa)Dov9Y(7KoHlIZ)7vAE)7zyQlyCQRTOwBiPQynnwcwAreMHn0QkF)pHQCTjGgudQNo)9inflRIUQ(2TTwFA1JBWH1Q62AbE36xY3Qx(X6v39cjQwhPfDPvxFJU5NCpPv99PwEfBMaVsQJgubNjFw0KRA4NFuEEnu2LwzgXsGAf5NIxiIznPDjJr364B5geG5CL(ldiGbfe5z6u7PJ9Jb(gUO5uF2hE7OrasD9TCQBHIRb3qpleYlxhNaLPkAwMwwtNsWyxxMQMwUgX)EM0zQ9DY)SX3T2sgx)(6qhLctmnslnPhgI(SoaHoM6LTkvNGrJcB0dDDcrsbz7GCRXRLvqUs48ctzPO)hsmdPwq899T88ukpBB7M1YyVWiVjnQfMmzR8S80HA)omHkDNGaTnPS0dP8y5iMNngh9T899rQf0OMI06PJdAutkPmuAFllPMQzgwylS5)jKymqKBLAXvOKuJZ1v1QwciNDJB2FCLYG6(oeZutB4crt4ZC9Ccqm8nDf5Fq8tDAZ8ffnX2x3OscecVRLoab5UoaaPoeIQV2fjEq3mriLZQxMT4oQJwGltlBrQX3ZtJ8sQZs1FSvtMihQm9rK6Dqa)BIQqAQCyd0oUE8e7zKfT4)H4F55hQPSODOTFCtAUWYPiw1qpvtijCLeWuxKlriYYDkm6nDsZbshH7IKacdn0JM4x4swJEhY2ApBQ4lfbaL03L6X(UH6wIa2Qj2rnzmvgrgFL2oO2IiHmTNNopzcYAEO6BE80IHZHvNw2)nPmFLoXnIQgs()8k)gR7RZS003nKQbs5kHhFMabHSX9o0fxR(KZN(kh4DB4oEnN3xUA(CS2q2mGP1C4iAbV8mmvIj2e6QyGQ87Puj)DtVCyTptz(e)21WI06TxvNHeGEPkxunrHvghCf9eLblrB0dYIuLr7Q8TyDdb1cZqnx8RwPs1SxPCQhVyt8CoCDuEPHy2Jpo63ZrG9QhHs(lVQoA1AwfRVqIQciUUY75nxfundGyZWJGg7GC61V(8O8RpVmiV1xHsBBf0e0chRb(UYRmebze4CUHaSVOzXnBa3DTV34x2w4a3iU09qdhw5iHAtjdziO3vBuhrwRkUjiSmZqDmC1IKIH0qE88TqU7ybTSE0RkQpsQ(pKgxMKi((xTyVix(Fh3glJnU8ltmIS4MHxgxmlDchPHwVYatAUYHkjvcuL8LsPz67oUHYScHuqjWXx441i9TLG6saEc8Rs)mlLjh4c95jANZbolBmDXqQWvZZRE46lltSOqtAZt69vs(TGIwljueNC5E(wMmN32tYPbm3uiPZ55RhvQVjV)48c3LNCnwy02kOmdJCiDWbMumYb2X9KCmI6g2scZw7AoFCcC4zFd5DdcNDOjj6DS55gdTpmP6YuXI89X1MtJ3aUUcTltKEKRDMKnsRd40y3wsRUapFtU0JKCrBsMEBfNtj2sg(X5meNo9weyet(0Bh4ZtAlN7pecdE(kL(lpbZCEa5Qy6a)FAhEsK5zLpWH7xCgPsfP2KVru)1vORi3ISc5CSNtUEFEATLfrqapxVy(4rgXGj1MZxjngiL8nYrljvHltNrUpk5BKTTdpT1CU6rLjO98yjY1EFjFJCubCkqJ5H3bPLBOKVr0yQJVjFJO2MlNY(C2QfkRzdEMpDzAcAR2Kl1EM8nYXnq4n5(SfxoE8sKWcPYAHr(yewMBS4bV8ESG8l93(8AS0SIFm)Kd(jczhYs3dxl3uRimPmj9(yMZP)YSmxgvV6qakXkSkASmJPnkOoEOr2SoOaJzL4jKIRQq2EsLZvhmzYliNREzdNRA(v6wRxro2WKZTVpjpnRU)Ic6co2bj)QS01QfN6MlBrDJ1v36ablrPTMZOqnVzHYzMNgeFX42bqUmiWG0IjuKBxjfqDp0js1lhdxQfuCfU4dPzZnr)PZGwAmcfush5E1gHCH1clt9qNyS45(zu3rBMd2mzrlFiACxwQAUvRHJgphm(r1alqVJ8rBmZuRdp1JAU6gNoha2g1EUsBBmBltJdd(tw2JxIPJq4JFPSSzV(8ZyxRl4GvFW6E4buR66ZFvSunia2pgKPRp)qZVqSxhr9h6hqyTpHOExF(rPlMMCb)Sh)XyITJGw8kyDNTDl1eEleycuK8vu1snojU0879uISD95NgVcz481N)AYWRy8)GcZ6B96ZhGvp70KXYJ5A00wPVS0Km3roMmlF95pnclVs0P4s6iILm96ZFzAYcu2EnNI)gtu2H3W6BTjcRAyNqWkqHT9WMxFwRQfLJD7dRxBLUf0tlOK)QoA5hzMWrEsLVmk))zvC5Cw1CQ(JNNiIURZrdccgZ0WooW8s04twbjF(UQi56vg(26OzRVqM3c6sLQr4H7aSzmFvl)DmtUBLdps)LQHJJZh)2betiVAUXYhImlBzfunrFIy8lZsszoKxft6jL57Lmdo4zPrtiU7jjLVRe7PspPMt6hlZSIXLte80PjFuU8YOLdtkxM5etvzqGxywVVRFipjB8vKW)QLYLlF)YAvrr5u3DuAMiyz6b)y08QCM40gZE9Rp56ZFKiyqgravRMPKto6fNo4VNS49dVmjF8WpqAOgpBOfeejQy(zXxAAg8TORxjGrsFlNWXJFW0vlyOS7rqZN(TxFoGlFYeZf88KsxhV49NHr)hE9F76ZL)mpDmeYXBDk7kYFvePXn7jfs3V9ZGDi(1zlsB(URV6ruFNyj(W1N)e4ZKqiU(8F(nZi2A41fwTcuZ6x2OIyFSQAx))Qv4M)8ZK7H()c)0ISvOpIk7PKDxrnfPVp6ssjlwh5D81ApBRn(6htg7MnINuX((opfb7BJp8OOLrKXtOsTVp0nuV5399CSy5gCFFNYYLqDUznk8VKzTK3fV9VUdY0G3D10vzx1)3fsWRd34ZEwczDLiopp6IlJ2cT1Y3p0BJV(WvzYkxggFYZxrMa37jxLf9U3rL4vyFo4HDvyi)01BuyhZRh7DPK(N3aJ5Q5ZVn8L0RVn2suW)SsBtEEvVnV9wtYuQduki(qEXGVyZI20cIikWi6)gt)heZbfzkxveZq(sYGXEp46ZFW3Uw0MU09H9wEtsYbCrUt137aZVVmlMuRYvunTaGL)B(MYE(RXQkQ2trhlHiMXFKOP5u7Gdn1hsY5nab63VCzXvCdhmgBu7B(lOaRun8ZvA42NBGqX4PlhFYKFPpsy5FQ3NrhQE)B)9P22MFA888yU2nmaF(Q8knYD2gU7L7EtLHRy5VMi)1y5Vgj)vuh8jKBc7YqZA6H48dHoD)YUY3niU4mceXE1AJ1QjUgO)hmos25jv4I3qRnUrTEchFpMWEvCruIyr6nV4ndF5REXF7XhD2WtoM(Pw)2Zp4Ktr0H6qUUSIEA8h3lJyvVaYzpSBwW9q2iUx2dLk4bSUIh8WBAGN)YS9ZUXxS8pvndUVrF53I))f8)Fu)F(2zt6UWxTGSG9o0L6Vy7IpyhzoqxFrkPjit4ZAs)e5)hCtKLSyYzCAe6b)JXtN(e(FEWDUfvwyttZipG2JlZ)nl9hl)pOaLAO)7xFU21fKQAxpQ8628WBwDR5R6dSut(qgIFVpDEf0lGu7Xscz((4NTtf9LrI27tY53)G1F)ZJ(OueVUu19EpqcHWdE4d31H3sPWiaFIlPtYFtY8jhgvump(LXfvnqMdqEHQhs(fUmAbGXAERBuiPjTOQGUbArlAsbbsCnE2JgsfWFlL4lIMV)3hx8sO1k6YdEFmcJTuYBPmLXouq7vRCV(FuIu(HgIdvYVkMSxqu(JtiFvgVAEXvSh5R)UVD93GY8)d5FrrRxoF)jL)WT1uX6wk1woIqkJOC1UTyQ)pvbmwSN594oFP82)w()w()iJ9ocIAqRl3QyLCYvxuD1OhsxUNze))46ZTkjLZxJc5b)N)NpWqTMg1O3xzEbHmyD4FEg5sn8S6XKVLXDy75GvfWj5kF5E0ZIwDXmX7I3rOaElh9J(9W1zh8Wvh(vIhUhvohwF6o5kb3czEsXD372YFAFXpz0QEzAotI3R6t7)9LyTTx9kba5FObMsn)WFv8LPV)tXp8BUMz25YQwOoY7(5N8ivjXaq9(X86b4UwJW9GZMLqUQH)J3URewnc(Fzuq)MAX18r)hLEOHg330rthpvI(5FTSS2FYO9nlJG93iJ07Y8CPvx6D5A9VwhhB5V2(TRW3269x)7T)IKYMPPi3NB3TFlz2jB8Ec3Wa5bBfEXTLHV(4IWdxUjKzAftHM0vRxOpjuHlnS8UlL3exzyHlOo)2rGQLf3HfePE)oed692zqhDWmWOgmSBWvNLc9bCDMiG(TLdiexXk0vhfx59uxTSnaXMuRIknZ1TvXYVK(GV7O5XrzhmFUe77TbK4LjFmE(RlsMVp53e)67HsGA3p4Sx8YN94NCgmzwXUHF)WxC2zV45LpY6BzBKBV9qL9t5q3UxWo8QVbrwEhEtACORUgJhP7rfZIRQ7HLzjtMSvFQqL2hptJXKBeG(nRigmWKIQECk080Bc3AtfHeytQJAM)KpmlPHCcEbO5AlL2AFTLc5tJlRDPTnoUA)(nXUTJ1KWd)kKbyp4BR0b2Xt6R(2oO3BjH)M48(kMY3HMLBM23RSgO7ppcrPgBTQyhhcBEPlEaPifZwenu8EE7rc455l)BBOWDdBYM2(rZWCCcKJyheQB5ouh5XJPQgI67TrrH(iuGGoxf4MhElWLHE7d3w8W2wB2eH4BTZknWKTlEQyVfpvCF7aKlQdS(ONwpACGsRJ8D1Ht2fpyC(AXdgjBm)mplDKBS7cWz6YoI3z5pzyjf307b39wdNAxbtLNGhg)9kU0)URpxh(iRGhHDNLnWQAwwOuDYJKX5mR838)2YA6OPt)MVfxFKx4HEh)nDz1TQNC6YXcHFBtOYbMQOJzhshQlNQjtdXmbrViBKSbNDq(yIwGLvYUaQKRUSOh9drzyIwokbZpbkMhpEwk6L)8bV6GF4x6CIQ8DTntu3AQdkVt(yYIo)GaBTtxFWPrVROVAWURp4GIK31j1Xw725hCi2yOZlIswaLqVjEeYJPDL(SMOC2SS4OjGQC0loRBIc2aW6Qf8tXlNL0xZ2X3w31hDeSpuyAW0iAw3vPkmORV(vrVpErkMTWbJPH3r7A)LrSEC0hwWlZFyR6Np(G3CA39x7GWoB6NcK2KfJ5WTwKDiDtXPsqP96KnQKrM6))iPjk9Jzjr9va6U5dFh5TcCAH7rVw6pqmSVIPtENJXwDE(ym)6GwCY7iDVrV7wrmhG92Y3JYKQPb)y3usS9k1v9)9ZiTuZjoWFmLSmqUk094GTDNmbpjn7IYTiWNt0ZE4HWgBwxFoNIa8CzdnL9md4D3Z)(SKlrWnksjEGF(7p8x6M1x735O)zMT7BI5pkJuc3LGJDODqND6NVcPa4eKnwfJNnFhNSv(lXe3Ae2tYwebzNe29(F(5Nm4SbD1juyVyVZoXXzRY5Ccl79XiF)68J90HHD2jOMY7JXumCwFJBkpFLQZAEWssv3LrFGdS4fZWoO)osbgKeFHzVYKWasOiG6UbN84V)XD231H2(wDk9LLUOGtWU3q6HYNfTS7UavaEDY6DyY8l406dmEeQdIcERe6onECwAbYCV3WOX)5tFt3JEE2w9O9nBj8IF7dF2KEJoB(zjykAWwVpNbjXD(1UADN19)305eghq7pKkGl7LbW32s5TTgpH2aRGH6tY2)C7Xf42G6Q3qgv9(YmuS25GtYjiqVHePsxv80Y1O5MV0tmPRRK9OB((7qWOyDqinqnbPdR3NorIT95MeK2n)OTKoeDlvDNAi8mOZF1no9GMact1tfC8nh5mf1o4m7n7r2o5gwrZKWU8yJPkjSpSkjShvMe2hwMe2h2ijSxVfLO6CbQRkZNtD1BVE57288M5J9CscvUVJuBL4VTehLxMUi7ZxN46)3K6(65ME7nhLos12n3aW4SXM4osMMelRwoi(k7RmY3xTwYhwT7CihCv1wo2JKnB53JDhS3hjl7UQSk(fiTKomTOi9YtwG8LDaOFvpgb1Ssaeh(mdSQ)uEjrfpzaVdemqjoaY8Fpnnl5xX(A881pS67EEQ4uw9F7f8IQA5tB(RpdKTSUkIKfhGb1Jlx48u72nWjiCFBvO2Xt1UxqT1PTA9v9T8nFWbetB7kSJMbE1J5SKp)flkjunlTNh9X1nsS9MwRppE88vtINW9KNJ9AOMfo1KplDzxJl8WwppR(y23VkkBss0cPhINCeIpbRp4KfRZA9bYkB)YLscZx9GZshqWDJxSjb6flMZjZuEZ2S89hgtc)tA0ZTBxapglFdIQUkFtsAzZhlsX0fTgEEP50nsgM49oPbDv4jTBBVkMWmNno(flKwzFSdZV6m5myQXZzwXDGKF6lpQtAYRIObI5LZmvlEewGyaVNanaB6z9qReIHQdIbIJ3XXKjYbXJtfo691BkE9J0xVVVSkOD89W29mZvuj3(S084dGENNWlce0kREgZ6GvabhtLUKgm6dy(5ULxr7k0sz7InAZMS6R)QQA8hjFEPQBToeJEwwdOSyptk6yBkswyo7WESikmJc0QnQiZsjsmJ(g2caVKrnCp5nwgctYwLmPClrRCF8A8SS1R3fsVuyWJSEI9JDvhAzwhiMvbsZx5WJ1AS4e3YR8y1bwEh)4T(kE(Uk1XiQCKoBErDx(cH(wpYY6qNdFsi1qECUCif08ZpY64JTuhInpQvKigP(yJM5JFYbyRyFWrZs2OOpwPoABTUNeg67ZDGAFS5rUp2XdRk)T916hRpmSV2(HprfWlDIxTAr86VfhAfuJl4iBSHiVTbGNCWHhg6IvvY4OfXhXhyzB0gC8EYtCpyDBOynVXW1lawUdYrhTgHKVVzHBcGA5qfFR085lR3ynr51aHPoxy1rNOUAFHdRFLbT2RbhmoEbFQ7X8RYEDkd3Ao29Ei9aL2SBTozC6AzyxEiZn0SlDwUBNA2dZwopUCttQO9QcC1YLMkU9MVYoT6H6BHqlRhPW6a6(Fq2J1CpLtwrpL7KOm2mOiHXTn(QHJINf9(eSyXC6yvs15X(xxBSMRFfE8yybnKwTzfvttfuaHt9XHXCkjYQpwGDxkUgjiBYssV(QCSQKlBv38(6j5ig2DdoSBm4Dx68s)B9kVS9AYSRATXwMth7sqCcP0yxXQtsptu4fnQrBCB2KTE8NAwpLBUo56UUW287617)OT8AXgmfyRomDC1EZPchDdKC3Y5RUizrE5saROdm)76IQD9wnqfBRFhfx52TrqlNpysEJ96417xr8SHT1TLcExPX8GByBP4uN1fMSDwykLYpulB)mR)a31BcSCXv((MBSlFsJ9(I2CZD4kwZnLSltwqDEEfb2)UJw71MB1MSCE8L8UxL)(69Tk3gdRTXjCwJfuyzBRAVprVEdGB9wQH7gBhId5TEdSaXXHULt5gx3GYJYtZMFR8pyVGXLgMznfe3p)qLPhHJfspQcIgLNoFfPmmNKn(jENFa99FIPrtZIjDHelnyy3xXhNQEQaACxER)lzxxeLFIu3wMIh77sbASdBu105DK4bSl4KS(7Ww2wT9f62nL)lzl1C9Ip(sSuDwXR4Y99n9bTn2g7jNnsyaFdRT7MYBHFBNUi6yrd4)QJThyZJxTeDY9vYNQTdCuH1)0FYSVdTUN472vlQrFPfnrEPQk8Nk31Cxmnv2GnKzHwMK4gB8pdmN5VggLKjMJJnhreGgSX2yujxsJEeXrxB4SNMut63M9ZwKqS7eHYm0YcN)t17ZnOyB(M177nBADnuQAXuBg68WPxhVlM1KPEunM69DXBg447O04e8Obp(xu26UyKbrFBCcR3BYmCckxS5N47h6wJLWWgWSeEyR5)SUOP6UOB1Oo4afOgDu3lXsT7KN2dKQ(ioyhbBds5OTqBk3D46qcHjbmXGpmW6ujQs30D3Ttz23JzqccDTcR4M)Ppxmu1PykJQqTghxD9q8C23uDwKRsCL1MLSuiRPoptrdHfNDtfHZnQIOTw2(vr0N(4FAt9X9Zgi7eDDWeid9mxGl22w2ntPBLnWUnzUML0s2Gh9LKpWDFrRBGvio8I3r(GD04qlk1wzduB10G0vCdD8ccApUBWVi9GTmU3uRy9bEz0Mh4jwaCAICh1gEVRmu722SwFdK69V1kd5TwYUGli0Gk4cU6EGlOf(uKWgbFwWleUZ4fcBZu0OT1j2V244BqNB)WTGj2Szq67PdTdr4S6g(GLbIQ223YJAX15j(uapmARCe3BWhSX(ezd4d8(6jez0b2Uo3rrg36es19HitBjgDV(mCRKx4TN3oXwZ9EHsqdR6UHsDdCBBhFQvd8Po7iav1NfUQBpKuEBhUgZe2G(cQJf1q2esOpo60pRtSh7Mkg)DqhZwvR0gwXDujk3rm6q9ciejDHMqBaufey5hQUrWe2cBKJ2GM)3xykD3vuK6M(Q)7luKnq4EhqrAgTnJ8bw2wDQqWUfu67SZRBt5WA)Z(S6)6O(Dr7(0eeo(hRtNzARrRHljrCpBc6rFrSbD4winL7H6DQUHPagNx8)Q3CCVIFCNxe(ccXbTAxechJNjytW3PLXyBNAwQD29OH6QmUP46O12E9q7(mf9ZG6H)8(tKZL3d2xlYju0suFUHb)RhBM((c1NBOXfjhpsJF3eIBGoOA6XO6FzdFMqceLpALF3tcHDZwME7M1unDKY163yCUEBBoeAIl19Edy6wJpE7qIRCVBdwYiKOIuHdoJod25TZdf1Vf(K0V(pR79bRFlhR6tjJm6y8S0luas(NbK8RMasUlZANxL1wplR(mY8vGK6T3(lOhgAdtN(tzJ)GkBOiZzQEaG1KQ2GGBG5RiNaS)ec)MYtyciYMxvV9lL32T6uFYbQZZoOb(FHsluDpT2zxI1P7NPyB8LDM5v3NHw3TrCnecRqKTcq(o8h0qRB69cLW1vjqv3GsC3tsbR99UR0ID3llNBNxw3GIpdDWeGJaNEeb)6IMyoS06ICiKGYPU9pceJ(NgBMaijXIk029o6x3HnMxHVGZ00U7bU19x2Q5VDKnBKvA3TO1kJpgHyFFRG)qZ3AibM0VcNfJFPY3GpH8t8gZ3GwyZ(8mFpKhcUw8PxMgNQyvme6VeOrBppB3satTMCvbrQ2QbIud7IbSKLFG19)SV)LvlO6(y(2dvnXvXekMOfqUP1xu8VnP7O7wzrV)HE2oN1VpWHEdqVesLjCCok3EtI6VOgJUhtmA1VJ836ECsTWjHBJSpHhlldZMJK9FFDNTBU)z2UDtSiEnJ2OtzcrAB5izg8Fe9ix68gxm88u3Pz98ZWIgy3bT67E)qi4EVj8JEbUbDh(5BqUQ9sgqunhq6LDcc7m8ZoIEaFhsOYcQbQtVmam9baqVGpHKmEJv4wFj3JXuIdjLR3w4O3krPTkrN1zeNLFBLWonYCS26iB9P37lbRw1)DkXan8lRHS6CFdzv9V8jik2bSAdyTkhB1oF1hr0Tm79s)3e6aCW(3nTiSPKqJz(OHFzB13N(TUh40AjZ95ndN(0zQ8veDRXkGtOEIxqEwo9m7QU3Qf9r)mvU3D9XQ7NCzAl6KK(F5c(iWYPhiWo36829(AAfv3KI4BLiWTr)P2EFxYvjFpFTVUkRRfHawsIWCt(9uLdV)MUQNvIxbU(wKS4TwgPrsukAETd8BTopa3GKzxK8spHx5won7TwR2)oln2T3h7O3(w6a7GGn8qE7zO7necbHekYzobkB3pVM(9iwuOHw7Pc90H)wh5QUXCD7dEfhS1kosHUj0qFBpN(MMJ75u94UZZPUnlzVEwXeayXoOUvDB02E7dWK(UnhD8OKKQSooA3)O68S05nGyT9d03bH)Bi4DhUdy3E0xGmtrDphCMWgaIzAPzLpqAl(x)8z1(R3z(ugHeLbaD29aEIFVo3denY2YkWl0HeS8VpNjcHYjEUy5O7o2tE)ooBhT6LQ5FlSjUJPYT3T0OO7wfeCBli4ENmkQdCDkxa1aCMFFscFffm1TfumHeugwdh7G)WTLd02F17EoaCVaHDNNyU9Debm7a19IlOwow8IYTwCAa7GH1WX1)Rad86D3a)926v5(uV2wmWBgIkZTPGEwkQ3eCF1x2CBk4(lbfzsGmLze79x9E)STSEJ7)mPWxFhxYKFnm5HCN34hyyWN((cHEFFvDvW3u80U78iMWNfOvQap1w927pO7NyMOO6PAoNnLW11U(woUF1Z5VLCuwiagCV(b2)XDNkW09nteSV2VNzG63I8g9l((eY9(kxYjSzkpY03s)l89S)A0)cvJeYO1YT3Dl73J3gwfz6W8ST9DdCD(YU9OUVNBGT22YjK8M2(EW5dF3MAUn8kIUBXL9)CDM(106mD3IqdohfdcUBXztVltW5Ns0i39TJRr9acB3g5S)TBFvRxBMMbcJ8iPu36wN(l3kJMQFNzM8tCjv0bu1wlOcdr1SG6CRNL77(SuDdBO89oF12H7tFKNTByaPym4l9wxwlT074wkFiPnkufquwx(K9(Fr3s532Ym0TmH5lmNsl5PtlsWrrr04c(KqGpCl4hX)C2QLfdJKZ2VYhmR8KxmhNjglsPxOaNJiO9xD8VyoUxQDOjCO5u8GFC6I5xHRYkgojHBG4Rr5TKpPDKZHJOfVByboMLlkp(kyoWSeQrHdzdCaqLpZC(OV(NLtycIYuDcD8iv9tZD5HY5bVCI0ZhOI40om(YRU(8fRpdZnNsJfP4nsYR(HpWh5Ktt(yubFghEv6Q)xBE8P35r7HCabzoAQgWhn7noeaj(xxVapnSZY5WJ5mXWC2BihmhHRpaRod8iNQkpz3RDaSFKuf)q8v1oNTKFK5awFs2JtmPvzZbxu5zFrFhg8hmkHK0UA4tqFpEYWb401D4RWXww5ze6K47Yz(Uma2(WeLp1lFn(0C8)3tkLRpF)9V(8Vronq4dCDHT5BEyVNnM70zIzT2W(uVFAYf73KWvRLfpppU3Q5vXK2X8z9vvpCZtyt6x68p0aC8Llh(If48DtOTxFY1N8jtFpb)5rpkzroFQIpofNoVZIZIlFM83sl7eQviMEiVXuwo2imRhrstfzRWbs597yEpTQQJP2kQ16JD0JtkIMKM9Od(1SO5GTvKUnmPxF(ORWz(Dsb4NjvVrZt(vrX)geZprQegR(t5GplYbVybF6v(LIv70LJLt7s5iDtkUM6E7GDtOdhLMjV3ayQ7KYZboMB5ZldPXQhBMPET(7bH3V460QDIg)YSK03EkoCanQB)sYRvaGa7g(LBhOdcLv88sqhdO386ZXrGhvnKgMfckhULbWBeBCKb7tw8LjuRdWCU(8OrK7c0dtZZXnaoqsmUK(X5jtPVFzCgoNb3VeCIBPaI0hU(CLbvI0SuvD47sFA0CCW2z6taVRuNEL1j)C0YWXfhxRO6SxxDNuEcRzq3T)NmqUEoQrBPTO8On96ZFwYIwW1Qo13kHRXh0AB2G5ZgWk6SUVI2CWQ(eaZ3Gf)20fnNtKv0499j5KNh9rUZ0S9AQPNNyMAeZj(2VHJSERRUNKmF(VXdQsvwFOCk9lvJI(TBC9makp8(Eyt3AudnTgdyT9lqHyzFJog0zBW4ayfJXNh3d2Uo1YpFFPQFUOQRb8JAMJ2aN99k2TQVyFHYinMEHP19R)DOXT3dV5xxoSNVAJ3FtuwTq2Rr04)SboOJHgyX4LI9IRp)VE95))WG6KSOliyN8HC5MD2FwRCcCS(f591U)ZVfFt8IlsjyWKvQXzrFyEC2MF46F5F2vBA9vR7VvTZJqyimSqDcGD7JCCBT9Jomk77KY9m5CbDVfjZbk(uz47B25I)7i88SsMYcsrfd)F3QIyqYVkFAxT0VpU4P8rC5Ep8HBJ2Ed8KF2OeL88FkKIALXDGwicw7c3u)kKA3cNNY2XnW04VMPGDja9Zv)4qYBLto(x2S4yDr1lSE1a1QbG24ZAjRUU6EktzQE2FHO2ww9xMtb2LKVTcPiqFs)3YOeIA0Q1njT)YP8plR1OwURnInup3O79Fuvs3ifQZcCrArFsA36cCdLM7SYO(lPj3IQFNFZ(0Sq(sT3TO1zy54JV3EvxqIGVbVWTPG7xZhFaRV33mpEkhhLoQqOnQ8XCl7F3WFq3B9WphutdzWOce6JyIHHS8V3fx7JQX1ENPk1ucku4ATG7NI9gO2YWci4zqhlEfRpBu5(5jGxuXFuczLaU97EzuwUeeR896iiznDB7H3lCMma9Twz8B8BcTP2q4TN4u5i0dVFyI6LWu5wZNfAswmHQyhuEVvvS4HmM1jIXW)2TVDTfVki3krb3dp1j5qF8I9E4oBh6w6mYD15KDIc24hRCNPjfRJGhxorbhetEgaMWhDg5TWSO8Is)XjM4XKc2OsSwBpIygHV4YPcKFl0rH(zoQdMjwKydZP)IJUevByOH(6lxMMvebn28KFU)MZlr)Ha(2hO1pBZkX9P73)2hY1Bx7Rw8)raueFq5q2GDTPqFE1F6g664GGdnqf4P1(CSpv0lQT4axfsisDBp)b2Lr9Hdilzc)PgUTNxgB2F(L)YDzQeUp5H(nFIe(Zyf8NXk4pJvWFgRG)mwb)zSc(SfRG))S316UTTos43L8Nngn216IVvG8dNM0Mu0KUOj9SBr3IeFroX7r2YqsUT(CWPVzl2hP9vy5m8IOOOU4yz70w9JI6irjoICi5WV5BgwHvqfwbvyfuHvqfwbvyf8gD8s6xeFa)uIjuR12Y5u5P0PkvEKpzBqLP40ZIuKvbiGublCgnfwExezam8LqUNJqprXwcHNIZ3Lu4ELzmb2uHmuBIaFJ33V7ENquKDNcYJ3ebJ5b(JgakkboVGyVnYguUWgSocR92Uh1kwDAPqHPlMpIyqDaq4TKid(aUppk)pPXlWxynnXP3dhGNtGh6C2dDP3yjU(mCJ46JfJPpTzFlG6bPYOvLeBFKzlfpuisgbbRvRSNNqJyi)d3M)HNEDGIjr54k1avqMZuBMOLkPUA2OvxBldRoMTS710KgXfRBewim(xi4D32AQDIPPcr2Zv9IQtyEBkCZd89XFoKyC(3V7daE0VeNVa1)2Wo5ts0jNsfW7HH7muQzYOPKo4gjwz0bt7EZPNnfzMn4jsG3(lQeFoidCsiJsADLtb0g6Zxj5fjM7nX9LLeCkydPfm6p(FVeA1ORcrNRhM2h)7XEHslA1O06nBBifIu50PIFoYDNeHkQRuA1eSG)ZVF37MmjWjmXC2Q3UKMP2MZjZMmX7B8kaNKUUbonTrlf58JzlNFS0LZ2QY5kTYzB5vkP24HAcbuVvqbVdVc5LCeBZhY6oGDcsLIPZUwA7tbN6XvBenqDeJYPv0BrluGvQzEsrA0U2GKRRL1JLmSW78wYCE3kC83TdxrTtBX873wuJDj(wznKCOotAMnhXMfedTfaUqQ9Sa4sgrneDPi4DHjrva3Tw9EQqYi(f8n24KP3JvVRZlEPRZa)(UUOueiVVf1sklQHElYboUSlXA(9GGNzN63eUzpnGnKW8MnlkTeY4vPgBw6DYq96t8iFqCtyPsk1V2CDgq)JygF7MN)hGTTYH4f2pCZd(EHHUoFGv(JjTfjzw82Ir18MhsNkz6oXAvhQVVx0onwQSz7PXyJju3aTQIyInK)MIefCY4bKTWemBGR71q0FhTQm8PRVoHnxt3IcR7vkCMdaCHFJcMXI7Z3iYXcbF8Wgl89MmLieyjULPiJbk98fJAiy5)iVzdHaa6tMsoss3aTR5Edd87r8AoRMWtDMVcB2O7Gi24GjdCdu5YFSOvLSQ0UGt71RtwpeIh8anDIIoFazC6sNylTMPjITznnVkWW((ut61)ccefi5dJxhr8mTNEquj0(rocDOKyYdyqaDUJaCdhsWrq0DUNO4JbxwW0XoA2YC2d9I75W43bgbXatM6IRlG1A1nfqTcSO3jUeTNlr0Oo8G(NE6b59qnI84Kr78k7drJSSYTWdeDon6LxzdP(Tgl9N(uowHGDvwF(ZfyzyQUH61sPjhlh2MZGCm95kxpbwy20xyXZ2T4NayZK(VcYiqyAszGYk00PX1Z0wGeF7I7D(YHAW2nUEN(Nu2odnvky2Y1VS)Bp7agReGe5ylodfG)1Ozx2)vQ1LPM6cY0SS)RMUg(mxTcGYeSSkNIL1IA0zDqJsgrAL9byrH8edJGakR0LSxh7BUM(ehR0ijFV8IdESspLL3yYOi95zKMmkZR4zqh(Iys)FZO(CA7o8hSfdFnZY3Gy2qullwkPSBaQui32f874Npcf)DbadhbQm6bg9o3bykfPb)5(oUEdgNzRBJ35p9(PZh4kAasFvk5MPI9s5n8z(offQqVsrNqMVZOsPljfeXV0ta7Gg))(V)hp1CrXhcGwre6EY0A4YNGbtZWMDSlyMhzIeNVTW1JQ1SC2m(mpH(dMhq6SMr3CH8ASdccCc(XLaPvBsTAtQ71nPUnCWzUkWQKCkD9hLsQr)IQs0n7cXyGiChzcj(97E26qArnVyCj8dnYUqYeaX4iDKSSy78wPsYRqj2f5RChiTn8t88h74RSKpSEBTc(4JxP8WhCa3YP1Fh9mBK(PAh9O6vwBbU4JzK3dLUAPvMVjzKFKBoGg9cGGKPEJ44Esq)Dza5R)MRkY3VSulrfUHKj18MjO7gBMQexoljQ(AksjuXgTmGuzmGSshgdSaFk0li0F687LwWII5(P1(CgJwbYzl56Tx55tJAc(CZ6x8s29IhPiOW)shWf(JWLYT0YM8bPlgDX4RX2fSfutJesm7A641K21uLvSFnJy7NSc4ZJ)0Wv5TXM4(VUw(KlRaiZf6V0Pw(0vtXcaYFMv62YmU7Ajg5Cru4ub(ZH1yKtqZGjXflZET7Gov02UDhdmiEUYULHvhAgwK8ZMTXO4HuGUnnSahHH)SvhWLsxzzAA3Tn4R)RSSn60Sh4cEYvHZUt0zzxzB2Z2S7EjgDuO9b4W5iVBDd1)w7QG4PcC0kWrRahTcC0kWrRahTcC0FTahTIcavuayNtbGDBinuH4xfIFvi(vH4xfIFvi(vH43JbXpEOD9tDK8ne2xHuu8jL8OOOcfeoWpCFe8ENnhJhViY6ZPIpocIo2vkYoUMwebp9Xux0nKPIUhEld9(gJA)pa7u6aYDpOXtQG8ZowDAVr5P84nKOjdjJQg8Yj)qLIxIZbacD9GjhMYbqCc8uF)o8u9yCAQlbAYF40NJVzVsmhI3Lhhin4DBOmgvtYP(DPq37LkHgeR9y3Ku2PTgXYk7WLEQePEBI6gUF9KQBxtpd1uv3KJ1U)HELPJWR5783yXEmy4QaojX4DHbzhXJ0vb8(a(jH(EUKF9GKknWDdY7qJYkdCPTGYkpH3JhGCyBrmmqIRSkhwF4yrYQZXhnIpCQYVaTMslMRAPgZvXrfIj(gQbhik8tgiIkpwF3mIX1P36lWWP8ISTMmXVBmXxQIKeFR9tivAVpcPY4cITA89LxevcJl99wkcCoXqXn)aORrl80LRBxt80MJhC0kx0s3fFurFz7u(QzUps5RgCJ2qYSmGfgtMYseyR8w6l1g0yxf3M81bnZoUn7KYxiFVTL3Ny5hYNwflKp7UvpFxIpyPlwJ9211OzZDEnASZRrZDEnATZRXsA(ErIci9t4QEXR(Ey1lnlpMKe0K1w2BPHbZ2QPHHhTCPDPfXzxkUMHKD7BA(yiEqAdhVUByqAh8W05elzV9EFhN5BVa0E3C4dToEmJ1WMU)YYaLqXtCYGr)(9O9j0DcNUBQevmwMy(zwJpj1w7PgYNwMB1dOujhUliTbYm9aUp3hi28(qNhMgLLdeJSuXxDiPD71rTB3iXfKK0kj6ligprE55xC2VD2LND1nV699V8S)1hUOE)rpm15loZCMhwVVRJFy9x7691p)zgmYsXuWZSBkDrUVGEMzteQzrVkG08FcxZUzZN3YWK7o(onFUzR2)LuZK(VO8iuu6p1P(d(6BHJ30dp4D)2zV)T9)iilDk0ZkccdiejC8LrrNDLc9AEezYqbqd1YVgs3XwrQCOAKeeIpamSb09EWZDCCyJKkvaDtxo5pGnoDFsCZ8O6J(VSJ0bNmF4yw51V06ksjlXsuRoQuRO0s2EXaWUi9yfPlHntaCI5FX8KJ81sxjLoiqHU)B)7N3NtlQ0uj5yG8CXa4AAfK3TmSeKeZIkjgPgVsvSCQiSC6XWUjMQ56XUjQskoTSG2rhMFxCT4VbI21M8kQOW12HcxrXZ6no(JM6nuaTiXOa6jTa0ErSUEvSdZe2jCYIfURqNCgqS8WhMjXzYeNrHXpLHfw33G5(OGm9P0KPoUJ)rnox36N0jBcVhIm7V1(H1dQBziDIX80GvprBCbK0834YwMWdBi)gQx)uVzKzkWduAqPHi1J9(6mp43NS0hZ8SutJcuyfrc2Dq04ao)3Y2YStQ0HaFu44XNMgupKQXxJ(Srx)YbFJFRCZ(0ksJ00OhdXhSDxmEOlwgSUm7A(tdE(Ohwl)VsPR4XLlR3GaM6Akchq3Qd4eWcfQuKgrtwOs110UlluPSWtbjWRawDmT7HHkLLPTzpwOs1ZORngPu229SB16NZZQOkabQaeOcqGkabQaeOcqGkabQae4NqabQ8n1g4BQDBSivHfqfwavyb8lmwaCYSxGqPq94SrIrkf9WSrILg71JYgt1JYMGuoBKO7oI(j5n3PXE5uKPGN1iw7bMPxsKKctMkj5cl)Ys1ABLWViTtUMeHcjPCApcS45wLsLpvuPcfFbFMzPsgLi5GL)zWCvss2AYUlMezknUUBW5Qjt0IYtnYdr6KqgrOEsvgX7w6uM1Wuwiz1bkK2kbJbtmOJ1tvk5tfSvfZyZ3yVrbWXMrz9MpzofGm(P5uaY8hKtbiR99PaubPe(wp89m6QJx4Lue8L8aEtzSrkNaCmzPJAOn8u9G1to4eIDIewUh9AgmRI6z3SLDjD26fJZVTj6BBmNFPhXM3oy4u3PHR2MS(9hSCFT4bd9wqTDtweOPGG9sAT2mvC2tnXr7VKZTeEt)GaEOYnG)a3JH98eFer5WILtP)rm9AZW0NSqizd7aGNhdgAhODRZ1LQPBFVZSbO)JbkxttOmgnAPnFNjJafp92DX8jEncGQ8YLUHtx4o1HMidesYU7CK6)ZEx79242iX)UK7pQ924SsuVSkqlq3xhYI2Kfx8I9aAx04nwor35yLAl3T9oC5Z(XziPejf1R4hztlrWInrIIVNHKZ8J)MhvsKQQKLLgP(cpssfm2gjP(lczP2kTvAPl1AOl1k61u78lF622XlVJKo1Pl(aPo86M2I7iPPSqACOU8Ow5UImPC8XKyvdFyDdwV49tMC(zx8ZyQg9QSpVC07VZYhS)LGpyBmWePbK73adr0HHFDdmbap0tAsrqjA6QeM9xLW2nvGx((QpNJc8RPBfCndo4FkBn6ibiRVLUbr(tE6IzB7j1SNuZEsT(CsT9kCg6iHQQ6)3IT4w7ONbXgT8UMbglfJAPy0NmumAhrYaWFJh)faLzEqi8YhobxQOAqJJlRSnSEE3mywI((l)EMPO72TZiW1bc4mWTZiG4s4bYg)Wq3awGSXZlkmKfiB8iUqKUHfiBccD4xpdhI7ymq2477sgZcKn((rU(IazJ34XqIDDXpCSFe65m4IDeooc9ofTWdJcCrpabpp2lgDlZzEEH0)cDlceYCccCq3pq)DhIZyKeHGGMZyGjPCPPJef6eogjENZ8j0u58fsa0XgXCSgbYAeiRrGSgbYAeONogbY67mRVZ(tFiyXANaRDcS2jWANGNU2jqGI8DEiWqfFJNkmTolmnqNcJHqgALE6SzQHaI0z844qjWERpooS)cGgtOhh86eMxMwKUM7hkS6a8vpD6Y3C)Lphh(fxYJ1hKyOrxXRAGszgODll4hbf1jxLF2zVKDuerA2X3AabqZXd09H08B4ftjbTh0VARq34bO6YkQkv4Wh8mp68RsGSwar1iTwOm8uX6HrOPgfUdqMkpQUQIh17p9(t36DoDk8tn2hdFh7)zAQo9GWsTsH5nn61aYY7ME1)Eq1DtGDwRZNMVzDrxgdsYdvC947s)9KfVppDbS(gSrGbYf4XM2OIXSgTCGbUrrZpN1cJm)ydWi7rzeTeEalxo9MrtUjb2O3FNQVf05(6fj)wYsDCSlBOoPlu3S05ZPf0Y80sszauvpFv2TWQizqyfXaya0B37GPOp6ck73qm5Or4IHvhh03lEPIPATTBrk6DmBREj1xLKpnDXASL95m67vOeNIsCyhuaWGBGYt1aHqDnQILXuekvZDUCRE2xko3q(lTUt9I99ZXpLlS0rN(45cKVfH53fW)lOlyCCgpMrjxecC3iyuYLxKNd60hsqKhqFxrGBwi(ecZPpKyFsuTEzz3kKwXplsRGoHTgQzVS8ijmBxWR3l49yf(DT6gFIOBuCDK7WHDptJpEQErGVnBZs(PcVi5AGB7wVZUZJr6r6N18sGvQ8dDeSvh31yeZigVDRbUe)a0554TPlgdIgH(Xun3(Te37A7Okp8Z9AocFe74gh6sx9XDSdlcF4iIwuS355hr8ayiutfEYkQSHAf(6fGUcthTY3BRpB1SKpTz(8dXL9JzPlqs6k6UOxMSGQmPwJATkjFZQLneVuvY1LWv9T0oyj)UaiMTL)TL7Ia)lZGEOwYkefudFh37KR1(W5jlkbA4erAA1(8Qim976zlwyB6YKYC0UJd82NBwtMIyUbkAPYteT4FQOU9YnRGteXBMFSwAkS1V8eW)SaX7CxvB1xXuOATsZV4R16oAidvRlQ5P(7aiM2L(k1r3kLaTi(BIoLwzRNAB5XJn0QwSoP5c)72nLDCC)yUh95QzRUf2aEYmJJLMqCDDIGxKtL4V6goYHRruSsA1ZS7yijNMdv2ddDFbVi5)KMSIfVYRu1feF0jm)IB2bv6vaP4FUat6LStwXJ41QNj11Wt1h47z1zyN0USex0y1M76GwejepDB6Yb02foXN2tEZjRb(RFGXXVNXtYDPijHQXXMn1pGL3arbl7xHfG9AAty7lXkUKdrQBNUMrWpshHhalrIZqmlSWDksllQv78iKektzRaDCxw75saY91RdsvAVlR3(tPFSfcuJNzDMP0YBHFCFWeA2wpCOpTSnX7DJsttDMTxfQvuQt0om(hgaaKoCGumgnX3)GCNM73Ujvt97Ywv48C(JKoQ7Z7XM3uZxjikiLTfhXTj6EuBc43w)RaH9)7)R5TVVTtD760tPwkJvkpNHYbo234QhgSmDbSglhceWYSSNemShhj5HQDSTJkaTbL(ZAx2ttplXbvJE5Or3ofC8TKrdetxyb7BItV01kM60T(WWguo2bT2qbwu418ZB7)B4zz5XmKli5NIE7HRRxdWKykAs3pVVBQYhutbvBMO(1WEmMK9gK)LXTAWWDrVB)vZ1Fil7oWIFhD25N96JgUfDQyDKpRqgMUV88F8hp)SF(F(o6KhOt8JFCyxZRxMLTAgD7BK4y2gRDCC1(fF3G4ULFfOMUcMP7)8hoAI)2k9OAZvgWXo7WoMLy7E6QRtYl3zY2mnVyBWTvnzmw)WoML7JQjzpupjDQI2LTL1c2JB)NAVI6CwavYXYkrlHsMCVG4pF6FtZTMj0AMqRzcTMj0AMqRzcTMjC7nt4(fRb7XvRpD9Pl)httNny4HD5zJsh1y3LYVsysHhaIhAc2fMbbXEs9v1PLAlcBAE720ol8S9qLTJAu8iFX01doQ4KIJoFfaft0D5h1sv00jpn6vCO2)lyO9iz2V85BsZtahJRCOut5p3AzMSFgOZG0YNx5WNTOQNPPqDXbtPtk2akzcMOUTKYlxKq7OxSGfrTABsaF1h8suiT8tbgRKcXGonenZYrWp82DTtc2rohOyI52oThBMvfVRAwc5cXv(o828Nrp840CGoKsMnq7s406kF7CZn36Ha(gbU8ul6Vo4yJMKULMUX58Hd7t9P(P(kRpLY28DRDfD1thnihbsqfpRIaK8gC6rH0WwfhKoYD4ZuhpowvrwJoZQXHiU6RgghR1bAVTvdKDoCLsh0G8rzsfegMMM0AtpILV3Sk7wWOJnleQ9rtYysVDRCybPUbTpGxRm8mEldCYvNogsA3ozpEKe(98ND(etcwAvIcQAtUwnY8NwFVtHPfBFaUiPsdWobD5dGb3wNDkzLZmXkX(9VTq6rJHO0Ae9Ji1iq7h7YhFr(0v0Lfa7Hu(5D47K6rojOtFrrNs7(jRjRM4AIWFumcZd3QuvPvWR2Sop72grcnOmSpaHE0O(DnIvQcW)619kUZMDUF3hJxHGdTJbhDIpCLkGBIHNRNtm)My466eXOFl6V6gZPFRXHaDxbOG1l0dU(fi9B5faPfPFlp6ly0VLxSNVlN(T8JiHUc63k233Nt)wbUeajWm63YL4lOFRahN4ag9BrFEiKwG(TO)Uh(CK(T8JrQ7cPFRipiOTJ0Vvqye0ia63IeoMa3CeceppIcgdvnOs7tc9aQ7IGenwSBa9)H6HpjYp09pNX5DlAgSOzWIMblAgSOzWIMblAgSOzW0wmTGs2ckzlOK7pOKFSUWWwN4zDIN1jEwN4zDIN1jEwN4zDIN1jEwN4zDIN1jEwN49fQt8YbVKTpyj32iZ1xaV)(l)H0Lj7nMU9DRYMTbdjEtbi2Md9o3F5N2Klc(DjZNNCvoecu0V9l3F5NHfPHpKZEVmMxet1xnHQm(AAp2xrFlikTMrAJWxFYbHQCvBNVEjsvVYCn8smA(HtCytgLI2KxWPJyrJ(7bIkM3Ke8ymyTf6bEOBcG(2JQVr5P0O804I39Yug6HiUsDoJVgP6(bCOlHzdeqyc5AZ1vhJrMx64EwlZYk65FHOo6R6WB0ScCHxHPyyv4n0dcqtYN4ITAKRRqEFUPlJ12XOuUCkVcCPEeHtHuUmgLQwkKsV1WBeYkEkOESdPsIOc9wYd4sDzcPsyg8CGR)V)YvtVlD2I)ajM7)1gir4vIJPiOiDjRp5(lX6dZFF3MUyr66eABA26tQqvAVHL1I1I3zCZmDBvCEstqd4yLRSCqwsd2hd0rex2rCkp8cyyUUG19)0FaVdAB)gNpWnbzdCmx4d8FmBwxiaU)p7DL1CBJCe()cFzfZkstCXJhYduY6GvwjLsYER4uzlBqYrISeeaxcqBPkv8V9mtphyWXma8sx78GltbG5(S)6U)66104nSozNmXIkySwgPzH)IQgGpeE2s0Vq3IhcgdKyDL)9iP93ebzGd5TCrSadVdqyYYOGy2SHGOW7OZgsW5rjJ43qZ79WiUvUrCOvuyehoE0s6u5ZjvB8nqOvCrK)IKyL1(HpSiyEYQPOD2OQTNGx)6ix)LkjkBIthzTZv)PlctR541DyX1v39F6s0FUcfo5PDwdWHpVSFM6Vubjyd9meN3GUD2AIZ7pxnFY9Wc82j35VVipV8(E7ZGQ1GlDL1)5s94lcxwUD443Q10OWFHuapIMSI4SsKwWyFI7lDhaBBm7Mm(y5j8JZv7yxi)FhfIgfI3pjCcImBJcJtdijnKd8wQ(YfFFrJ1QPOb)(c6HitmzrkefJU1FvqIMGmuRwybiwi2ZKeuN5lUkwAqSxc(fBbwArL(u9r4LtxfeGRVWjIfcLtGgHINJ3majg)HVKa165RgRj2pvOhPaPQwSptb8G5flQarYBTh5UNwTMqV3NGM3pGkHXesOHFmCEfRNHO9WsKkw6AJ6Kkv8nLhJWP3yrGgtEnhD8vxE6OZ(6rdp(FC21x95l)4xp93gEZ5F9JF(6HFA0vxQQKZC)KYlAw8qrCZdQmtkUMs5TFX9earwwRi0zXOKjCLb6jpSEf)X4tDkuL0pxpRhcN9ns7Dqnkd2Z5ZKixGJbHFdq9snAwzfo7szjIBinusvsfwAP9Fpxi6lZY(kILpzUtIMprCSVMVrC0kpCNj9)DsJ4GEcFyoncerrIpt0MR6ooH6EiZ6wfZ778fJ(JrZMNgDEko8RCtm6mr1VLumkclNSjcz0e5XNp6KF)Klo5YpD61dV4K)ZNh1A4KzZrFhrWVQ1Wa0YKwNfe9J)4pKirCMQy(1UDkHzX)vpYtBm2FY90dgj4i)FjpZTtNp4zzZ7Z715d2ED)FQ5l7YAHvfSq1Mqjn0C1VFY1)2WVKxRKAt()K6k6hiPrrwFk)j1kNuhVdtNdbZlK4mLzKaVjzY0SOa(0g(gjPFvmDwoQ(hgQF6K4JQkIGQmhoSu7HLDmNod7rZaHck2apN4WDDzvl7KPodL7IXQ236pfnkSwdzIVv9iNUHnwUqMztnOp2EKvDI9h4lUBNjwgwZABgvnuDrTEBCixuxTkP(9IWhV76gTRB3Ofv1BBClCx0BkfeBpsSFoDPrjX528Fc7I2ATvZAAjN55AQOw38uW39XcAXLTNuFGtyXIf)uU7A9Jsr0zpr6u7v6Ms2hA2)gxNrM663uwaZ)YVpFCvsVQl(TMAnGuLuk5MqALdT8CBjclKor5HSvctPI1ZcgSmNLHCp55ljgXx8CYHta8K(b4T8irTwAwid35miA(tNm1uf57qTQa)aocck6QHlswkee5ZGQhnYf6BLK5R0qFRC0GpFGYP4ay2QdKQzkLaSqRAwjX428YBU(3jMvDlgMF(B4JCA7P4wkf0tmn4gZdW2S9siNeb2EbZamC1dEcmNEJa4PMQTU84oRmMfBFaUTsuKuVWDpII026zS3anOF(nPnXRLtYA544qDswxBBlASHb82vQ68GF6qDswpR(9SaNKTx3EexEL4TQoU9iEzBF2pha(iRJD)UD7r9rwhN(oe)qL6JSE2D6Tx9d1xapq1GjNbtodMCgm5myYzWKZGjNbtodMCgm5ERJjNXSomM1XF1nRJxuVF2S6WaqRbGwdaTgaAF9cql3O5RHxp9XicQgmVFyN4dgwsbACcxm1TRTv3(EDS73PFj(GrMkayzYtJseUEHD(A6)6NF7QBVngLuW2Pl8(9Lf9)iVaatMUf1MVDYxr)sfv0VS)ROpvwfDV5(sCxMYvRVlnSOZPa7gpoyE49WbrrtWhTfxOx7iYhao3fA6o0TeCZ7wc08N5oc25CGPlihYjZEEjl9dj0xcbur5wcdJ9z(FhPQLa5f49O7UMtUgZdZdzfqQBNi5mtxKNla3MwdjV2XTM2E5Bp(pwO90xT7LLoNIbe7oZlZ8apmZ221PRLRn1lZA7bEEMN1aR(DCu6ZzS(l5n8G6jFlVmUFH1oW9lIcVlc3jqO2L9JVxOx5xyj6G4UcEeGJJ2ZU3Aa1GRo74VcD(cmB0i)g)wh4paVDDkzZXQqIlVmv6Lwn3n5JDtTiGK1O(TTEwciVzvGfvGgH2n(XS5tW)99i0c5fD4hhK9Y2KD8GjJGuDkgEK9lEfVb87xYTA1Y7OnROeix(cw1XtFz8nJYuwcZjuda8VJY7NPQqRWEuvoRTKoMCuURsi6pO0wZHzGhxvlMc3ofE9A898L64VFDws2EK22xB9yzFGIKrMvaC2qdHs(O64ZjpXMuz9ldMXQE)wwdTf1qAD1U5gAYIIWJ5NGPAcCzLoJmvfU0PIupnfK2NzZaZdNoFIFskibS1YXe1xcpDb(COOLpGM2(NF7ZXOBxfqvsflLiQhQtzlpMd7htOUk4pN6t1ljzvBcERT3QXLZT8uW9lYDLVgvnZpPCxpgzkHpoJtEsCvFk9O8m4tv524OKKOheeaephZ9y1mPgdWMLaziC3seISCAmyUhPwEqfKuw6DWQtfxMPYkwS6QKq5acXOYysajqwVTmZOJN0sOzT2oR6exOrGLRGMpcUeUK2bx4JIP2)XAKA2v9x)oIus8jt1SzDtpNsFYunRFxPuXNndwNJyYupu0kQX1BLOY7LOf4dIAuD7qdiwLFRxPfzTjPTS756vo4BCKEk)TmCwk)LmSnAwvTJZ)NJcVnIU06IvbjZxemhrnPToThu)2k5VuSnWQWf4ZxpqtRSkYnTgfzEBEOmfdKruI6m4y)mm4OQ(v5WJvn0n86zqQxfYebH(KAAmQDDPgJQTJJDV37bSeJ0EgP9ms796xApdQz1g1SxkBMWi5LrYlJKxgjVmsEzK86DOKxcEm8VqeSRHvDnSQRHvD3iw1DSHvD3NSQR77vw11ZWQU1JhLFtXQU9fJQAjvx7xPCQR7gYPUw2ED3AR6AgYpWN4wU7p766fHtDbpoGDT5rXKRDJxYXS87pHIv7PaBUJJS3CGK68DH4h3OYyMuEporRFzPWbiEN6Kwv52Hp)gJFot0ZEGH3DnC8HHJpmC8r5d)C4PXBFDw62xY6f9nknEuElQuM7ih9BOoLvtDhQt7AXBhkYMNts7q1jBz3AOWlRIKokVLTXm0HQ(7Do9Cu3rK9j3COQxxMtoQ8B0sIeQs9UIdoQO2TlylcTfbxJ6v)rBF30wZXgvvjFxXTgAnGCEN7r4IEcIji11evPYU4iSe6yEihFm4YWC4WzGIJ)38hweTelcuISvKpZFXcuiXfLyOkhRfQ5BNJcMAisxTMV1wXHcBSi4VrfG2WJdgEC4LMhhELr6ce3vHJU6evQxIEP2P(lVNSoLOSmCjefg8eDosfaqWJyS4PGRi5dRaNhlkri35tKfkwne9JcW5hgrEozMnjn4zYP5fdsa)eIH)sURyBfapwoH2OFVUQjDIk3yIpf6Me)KvXhjaI5GIgpLCLmtz0CZ2x7zGzngxtM1OQRa9sYOgRN1LFocG7AvnTSCVo986sTSCpBRUuxj3X2EGtFq)QWpha0CSJTBVEDbAog)ZbwUuEo2UBh3UuEo2TJNRlLNJD8SCDy8CSDplcPjt45ySe6d86bAt5s7EE9TXP0I4R62dS6GthjtD9W)85MlKZPqpqxEg2r2GCQb5udYPgKtniNAqo1GCQb5udYPVIro1yCmVZnoM)p79S3CBBJ8Fx6FfpxSps9wDUCZp5hTN7L4KlsPz(ntBzOKOK4yArDKuXr5U6p7h2DbibibiPuKStAv7mX2K4XIf7lSy3LhdoM9sWX8uLjEh9k(rVIF0R4h9k(rVIF0R4h9k(xSxXtZOGh9m)tKfz2pg593YS89tTK2jN3C37d)lM5BGsrpGQeuymlkmT06cn3BP3DB(twU(PPCqFWlb1AYVqPe9ByQqCxkp4tx33f(r0Ab3OOW7lKijdGNU)lYXDBMlhEWzVqDowkH)GWlhGyxrghj8C6soOZDKFK7h9uZbvuraWQxmnzK8rW(UgBNpjLaBfhkxNTZLoGxptopmPDkAzX1bs8BJrt6IzAiIyqX0Z29mYCCHmY8DGHuVhUba2gornq1M(05JEQAgfEyOM7Pqn3lxY7DXcYgJI82PxMd4ODaJYabWAaMGby9ShtFvoiWfBqpKQS10RWxGpoxg6H1L0jRz2yFhZi1PklGTdcH1yQ4UFaK76gia0Mca9gWkPIqzSa8apJMpBT6UhswRzc45Weyz5RYhdgL7etoKGnKKDu(cpvwTbP0YcsMujDtnBoZktwL27YG8vErW9jGGaBepJd2Pfid4MMIcNZmLn(zM9sw6O83WYPKLrRn5Zk3yy2CEPxIRFqmI0Upm62ZELBYc2)S6Tav8fbU3TYB6ZSOY0Kf3lXce3ZtHFnwEQGFWjuN)6ZS8li2tDT83H5S3EFPCwp(bOKwfw7(kXGn1uTVDrui4RfIhGQai6pLLYuafSRSiZ8W6K1DJbshLAr)RzQcU3akX)pk10V5P29e5nZlcVFMmBFegoys8qreWwGIuCuXmYhltd9I5(JZpgU84nyrnrCZslzqJgpWvCwmYtyaKnxkbzNBgyvGlaHEshn0)LVIrjxLGimWGKJWREOsjKsrkWQKueU8nO77Er9UcrKLKxuaR4C1AUQK8t9q0d5VOU3Fjm5zfn7DCY1GJkgIakLprSppxGQEEgGFsTgD5IafJ46Tx9MRgm67u6TbQb1nws1zD3xvBDjRq2uObOX6jh8vGja)ZSkOydRIX9WP2DYxz4KqhAGKCpYeEOIWXZqkkCzO4a7sxenEUiWoSyXbMCfNMhV5AYWm0L)UfoO(tE6iCWlA9hTD8OTJ)zW2Xd7nlUB8ofyaewJihyAV5QrNpy0OxE1WF5nEjNJxw5PGxXHdGg)R)6jfgLHSds)muWC(715eDZ4fHHrtfLqpm60SB)xBIH2rp6NnTy)831073axBj5qC6MtEnvkMl2sPyptuUMHOMsj6Z2jPaIXpZlqAldGQoT5KsmwqzKnxLwfyaQkQMVGSk(Bn6h)PQvxRr3zAVuFUsq0OdLj8Z2jLncufd8z50TBeW1jB189ry6cHY7yOsVIu6ZMcNd5z6lCRzoWPoxwAEjCF)LEJxp)N9J9h7h4NSbmncgN8X4Z2Kja)GW2c2H78GSbandRofB(w9ffB(o96yHPeqRw9AytFu5A1SvlRUykb0Qz)U96JPea7P9AqPeqR2nTHI0gKbbnBBbX6FFSTTT6qPeql458ucG1XUD7tPeqR22TX0gOj2(onS5Peql7M9GQ9wB(VdphM0wDzJkCuwOVD6cJNDpeATTGNdPIqdO2XXwpyQiy3Vd79W42SPDxOTnAq)o8SgyYp0Ub8tyX0SLf8fW7Mgy6py3RjGxW8FWQDFiTjWeGOvtS9qgq0KHfGXKM3wqBGuFaEExOTukq0H6h87DB0hNFa(zyfmlkG5OVfogTX20dZldy92OTf2xy92QpMwfyIA0OxdlOn9X1ENwwy1HI9CwF7)h)Vwah9SWrplC0Zch9SW36Ew4peEx(Pk(kpEkOJNc64PG(tWPGsRgRgI8lLRpV5o)bS2LTN6WdxUNQpE1poLa1YHbr(QsSHIOsuko(WgqjDzjxZyREh0QqzTXIg8E)qSsk7soRhdJ2SePfOeYYqAn(A)HRF4AZhM6A4)naH47OFsW41pzFIyFelqqcXUmmAAgIRKAzoxAkD0DjkWRNA(BeXPNE6)3Ka34ymAiz0UoSoX3wjrvp8HVhICn4RPGsVW7sHjUK1Q0J9WiyHyYRK2nbuEx14XVFck2002kkkPkz6sZxz3LB02aE0Pz61(Xxi9zqgcPkp3L6hiPyTU8wkcT(swxWQFiMWdvS4RSrPkygSCYcyLoDMJl9RAhtM8NO61uChYCllqfsKrJOVhhm6W)JMqrxMisH2onVDl0hIeqPXP6M108jPv(HVBEeAnxrOqzp)fqqzUw7qPSJ)I0eVxlikwskzWUovOqSNLL)5qQRxYXz)9YJg(ku98CLnLNRkC55kyui)eaDtpxsAIPdZy2HRPFUjgGAho9HpCDS4B6jwd6Q1h2ZEcFTIvmfBJUQB)QH5r3zDBLMNVzmW5j(KUhvFEu95r1NhvF(1R6Ze8Q8Q5j17120j1VPd7aKDBCOdFD0ljV)1V35nV91)0vxmYbYjPh(VSDk5h(QbxFZlV(MRm6ReEsn)H6E1iWhZh)LRrm9OWB9kk0ooimjUWtNbefKXhccoDZcEmwFsCpw7FG7NYSt2zJh8f5dB)foVJHjHPigkYsNVE2SlDtCpFZ1lN69jPCZeA21xYgD)tmKtMIXTYmVuSKjdLiFRZ77zIhASZKFUs7ArjbxFPaayIVYYn1S7pmrewDvoxzIbhmgUsbOoHnCbkpSY(WxKaD6BcV3lcTxuXN1RepUYXk7kvKhUVNkralb)nxbgx31aMommjhWM7ZiERtQEu0FNvvEhwfkRqke3Gu3Q7JPQjqPGMNkBt(kxuKN7T7wE8MTVKUwQ6gU2j6bCE2XTELUvRYXe(hh20HOCJ13fuL2LPzhv25Rlhv(p92GcJoDWNJCdGddk7XsC1M9X)elvejzzyF63wTXmH3Pp9zRJx7cveGyGqrk0IPwLWSynXF1jFZ6OZJ60pQt)Oo9J60pQtF70PFiCB1wOXR2oBf0QX5lRJBwBcXyQfpKwB2OrVJUzD4FmSC7X1dS1h9I5WFKx4QqVLoufci2zL7sVahOwb4ogk5dyagCpeOhoR8IIdx6gGHf8qVpLWEd4bmNjmtXMYy8D8Mo3ZH79i5qx4cEd(fOb)2qcWDGI3Kd9XUHHDgv(LuaCmPrnowPHXsLfyvSOfTyJaK1zSgC1NwfGREaFEPVx2yiAX7DJwI(ldFrBPbxWZM6RmmU1tF9RzJ4pgIDLEgoaYT4DbjW64AXNXhm8WZE9)AT)KBF4dyrkc7y6YgISeW0wC5HXpswVUo7Jce8zMMxQNkm3dcVIT28tw8WhElvVj03K)becWdGm2dFFZFB4p4)jmWFHrh08YW9iWi6p9me)aM0F1sVO5BWOJpBOhHFtXLqC2PlV3VWpG)XpkdTBR8nbik0FYdF4LEURYGkCJmgzlgmBM)NE4dV6VKdFYKJoXhyAhqbKtwNtbz47naGsELB0TmI4COwS4pvaLoCLFI3S1b8jghqbXZna8Cvaw4tgfHL2pbfOeDY8cujYV)Nd9N(zEspqZ4B9c8NWO87FwdgOcFjSzBGGpiHxsBpe(oLG5CfYL2M08GK3mBbsaEWCBzq56wAdXkJqai0))dxtTpfvktvJGcyglwSGgE76GGCJ(p7fTrTpTLgRx5cNPBKBeZm4CD8kEcOoygwtMmWPXwKet8pg5bMwl24n9HMq5DdzIEassjFIxCcWaoMt0QU)nK(IORJx9c)OjRdajxdV3NxeyeKos8XfijohU1kXa2sEFoWhySOsA0l9MrUSoRJcbhfG)leXjeqsilRSHPCWbZtL8iWHjRxM1rXsjhxvgkw0GrUS1Zn0D9uCALWeejqAByQLwGJTtmwA7GRyivRYR8HyjmWpobuoX0GKeoFEGNdMnYGwKixFux7eMvtmlAaDyqLdfEeJrpzd8l3hgfanIngXUF0BQZKp6gf7ea1IMjy4gswcTo2ZHkwz4Ln6G3gdma8sCwiu2A8zQud2GnaMnSG2Kb4JNRf0J8IdxhnH(UESXjeJSsSahfZSaHSqu8yMUyIfPxHNXunNSa0rhJj9ZqSyDrFo1jv3GZtCs)IYPc6RyJ5yfn5mWEYToHRtyeCqXv6DJapoKQXEmCnttDyyLic)i1v4oGMgfUIJJiJAj7zPSZYctmlRZ6y3OxBOCJnCCyC8DHtZSFaWuoEzMlTm0bpomuPJCc8woNrse4FNFIg8moToldtlzKCqWwgeoZYQBVwqUw1ODR(q2iHGu)ow0)1RpK1ysGw86vaQtgOWYvjJkXJHPqJbXQxeI4fedaDhSboHjq)w2sGzdukDIcyH7tRCtMSWj92NA21WAtQyykqVN10YMb881utAPw4Hn19Ww8zVKLdUgyNK0HkhamrGmi5UXUjsVoJideb5mEJd7KFoGfRWEK8G7V0H(t2sHt8MnmlGG92zH)8fb432MC4zb6V42ouQ0zJCc6Du2(Bd1oMwDP0U)KBwfWddzPokWslwcAZbdPBmoqyuNh2Z6gFvhVWD6gbMek6PWYcJIbh66nbrcKuh83WnfE(ItSiWiWW4ezbx0Hmz1PeDLCxOR7gf2Gsz(ejRHDAfiXhbPfWj9qgnS9fLbqWHeJGY4l9Cs2DkDBkTA7oSd42HtJ2Vj8FCAtXBe0Kzm9gGLaVpYoLsXfMT6cdzLXnl)Le(wGMAtsMSTsNoLvJmGl4ubq1odgLwWf7FriMhBkYc6VZDPB5awU9KAavkqXmMED0eAOEoCV7Mcdyzef90JzQhPN6Q1HgxneYvsvU6JRymqmypodtjr6HcE4)HgspqC0Iva7vXfIMP(0gI52UiYeNQPSJAW0GhRoxM4juj)7lO85e99nsVxjwbOC0sWOUcZesRUTd16AYwFAnKFOqlWKyXsPMV51cszTZUmxPqsAxLhNnZKQXKfrHRNVa2HKALK0(8qUe1Nrtmu27WTn(Y88cy6m4Pc2xMTaRrJmt3PLGxIpBqeEk0B41fvnu7f5hLrn1IXkp(GzAbEYeyjSHP)o2hl0JcPmN22aFxkPrrgJsfSvRnadcvlU81azY8sAu8H7x9ZVDfobn4Nl0Xe7y9WW5Pq2UfCwh1SA3nezf6)36oxK4UeMSAtjQLhOeCznnBjJbfnVCg4fuhLJlzGfQCPdAiStNOCaDDu6wejxBr)8d6AYmGgKxAXd3Mzs4y)5oi(pXpjOE0BA0PyRQTRAdanWNM1r44YYhuMja)FV2lMJokizzxSWJa9mf1wgnXZMIzD0oMuewEr)9ECS(JWcsDQUMdAXVridlIk5LFmmz0wDZyxTzuLsHCMJ0b4pRzN(fyJbL7Zx7hm1blgYJ1ZAyMuoV9JYWWsV1jrUb5GIoT1klzxuyuU5Lhklj7QUBTdBuZ8)e4Xmj(CvuuloyjrJPL3RtE7pT7uH9NkNMQu(CPD)ug9IMNARZ4u79PTOwMSfDSbBr7SdMIQrWqr(yt6p1IYQfDWwB8QoPW1gjAYY32L4LwtQ578eB3BTonQvPQNRqDp3Ky9RDdhfq(uLY6DQ0W2chfsHUR4MEo3cjPwc(RKQPj3okLTJ2uAk1jCRhF2s2lw3w71urhQyV9M(syNGauzzSgZWQH1cvWdBEHBWqxzz(GUfUxYZS1nBYO3T1M08Oz5lzisQLVvAI7xIuMkT49RjFAYfM08jYLM7j7tRuaSgRrnzNj41FNPUqgun9a5EYhj7h1O0Oz1gjwyt20HZ23giQYXssuIZXZUf(StaMhqVzUlwqMnpYYKQpxwTm6uN9K2w7rFA2TmR0gxHzh6Sgs7bakZVOFn5gquKbevTGOLZnCflFHEYlV)BoF)5cVU70rn3jlCQYQ)Ts7tn9dvN6BIZ8GWXUbCUyk0kHxALz8ZYvt2FE5BBVLxdmB7B)4v7BQTH8Lsz0pEDp6hVVMV63VmVY9nMh2YDd2FPbUr53IB382ij4x6Tv2iPNlRGx06SDxYRERGKeLO3jaLFlUJ3N3IBTCDwKhBHaF7WXy(H(w5T7UnBwyqaeUub(F(ZUrSZkSAcp671BbQ0vGDi8FwN9R7U(FT3vxVTjpu4)rvfOqGlx3K2ftRVsRA3weHqtqLarqY6(5VZhgBJTPHqYEZMw7nTnHeSp(8XJphEoEAP7stBywB95SXyoxX2eaAU8mssYyPGBojr7mtB3mtx8vl1CwXdVuixteyVLjn7mt72YzvI55zDocIu9ye9vx(Ic68sLGTFZvpo69Ih)VBXJVsvk(el7ZFRfj(uWW(NzHGJFVoWxKY6()F9Gp1A7oEnHN5wnf5B8eZM8f4Xd9Oy(oErmM7ETVcadpNTSCbaggnoE9RrLzDwI45KssUFp2NcHDejZq(FliMgekH)5UBdscdImiWu6U2MNlR4dRFyFTONlMQ3z55fW)J73LMo08KBfKPTfRPEBWRqu1I2AMxrDPf)eK7LBlq(jMEGAcpCcQlZtlAZ6bdPXfNoKmVPWaOQPwrfmuGsRdFTzfZTofl4iUaI89I25MG3xeTMwxPZDoMQoyvFxVUTjnpRwqWN6g4TFzukPLlBoJdw(9gqkUefuuZ5Id(07SrmsxDGAkGSYRByWDFxj6tXGl6Vem4sua(7fVp1NnhZNrE2oCeUIyBLOhsSbUbsoV1FcfqR4hkt3rhhimJX6aOt7ZE6X7)Wh)YN)2)99h(Kd2FUC9qWn3gEBsmO(ffgfVyrOaQJ1Rg48vzborhU47swe5XcFDUm20UcMUImVmnASzYTmwyYFr73uM)sniU06HcsUZruUCkLiLoQhG10MQs0qqU2WOcljpgyyof5us7kQkYzgbWhMkNWnsWjt6BVJ4XmcXGNqt4rSEGLuFvoI1hYGJQI6UYFaswcxLqAArhpphuu1wju7syL138sObqrDly5yqbw(d7gPPPTTsF0pi0p5opVfkoUzAGBsXun)GKft(Hk0jbUsUht2ihsXGGLAAqlvU8PbE2EqYSjfC0sg3pIhTm6FCrdtt2upm1n9DrTr2fKgmrHt49IZAwoBtYbIyjCy(PTnSMG6JMMDHXeFahMBbxjd7tjm34TwrLG6nP2l6xshEVPwIun1jxPvzNLgbo2LUgRppomJv7icHJfILdZaw7n03wVMch(XyVMEKloRSNZAuJ8eSP2oiElgMir63d9ku3OFJFZlCp2pbGiIh7sjShQ8GdGDywWwHsmY(1HDOWZM84lNwEbJg4tY9hPh8VjYlmW3Zo010XIPuWCLnAzsl8hETDut3a1teJYCa3deJJ1Aq4eSQQQRfiJq6wbu6fUTaHxXU2BQrMn2l2yrg7QeFOiAwxIFUdiybmIpEgGAPtV7akHzRXHcIBs8dhdzPqt2EnrjbOCViBfc2OPaaDLyZp30iUC1w0rJeIj4tzBjopzWOJJ90P)Qnzvptcd8nRlETtWpCVOfbXjH((2USmsEsumD(NYsKeFVWilD3N(1'

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
