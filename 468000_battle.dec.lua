RegisterTableGoal(GOAL_MeteoriteBeast_468000_Battle, "MeteoriteBeast_468000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MeteoriteBeast_468000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3027)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3029)
    arg1:EnableUnfavorableAttackCheck(0, 3033)
    arg1:EnableUnfavorableAttackCheck(0, 3034)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:GetStringIndexedNumber("Rush_Cnt")
    arg1:GetStringIndexedNumber("Curve_Cnt")
    arg1:GetStringIndexedNumber("Warcry_Cnt")
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetOriginDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 16495)
    local f2_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 16490)
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 16488) then
        arg1:SetStringIndexedNumber("CantMoveErea", 1)
    else
        arg1:SetStringIndexedNumber("CantMoveErea", 0)
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if f2_local3 >= 15 then
            f2_local0[17] = 30
        else
            f2_local0[8] = 20
            f2_local0[24] = 10
            f2_local0[26] = 10
            f2_local0[27] = 10
            f2_local0[16] = 50
        end
    elseif arg1:GetHpRate(TARGET_SELF) <= 0.6 and f2_local6 == true and f2_local5 == false then
        f2_local0[12] = 100
    elseif f2_local3 >= 24 then
        f2_local0[2] = 5
        f2_local0[3] = 5
        f2_local0[10] = 90
    elseif f2_local3 >= 10 then
        f2_local0[2] = 5
        f2_local0[3] = 5
        f2_local0[4] = 20
        f2_local0[9] = 20
        f2_local0[10] = 40
        f2_local0[15] = 15
        f2_local0[23] = 20
        f2_local0[26] = 10
        f2_local0[27] = 10
    elseif f2_local3 >= 7 then
        f2_local0[2] = 20
        f2_local0[3] = 10
        f2_local0[4] = 10
        f2_local0[5] = 10
        f2_local0[12] = 70
        f2_local0[15] = 20
        f2_local0[26] = 10
        f2_local0[27] = 10
        f2_local0[29] = 20
    else
        f2_local0[1] = 25
        f2_local0[3] = 25
        f2_local0[4] = 10
        f2_local0[5] = 20
        f2_local0[6] = 20
        f2_local0[7] = 25
        f2_local0[8] = 15
        f2_local0[11] = 20
        f2_local0[12] = 70
        f2_local0[14] = 25
        f2_local0[16] = 15
        f2_local0[26] = 10
        f2_local0[27] = 10
    end
    if arg1:GetHpRate(TARGET_SELF) >= 0.6 then
        f2_local0[12] = 0
    end
    if f2_local6 == false then
        f2_local0[12] = 0
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        f2_local0[8] = 0
        f2_local0[16] = 0
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        f2_local0[1] = 0
        f2_local0[4] = 0
        f2_local0[29] = 0
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[16] = 0
        f2_local0[29] = 0
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 110) then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[11] = 0
        f2_local0[29] = 0
    end
    if arg1:GetTimer(2) > 0 then
        f2_local0[26] = f2_local0[26] / 2
        f2_local0[27] = f2_local0[27] / 2
    end
    if arg1:GetTimer(6) > 0 then
        f2_local0[19] = 0
        f2_local0[20] = 0
    end
    if arg1:GetAttackPassedTime(3009) <= 15 and arg1:GetAttackPassedTime(3009) == 0 then
        f2_local0[7] = 0
    end
    if arg1:GetTimer(8) > 0 then
        f2_local0[15] = 0
    end
    f2_local0[16] = SetCoolTime(arg1, arg2, 3020, 15, f2_local0[16], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3019, 25, f2_local0[15], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3015, 12, f2_local0[11], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 16, f2_local0[2], 0)
    f2_local0[28] = SetCoolTime(arg1, arg2, 3033, 8, f2_local0[28], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3007, 15, f2_local0[5], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3014, 30, f2_local0[10], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3017, 30, f2_local0[10], 0)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3020, 8, f2_local0[16], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3035, 30, f2_local0[15], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3016, 60, f2_local0[12], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3011, 15, f2_local0[9], 0)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 4, f2_local0[1], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[6], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3006, 8, f2_local0[4], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3010, 20, f2_local0[8], 0)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3018, 30, f2_local0[14], 0)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3026, 30, f2_local0[14], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 16, f2_local0[3], 0)
    f2_local0[29] = SetCoolTime(arg1, arg2, 3034, 16, f2_local0[29], 0)
    if arg1:IsFinishTimer(0) == true and arg1:GetStringIndexedNumber("CantMoveErea") == 1 then
        f2_local0[41] = 300
        f2_local0[42] = 300
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            f2_local0[41] = 0
        elseif f2_local3 > 29 then
            f2_local0[41] = 0
        end
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act30)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_Act42)
    local f2_local7 = REGIST_FUNC(arg1, arg2, MeteoriteBeast_468000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function MeteoriteBeast_468000_Act01(arg0, arg1, arg2)
    local f3_local0 = 5
    local f3_local1 = 3000
    local f3_local2 = 6
    local f3_local3 = 0
    local f3_local4 = 120
    local f3_local5 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16450)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local0, f3_local1, TARGET_ENE_0, f3_local2, f3_local3, f3_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act02(arg0, arg1, arg2)
    local f4_local0 = 5
    local f4_local1 = 3001
    local f4_local2 = 3033
    local f4_local3 = 6
    local f4_local4 = 0
    local f4_local5 = 120
    local f4_local6 = arg0:GetOriginDist(TARGET_ENE_0)
    local f4_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16450)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16495)
    if arg0:HasSpecialEffectId(TARGET_SELF, 16495) and f4_local6 > 3 then
        local f4_local8 = 11.5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local9 = 999
        local f4_local10 = 999
        local f4_local11 = 0
        local f4_local12 = 0
        local f4_local13 = 4
        local f4_local14 = 4
        Approach_Act_Flex(arg0, arg1, f4_local8, f4_local9, f4_local10, f4_local11, f4_local12, f4_local13, f4_local14)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local0, f4_local2, TARGET_ENE_0, f4_local3, f4_local4, f4_local5, 0, 0)
    else
        local f4_local8 = 6.2 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local9 = 999
        local f4_local10 = 999
        local f4_local11 = 0
        local f4_local12 = 0
        local f4_local13 = 4
        local f4_local14 = 4
        Approach_Act_Flex(arg0, arg1, f4_local8, f4_local9, f4_local10, f4_local11, f4_local12, f4_local13, f4_local14)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local0, f4_local1, TARGET_ENE_0, f4_local3, f4_local4, f4_local5, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetOriginDist(TARGET_ENE_0)
    local f5_local1 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 999
    local f5_local3 = 999
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 4
    local f5_local7 = 4
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 5
    local f5_local9 = 3004
    local f5_local10 = 6
    local f5_local11 = 0
    local f5_local12 = 120
    local f5_local13 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16452)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16455)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16463)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local8, f5_local9, TARGET_ENE_0, f5_local10, f5_local11, f5_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act04(arg0, arg1, arg2)
    local f6_local0 = 5
    local f6_local1 = 3006
    local f6_local2 = 6
    local f6_local3 = 0
    local f6_local4 = 180
    local f6_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local1, TARGET_ENE_0, f6_local2, f6_local3, f6_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act05(arg0, arg1, arg2)
    local f7_local0 = 5
    local f7_local1 = 3007
    local f7_local2 = 6
    local f7_local3 = 0
    local f7_local4 = 120
    local f7_local5 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16461)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16477)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, TARGET_ENE_0, f7_local2, f7_local3, f7_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act06(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16456)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act07(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act08(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16465)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16478)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_SELF, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act09(arg0, arg1, arg2)
    local f11_local0 = 19 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 999
    local f11_local2 = 999
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 4
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 5
    local f11_local8 = 3011
    local f11_local9 = 6
    local f11_local10 = 2
    local f11_local11 = 120
    local f11_local12 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local7, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act10(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16472)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16473)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16474)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16475)
    arg0:SetStringIndexedNumber("Rush_Cnt", 0)
    arg0:SetStringIndexedNumber("Curve_Cnt", 0)
    local f12_local0 = 15
    local f12_local1 = 3012
    local f12_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local3 = 2
    local f12_local4 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local0, f12_local1, TARGET_ENE_0, f12_local2, f12_local3, f12_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act11(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16460)
    local f13_local0 = arg0:GetOriginDist(TARGET_ENE_0)
    local f13_local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 999
    local f13_local3 = 999
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 3
    local f13_local7 = 3
    Approach_Act_Flex(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    local f13_local8 = 10
    local f13_local9 = 3015
    local f13_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local11 = 0
    local f13_local12 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local8, f13_local9, TARGET_ENE_0, f13_local10, f13_local11, f13_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act12(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16462)
    local f14_local0 = 15
    local f14_local1 = 3016
    local f14_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local3 = 0
    local f14_local4 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local0, f14_local1, TARGET_ENE_0, f14_local2, f14_local3, f14_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act13(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    Rollingx_Cnt = 0
    local f15_local0 = 10
    local f15_local1 = 3012
    local f15_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local3 = 0
    local f15_local4 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local0, f15_local1, TARGET_ENE_0, f15_local2, f15_local3, f15_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act14(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16495)
    local f16_local0 = 10
    local f16_local1 = 3018
    local f16_local2 = 3026
    local f16_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local4 = 0
    local f16_local5 = 120
    if arg0:HasSpecialEffectId(TARGET_SELF, 16495) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local0, f16_local1, TARGET_SELF, f16_local3, f16_local4, f16_local5, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local0, f16_local2, TARGET_SELF, f16_local3, f16_local4, f16_local5, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function MeteoriteBeast_468000_Act15(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16481)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16480)
    arg0:SetStringIndexedNumber("Warcry_Cnt", 0)
    local f17_local0 = 10
    local f17_local1 = 3030
    local f17_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local3 = 0
    local f17_local4 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f17_local0, f17_local1, TARGET_ENE_0, f17_local2, f17_local3, f17_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act16(arg0, arg1, arg2)
    local f18_local0 = 5
    local f18_local1 = 3020
    local f18_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local3 = 0
    local f18_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local1, TARGET_ENE_0, f18_local2, f18_local3, f18_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 120, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act18(arg0, arg1, arg2)
    local f20_local0 = 5
    local f20_local1 = 3023
    local f20_local2 = 6
    local f20_local3 = 0
    local f20_local4 = 120
    local f20_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local0, f20_local1, TARGET_ENE_0, f20_local2, f20_local3, f20_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act19(arg0, arg1, arg2)
    local f21_local0 = 5
    local f21_local1 = 3027
    local f21_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local3 = 0
    local f21_local4 = 0
    arg0:SetTimer(6, 18)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f21_local0, f21_local1, TARGET_ENE_0, f21_local2, f21_local3, f21_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act20(arg0, arg1, arg2)
    local f22_local0 = 5
    local f22_local1 = 3028
    local f22_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local3 = 0
    local f22_local4 = 0
    arg0:SetTimer(6, 18)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local0, f22_local1, TARGET_ENE_0, f22_local2, f22_local3, f22_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act22(arg0, arg1, arg2)
    local f23_local0 = arg0:GetOriginDist(TARGET_ENE_0)
    local f23_local1 = 8
    local f23_local2 = 0
    local f23_local3 = true
    local f23_local4 = arg0:GetRandam_Int(1, 100)
    local f23_local5 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 8, TARGET_ENE_0, f23_local1, TARGET_ENE_0, f23_local3, f23_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act23(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    local f24_local0 = arg0:GetRandam_Int(1, 100)
    local f24_local1 = -1
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, arg0:GetRandam_Int(3, 5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, arg0:GetRandam_Int(15, 20))
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, arg0:GetRandam_Int(3, 5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, arg0:GetRandam_Int(15, 20))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act24(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16459)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16495)
    local f25_local0 = 5
    local f25_local1 = -1
    local f25_local2 = 1
    local f25_local3 = -1
    local f25_local4 = -1
    local f25_local5 = TARGET_ENE_0
    local f25_local6 = 3
    local f25_local7 = 0
    local f25_local8 = true
    arg0:SetTimer(2, 20)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f25_local0, f25_local1, f25_local2, f25_local3, f25_local4, f25_local5, f25_local6, f25_local7, f25_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act26(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16464)
    local f26_local0 = 5
    local f26_local1 = -1
    local f26_local2 = -1
    local f26_local3 = 1
    local f26_local4 = 1
    local f26_local5 = TARGET_ENE_0
    local f26_local6 = 3
    local f26_local7 = 0
    local f26_local8 = true
    arg0:SetTimer(2, 20)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f26_local0, f26_local1, f26_local2, f26_local3, f26_local4, f26_local5, f26_local6, f26_local7, f26_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act27(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16464)
    local f27_local0 = 5
    local f27_local1 = -1
    local f27_local2 = -1
    local f27_local3 = 1
    local f27_local4 = 1
    local f27_local5 = TARGET_ENE_0
    local f27_local6 = 3
    local f27_local7 = 0
    local f27_local8 = true
    arg0:SetTimer(2, 20)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f27_local0, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5, f27_local6, f27_local7, f27_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act28(arg0, arg1, arg2)
    local f28_local0 = 11.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local1 = 999
    local f28_local2 = 999
    local f28_local3 = 0
    local f28_local4 = 0
    local f28_local5 = 4
    local f28_local6 = 4
    Approach_Act_Flex(arg0, arg1, f28_local0, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6)
    local f28_local7 = 5
    local f28_local8 = 3033
    local f28_local9 = 6
    local f28_local10 = 0
    local f28_local11 = 120
    local f28_local12 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16450)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f28_local7, f28_local8, TARGET_ENE_0, f28_local9, f28_local10, f28_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act29(arg0, arg1, arg2)
    local f29_local0 = 11 - arg0:GetMapHitRadius(TARGET_SELF)
    local f29_local1 = 999
    local f29_local2 = 999
    local f29_local3 = 0
    local f29_local4 = 0
    local f29_local5 = 4
    local f29_local6 = 4
    Approach_Act_Flex(arg0, arg1, f29_local0, f29_local1, f29_local2, f29_local3, f29_local4, f29_local5, f29_local6)
    local f29_local7 = 5
    local f29_local8 = 3034
    local f29_local9 = 6
    local f29_local10 = 0
    local f29_local11 = 120
    local f29_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f29_local7, f29_local8, TARGET_ENE_0, f29_local9, f29_local10, f29_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act30(arg0, arg1, arg2)
    local f30_local0 = arg0:GetOriginDist(TARGET_ENE_0)
    local f30_local1 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f30_local2 = 999
    local f30_local3 = 999
    local f30_local4 = 0
    local f30_local5 = 0
    local f30_local6 = 4
    local f30_local7 = 4
    Approach_Act_Flex(arg0, arg1, f30_local1, f30_local2, f30_local3, f30_local4, f30_local5, f30_local6, f30_local7)
    local f30_local8 = 5
    local f30_local9 = 3004
    local f30_local10 = 6
    local f30_local11 = 0
    local f30_local12 = 120
    local f30_local13 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16484)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f30_local8, f30_local9, TARGET_ENE_0, f30_local10, f30_local11, f30_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act41(arg0, arg1, arg2)
    arg0:SetTimer(0, 15)
    local f31_local0 = 5
    local f31_local1 = 3006
    local f31_local2 = 6
    local f31_local3 = 0
    local f31_local4 = 180
    local f31_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f31_local0, f31_local1, TARGET_ENE_0, f31_local2, f31_local3, f31_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_Act42(arg0, arg1, arg2)
    arg0:SetTimer(0, 15)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16481)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16480)
    arg0:SetStringIndexedNumber("Warcry_Cnt", 0)
    local f32_local0 = 10
    local f32_local1 = 3030
    local f32_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f32_local3 = 0
    local f32_local4 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f32_local0, f32_local1, TARGET_ENE_0, f32_local2, f32_local3, f32_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MeteoriteBeast_468000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MeteoriteBeast_468000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f36_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f36_local1 = 0
    local f36_local2 = 20
    local f36_local3 = arg1:GetOriginDist(TARGET_ENE_0)
    local f36_local4 = arg1:GetRandam_Int(1, 100)
    local f36_local5 = STEP_CANCELDIST
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16472)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16473)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16474)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16475)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16495)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16484)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16466)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16467)
    local f36_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 16495)
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        if (not not arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 110, 120, 4) or arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 110, 120, 4)) and arg1:GetTimer(6) > 0 == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 50, 120, 4) == false and arg1:HasSpecialEffectId(TARGET_SELF, 16484) == false and f36_local8 > 40 then
            arg1:SetTimer(6, 18)
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 110, 120, 4) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 110, 120, 4) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16466) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and f36_local7 < 14 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3023, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16467) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and f36_local7 < 14 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16450) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f36_local7 < 9 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 4, 0, 90)
            return true
        elseif f36_local7 <= 9 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_ENE_0, 4, 0, 90)
            return true
        elseif f36_local7 <= 11 then
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16451)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16491)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16451) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3003, TARGET_ENE_0, 4, 0, 90)
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16452) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        if f36_local7 <= 10.5 then
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16455)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 4, 0, 90)
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16463) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        if f36_local7 <= 9 and f36_local8 > 30 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3015, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16455) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        if f36_local7 > 10 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16495) then
                if f36_local8 > 70 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3023, TARGET_ENE_0, 4, 0, 90)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3034, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3023, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        elseif f36_local7 > 6 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3023, TARGET_ENE_0, 4, 0, 90)
            return true
        elseif f36_local8 > 50 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 4, 0, 90)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3023, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16478) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 120, 15) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3024, TARGET_SELF, 4, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16465) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        if f36_local8 > 20 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3023, TARGET_SELF, 4, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16456) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        if f36_local7 <= 6.5 then
            if f36_local8 > 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 4, 0, 90)
                return true
            else
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16469)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3029, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16469) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 100, 120, 3) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_SELF, 4, 0, 90)
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16008) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        if f36_local7 < 9 then
            if f36_local8 < 50 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16051)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16055)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 4, 0, 180)
                return true
            elseif f36_local8 < 75 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 4, 0, 0, 180)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16460) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        if f36_local8 > 50 and f36_local7 < 11 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 4, 0, 0, 180)
            return true
        elseif f36_local8 > 40 and f36_local7 < 10 then
            arg2:ClearSubGoal()
            local f36_local9 = 5
            local f36_local10 = -1
            local f36_local11 = 1
            local f36_local12 = -1
            local f36_local13 = -1
            local f36_local14 = TARGET_ENE_0
            local f36_local15 = 3
            local f36_local16 = 0
            local f36_local17 = true
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, f36_local9, f36_local10, f36_local11, f36_local12, f36_local13, f36_local14, f36_local15, f36_local16, f36_local17)
            return true
        elseif f36_local8 > 30 and f36_local7 < 10 then
            arg2:ClearSubGoal()
            local f36_local9 = 5
            local f36_local10 = -1
            local f36_local11 = -1
            local f36_local12 = 1
            local f36_local13 = -1
            local f36_local14 = TARGET_ENE_0
            local f36_local15 = 3
            local f36_local16 = 0
            local f36_local17 = true
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, f36_local9, f36_local10, f36_local11, f36_local12, f36_local13, f36_local14, f36_local15, f36_local16, f36_local17)
            return true
        elseif f36_local8 > 20 and f36_local7 < 10 then
            arg2:ClearSubGoal()
            local f36_local9 = 5
            local f36_local10 = -1
            local f36_local11 = -1
            local f36_local12 = -1
            local f36_local13 = 1
            local f36_local14 = TARGET_ENE_0
            local f36_local15 = 3
            local f36_local16 = 0
            local f36_local17 = true
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, f36_local9, f36_local10, f36_local11, f36_local12, f36_local13, f36_local14, f36_local15, f36_local16, f36_local17)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16462) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        if f36_local7 < 14 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16464) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        if f36_local7 >= 10 then
            if f36_local8 > 60 and arg1:GetTimer(8) > 0 == false then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16481)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16480)
                arg1:SetStringIndexedNumber("Warcry_Cnt", 0)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 90)
                return true
            elseif f36_local8 > 50 then
                arg2:ClearSubGoal()
                local f36_local9 = arg1:GetOriginDist(TARGET_ENE_0)
                local f36_local10 = 6.2 - arg1:GetMapHitRadius(TARGET_SELF)
                local f36_local11 = 999
                local f36_local12 = 999
                local f36_local13 = 0
                local f36_local14 = 0
                local f36_local15 = 3
                local f36_local16 = 3
                Approach_Act_Flex(arg1, arg2, f36_local10, f36_local11, f36_local12, f36_local13, f36_local14, f36_local15, f36_local16)
                local f36_local17 = 5
                local f36_local18 = 3001
                local f36_local19 = 6
                local f36_local20 = 0
                local f36_local21 = 120
                local f36_local22 = arg1:GetRandam_Int(1, 100)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16450)
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f36_local17, f36_local18, TARGET_ENE_0, f36_local19, f36_local20, f36_local21, 0, 0)
                return true
            elseif f36_local8 > 30 then
                arg2:ClearSubGoal()
                local f36_local9 = arg1:GetOriginDist(TARGET_ENE_0)
                local f36_local10 = 19 - arg1:GetMapHitRadius(TARGET_SELF)
                local f36_local11 = 0
                local f36_local12 = 999
                local f36_local13 = 0
                local f36_local14 = 0
                local f36_local15 = 3
                local f36_local16 = 3
                Approach_Act_Flex(arg1, arg2, f36_local10, f36_local11, f36_local12, f36_local13, f36_local14, f36_local15, f36_local16)
                local f36_local17 = 5
                local f36_local18 = 3011
                local f36_local19 = 6
                local f36_local20 = 2
                local f36_local21 = 120
                local f36_local22 = arg1:GetRandam_Int(1, 100)
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f36_local17, f36_local18, TARGET_ENE_0, f36_local19, f36_local20, f36_local21, 0, 0)
                return true
            elseif arg1:GetTimer(4) > 0 == false then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16472)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16473)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16474)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16475)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16495)
                arg1:SetStringIndexedNumber("Rush_Cnt", 0)
                local f36_local9 = 10
                local f36_local10 = 3012
                local f36_local11 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
                local f36_local12 = 2
                local f36_local13 = 90
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f36_local9, f36_local10, TARGET_ENE_0, f36_local11, f36_local12, f36_local13, 0, 0)
                return true
            end
        else
            local f36_local10 = arg1
            local f36_local9 = arg1.AddObserveSpecialEffectAttribute
            local f36_local11 = TARGET_SELF
            f36_local9(f36_local10, f36_local11, 16495)
            if f36_local8 > 70 then
                f36_local9 = 10
                f36_local10 = 3018
                f36_local11 = 3026
                local f36_local12 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
                local f36_local13 = 0
                local f36_local14 = 120
                if arg1:HasSpecialEffectId(TARGET_SELF, 16495) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f36_local9, f36_local10, TARGET_SELF, f36_local12, f36_local13, f36_local14, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f36_local9, f36_local11, TARGET_SELF, f36_local12, f36_local13, f36_local14, 0, 0)
                    return true
                end
            elseif f36_local8 > 40 then
                arg2:ClearSubGoal()
                f36_local9 = 5
                f36_local10 = 3007
                f36_local11 = 6
                local f36_local12 = 0
                local f36_local13 = 120
                local f36_local14 = arg1:GetRandam_Int(1, 100)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16461)
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f36_local9, f36_local10, TARGET_ENE_0, f36_local11, f36_local12, f36_local13, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                f36_local9 = arg1:GetOriginDist(TARGET_ENE_0)
                f36_local10 = 3
                f36_local11 = 999
                local f36_local12 = 999
                local f36_local13 = 0
                local f36_local14 = 0
                local f36_local15 = 3
                local f36_local16 = 3
                Approach_Act_Flex(arg1, arg2, f36_local10, f36_local11, f36_local12, f36_local13, f36_local14, f36_local15, f36_local16)
                local f36_local17 = 5
                local f36_local18 = 3001
                local f36_local19 = 6
                local f36_local20 = 0
                local f36_local21 = 120
                local f36_local22 = arg1:GetRandam_Int(1, 100)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16450)
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f36_local17, f36_local18, TARGET_ENE_0, f36_local19, f36_local20, f36_local21, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16459) then
        arg2:ClearSubGoal()
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16472)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16473)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16474)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16475)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16495)
        arg1:SetStringIndexedNumber("Rush_Cnt", 0)
        local f36_local7 = 10
        local f36_local8 = 3012
        local f36_local9 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
        local f36_local10 = 2
        local f36_local11 = 90
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f36_local7, f36_local8, TARGET_ENE_0, f36_local9, f36_local10, f36_local11, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(16470) then
        arg2:ClearSubGoal()
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16472)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16473)
        arg1:SetStringIndexedNumber("Rush_Cnt", arg1:GetStringIndexedNumber("Rush_Cnt") + 1)
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
        return true
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16472)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16473)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16495)
    if arg1:HasSpecialEffectId(TARGET_SELF, 16471) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        if arg1:GetStringIndexedNumber("Rush_Cnt") > 4 then
            arg2:ClearSubGoal()
            arg1:SetTimer(4, 35)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:GetStringIndexedNumber("Curve_Cnt") >= 2 then
            if not (not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) or f36_local7 > 17) or arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
                arg2:ClearSubGoal()
                arg1:SetTimer(4, 35)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg1:SetStringIndexedNumber("Rush_Cnt", arg1:GetStringIndexedNumber("Rush_Cnt") + 1)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif not not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) or arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 7) then
            arg2:ClearSubGoal()
            arg1:SetStringIndexedNumber("Rush_Cnt", arg1:GetStringIndexedNumber("Rush_Cnt") + 1)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg1:SetStringIndexedNumber("Rush_Cnt", 0)
            arg1:SetStringIndexedNumber("Curve_Cnt", arg1:GetStringIndexedNumber("Curve_Cnt") + 1)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16472) then
        local f36_local7 = arg1:GetRandam_Int(1, 100)
        local f36_local8 = arg1:GetOriginDist(TARGET_ENE_0)
        if f36_local6 == true then
            if arg1:GetStringIndexedNumber("Curve_Cnt") > 1 and f36_local7 > 30 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16474)
                arg1:SetTimer(4, 35)
                arg1:SetStringIndexedNumber("Rush_Cnt", 0)
                arg1:SetStringIndexedNumber("Curve_Cnt", 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:GetStringIndexedNumber("Curve_Cnt") > 2 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16474)
                arg1:SetTimer(4, 35)
                arg1:SetStringIndexedNumber("Rush_Cnt", 0)
                arg1:SetStringIndexedNumber("Curve_Cnt", 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16474) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3031, TARGET_ENE_0, 0, 0, 0, 0, 0)
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16475) then
        local f36_local7 = arg1:GetRandam_Int(1, 100)
        local f36_local8 = arg1:GetOriginDist(TARGET_ENE_0)
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3032, TARGET_ENE_0, 0, 0, 0, 0, 0)
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16473) then
        local f36_local7 = arg1:GetOriginDist(TARGET_ENE_0)
        local f36_local8 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and arg1:GetStringIndexedNumber("Curve_Cnt") < 3 then
            arg2:ClearSubGoal()
            arg1:SetStringIndexedNumber("Rush_Cnt", 0)
            arg1:SetStringIndexedNumber("Curve_Cnt", arg1:GetStringIndexedNumber("Curve_Cnt") + 1)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16472)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16473)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:GetStringIndexedNumber("Curve_Cnt") >= 3 and f36_local7 < 17 then
            arg2:ClearSubGoal()
            arg1:SetTimer(4, 35)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16472)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16473)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3014, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg1:SetStringIndexedNumber("Rush_Cnt", arg1:GetStringIndexedNumber("Rush_Cnt") + 1)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16472)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16473)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16480) then
        local f36_local7 = arg1:GetRandam_Int(1, 100)
        local f36_local8 = arg1:GetOriginDist(TARGET_ENE_0)
        arg2:ClearSubGoal()
        arg1:SetStringIndexedNumber("Warcry_Cnt", arg1:GetStringIndexedNumber("Warcry_Cnt") + 1)
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16481) then
        local f36_local7 = arg1:GetRandam_Int(1, 100)
        local f36_local8 = arg1:GetOriginDist(TARGET_ENE_0)
        if arg1:GetStringIndexedNumber("Warcry_Cnt") <= 1 then
            arg2:ClearSubGoal()
            arg1:SetStringIndexedNumber("Warcry_Cnt", arg1:GetStringIndexedNumber("Warcry_Cnt") + 1)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg1:SetStringIndexedNumber("Warcry_Cnt", 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_MeteoriteBeast_468000_AfterAttackAct, "MeteoriteBeast_468000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MeteoriteBeast_468000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


