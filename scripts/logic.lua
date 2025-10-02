---@diagnostic disable: lowercase-global
function has(item, amount)
  local count = Tracker:ProviderCountForCode(item)
  amount = tonumber(amount)
  if not amount then
    return count > 0
  else
    return count == amount
  end
end

--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------REGIONS-----------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
 
function region2()
  return has ("settingOpenModeClosed")
end

function region3()
  return region2() and has ("leafShade")
end

function region4()
  return region3() and (has ("minePass") and has ("guildPass"))
end

function region5()
  return mineKeyTotal(1) and region4()
end


function region6()
  return mineKeyTotal(2) and region5()
end

function region7()
  return region6() and mineKeyTotal(3)
end

function region8()
  return region7() and mineKeyTotal(6)
end

function region9()
  return region7() and (has ("eleHeat") and newLock(3235824114, "thiefKey"))
end

function region10()
  return region9() and mineKeyTotal(10)
end

function region11()
  return region10() and (has ("mineMaster") and has ("iceShade"))
end

function region12()
  return region11()  and has ("maroonPass")
end

function region13()
  return region12() and (has ("eleHeat") and has("sandShade"))
end

function region14()
  return fajroKeyTotal(1) and region13()
end

function region15()
  return region14() and fajroKeyTotal(3)
end

function region16()
  return fajroKeyTotal(4) and region15()
end

function region17()
  return region16() and has ("eleCold")
end

function region17half()
  return region17() and newLock(3235824211, "whiteKey")
end

function region18()
  return region17half() and fajroKeyTotal(9)
end

function region19()
  return region17half() and has ("fajroMaster")
end

function region20()
  return region19() and has ("flameShade")
end

function region21()
  return region20() and has ("seedShade")
end

function region23()
  return region21() and (has ("eleHeat") and has ("eleCold"))
end

function region24()
  return region21() and has ("pondPass")
end

function region25()
  return zirvitarKeyTotal(2) and region23()
end

function region26()
  return sonajizKeyTotal(3) and region23()
end

function region27()
  return region26() and sonajizKeyTotal(4) and (has ("radiantKey"))
end

function region28()
  return region23() and (has ("eleWave") and has ("eleShock") and has ("dropShade") and has ("boltShade"))
end

function region29()
  return kryskajoKeyTotal(2) and region28()
end

function region30()
  return region28() and has ("kryskajoMaster")
end

function region31()
  return region30() and has ("starShade")
end

function region22()
  return region31()
end

function region32()
  return region31() and has ("dojoKey")
end

function region33()
  return region32() and has ("meteorShade")
end

function region34()
  return region22() and
    (has ("settingVTGateOpen") and
        has ("eleHeat") and
          has ("eleCold") and
            has ("elewave") and 
              has ("eleShock")) 
  or        
    region22() and 
      (has ("eleHeat") and 
        has ("eleCold") and 
          has ("eleWave") and 
            has ("eleShock") and
              has ("minesWon") and
                has ("fajroWon") and
                  has ("sonajizWon") and
                    has ("zirvitarWon"))
end

-- Open Mode Logic

function regionOpen2()
  return has ("settingOpenModeOpen")
end

function regionOpen3()
  return regionOpen2() and has ("leafShade")
end

function regionOpen3_1()
  return regionOpen2() and has ("minePass")
end

function regionOpen4_1()
  return regionOpen3() and has ("minePass")
end

function retionOpen4_1_1()
  return regionOpen4_1() and (mineKeyTotal(1) or has("eleHeat"))
end

function regionOpen4_2()
  return mineKeyTotal(1) and regionOpen4_1()
end

function regionOpen4_3()
  return regionOpen4_2() and mineKeyTotal(2)
end

function regionOpen4_4()
  return regionOpen4_3() and mineKeyTotal(3)
end

function regionOpen4_5()
  return regionOpen4_4() and mineKeyTotal(4)
end

function regionOpen4_6()
  return regionOpen4_3() and has ("eleHeat") and newLock(3235824114, "thiefKey")
end

function regionOpen4_7()
  return regionOpen4_6() and mineKeyTotal(5)
end

function regionOpen4_8()
  return regionOpen4_1() and has ("mineMaster")
end

function regionOpen5()
  return regionOpen3() and has ("iceShade")
end

function regionOpen6()
  return regionOpen5() and has ("maroonPass")
end

function regionOpen7_1()
  return regionOpen5() and (has ("sandShade") and has ("eleHeat"))
end

function regionOpen7_2()
  return fajroKeyTotal(1) and regionOpen7_1()
end

function regionOpen7_3()
  return regionOpen7_2() and fajroKeyTotal(3)
end

function regionOpen7_4()
  return regionOpen7_3() and fajroKeyTotal(4)
end

function regionOpen7_5()
  return regionOpen7_4() and has ("eleCold")
end

function regionOpen7_6()
  return regionOpen7_5() and newLock(3235824211, "whiteKey")
end

function regionOpen7_7()
  return regionOpen7_5() and fajroKeyTotal(9)
end

function regionOpen7_8()
  return regionOpen7_5() and has ("fajroMaster")
end

function regionOpen8()
  return regionOpen2() and has ("flameShade")
end

function regionOpen9()
  return regionOpen2() and has ("flameShade")
end

function regionOpen20()
  return regionOpen2() and has ("meteorShade")
end

function regionOpen9_1()
  return regionOpen9() and has ("seedShade")
end

function regionOpen10()
  return regionOpen9() and has ("seedShade")
end

function regionOpen11()
  return regionOpen10() and has ("pondPass")
end

function regionOpen12()
  return regionOpen10()
end

function regionOpen13_1()
  return zirvitarKeyTotal(2) and regionOpen10()
end

function regionOpen13_2()
  return regionOpen13_1() and has ("eleWave")
end

function regionOpen14_1()
  return sonajizKeyTotal(1) and regionOpen10() and (has("eleHeat") or has("eleCold") or has ("eleWave") or has ("eleShock"))
end

function regionOpen14_2()
  return regionOpen10() and sonajizKeyTotal(3) and has("eleHeat")
end

function regionOpen14_3()
  return regionOpen14_2() and has ("eleCold")
end

function regionOpen14_4()
  return regionOpen14_3() and has("radiantKey") and sonajizKeyTotal(4)
end

function regionOpen14_5()
  return regionOpen14_4() and has("eleShock")
end

function regionOpen15_1()
  return regionOpen12() and (has ("boltShade") and has ("dropShade") and has ("eleWave") and has ("eleShock"))
end

function regionOpen15_2()
  return regionOpen15_1() and kryskajoKeyTotal(2)
end

function regionOpen15_3()
  return regionOpen15_2() and has ("kryskajoMaster")
end

function regionOpen16()
  return regionOpen9() and has ("starShade")
end

function regionOpen17()
  return regionOpen16() and has ("dojoKey")
end

function regionOpen18()
  return regionOpen16()
end

function regionOpen16_1()
  return regionOpen16() and has ("meteorShade")
end

