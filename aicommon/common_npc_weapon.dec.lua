function Common_NPC_AI_GetWeponParam(arg0, arg1, arg2, arg3)
    local f1_local0 = arg1:GetCurrentEquipWeaponId(TARGET_SELF, arg3)
    local f1_local1 = arg1:GetWeaponBehaviorVarID(f1_local0)
    local f1_local2 = 5
    local f1_local3 = 5
    local f1_local4 = 3
    local f1_local5 = 3
    local f1_local6 = 3
    local f1_local7 = 3
    local f1_local8 = 3
    local f1_local9 = 3
    local f1_local10 = 3
    local f1_local11 = 3
    local f1_local12 = 3
    local f1_local13 = 3
    local f1_local14 = 3
    local f1_local15 = 3
    local f1_local16 = 3
    local f1_local17 = 3
    local f1_local18 = 0
    local f1_local19 = 0
    local f1_local20 = 1
    local f1_local21 = 1
    local f1_local22 = 3
    local f1_local23 = 3
    local f1_local24 = 5
    local f1_local25 = 2
    if f1_local1 >= 100 and f1_local1 <= 199 then
        f1_local2 = 1.1
        f1_local3 = 1
        f1_local4 = 1.2
        f1_local5 = 1.1
        f1_local6 = 1.4
        f1_local7 = 1.2
        f1_local8 = 1.4
        f1_local9 = 1.2
        f1_local10 = 1.2
        f1_local11 = 1.2
        f1_local12 = 2
        f1_local13 = 2.4
        f1_local14 = 2
        f1_local15 = 2.4
        f1_local17 = 2
        f1_local17 = 2.4
        f1_local18 = 0
        f1_local20 = 1
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 6
        f1_local25 = 2
    end
    if f1_local1 >= 200 and f1_local1 <= 299 then
        f1_local2 = 2.2
        f1_local3 = 2
        f1_local4 = 2
        f1_local5 = 1.5
        f1_local6 = 2.5
        f1_local7 = 2
        f1_local8 = 2.5
        f1_local9 = 1.5
        f1_local10 = 2.2
        f1_local11 = 2.2
        f1_local12 = 3
        f1_local13 = 3
        f1_local14 = 2.8
        f1_local15 = 2.5
        f1_local17 = 3.9
        f1_local17 = 2.4
        f1_local18 = 0
        f1_local20 = 1
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local1 >= 300 and f1_local1 <= 399 then
        f1_local2 = 1.8
        f1_local3 = 1.6
        f1_local4 = 2.3
        f1_local5 = 2.1
        f1_local6 = 3.5
        f1_local7 = 2
        f1_local8 = 2.3
        f1_local9 = 2.8
        f1_local10 = 2.8
        f1_local11 = 2.4
        f1_local12 = 4.2
        f1_local13 = 3.4
        f1_local14 = 2.2
        f1_local15 = 2.6
        f1_local17 = 3
        f1_local17 = 3
        f1_local18 = 20
        f1_local19 = 4
        f1_local20 = 1
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 4
        f1_local25 = 2
    end
    if f1_local1 >= 400 and f1_local1 <= 499 then
        f1_local2 = 2.9
        f1_local3 = 2.7
        f1_local4 = 2.9
        f1_local5 = 2.7
        f1_local6 = 4
        f1_local7 = 3.3
        f1_local8 = 4
        f1_local9 = 2.4
        f1_local10 = 2.9
        f1_local11 = 3.2
        f1_local12 = 4
        f1_local13 = 5
        f1_local14 = 3.6
        f1_local15 = 3.5
        f1_local17 = 4
        f1_local17 = 4
        f1_local18 = 0
        f1_local20 = 2
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 3
        f1_local25 = 2
    end
    if f1_local1 >= 500 and f1_local1 <= 599 then
        f1_local2 = 2.5
        f1_local3 = 2
        f1_local4 = 2.4
        f1_local5 = 2.2
        f1_local6 = 2.2
        f1_local7 = 2.5
        f1_local8 = 2.5
        f1_local9 = 2.5
        f1_local10 = 2.5
        f1_local11 = 2.2
        f1_local12 = 5
        f1_local13 = 5.2
        f1_local14 = 2
        f1_local15 = 2
        f1_local17 = 4.4
        f1_local17 = 2.4
        f1_local18 = 0
        f1_local20 = 12
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 6
        f1_local25 = 2
    end
    if f1_local1 >= 600 and f1_local1 <= 699 then
        f1_local2 = 2.7
        f1_local3 = 2.2
        f1_local4 = 2.6
        f1_local5 = 2.4
        f1_local6 = 2.9
        f1_local7 = 2.7
        f1_local8 = 2.7
        f1_local9 = 2.5
        f1_local10 = 2.5
        f1_local11 = 2.2
        f1_local12 = 5
        f1_local13 = 5.2
        f1_local14 = 2
        f1_local15 = 2
        f1_local17 = 4.4
        f1_local17 = 2.4
        f1_local18 = 0
        f1_local20 = 12
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 6
        f1_local25 = 2
    end
    if f1_local1 >= 700 and f1_local1 <= 799 then
        f1_local2 = 2.2
        f1_local3 = 2
        f1_local4 = 2.2
        f1_local5 = 2
        f1_local6 = 1.8
        f1_local7 = 1.7
        f1_local8 = 1.8
        f1_local9 = 1.7
        f1_local10 = 2.2
        f1_local11 = 2.2
        f1_local12 = 3
        f1_local13 = 3.4
        f1_local14 = 1.2
        f1_local15 = 1.4
        f1_local17 = 3
        f1_local17 = 2.4
        f1_local18 = 0
        f1_local20 = 1
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local1 >= 800 and f1_local1 <= 899 then
        f1_local2 = 2.4
        f1_local3 = 2.2
        f1_local4 = 2.8
        f1_local5 = 2.4
        f1_local6 = 3.8
        f1_local7 = 2
        f1_local8 = 3.1
        f1_local9 = 2.8
        f1_local10 = 2.8
        f1_local11 = 2.4
        f1_local12 = 4.2
        f1_local13 = 3.4
        f1_local14 = 2.2
        f1_local15 = 1.4
        f1_local17 = 3
        f1_local17 = 3
        f1_local18 = 0
        f1_local20 = 1
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 4
        f1_local25 = 2
    end
    if f1_local1 >= 900 and f1_local1 <= 999 then
        f1_local2 = 2.4
        f1_local3 = 2.3
        f1_local4 = 2.4
        f1_local5 = 2.3
        f1_local6 = 2.8
        f1_local7 = 2.5
        f1_local8 = 2.8
        f1_local9 = 2.5
        f1_local10 = 2.2
        f1_local11 = 2.2
        f1_local12 = 4
        f1_local13 = 4.2
        f1_local14 = 1.2
        f1_local15 = 1.4
        f1_local17 = 3
        f1_local17 = 2.4
        f1_local18 = 0
        f1_local20 = 11
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local1 >= 1000 and f1_local1 <= 1099 then
        f1_local2 = 2.2
        f1_local3 = 2
        f1_local4 = 2.2
        f1_local5 = 2
        f1_local6 = 2
        f1_local7 = 1.8
        f1_local8 = 2.2
        f1_local9 = 2
        f1_local10 = 2
        f1_local11 = 2.2
        f1_local12 = 3.4
        f1_local13 = 2.2
        f1_local14 = 2.2
        f1_local15 = 2
        f1_local17 = 3
        f1_local17 = 2.4
        f1_local18 = 0
        f1_local20 = 2
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local1 >= 1100 and f1_local1 <= 1199 then
        f1_local2 = 1.6
        f1_local3 = 1.3
        f1_local4 = 1.8
        f1_local5 = 1.3
        f1_local6 = 1.6
        f1_local7 = 1.3
        f1_local8 = 1.9
        f1_local9 = 1.2
        f1_local10 = 1.6
        f1_local11 = 1.6
        f1_local12 = 2.9
        f1_local13 = 2.1
        f1_local14 = 1
        f1_local15 = 1
        f1_local17 = 2.2
        f1_local17 = 2
        f1_local18 = 20
        f1_local19 = 1.5
        f1_local20 = 1
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local1 >= 1200 and f1_local1 <= 1299 then
        f1_local2 = 2.4
        f1_local3 = 2.2
        f1_local4 = 2.8
        f1_local5 = 2.4
        f1_local6 = 3.8
        f1_local7 = 2
        f1_local8 = 3.1
        f1_local9 = 2.8
        f1_local10 = 2.8
        f1_local11 = 2.4
        f1_local12 = 4.2
        f1_local13 = 3.4
        f1_local14 = 2.2
        f1_local15 = 1.4
        f1_local17 = 3
        f1_local17 = 3
        f1_local18 = 0
        f1_local20 = 1
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 4
        f1_local25 = 2
    end
    if f1_local1 >= 1300 and f1_local1 <= 1399 then
        f1_local2 = 1.6
        f1_local3 = 1.3
        f1_local4 = 1.8
        f1_local5 = 1.3
        f1_local6 = 1.6
        f1_local7 = 1.3
        f1_local8 = 1.9
        f1_local9 = 1.2
        f1_local10 = 1.6
        f1_local11 = 1.6
        f1_local12 = 2.9
        f1_local13 = 2.1
        f1_local14 = 1
        f1_local15 = 1
        f1_local17 = 2.2
        f1_local17 = 2
        f1_local18 = 20
        f1_local20 = 1
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local1 >= 1400 and f1_local1 <= 1499 then
        f1_local2 = 1.7
        f1_local3 = 1.5
        f1_local4 = 1.4
        f1_local5 = 1.3
        f1_local6 = 1.4
        f1_local7 = 1.2
        f1_local8 = 1.4
        f1_local9 = 1.2
        f1_local10 = 1.7
        f1_local11 = 1.6
        f1_local12 = 3
        f1_local13 = 3
        f1_local14 = 1.1
        f1_local15 = 1.2
        f1_local17 = 3
        f1_local17 = 2.4
        f1_local18 = 0
        f1_local20 = 1
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local1 >= 1500 and f1_local1 <= 1599 then
        f1_local2 = 2.2
        f1_local3 = 2
        f1_local4 = 2.4
        f1_local5 = 2.2
        f1_local6 = 2.8
        f1_local7 = 2.5
        f1_local8 = 2.8
        f1_local9 = 2.5
        f1_local10 = 2.2
        f1_local11 = 2.2
        f1_local12 = 3
        f1_local13 = 2.4
        f1_local14 = 1.2
        f1_local15 = 1.4
        f1_local17 = 3
        f1_local17 = 2.4
        f1_local18 = 0
        f1_local20 = 1
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local1 >= 1600 and f1_local1 <= 1699 then
        f1_local2 = 2.7
        f1_local3 = 2.5
        f1_local4 = 2.5
        f1_local5 = 2.5
        f1_local6 = 2.8
        f1_local7 = 3
        f1_local8 = 3.5
        f1_local9 = 3.7
        f1_local10 = 2.7
        f1_local11 = 2.2
        f1_local12 = 5
        f1_local13 = 5
        f1_local14 = 2.6
        f1_local15 = 2.6
        f1_local17 = 4.2
        f1_local17 = 3
        f1_local18 = 0
        f1_local20 = 12
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 4
        f1_local25 = 2
    end
    if f1_local1 >= 1700 and f1_local1 <= 1799 then
        f1_local2 = 3
        f1_local3 = 3
        f1_local4 = 3
        f1_local5 = 3
        f1_local6 = 3
        f1_local7 = 3
        f1_local8 = 3
        f1_local9 = 3
        f1_local10 = 3
        f1_local11 = 2.2
        f1_local12 = 5.3
        f1_local13 = 4.3
        f1_local14 = 2.6
        f1_local15 = 2.6
        f1_local17 = 4.2
        f1_local17 = 3
        f1_local18 = 0
        f1_local20 = 12
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 4
        f1_local25 = 2
    end
    if f1_local1 >= 1800 and f1_local1 <= 1899 then
        f1_local2 = 3.2
        f1_local3 = 2.2
        f1_local4 = 3.2
        f1_local5 = 2.6
        f1_local6 = 2.8
        f1_local7 = 3
        f1_local8 = 3.5
        f1_local9 = 3.7
        f1_local10 = 2.7
        f1_local11 = 2.2
        f1_local12 = 3.7
        f1_local13 = 3.7
        f1_local14 = 2.6
        f1_local15 = 2.6
        f1_local17 = 4.2
        f1_local17 = 3
        f1_local18 = 0
        f1_local20 = 11
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local1 >= 1900 and f1_local1 <= 1999 then
        f1_local2 = 3.2
        f1_local3 = 3
        f1_local4 = 3.2
        f1_local5 = 3
        f1_local6 = 2.8
        f1_local7 = 3
        f1_local8 = 3.5
        f1_local9 = 3.7
        f1_local10 = 2.7
        f1_local11 = 2.2
        f1_local12 = 5
        f1_local13 = 5
        f1_local14 = 2.6
        f1_local15 = 2.6
        f1_local17 = 4.2
        f1_local17 = 3
        f1_local18 = 0
        f1_local20 = 11
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local1 >= 2000 and f1_local1 <= 2099 then
        f1_local2 = 4.2
        f1_local3 = 4.6
        f1_local4 = 4.2
        f1_local5 = 4.6
        f1_local6 = 4.8
        f1_local7 = 4.2
        f1_local8 = 4.2
        f1_local9 = 4.7
        f1_local10 = 4.2
        f1_local11 = 4.2
        f1_local12 = 6
        f1_local13 = 6
        f1_local14 = 3.6
        f1_local15 = 3.6
        f1_local17 = 5.2
        f1_local17 = 4
        f1_local18 = 0
        f1_local20 = 1
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 3
        f1_local25 = 2
    end
    if f1_local1 >= 2100 and f1_local1 <= 2199 then
        f1_local2 = 1.2
        f1_local3 = 1
        f1_local4 = 1.1
        f1_local5 = 0.8
        f1_local6 = 1.2
        f1_local7 = 1
        f1_local8 = 1.6
        f1_local9 = 1.7
        f1_local10 = 1
        f1_local11 = 1.2
        f1_local12 = 2.5
        f1_local13 = 3
        f1_local14 = 0.8
        f1_local15 = 1.2
        f1_local17 = 3.5
        f1_local17 = 1.2
        f1_local18 = 0
        f1_local20 = 2
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 6
        f1_local25 = 2
    end
    if f1_local1 >= 2200 and f1_local1 <= 2299 then
        f1_local2 = 1.4
        f1_local3 = 1.2
        f1_local4 = 2
        f1_local5 = 1.3
        f1_local6 = 2
        f1_local7 = 1.3
        f1_local8 = 2
        f1_local9 = 1.3
        f1_local10 = 1.4
        f1_local11 = 1.4
        f1_local12 = 3.2
        f1_local13 = 3.2
        f1_local14 = 1.8
        f1_local15 = 1.8
        f1_local17 = 3.5
        f1_local17 = 3.5
        f1_local18 = 0
        f1_local20 = 2
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 6
        f1_local25 = 2
    end
    if f1_local1 >= 2300 and f1_local1 <= 2399 then
        f1_local2 = 2.2
        f1_local3 = 2
        f1_local4 = 2.4
        f1_local5 = 2.2
        f1_local6 = 2.8
        f1_local7 = 2.5
        f1_local8 = 2.8
        f1_local9 = 2.5
        f1_local10 = 2.2
        f1_local11 = 2.2
        f1_local12 = 3
        f1_local13 = 2.4
        f1_local14 = 1.2
        f1_local15 = 1.4
        f1_local17 = 3
        f1_local17 = 2.4
        f1_local18 = 0
        f1_local20 = 2
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local1 >= 2400 and f1_local1 <= 2499 then
        f1_local2 = 2.2
        f1_local3 = 1.8
        f1_local4 = 2.2
        f1_local5 = 1.8
        f1_local6 = 2.2
        f1_local7 = 2
        f1_local8 = 2.2
        f1_local9 = 2
        f1_local10 = 2.2
        f1_local11 = 2.2
        f1_local12 = 3
        f1_local13 = 2.4
        f1_local14 = 1.2
        f1_local15 = 1.4
        f1_local17 = 3
        f1_local17 = 2.4
        f1_local18 = 0
        f1_local20 = 11
        f1_local21 = 11
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local1 >= 3000 and f1_local1 <= 3099 then
        f1_local2 = 1
        f1_local3 = 1
        f1_local4 = 1
        f1_local5 = 1
        f1_local6 = 1
        f1_local7 = 1
        f1_local8 = 1
        f1_local9 = 1
        f1_local10 = 1
        f1_local11 = 1
        f1_local12 = 1
        f1_local13 = 1
        f1_local14 = 1
        f1_local15 = 1
        f1_local17 = 1
        f1_local17 = 1
        f1_local18 = 0
        f1_local20 = 11
        f1_local21 = 10
        f1_local22 = 1
        f1_local23 = 1
        f1_local24 = 1
        f1_local25 = 1
    end
    if f1_local1 >= 3100 and f1_local1 <= 3199 then
        f1_local2 = 1
        f1_local3 = 1
        f1_local4 = 1
        f1_local5 = 1
        f1_local6 = 1
        f1_local7 = 1
        f1_local8 = 1
        f1_local9 = 1
        f1_local10 = 1
        f1_local11 = 1
        f1_local12 = 1
        f1_local13 = 1
        f1_local14 = 1
        f1_local15 = 1
        f1_local17 = 1
        f1_local17 = 1
        f1_local18 = 0
        f1_local20 = 11
        f1_local21 = 10
        f1_local22 = 1
        f1_local23 = 1
        f1_local24 = 1
        f1_local25 = 1
    end
    if f1_local1 >= 3200 and f1_local1 <= 3299 then
        f1_local2 = 1
        f1_local3 = 1
        f1_local4 = 1
        f1_local5 = 1
        f1_local6 = 1
        f1_local7 = 1
        f1_local8 = 1
        f1_local9 = 1
        f1_local10 = 1
        f1_local11 = 1
        f1_local12 = 1
        f1_local13 = 1
        f1_local14 = 1
        f1_local15 = 1
        f1_local17 = 1
        f1_local17 = 1
        f1_local18 = 0
        f1_local20 = 11
        f1_local21 = 10
        f1_local22 = 1
        f1_local23 = 1
        f1_local24 = 1
        f1_local25 = 1
    end
    if f1_local1 >= 3300 and f1_local1 <= 3399 then
        f1_local2 = 2.2
        f1_local3 = 2
        f1_local4 = 2.4
        f1_local5 = 2.2
        f1_local6 = 2.8
        f1_local7 = 2.5
        f1_local8 = 2.8
        f1_local9 = 2.5
        f1_local10 = 2.2
        f1_local11 = 2.2
        f1_local12 = 3
        f1_local13 = 2.4
        f1_local14 = 1.2
        f1_local15 = 1.4
        f1_local17 = 3
        f1_local17 = 2.4
        f1_local18 = 1
        f1_local20 = 30
        f1_local21 = 30
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local1 >= 3400 and f1_local1 <= 3499 then
        f1_local2 = 2.2
        f1_local3 = 2
        f1_local4 = 2.4
        f1_local5 = 2.2
        f1_local6 = 2.8
        f1_local7 = 2.5
        f1_local8 = 2.8
        f1_local9 = 2.5
        f1_local10 = 2.2
        f1_local11 = 2.2
        f1_local12 = 3
        f1_local13 = 2.4
        f1_local14 = 1.2
        f1_local15 = 1.4
        f1_local17 = 3
        f1_local17 = 2.4
        f1_local18 = 1
        f1_local20 = 30
        f1_local21 = 30
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local1 >= 3500 and f1_local1 <= 3599 then
        f1_local2 = 2.2
        f1_local3 = 2
        f1_local4 = 2.4
        f1_local5 = 2.2
        f1_local6 = 2.8
        f1_local7 = 2.5
        f1_local8 = 2.8
        f1_local9 = 2.5
        f1_local10 = 2.2
        f1_local11 = 2.2
        f1_local12 = 3
        f1_local13 = 2.4
        f1_local14 = 1.2
        f1_local15 = 1.4
        f1_local17 = 3
        f1_local17 = 2.4
        f1_local18 = 1
        f1_local20 = 30
        f1_local21 = 30
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local1 >= 3600 and f1_local1 <= 3699 then
        f1_local2 = 2.2
        f1_local3 = 2
        f1_local4 = 2.4
        f1_local5 = 2.2
        f1_local6 = 2.8
        f1_local7 = 2.5
        f1_local8 = 2.8
        f1_local9 = 2.5
        f1_local10 = 2.2
        f1_local11 = 2.2
        f1_local12 = 3
        f1_local13 = 2.4
        f1_local14 = 1.2
        f1_local15 = 1.4
        f1_local17 = 3
        f1_local17 = 2.4
        f1_local18 = 1
        f1_local20 = 30
        f1_local21 = 30
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local1 >= 4000 and f1_local1 <= 4099 then
        f1_local2 = 20
        f1_local3 = 20
        f1_local4 = 20
        f1_local5 = 20
        f1_local6 = 20
        f1_local7 = 20
        f1_local8 = 20
        f1_local9 = 20
        f1_local10 = 20
        f1_local11 = 20
        f1_local12 = 20
        f1_local13 = 20
        f1_local14 = 20
        f1_local15 = 20
        f1_local17 = 20
        f1_local17 = 20
        f1_local18 = 0
        f1_local20 = 20
        f1_local21 = 20
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 3
        f1_local25 = 2
    end
    if f1_local1 >= 4100 and f1_local1 <= 4199 then
        f1_local2 = 20
        f1_local3 = 20
        f1_local4 = 20
        f1_local5 = 20
        f1_local6 = 20
        f1_local7 = 20
        f1_local8 = 20
        f1_local9 = 20
        f1_local10 = 20
        f1_local11 = 20
        f1_local12 = 20
        f1_local13 = 20
        f1_local14 = 20
        f1_local15 = 20
        f1_local17 = 20
        f1_local17 = 20
        f1_local18 = 0
        f1_local20 = 20
        f1_local21 = 20
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 3
        f1_local25 = 2
    end
    if f1_local1 >= 4200 and f1_local1 <= 4299 then
        f1_local2 = 20
        f1_local3 = 20
        f1_local4 = 20
        f1_local5 = 20
        f1_local6 = 20
        f1_local7 = 20
        f1_local8 = 20
        f1_local9 = 20
        f1_local10 = 20
        f1_local11 = 20
        f1_local12 = 20
        f1_local13 = 20
        f1_local14 = 20
        f1_local15 = 20
        f1_local17 = 20
        f1_local17 = 20
        f1_local18 = 0
        f1_local20 = 20
        f1_local21 = 20
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 3
        f1_local25 = 2
    end
    if f1_local1 >= 4300 and f1_local1 <= 4399 then
        f1_local2 = 2.2
        f1_local3 = 2
        f1_local4 = 2.4
        f1_local5 = 2.2
        f1_local6 = 2.8
        f1_local7 = 2.5
        f1_local8 = 2.8
        f1_local9 = 2.5
        f1_local10 = 2.2
        f1_local11 = 2.2
        f1_local12 = 3
        f1_local13 = 2.4
        f1_local14 = 1.2
        f1_local15 = 1.4
        f1_local17 = 3
        f1_local17 = 2.4
        f1_local18 = 0
        f1_local20 = 20
        f1_local21 = 20
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local1 >= 4400 and f1_local1 <= 4499 then
        f1_local2 = 2.2
        f1_local3 = 2
        f1_local4 = 2.4
        f1_local5 = 2.2
        f1_local6 = 2.8
        f1_local7 = 2.5
        f1_local8 = 2.8
        f1_local9 = 2.5
        f1_local10 = 2.2
        f1_local11 = 2.2
        f1_local12 = 3
        f1_local13 = 2.4
        f1_local14 = 1.2
        f1_local15 = 1.4
        f1_local17 = 3
        f1_local17 = 2.4
        f1_local18 = 0
        f1_local20 = 20
        f1_local21 = 20
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local0 >= 2090000 and f1_local0 <= 2099999 then
        f1_local2 = 1.8
        f1_local3 = 1.6
        f1_local4 = 2.3
        f1_local5 = 2.1
        f1_local6 = 3.5
        f1_local7 = 2
        f1_local8 = 2.3
        f1_local9 = 2.8
        f1_local10 = 2.8
        f1_local11 = 2.4
        f1_local12 = 4.2
        f1_local13 = 3.4
        f1_local14 = 2.2
        f1_local15 = 2.6
        f1_local17 = 3
        f1_local17 = 3
        f1_local18 = 20
        f1_local19 = 4
        f1_local20 = 1
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 4
        f1_local25 = 2
    end
    if f1_local0 >= 9010000 and f1_local0 <= 9019999 then
        f1_local2 = 3.2
        f1_local3 = 3.1
        f1_local4 = 3.2
        f1_local5 = 3.1
        f1_local6 = 3.8
        f1_local7 = 3.5
        f1_local8 = 3.2
        f1_local9 = 3.3
        f1_local10 = 3.1
        f1_local11 = 3
        f1_local12 = 4.8
        f1_local13 = 5
        f1_local14 = 2.2
        f1_local15 = 2.4
        f1_local17 = 3.8
        f1_local17 = 3.2
        f1_local18 = 0
        f1_local20 = 2
        f1_local21 = 1
        f1_local22 = 0
        f1_local23 = 0
        f1_local24 = 5
        f1_local25 = 2
    end
    if f1_local0 >= 15120000 and f1_local0 <= 15129999 then
        f1_local8 = 1
        f1_local9 = 1
    end
    if f1_local0 == 3530 then
        f1_local8 = 1
        f1_local9 = 1
    end
    if arg3 == ARM_R then
        arg1:SetStringIndexedNumber("R_Dist_OneHandR1_First", f1_local2)
        arg1:SetStringIndexedNumber("R_Dist_OneHandR1_Second", f1_local3)
        arg1:SetStringIndexedNumber("R_Dist_TwoHandR1_First", f1_local4)
        arg1:SetStringIndexedNumber("R_Dist_TwoHandR1_Second", f1_local5)
        arg1:SetStringIndexedNumber("R_Dist_OneHandR2_First", f1_local6)
        arg1:SetStringIndexedNumber("R_Dist_OneHandR2_Second", f1_local7)
        arg1:SetStringIndexedNumber("R_Dist_TwoHandR2_First", f1_local8)
        arg1:SetStringIndexedNumber("R_Dist_TwoHandR2_Second", f1_local9)
        arg1:SetStringIndexedNumber("R_Dist_TwoHandL1", f1_local9)
        arg1:SetStringIndexedNumber("R_Dist_OneHandL2", f1_local11)
        arg1:SetStringIndexedNumber("R_Dist_DashR1", f1_local12)
        arg1:SetStringIndexedNumber("R_Dist_DashR2", f1_local13)
        arg1:SetStringIndexedNumber("R_Dist_RollingR1", f1_local14)
        arg1:SetStringIndexedNumber("R_Dist_RollingR2", f1_local15)
        arg1:SetStringIndexedNumber("R_Dist_BackStepR1", f1_local17)
        arg1:SetStringIndexedNumber("R_Dist_BackStepR2", Dist_BackStepR2)
        arg1:SetStringIndexedNumber("R_ArtsType", f1_local18)
        arg1:SetStringIndexedNumber("R_ArtsDist", f1_local19)
        arg1:SetStringIndexedNumber("R_WeaponType", f1_local20)
        arg1:SetStringIndexedNumber("R_TwoHandL1Type", f1_local22)
        arg1:SetStringIndexedNumber("R_Left_ActionType", f1_local23)
        arg1:SetStringIndexedNumber("R_ComboNum_R1", f1_local24)
        arg1:SetStringIndexedNumber("R_ComboNum_R2", f1_local25)
    else
        arg1:SetStringIndexedNumber("L_Dist_OneHandR1_First", f1_local2)
        arg1:SetStringIndexedNumber("L_Dist_OneHandR1_Second", f1_local3)
        arg1:SetStringIndexedNumber("L_Dist_TwoHandR1_First", f1_local4)
        arg1:SetStringIndexedNumber("L_Dist_TwoHandR1_Second", f1_local5)
        arg1:SetStringIndexedNumber("L_Dist_OneHandR2_First", f1_local6)
        arg1:SetStringIndexedNumber("L_Dist_OneHandR2_Second", f1_local7)
        arg1:SetStringIndexedNumber("L_Dist_TwoHandR2_First", f1_local8)
        arg1:SetStringIndexedNumber("L_Dist_TwoHandR2_Second", f1_local9)
        arg1:SetStringIndexedNumber("L_Dist_TwoHandL1", f1_local9)
        arg1:SetStringIndexedNumber("L_Dist_OneHandL2", f1_local11)
        arg1:SetStringIndexedNumber("L_Dist_DashR1", f1_local12)
        arg1:SetStringIndexedNumber("L_Dist_DashR2", f1_local13)
        arg1:SetStringIndexedNumber("L_Dist_RollingR1", f1_local14)
        arg1:SetStringIndexedNumber("L_Dist_RollingR2", f1_local15)
        arg1:SetStringIndexedNumber("L_Dist_BackStepR1", f1_local17)
        arg1:SetStringIndexedNumber("L_Dist_BackStepR2", Dist_BackStepR2)
        arg1:SetStringIndexedNumber("L_ArtsType", f1_local18)
        arg1:SetStringIndexedNumber("L_ArtsDist", f1_local19)
        arg1:SetStringIndexedNumber("L_WeaponType", f1_local21)
        arg1:SetStringIndexedNumber("L_TwoHandL1Type", f1_local22)
        arg1:SetStringIndexedNumber("L_Left_ActionType", f1_local23)
        arg1:SetStringIndexedNumber("L_ComboNum_R1", f1_local24)
        arg1:SetStringIndexedNumber("L_ComboNum_R2", f1_local25)
    end
    
end