function regionOpen19()
  return 
    regionOpen18() and 
      (has ("settingVTGateOpen") and
        has ("eleHeat") and
          has ("eleCold") and
            has ("elewave") and 
              has ("eleShock")) 
  or        
    regionOpen18() and 
      (has ("eleHeat") and 
        has ("eleCold") and 
          has ("eleWave") and 
            has ("eleShock") and
              has ("minesWon") and
                has ("fajroWon") and
                  has ("sonajizWon") and
                    has ("zirvitarWon"))
end

-- Dungeon Keys

function mineKeyTotal(amount)
  if has("settingKeyringsOn") then
    mineKeyAmount=Tracker:ProviderCountForCode("mineKey")*5
    count = Tracker:FindObjectForCode("mineKey")
    if count.AcquiredCount > 0 then
      count.AcquiredCount = 5
    end
  else
    mineKeyAmount=Tracker:ProviderCountForCode("mineKey")*1
  end
  return (mineKeyAmount >= amount)
end

function fajroKeyTotal(amount)
  if has("settingKeyringsOn") then
    fajroKeyAmount=Tracker:ProviderCountForCode("fajroKey")*9
    count = Tracker:FindObjectForCode("fajroKey")
    if count.AcquiredCount > 0 then
      count.AcquiredCount = 9
    end
  else
    fajroKeyAmount=Tracker:ProviderCountForCode("fajroKey")*1
  end
  return (fajroKeyAmount >= amount)
end

function zirvitarKeyTotal(amount)
  if has("settingKeyringsOn") then
    zirvitarKeyAmount=Tracker:ProviderCountForCode("zirvitarKey")*2
    count = Tracker:FindObjectForCode("zirvitarKey")
    if count.AcquiredCount > 0 then
      count.AcquiredCount = 2
    end
  else
    zirvitarKeyAmount=Tracker:ProviderCountForCode("zirvitarKey")*1
  end
  return (zirvitarKeyAmount >= amount)
end

function sonajizKeyTotal(amount)
  if has("settingKeyringsOn") then
    sonajizKeyAmount=Tracker:ProviderCountForCode("sonajizKey")*4
    count = Tracker:FindObjectForCode("sonajizKey")
    if count.AcquiredCount > 0 then
      count.AcquiredCount = 4
    end
  else
    sonajizKeyAmount=Tracker:ProviderCountForCode("sonajizKey")*1
  end
  return (sonajizKeyAmount >= amount)
end

function kryskajoKeyTotal(amount)
  if has("settingKeyringsOn") then
    kryskajoKeyAmount=Tracker:ProviderCountForCode("kryskajoKey")*2
    count = Tracker:FindObjectForCode("kryskajoKey")
    if count.AcquiredCount > 0 then
      count.AcquiredCount = 2
    end
  else
    kryskajoKeyAmount=Tracker:ProviderCountForCode("kryskajoKey")*1
  end
  return (kryskajoKeyAmount >= amount)
end

-- Misc --

function canGrind()
  return has ("leafShade") or has ("flameShade")
end

-- Shop Logic --

-- Slot Shuffle

-- Rookie Harbor Shops

function RHitem1()
  return has ("settingShopReceiveSlots") and has ("RHitem1")
end

function RHitem2()
  return has ("settingShopReceiveSlots") and has ("RHitem2")
end

function RHitem3()
  return has ("settingShopReceiveSlots") and has ("RHitem3")
end

function RHitem4()
  return has ("settingShopReceiveSlots") and has ("RHitem4")
end

function RHitem5()
  return has ("settingShopReceiveSlots") and has ("RHitem5")
end

function RHitem6()
  return has ("settingShopReceiveSlots") and has ("RHitem6")
end

function RHitem7()
  return has ("settingShopReceiveSlots") and has ("RHitem7")
end

function RHitem8()
  return has ("settingShopReceiveSlots") and has ("RHitem8")
end

function RHitem9()
  return has ("settingShopReceiveSlots") and has ("RHitem9")
end

function RHitem10()
  return has ("settingShopReceiveSlots") and has ("RHitem10")
end

function RHitem11()
  return has ("settingShopReceiveSlots") and has ("RHitem11")
end

function RHitem12()
  return has ("settingShopReceiveSlots") and has ("RHitem12")
end

function RHitem13()
  return has ("settingShopReceiveSlots") and has ("RHitem13")
end

function RHitem14()
  return has ("settingShopReceiveSlots") and has ("RHitem14")
end

function RHitem15()
  return has ("settingShopReceiveSlots") and has ("Rhitem15")
end

function RHweapon1()
  return has ("settingShopReceiveSlots") and has ("RHweapon1")
end

function RHweapon2()
  return has ("settingShopReceiveSlots") and has ("RHweapon2")
end

function RHweapon3()
  return has ("settingShopReceiveSlots") and has ("RHweapon3")
end

function RHweapon4()
  return has ("settingShopReceiveSlots") and has ("RHweapon4")
end

function RHweapon5()
  return has ("settingShopReceiveSlots") and has ("RHweapon5")
end

function RHweapon6()
  return has ("settingShopReceiveSlots") and has ("RHweapon6")
end

function RHweapon7()
  return has ("settingShopReceiveSlots") and has ("RHweapon7")
end

function RHweapon8()
  return has ("settingShopReceiveSlots") and has ("RHweapon8")
end

function RHweapon9()
  return has ("settingShopReceiveSlots") and has ("RHweapon9")
end

function RHweapon10()
  return has ("settingShopReceiveSlots") and has ("RHweapon10")
end

function RHweapon11()
  return has ("settingShopReceiveSlots") and has ("RHweapon11")
end

function RHweapon12()
  return has ("settingShopReceiveSlots") and has ("RHweapon12")
end

function RHchef1()
  return has ("settingShopReceiveSlots") and has ("RHchef1")
end

function RHchef2()
  return has ("settingShopReceiveSlots") and has ("RHchef2")
end

function RHchef3()
  return has ("settingShopReceiveSlots") and has ("RHchef3")
end

function RHchef4()
  return has ("settingShopReceiveSlots") and has ("RHchef4")
end

function RHchef5()
  return has ("settingShopReceiveSlots") and has ("RHchef5")
end

function RHchef6()
  return has ("settingShopReceiveSlots") and has ("RHchef6")
end

function RHchef7()
  return has ("settingShopReceiveSlots") and has ("RHchef7")
end

function RHchef8()
  return has ("settingShopReceiveSlots") and has ("RHchef8")
end

function RHchef9()
  return has ("settingShopReceiveSlots") and has ("RHchef9")
end

function RHchef10()
  return has ("settingShopReceiveSlots") and has ("RHchef10")
end

function RHchef11()
  return has ("settingShopReceiveSlots") and has ("RHchef11")
end

function RHchef12()
  return has ("settingShopReceiveSlots") and has ("RHchef12")
end

function RHbackWeapon1()
  return has ("settingShopReceiveSlots") and has ("RHbackWeapon1")
end

function RHbackWeapon2()
  return has ("settingShopReceiveSlots") and has ("RHbackWeapon2")
end

function RHbackWeapon3()
  return has ("settingShopReceiveSlots") and has ("RHbackWeapon3")
end

function RHbackWeapon4()
  return has ("settingShopReceiveSlots") and has ("RHbackWeapon4")
end

function RHbackWeapon5()
  return has ("settingShopReceiveSlots") and has ("RHbackWeapon5")
end

function RHbackWeapon6()
  return has ("settingShopReceiveSlots") and has ("RHbackWeapon6")
end

function RHbackWeapon7()
  return has ("settingShopReceiveSlots") and has ("RHbackWeapon7")
end

function RHbackWeapon8()
  return has ("settingShopReceiveSlots") and has ("RHbackWeapon8")
end

function RHtara1()
  return has ("settingShopReceiveSlots") and has ("RHtara1")
end

-- Bergen Trail Shops

function BThermit1()
  return has ("settingShopReceiveSlots") and has ("BThermit1")
end

function BThermit2()
  return has ("settingShopReceiveSlots") and has ("BThermit2")
end

function BThermit3()
  return has ("settingShopReceiveSlots") and has ("BThermit3")
end

-- Bergen Village Shops

function BVitem1()
  return has ("settingShopReceiveSlots") and has ("BVitem1")
end

function BVitem2()
  return has ("settingShopReceiveSlots") and has ("BVitem2")
end

function BVitem3()
  return has ("settingShopReceiveSlots") and has ("BVitem3")
end

function BVitem4()
  return has ("settingShopReceiveSlots") and has ("BVitem4")
end

function BVitem5()
  return has ("settingShopReceiveSlots") and has ("BVitem5")
end

function BVitem6()
  return has ("settingShopReceiveSlots") and has ("BVitem6")
end

function BVitem7()
  return has ("settingShopReceiveSlots") and has ("BVitem7")
end

function BVitem8()
  return has ("settingShopReceiveSlots") and has ("BVitem8")
end

function BVitem9()
  return has ("settingShopReceiveSlots") and has ("BVitem9")
end

function BVitem10()
  return has ("settingShopReceiveSlots") and has ("BVitem10")
end

function BVitem11()
  return has ("settingShopReceiveSlots") and has ("BVitem11")
end

function BVitem12()
  return has ("settingShopReceiveSlots") and has ("BVitem12")
end

function BVitem13()
  return has ("settingShopReceiveSlots") and has ("BVitem13")
end

function BVitem14()
  return has ("settingShopReceiveSlots") and has ("BVitem14")
end

function BVitem15()
  return has ("settingShopReceiveSlots") and has ("BVitem15")
end

function BVweapon1()
  return has ("settingShopReceiveSlots") and has ("BVweapon1")
end

function BVweapon2()
  return has ("settingShopReceiveSlots") and has ("BVweapon2")
end

function BVweapon3()
  return has ("settingShopReceiveSlots") and has ("BVweapon3")
end

function BVweapon4()
  return has ("settingShopReceiveSlots") and has ("BVweapon4")
end

-- Bakii Kum Shops

function BKitem1()
  return has ("settingShopReceiveSlots") and has ("BKitem1")
end

function BKitem2()
  return has ("settingShopReceiveSlots") and has ("BKitem2")
end

function BKitem3()
  return has ("settingShopReceiveSlots") and has ("BKitem3")
end

function BKitem4()
  return has ("settingShopReceiveSlots") and has ("BKitem4")
end

function BKitem5()
  return has ("settingShopReceiveSlots") and has ("BKitem5")
end

function BKitem6()
  return has ("settingShopReceiveSlots") and has ("BKitem6")
end

function BKitem7()
  return has ("settingShopReceiveSlots") and has ("BKitem7")
end

function BKitem8()
  return has ("settingShopReceiveSlots") and has ("BKitem8")
end

function BKitem9()
  return has ("settingShopReceiveSlots") and has ("BKitem9")
end

function BKitem10()
  return has ("settingShopReceiveSlots") and has ("BKitem10")
end

function BKitem11()
  return has ("settingShopReceiveSlots") and has ("BKitem11")
end

function BKitem12()
  return has ("settingShopReceiveSlots") and has ("BKitem12")
end

function BKitem13()
  return has ("settingShopReceiveSlots") and has ("BKitem13")
end

function BKitem14()
  return has ("settingShopReceiveSlots") and has ("BKitem14")
end

function BKitem15()
  return has ("settingShopReceiveSlots") and has ("BKitem15")
end

function BKweapon1()
  return has ("settingShopReceiveSlots") and has ("BKweapon1")
end

function BKweapon2()
  return has ("settingShopReceiveSlots") and has ("BKweapon2")
end

function BKweapon3()
  return has ("settingShopReceiveSlots") and has ("BKweapon3")
end

function BKweapon4()
  return has ("settingShopReceiveSlots") and has ("BKweapon4")
end

function BKweapon5()
  return has ("settingShopReceiveSlots") and has ("BKweapon5")
end

function BKweapon6()
  return has ("settingShopReceiveSlots") and has ("BKweapon6")
end

function BKweapon7()
  return has ("settingShopReceiveSlots") and has ("BKweapon7")
end

function BKweapon8()
  return has ("settingShopReceiveSlots") and has ("BKweapon8")
end

-- Basin Keep Shops

function BKEitem1()
  return has ("settingShopReceiveSlots") and has ("BKEitem1")
end

function BKEitem2()
  return has ("settingShopReceiveSlots") and has ("BKEitem2")
end

function BKEitem3()
  return has ("settingShopReceiveSlots") and has ("BKEitem3")
end

function BKEitem4()
  return has ("settingShopReceiveSlots") and has ("BKEitem4")
end

function BKEitem5()
  return has ("settingShopReceiveSlots") and has ("BKEitem5")
end

function BKEitem6()
  return has ("settingShopReceiveSlots") and has ("BKEitem6")
end

function BKEitem7()
  return has ("settingShopReceiveSlots") and has ("BKEitem7")
end

function BKEitem8()
  return has ("settingShopReceiveSlots") and has ("BKEitem8")
end

function BKEitem9()
  return has ("settingShopReceiveSlots") and has ("BKEitem9")
end

function BKEitem10()
  return has ("settingShopReceiveSlots") and has ("BKEitem10")
end

function BKEitem11()
  return has ("settingShopReceiveSlots") and has ("BKEitem11")
end

function BKEitem12()
  return has ("settingShopReceiveSlots") and has ("BKEitem12")
end

function BKEitem13()
  return has ("settingShopReceiveSlots") and has ("BKEitem13")
end

function BKEitem14()
  return has ("settingShopReceiveSlots") and has ("BKEitem14")
end

function BKEitem15()
  return has ("settingShopReceiveSlots") and has ("BKEitem15")
end

function BKEweapon1()
  return has ("settingShopReceiveSlots") and has ("BKEweapon1")
end

function BKEweapon2()
  return has ("settingShopReceiveSlots") and has ("BKEweapon2")
end

function BKEweapon3()
  return has ("settingShopReceiveSlots") and has ("BKEweapon3")
end

function BKEweapon4()
  return has ("settingShopReceiveSlots") and has ("BKEweapon4")
end
function BKEweapon5()
  return has ("settingShopReceiveSlots") and has ("BKEweapon5")
end

function BKEweapon6()
  return has ("settingShopReceiveSlots") and has ("BKEweapon6")
end

function BKEweapon7()
  return has ("settingShopReceiveSlots") and has ("BKEweapon7")
end

function BKEweapon8()
  return has ("settingShopReceiveSlots") and has ("BKEweapon8")
end

function BKEvendor1()
  return has ("settingShopReceiveSlots") and has ("BKEvendor1")
end

function BKEvendor2()
  return has ("settingShopReceiveSlots") and has ("BKEvendor2")
end

function BKEvendor3()
  return has ("settingShopReceiveSlots") and has ("BKEvendor3")
end

function BKEvendor4()
  return has ("settingShopReceiveSlots") and has ("BKEvendor4")
end

function BKEvendor5()
  return has ("settingShopReceiveSlots") and has ("BKEvendor5")
end

function BKEvendor6()
  return has ("settingShopReceiveSlots") and has ("BKEvendor6")
end

function BKEvendor7()
  return has ("settingShopReceiveSlots") and has ("BKEvendor7")
end

function BKEvendor8()
  return has ("settingShopReceiveSlots") and has ("BKEvendor8")
end

function BKEvendor9()
  return has ("settingShopReceiveSlots") and has ("BKEvendor9")
end

function BKEvendor10()
  return has ("settingShopReceiveSlots") and has ("BKEvendor10")
end

function BKEvendor11()
  return has ("settingShopReceiveSlots") and has ("BKEvendor11")
end

function BKEvendor12()
  return has ("settingShopReceiveSlots") and has ("BKEvendor12")
end

function BKEvendor13()
  return has ("settingShopReceiveSlots") and has ("BKEvendor13")
end

function BKEvendor14()
  return has ("settingShopReceiveSlots") and has ("BKEvendor14")
end

function BKEvendor15()
  return has ("settingShopReceiveSlots") and has ("BKEvendor15")
end

function BKEcalzone1()
  return has ("settingShopReceiveSlots") and has ("BKEcalzone1")
end

-- Sapphire Ridge Shops

function SRitem1()
  return has ("settingShopReceiveSlots") and has ("SRitem1")
end

function SRitem2()
  return has ("settingShopReceiveSlots") and has ("SRitem2")
end

function SRitem3()
  return has ("settingShopReceiveSlots") and has ("SRitem3")
end

function SRitem4()
  return has ("settingShopReceiveSlots") and has ("SRitem4")
end

function SRitem5()
  return has ("settingShopReceiveSlots") and has ("SRitem5")
end

function SRitem6()
  return has ("settingShopReceiveSlots") and has ("SRitem6")
end

function SRitem7()
  return has ("settingShopReceiveSlots") and has ("SRitem7")
end

function SRitem8()
  return has ("settingShopReceiveSlots") and has ("SRitem8")
end

function SRitem9()
  return has ("settingShopReceiveSlots") and has ("SRitem9")
end

function SRitem10()
  return has ("settingShopReceiveSlots") and has ("SRitem10")
end

function SRitem11()
  return has ("settingShopReceiveSlots") and has ("SRitem11")
end

function SRitem12()
  return has ("settingShopReceiveSlots") and has ("SRitem12")
end

function SRitem13()
  return has ("settingShopReceiveSlots") and has ("SRitem13")
end

function SRitem14()
  return has ("settingShopReceiveSlots") and has ("SRitem14")
end

function SRitem15()
  return has ("settingShopReceiveSlots") and has ("SRitem15")
end

function SRweapon1()
  return has ("settingShopReceiveSlots") and has ("SRweapon1")
end

function SRweapon2()
  return has ("settingShopReceiveSlots") and has ("SRweapon2")
end

function SRweapon3()
  return has ("settingShopReceiveSlots") and has ("SRweapon3")
end

function SRweapon4()
  return has ("settingShopReceiveSlots") and has ("SRweapon4")
end
function SRweapon5()
  return has ("settingShopReceiveSlots") and has ("SRweapon5")
end

function SRweapon6()
  return has ("settingShopReceiveSlots") and has ("SRweapon6")
end

function SRweapon7()
  return has ("settingShopReceiveSlots") and has ("SRweapon7")
end

function SRweapon8()
  return has ("settingShopReceiveSlots") and has ("SRweapon8")
end

-- Rhombus Square Shops

function RSitem1()
  return has ("settingShopReceiveSlots") and has ("RSitem1")
end

function RSitem2()
  return has ("settingShopReceiveSlots") and has ("RSitem2")
end

function RSitem3()
  return has ("settingShopReceiveSlots") and has ("RSitem3")
end

function RSitem4()
  return has ("settingShopReceiveSlots") and has ("RSitem4")
end

function RSitem5()
  return has ("settingShopReceiveSlots") and has ("RSitem5")
end

function RSitem6()
  return has ("settingShopReceiveSlots") and has ("RSitem6")
end

function RSitem7()
  return has ("settingShopReceiveSlots") and has ("RSitem7")
end

function RSitem8()
  return has ("settingShopReceiveSlots") and has ("RSitem8")
end

function RSitem9()
  return has ("settingShopReceiveSlots") and has ("RSitem9")
end

function RSitem10()
  return has ("settingShopReceiveSlots") and has ("RSitem10")
end

function RSitem11()
  return has ("settingShopReceiveSlots") and has ("RSitem11")
end

function RSitem12()
  return has ("settingShopReceiveSlots") and has ("RSitem12")
end

function RSitem13()
  return has ("settingShopReceiveSlots") and has ("RSitem13")
end

function RSitem14()
  return has ("settingShopReceiveSlots") and has ("RSitem14")
end

function RSitem15()
  return has ("settingShopReceiveSlots") and has ("RSitem15")
end

function RSweapon1()
  return has ("settingShopReceiveSlots") and has ("RSweapon1")
end

function RSweapon2()
  return has ("settingShopReceiveSlots") and has ("RSweapon2")
end

function RSweapon3()
  return has ("settingShopReceiveSlots") and has ("RSweapon3")
end

function RSweapon4()
  return has ("settingShopReceiveSlots") and has ("RSweapon4")
end
function RSweapon5()
  return has ("settingShopReceiveSlots") and has ("RSweapon5")
end

function RSweapon6()
  return has ("settingShopReceiveSlots") and has ("RSweapon6")
end

function RSweapon7()
  return has ("settingShopReceiveSlots") and has ("RSweapon7")
end

function RSweapon8()
  return has ("settingShopReceiveSlots") and has ("RSweapon8")
end

function RSchef1()
  return has ("settingShopReceiveSlots") and has ("RSchef1")
end

function RSchef2()
  return has ("settingShopReceiveSlots") and has ("RSchef2")
end

function RSchef3()
  return has ("settingShopReceiveSlots") and has ("RSchef3")
end

function RSchef4()
  return has ("settingShopReceiveSlots") and has ("RSchef4")
end

function RSchef5()
  return has ("settingShopReceiveSlots") and has ("RSchef5")
end

function RSchef6()
  return has ("settingShopReceiveSlots") and has ("RSchef6")
end

function RSchef7()
  return has ("settingShopReceiveSlots") and has ("RSchef7")
end

function RSchef8()
  return has ("settingShopReceiveSlots") and has ("RSchef8")
end

function RSchef9()
  return has ("settingShopReceiveSlots") and has ("RSchef9")
end

function RSchef10()
  return has ("settingShopReceiveSlots") and has ("RSchef10")
end

function RSchef11()
  return has ("settingShopReceiveSlots") and has ("RSchef11")
end

function RSchef12()
  return has ("settingShopReceiveSlots") and has ("RSchef12")
end

function RScurio1()
  return has ("settingShopReceiveSlots") and has ("RScurio1")
end

-- Vermillion Wasteland Shops

function VWitem1()
  return has ("settingShopReceiveSlots") and has ("VWitem1")
end

function VWitem2()
  return has ("settingShopReceiveSlots") and has ("VWitem2")
end

function VWitem3()
  return has ("settingShopReceiveSlots") and has ("VWitem3")
end

function VWitem4()
  return has ("settingShopReceiveSlots") and has ("VWitem4")
end

function VWitem5()
  return has ("settingShopReceiveSlots") and has ("VWitem5")
end

function VWitem6()
  return has ("settingShopReceiveSlots") and has ("VWitem6")
end

function VWitem7()
  return has ("settingShopReceiveSlots") and has ("VWitem7")
end

function VWitem8()
  return has ("settingShopReceiveSlots") and has ("VWitem8")
end

function VWweapon1()
  return has ("settingShopReceiveSlots") and has ("VWweapon1")
end

function VWweapon2()
  return has ("settingShopReceiveSlots") and has ("VWweapon2")
end

function VWweapon3()
  return has ("settingShopReceiveSlots") and has ("VWweapon3")
end

function VWweapon4()
  return has ("settingShopReceiveSlots") and has ("VWweapon4")
end
function VWweapon5()
  return has ("settingShopReceiveSlots") and has ("VWweapon5")
end

function VWweapon6()
  return has ("settingShopReceiveSlots") and has ("VWweapon6")
end

function VWweapon7()
  return has ("settingShopReceiveSlots") and has ("VWweapon7")
end

function VWweapon8()
  return has ("settingShopReceiveSlots") and has ("VWweapon8")
end

-- Type Shuffle

function typeSandwich()
  return has ("settingShopReceiveTypes") and has ("sandwich")
end

function typeHiSandwich()
  return has ("settingShopReceiveTypes") and has ("hiSandwich")
end

function typeTea()
  return has ("settingShopReceiveTypes") and has ("greenTea")
end

function typeWater()
  return has ("settingShopReceiveTypes") and has ("justWater")
end

function typeKebab()
  return has ("settingShopReceiveTypes") and has ("kebab")
end

function typeRisotto()
  return has ("settingShopReceiveTypes") and has ("risotto")
end

function typeBun()
  return has ("settingShopReceiveTypes") and has ("spicyBun")
end

function typeFruit()
  return has ("settingShopReceiveTypes") and has ("fruitDrink")
end

function typeCracker()
  return has ("settingShopReceiveTypes") and has ("cracker")
end

function typeVeggie()
  return has ("settingShopReceiveTypes") and has ("veggieSticks")
end

function typeIcecream()
  return has ("settingShopReceiveTypes") and has ("iceCream")
end

function typeLemonjuice()
  return has ("settingShopReceiveTypes") and has ("lemonjuice")
end

function typeCoffee()
  return has ("settingShopReceiveTypes") and has ("coffee")
end

function typePeanuts()
  return has ("settingShopReceiveTypes") and has ("peanuts")
end

function typeMix()
  return has ("settingShopReceiveTypes") and has ("snackMix")
end

function typeRisingStar()
  return has ("settingShopReceiveTypes") and has ("risingStar")
end

function typePepper()
  return has ("settingShopReceiveTypes") and has ("dkPepper")
end

function typeMaultasche()
  return has ("settingShopReceiveTypes") and has ("maultasche")
end

function typeSpaetzle()
  return has ("settingShopReceiveTypes") and has ("spaetzle")
end

function typeDurian()
  return has ("settingShopReceiveTypes") and has ("durian")
end

function typePengo()
  return has ("settingShopReceiveTypes") and has ("pengoPop")
end

function typeBeatZero()
  return has ("settingShopReceiveTypes") and has ("beatZero")
end

function typeWerewolf()
  return has ("settingShopReceiveTypes") and has ("werewolf")
end

function typeMooncake()
  return has ("settingShopReceiveTypes") and has ("mooncake")
end

function typeWillis()
  return has ("settingShopReceiveTypes") and has ("willis")
end

function typePumpkin()
  return has ("settingShopReceiveTypes") and has ("pumpkinCoffee")
end

function typeToast()
  return has ("settingShopReceiveTypes") and has ("toast")
end

function typeOneUp()
  return has ("settingShopReceiveTypes") and has ("oneUp")
end

function typeChiliCon()
  return has ("settingShopReceiveTypes") and has ("chili")
end

function typeSweetTea()
  return has ("settingShopReceiveTypes") and has ("sweetTea")
end

function typeDetector()
  return has ("settingShopReceiveTypes") and has ("chestDetector")
end

function typeBrHelm()
  return has ("settingShopReceiveTypes") and has ("brHelm")
end

function typeBrEdge()
  return has ("settingShopReceiveTypes") and has ("brEdge")
end

function typeBrMail()
  return has ("settingShopReceiveTypes") and has ("brMail")
end

function typeBrBoots()
  return has ("settingShopReceiveTypes") and has ("brBoots")
end

function typeIrHelm()
  return has ("settingShopReceiveTypes") and has ("irHelm")
end

function typeIrEdge()
  return has ("settingShopReceiveTypes") and has ("irEdge")
end

function typeIrMail()
  return has ("settingShopReceiveTypes") and has ("irMail")
end

function typeIrBoots()
  return has ("settingShopReceiveTypes") and has ("irBoots")
end

function typeSilHelm()
  return has ("settingShopReceiveTypes") and has ("silHelm")
end

function typeSilEdge()
  return has ("settingShopReceiveTypes") and has ("silEdge")
end

function typeSilMail()
  return has ("settingShopReceiveTypes") and has ("silMail")
end

function typeSilBoots()
  return has ("settingShopReceiveTypes") and has ("silBoots")
end

function typeStHelm()
  return has ("settingShopReceiveTypes") and has ("stHelm")
end

function typeStEdge()
  return has ("settingShopReceiveTypes") and has ("stEdge")
end

function typeStMail()
  return has ("settingShopReceiveTypes") and has ("stMail")
end

function typeStBoots()
  return has ("settingShopReceiveTypes") and has ("stBoots")
end

function typeTiHelm()
  return has ("settingShopReceiveTypes") and has ("tiHelm")
end

function typeTiEdge()
  return has ("settingShopReceiveTypes") and has ("tiEdge")
end

function typeTiMail()
  return has ("settingShopReceiveTypes") and has ("tiMail")
end

function typeTiBoots()
  return has ("settingShopReceiveTypes") and has ("tiBoots")
end

function typeCoHelm()
  return has ("settingShopReceiveTypes") and has ("coHelm")
end

function typeCoEdge()
  return has ("settingShopReceiveTypes") and has ("coEdge")
end

function typeCoMail()
  return has ("settingShopReceiveTypes") and has ("coMail")
end

function typeCoBoots()
  return has ("settingShopReceiveTypes") and has ("coBoots")
end

function typeLaHelm()
  return has ("settingShopReceiveTypes") and has ("laHelm")
end

function typeLaEdge()
  return has ("settingShopReceiveTypes") and has ("laEdge")
end

function typeLaMail()
  return has ("settingShopReceiveTypes") and has ("laMail")
end

function typeLaBoots()
  return has ("settingShopReceiveTypes") and has ("laBoots")
end

-- Rookie Harbor Shops Reachable

function RHitem1Reach()
  return RHitem1() and (region2() or regionOpen2())
end

function RHitem2Reach()
  return RHitem2() and (region2() or regionOpen2())
end

function RHitem3Reach()
  return RHitem3() and (region2() or regionOpen2())
end

function RHitem4Reach()
  return RHitem4() and (region2() or regionOpen2())
end

function RHitem5Reach()
  return RHitem5() and (region2() or regionOpen2())
end

function RHitem6Reach()
  return RHitem6() and (region2() or regionOpen2())
end

function RHitem7Reach()
  return RHitem7() and (region2() or regionOpen2())
end

function RHitem8Reach()
  return RHitem8() and (region2() or regionOpen2())
end

function RHitem9Reach()
  return RHitem9() and (region2() or regionOpen2())
end

function RHitem10Reach()
  return RHitem10() and (region2() or regionOpen2())
end

function RHitem11Reach()
  return RHitem11() and (region2() or regionOpen2())
end

function RHitem12Reach()
  return RHitem12() and (region2() or regionOpen2())
end

function RHitem13Reach()
  return RHitem13() and (region2() or regionOpen2())
end

function RHitem14Reach()
  return RHitem14() and (region2() or regionOpen2())
end

function RHitem15Reach()
  return RHitem15() and (region2() or regionOpen2())
end

function RHweapon1Reach()
  return RHweapon1() and (region2() or regionOpen2())
end

function RHweapon2Reach()
  return RHweapon2() and (region2() or regionOpen2())
end

function RHweapon3Reach()
  return RHweapon3() and (region2() or regionOpen2())
end

function RHweapon4Reach()
  return RHweapon4() and (region2() or regionOpen2())
end

function RHweapon5Reach()
  return RHweapon5() and (region2() or regionOpen2())
end

function RHweapon6Reach()
  return RHweapon6() and (region2() or regionOpen2())
end

function RHweapon7Reach()
  return RHweapon7() and (region2() or regionOpen2())
end

function RHweapon8Reach()
  return RHweapon8() and (region2() or regionOpen2())
end

function RHweapon9Reach()
  return RHweapon9() and (region2() or regionOpen2())
end

function RHweapon10Reach()
  return RHweapon10() and (region2() or regionOpen2())
end

function RHweapon11Reach()
  return RHweapon11() and (region2() or regionOpen2())
end

function RHweapon12Reach()
  return RHweapon12() and (region2() or regionOpen2())
end

function RHchef1Reach()
  return RHchef1() and (region19() or regionOpen8())
end

function RHchef2Reach()
  return RHchef2() and (region19() or regionOpen8())
end

function RHchef3Reach()
  return RHchef3() and (region19() or regionOpen8())
end

function RHchef4Reach()
  return RHchef4() and (region19() or regionOpen8())
end

function RHchef5Reach()
  return RHchef5() and (region19() or regionOpen8())
end

function RHchef6Reach()
  return RHchef6() and (region19() or regionOpen8())
end

function RHchef7Reach()
  return RHchef7() and (region19() or regionOpen8())
end

function RHchef8Reach()
  return RHchef8() and (region19() or regionOpen8())
end

function RHchef9Reach()
  return RHchef9() and (region19() or regionOpen8())
end

function RHchef10Reach()
  return RHchef10() and (region19() or regionOpen8())
end

function RHchef11Reach()
  return RHchef11() and (region19() or regionOpen8())
end

function RHchef12Reach()
  return RHchef12() and (region19() or regionOpen8())
end

function RHbackWeapon1Reach()
  return RHbackWeapon1() and (region19() or regionOpen8())
end

function RHbackWeapon2Reach()
  return RHbackWeapon2() and (region19() or regionOpen8())
end

function RHbackWeapon3Reach()
  return RHbackWeapon3() and (region19() or regionOpen8())
end

function RHbackWeapon4Reach()
  return RHbackWeapon4() and (region19() or regionOpen8())
end

function RHbackWeapon5Reach()
  return RHbackWeapon5() and (region19() or regionOpen8())
end

function RHbackWeapon6Reach()
  return RHbackWeapon6() and (region19() or regionOpen8())
end

function RHbackWeapon7Reach()
  return RHbackWeapon7() and (region19() or regionOpen8())
end

function RHbackWeapon8Reach()
  return RHbackWeapon8() and (region19() or regionOpen8())
end

function RHtara1Reach()
  return RHtara1() and (region2() or regionOpen2())
end

-- Bergen Trail Shops Reachable

function BThermit1Reach()
  return BThermit1() and (region3() or regionOpen3())
end

function BThermit2Reach()
  return BThermit2() and (region3() or regionOpen3())
end

function BThermit3Reach()
  return BThermit3() and (region3() or regionOpen3())
end

-- Bergen Village Shops Reachable

function BVitem1Reach()
  return BVitem1() and (region3() or regionOpen3())
end

function BVitem2Reach()
  return BVitem2() and (region3() or regionOpen3())
end

function BVitem3Reach()
  return BVitem3() and (region3() or regionOpen3())
end

function BVitem4Reach()
  return BVitem4() and (region3() or regionOpen3())
end

function BVitem5Reach()
  return BVitem5() and (region3() or regionOpen3())
end

function BVitem6Reach()
  return BVitem6() and (region3() or regionOpen3())
end

function BVitem7Reach()
  return BVitem7() and (region3() or regionOpen3())
end

function BVitem8Reach()
  return BVitem8() and (region3() or regionOpen3())
end

function BVitem9Reach()
  return BVitem9() and (region3() or regionOpen3())
end

function BVitem10Reach()
  return BVitem10() and (region3() or regionOpen3())
end

function BVitem11Reach()
  return BVitem11() and (region3() or regionOpen3())
end

function BVitem12Reach()
  return BVitem12() and (region3() or regionOpen3())
end

function BVitem13Reach()
  return BVitem13() and (region3() or regionOpen3())
end

function BVitem14Reach()
  return BVitem14() and (region3() or regionOpen3())
end

function BVitem15Reach()
  return BVitem15() and (region3() or regionOpen3())
end

function BVweapon1Reach()
  return BVweapon1() and (region3() or regionOpen3())
end

function BVweapon2Reach()
  return BVweapon2() and (region3() or regionOpen3())
end

function BVweapon3Reach()
  return BVweapon3() and (region3() or regionOpen3())
end

function BVweapon4Reach()
  return BVweapon4() and (region3() or regionOpen3())
end

-- Bakii Kum Shops Reachable

function BKitem1Reach()
  return BKitem1() and (region11() or regionOpen5())
end

function BKitem2Reach()
  return BKitem2() and (region11() or regionOpen5())
end

function BKitem3Reach()
  return BKitem3() and (region11() or regionOpen5())
end

function BKitem4Reach()
  return BKitem4() and (region11() or regionOpen5())
end

function BKitem5Reach()
  return BKitem5() and (region11() or regionOpen5())
end

function BKitem6Reach()
  return BKitem6() and (region11() or regionOpen5())
end

function BKitem7Reach()
  return BKitem7() and (region11() or regionOpen5())
end

function BKitem8Reach()
  return BKitem8() and (region11() or regionOpen5())
end

function BKitem9Reach()
  return BKitem9() and (region11() or regionOpen5())
end

function BKitem10Reach()
  return BKitem10() and (region11() or regionOpen5())
end

function BKitem11Reach()
  return BKitem11() and (region11() or regionOpen5())
end

function BKitem12Reach()
  return BKitem12() and (region11() or regionOpen5())
end

function BKitem13Reach()
  return BKitem13() and (region11() or regionOpen5())
end

function BKitem14Reach()
  return BKitem14() and (region11() or regionOpen5())
end

function BKitem15Reach()
  return BKitem15() and (region11() or regionOpen5())
end

function BKweapon1Reach()
  return BKweapon1() and (region11() or regionOpen5())
end

function BKweapon2Reach()
  return BKweapon2() and (region11() or regionOpen5())
end

function BKweapon3Reach()
  return BKweapon3() and (region11() or regionOpen5())
end

function BKweapon4Reach()
  return BKweapon4() and (region11() or regionOpen5())
end

function BKweapon5Reach()
  return BKweapon5() and (region11() or regionOpen5())
end

function BKweapon6Reach()
  return BKweapon6() and (region11() or regionOpen5())
end

function BKweapon7Reach()
  return BKweapon7() and (region11() or regionOpen5())
end

function BKweapon8Reach()
  return BKweapon8() and (region11() or regionOpen5())
end

-- Basin Keep Shops Reachable

function BKEitem1Reach()
  return BKEitem1() and (region23() or regionOpen10())
end

function BKEitem2Reach()
  return BKEitem2() and (region23() or regionOpen10())
end

function BKEitem3Reach()
  return BKEitem3() and (region23() or regionOpen10())
end

function BKEitem4Reach()
  return BKEitem4() and (region23() or regionOpen10())
end

function BKEitem5Reach()
  return BKEitem5() and (region23() or regionOpen10())
end

function BKEitem6Reach()
  return BKEitem6() and (region23() or regionOpen10())
end

function BKEitem7Reach()
  return BKEitem7() and (region23() or regionOpen10())
end

function BKEitem8Reach()
  return BKEitem8() and (region23() or regionOpen10())
end

function BKEitem9Reach()
  return BKEitem9() and (region23() or regionOpen10())
end

function BKEitem10Reach()
  return BKEitem10() and (region23() or regionOpen10())
end

function BKEitem11Reach()
  return BKEitem11() and (region23() or regionOpen10())
end

function BKEitem12Reach()
  return BKEitem12() and (region23() or regionOpen10())
end

function BKEitem13Reach()
  return BKEitem13() and (region23() or regionOpen10())
end

function BKEitem14Reach()
  return BKEitem14() and (region23() or regionOpen10())
end

function BKEitem15Reach()
  return BKEitem15() and (region23() or regionOpen10())
end

function BKEweapon1Reach()
  return BKEweapon1() and (region23() or regionOpen10())
end

function BKEweapon2Reach()
  return BKEweapon2() and (region23() or regionOpen10())
end

function BKEweapon3Reach()
  return BKEweapon3() and (region23() or regionOpen10())
end

function BKEweapon4Reach()
  return BKEweapon4() and (region23() or regionOpen10())
end
function BKEweapon5Reach()
  return BKEweapon5() and (region23() or regionOpen10())
end

function BKEweapon6Reach()
  return BKEweapon6() and (region23() or regionOpen10())
end

function BKEweapon7Reach()
  return BKEweapon7() and (region23() or regionOpen10())
end

function BKEweapon8Reach()
  return BKEweapon8() and (region23() or regionOpen10())
end

function BKEvendor1Reach()
  return BKEvendor1() and (region23() or regionOpen10())
end

function BKEvendor2Reach()
  return BKEvendor2() and (region23() or regionOpen10())
end

function BKEvendor3Reach()
  return BKEvendor3() and (region23() or regionOpen10())
end

function BKEvendor4Reach()
  return BKEvendor4() and (region23() or regionOpen10())
end

function BKEvendor5Reach()
  return BKEvendor5() and (region23() or regionOpen10())
end

function BKEvendor6Reach()
  return BKEvendor6() and (region23() or regionOpen10())
end

function BKEvendor7Reach()
  return BKEvendor7() and (region23() or regionOpen10())
end

function BKEvendor8Reach()
  return BKEvendor8() and (region23() or regionOpen10())
end

function BKEvendor9Reach()
  return BKEvendor9() and (region23() or regionOpen10())
end

function BKEvendor10Reach()
  return BKEvendor10() and (region23() or regionOpen10())
end

function BKEvendor11Reach()
  return BKEvendor11() and (region23() or regionOpen10())
end

function BKEvendor12Reach()
  return BKEvendor12() and (region23() or regionOpen10())
end

function BKEvendor13Reach()
  return BKEvendor13() and (region23() or regionOpen10())
end

function BKEvendor14Reach()
  return BKEvendor14() and (region23() or regionOpen10())
end

function BKEvendor15Reach()
  return BKEvendor15() and (region23() or regionOpen10())
end

function BKEcalzone1Reach()
  return BKEcalzone1() and (region23() or regionOpen10())
end

-- Sapphire Ridge Shops Reachable

function SRitem1Reach()
  return SRitem1() and (region31() or regionOpen16())
end

function SRitem2Reach()
  return SRitem2() and (region31() or regionOpen16())
end

function SRitem3Reach()
  return SRitem3() and (region31() or regionOpen16())
end

function SRitem4Reach()
  return SRitem4() and (region31() or regionOpen16())
end

function SRitem5Reach()
  return SRitem5() and (region31() or regionOpen16())
end

function SRitem6Reach()
  return SRitem6() and (region31() or regionOpen16())
end

function SRitem7Reach()
  return SRitem7() and (region31() or regionOpen16())
end

function SRitem8Reach()
  return SRitem8() and (region31() or regionOpen16())
end

function SRitem9Reach()
  return SRitem9() and (region31() or regionOpen16())
end

function SRitem10Reach()
  return SRitem10() and (region31() or regionOpen16())
end

function SRitem11Reach()
  return SRitem11() and (region31() or regionOpen16())
end

function SRitem12Reach()
  return SRitem12() and (region31() or regionOpen16())
end

function SRitem13Reach()
  return SRitem13() and (region31() or regionOpen16())
end

function SRitem14Reach()
  return SRitem14() and (region31() or regionOpen16())
end

function SRitem15Reach()
  return SRitem15() and (region31() or regionOpen16())
end

function SRweapon1Reach()
  return SRweapon1() and (region31() or regionOpen16())
end

function SRweapon2Reach()
  return SRweapon2() and (region31() or regionOpen16())
end

function SRweapon3Reach()
  return SRweapon3() and (region31() or regionOpen16())
end

function SRweapon4Reach()
  return SRweapon4() and (region31() or regionOpen16())
end
function SRweapon5Reach()
  return SRweapon5() and (region31() or regionOpen16())
end

function SRweapon6Reach()
  return SRweapon6() and (region31() or regionOpen16())
end

function SRweapon7Reach()
  return SRweapon7() and (region31() or regionOpen16())
end

function SRweapon8Reach()
  return SRweapon8() and (region31() or regionOpen16())
end

-- Rhombus Square Shops Reachable

function RSitem1Reach()
  return RSitem1() and (region33() or regionOpen20())
end

function RSitem2Reach()
  return RSitem2() and (region33() or regionOpen20())
end

function RSitem3Reach()
  return RSitem3() and (region33() or regionOpen20())
end

function RSitem4Reach()
  return RSitem4() and (region33() or regionOpen20())
end

function RSitem5Reach()
  return RSitem5() and (region33() or regionOpen20())
end

function RSitem6Reach()
  return RSitem6() and (region33() or regionOpen20())
end

function RSitem7Reach()
  return RSitem7() and (region33() or regionOpen20())
end

function RSitem8Reach()
  return RSitem8() and (region33() or regionOpen20())
end

function RSitem9Reach()
  return RSitem9() and (region33() or regionOpen20())
end

function RSitem10Reach()
  return RSitem10() and (region33() or regionOpen20())
end

function RSitem11Reach()
  return RSitem11() and (region33() or regionOpen20())
end

function RSitem12Reach()
  return RSitem12() and (region33() or regionOpen20())
end

function RSitem13Reach()
  return RSitem13() and (region33() or regionOpen20())
end

function RSitem14Reach()
  return RSitem14() and (region33() or regionOpen20())
end

function RSitem15Reach()
  return RSitem15() and (region33() or regionOpen20())
end

function RSweapon1Reach()
  return RSweapon1() and (region33() or regionOpen20())
end

function RSweapon2Reach()
  return RSweapon2() and (region33() or regionOpen20())
end

function RSweapon3Reach()
  return RSweapon3() and (region33() or regionOpen20())
end

function RSweapon4Reach()
  return RSweapon4() and (region33() or regionOpen20())
end
function RSweapon5Reach()
  return RSweapon5() and (region33() or regionOpen20())
end

function RSweapon6Reach()
  return RSweapon6() and (region33() or regionOpen20())
end

function RSweapon7Reach()
  return RSweapon7() and (region33() or regionOpen20())
end

function RSweapon8Reach()
  return RSweapon8() and (region33() or regionOpen20())
end

function RSchef1Reach()
  return RSchef1() and (region33() or regionOpen20())
end

function RSchef2Reach()
  return RSchef2() and (region33() or regionOpen20())
end

function RSchef3Reach()
  return RSchef3() and (region33() or regionOpen20())
end

function RSchef4Reach()
  return RSchef4() and (region33() or regionOpen20())
end

function RSchef5Reach()
  return RSchef5() and (region33() or regionOpen20())
end

function RSchef6Reach()
  return RSchef6() and (region33() or regionOpen20())
end

function RSchef7Reach()
  return RSchef7() and (region33() or regionOpen20())
end

function RSchef8Reach()
  return RSchef8() and (region33() or regionOpen20())
end

function RSchef9Reach()
  return RSchef9() and (region33() or regionOpen20())
end

function RSchef10Reach()
  return RSchef10() and (region33() or regionOpen20())
end

function RSchef11Reach()
  return RSchef11() and (region33() or regionOpen20())
end

function RSchef12Reach()
  return RSchef12() and (region33() or regionOpen20())
end

function RScurio1Reach()
  return RScurio1() and (region33() or regionOpen20())
end

-- Vermillion Wasteland Shops Reachable

function VWitem1Reach()
  return VWitem1() and (region22() or regionOpen18()) and (has("vwLockOff") or (has("vwLockOn") and has("meteorShade")))
end

function VWitem2Reach()
  return VWitem2() and (region22() or regionOpen18()) and (has("vwLockOff") or (has("vwLockOn") and has("meteorShade")))
end

function VWitem3Reach()
  return VWitem3() and (region22() or regionOpen18()) and (has("vwLockOff") or (has("vwLockOn") and has("meteorShade")))
end

function VWitem4Reach()
  return VWitem4() and (region22() or regionOpen18()) and (has("vwLockOff") or (has("vwLockOn") and has("meteorShade")))
end

function VWitem5Reach()
  return VWitem5() and (region22() or regionOpen18()) and (has("vwLockOff") or (has("vwLockOn") and has("meteorShade")))
end

function VWitem6Reach()
  return VWitem6() and (region22() or regionOpen18()) and (has("vwLockOff") or (has("vwLockOn") and has("meteorShade")))
end

function VWitem7Reach()
  return VWitem7() and (region22() or regionOpen18()) and (has("vwLockOff") or (has("vwLockOn") and has("meteorShade")))
end

function VWitem8Reach()
  return VWitem8() and (region22() or regionOpen18()) and (has("vwLockOff") or (has("vwLockOn") and has("meteorShade")))
end

function VWweapon1Reach()
  return VWweapon1() and (region22() or regionOpen18()) and (has("vwLockOff") or (has("vwLockOn") and has("meteorShade")))
end

function VWweapon2Reach()
  return VWweapon2() and (region22() or regionOpen18()) and (has("vwLockOff") or (has("vwLockOn") and has("meteorShade")))
end

function VWweapon3Reach()
  return VWweapon3() and (region22() or regionOpen18()) and (has("vwLockOff") or (has("vwLockOn") and has("meteorShade")))
end

function VWweapon4Reach()
  return VWweapon4() and (region22() or regionOpen18()) and (has("vwLockOff") or (has("vwLockOn") and has("meteorShade")))
end
function VWweapon5Reach()
  return VWweapon5() and (region22() or regionOpen18()) and (has("vwLockOff") or (has("vwLockOn") and has("meteorShade")))
end

function VWweapon6Reach()
  return VWweapon6() and (region22() or regionOpen18()) and (has("vwLockOff") or (has("vwLockOn") and has("meteorShade")))
end

function VWweapon7Reach()
  return VWweapon7() and (region22() or regionOpen18()) and (has("vwLockOff") or (has("vwLockOn") and has("meteorShade")))
end

function VWweapon8Reach()
  return VWweapon8() and (region22() or regionOpen18()) and (has("vwLockOff") or (has("vwLockOn") and has("meteorShade")))
end

-- Shop Send Type

function sandwichSlot()
  return RHitem1Reach() or BVitem1Reach() or BKitem1Reach() or BKEvendor1Reach() or BKEitem1Reach() or SRitem1Reach() or RSitem1Reach() or VWitem1Reach()
end

function sandwichShop()
  return false
end

-- Shop Types Global Handler

-- function ReplaceShopMapping()
--   local shop_option = Tracker:FindObjectForCode("<shop_option>").Active
--   if shop_option then -- == true\
--     LOCATION_MAPPING[<ID here>] = {@location1, @location2, ....}
--     LOCATION_MAPPING[<other ID here>] = {@location1, @location2, ....}
--     LOCATION_MAPPING[<more other ID here>] = {@location1, @location2, ....}
--   else 
--     LOCATION_MAPPING[<ID here>] = {@location1}
--     LOCATION_MAPPING[<other ID here>] = {@location2}
--     LOCATION_MAPPING[<more other ID here>] = {....}
--   end
-- end

-- ScriptHost:AddWatchForCode("<shop_option> Change", "<shop_option>", ReplaceShopMapping)
