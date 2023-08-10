RegisterTableGoal(GOAL_hagetakakishi310000_Battle, "hagetakakishi310000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_hagetakakishi310000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16409)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16411)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16413)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 16414)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16415)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        if f2_local3 >= 2.8 then
            f2_local0[24] = 100
        else
            f2_local0[1] = 10
            f2_local0[2] = 20
            f2_local0[11] = 60
            f2_local0[24] = 10
        end
    elseif f2_local3 >= 9.5 then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[3] = 0
        f2_local0[4] = 10
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 30
        f2_local0[9] = 50
        f2_local0[10] = 10
    elseif f2_local3 >= 7.5 then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[3] = 0
        f2_local0[4] = 35
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 20
        f2_local0[9] = 0
        f2_local0[12] = 35
    elseif f2_local3 >= 4 then
        f2_local0[1] = 20
        f2_local0[2] = 10
        f2_local0[3] = 0
        f2_local0[4] = 20
        f2_local0[5] = 0
        f2_local0[6] = 10
        f2_local0[7] = 0
        f2_local0[8] = 20
        f2_local0[9] = 20
        f2_local0[12] = 30
    elseif f2_local3 >= 2 then
        f2_local0[1] = 20
        f2_local0[2] = 30
        f2_local0[3] = 10
        f2_local0[4] = 20
        f2_local0[5] = 0
        f2_local0[6] = 10
        f2_local0[7] = 10
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 20
    else
        f2_local0[1] = 20
        f2_local0[2] = 35
        f2_local0[3] = 10
        f2_local0[4] = 0
        f2_local0[5] = 5
        f2_local0[6] = 10
        f2_local0[7] = 10
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 6, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 6, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 16, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3017, 8, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3018, 8, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3008, 12, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3010, 8, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3011, 12, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3012, 8, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3019, 16, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3019, 12, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3019, 8, f2_local0[12], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act14)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act24)
    local f2_local6 = REGIST_FUNC(arg1, arg2, hagetakakishi310000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function hagetakakishi310000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 4.5
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 10
    local f3_local7 = 10
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16400)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = 3001
    local f3_local11 = TARGET_ENE_0
    local f3_local12 = 10
    local f3_local13 = 0
    local f3_local14 = 0
    local f3_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f3_local8, f3_local9, f3_local11, f3_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f3_local8, f3_local10, f3_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function hagetakakishi310000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 4.5
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 10
    local f4_local7 = 10
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16401)
    local f4_local8 = 5
    local f4_local9 = 3001
    local f4_local10 = TARGET_ENE_0
    local f4_local11 = 10
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f4_local8, f4_local9, f4_local10, f4_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function hagetakakishi310000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 6.5
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 3
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 5
    local f5_local9 = 3004
    local f5_local10 = TARGET_ENE_0
    local f5_local11 = 10
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f5_local8, f5_local9, f5_local10, f5_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function hagetakakishi310000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 6.2
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 3
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16402)
    local f6_local8 = 5
    local f6_local9 = 3017
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 10
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function hagetakakishi310000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 2.3
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 3
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 5
    local f7_local9 = 3018
    local f7_local10 = TARGET_ENE_0
    local f7_local11 = 10
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local8, f7_local9, f7_local10, f7_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function hagetakakishi310000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 5.5
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 3
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local8 = 5
    local f8_local9 = 3008
    local f8_local10 = TARGET_ENE_0
    local f8_local11 = 10
    local f8_local12 = 0
    local f8_local13 = 0
    local f8_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local8, f8_local9, f8_local10, f8_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function hagetakakishi310000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 4
    local f9_local2 = 0
    local f9_local3 = 999
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 3
    local f9_local7 = 3
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16408)
    local f9_local8 = 5
    local f9_local9 = 3010
    local f9_local10 = TARGET_ENE_0
    local f9_local11 = 10
    local f9_local12 = 0
    local f9_local13 = 0
    local f9_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local8, f9_local9, f9_local10, f9_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function hagetakakishi310000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 16.5
    local f10_local2 = 0
    local f10_local3 = 999
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 3
    local f10_local7 = 3
    Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16403)
    local f10_local8 = 5
    local f10_local9 = 3011
    local f10_local10 = TARGET_ENE_0
    local f10_local11 = 10
    local f10_local12 = 0
    local f10_local13 = 0
    local f10_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local8, f10_local9, f10_local10, f10_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function hagetakakishi310000_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 10.5
    local f11_local2 = 0
    local f11_local3 = 999
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 3
    local f11_local7 = 3
    Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16405)
    local f11_local8 = 5
    local f11_local9 = 3023
    local f11_local10 = TARGET_ENE_0
    local f11_local11 = 10
    local f11_local12 = 0
    local f11_local13 = 0
    local f11_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local8, f11_local9, f11_local10, f11_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function hagetakakishi310000_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 5.5
    local f12_local2 = 0
    local f12_local3 = 999
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 3
    local f12_local7 = 3
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16410)
    local f12_local8 = 5
    local f12_local9 = 3019
    local f12_local10 = TARGET_ENE_0
    local f12_local11 = 10
    local f12_local12 = 0
    local f12_local13 = 0
    local f12_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local8, f12_local9, f12_local10, f12_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function hagetakakishi310000_Act11(arg0, arg1, arg2)
    local f13_local0 = 5
    local f13_local1 = 3021
    local f13_local2 = TARGET_ENE_0
    local f13_local3 = 10
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 270) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f13_local0, f13_local1, f13_local2, f13_local3, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function hagetakakishi310000_Act12(arg0, arg1, arg2)
    local f14_local0 = 5
    local f14_local1 = 3009
    local f14_local2 = 3025
    local f14_local3 = TARGET_ENE_0
    local f14_local4 = 10
    local f14_local5 = 0
    local f14_local6 = 0
    local f14_local7 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16409)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16411)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local0, f14_local1, f14_local3, f14_local4, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f14_local0, f14_local2, f14_local3, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function hagetakakishi310000_Act13(arg0, arg1, arg2)
    local f15_local0 = 5
    local f15_local1 = 3020
    local f15_local2 = 3004
    local f15_local3 = TARGET_ENE_0
    local f15_local4 = 10
    local f15_local5 = 0
    local f15_local6 = 0
    local f15_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local0, f15_local1, f15_local3, f15_local4, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f15_local0, f15_local2, f15_local3, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function hagetakakishi310000_Act14(arg0, arg1, arg2)
    local f16_local0 = 5
    local f16_local1 = 3010
    local f16_local2 = 3022
    local f16_local3 = TARGET_ENE_0
    local f16_local4 = 10
    local f16_local5 = 0
    local f16_local6 = 0
    local f16_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local0, f16_local1, f16_local3, f16_local4, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f16_local0, f16_local2, f16_local3, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function hagetakakishi310000_Act23(arg0, arg1, arg2)
    local f17_local0 = arg0:GetRandam_Int(1, 2)
    local f17_local1 = TARGET_ENE_0
    local f17_local2 = arg0:GetRandam_Int(0, 1)
    local f17_local3 = arg0:GetRandam_Int(30, 45)
    local f17_local4 = 3
    local f17_local5 = TARGET_SELF
    local f17_local6 = true
    local f17_local7 = true
    local f17_local8 = arg0:GetDist(TARGET_ENE_0)
    local f17_local9 = 0
    local f17_local10 = arg0:GetRandam_Int(1, 100)
    local f17_local11 = -1
    if f17_local10 <= f17_local9 then
        f17_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local0, f17_local1, f17_local2, f17_local3, f17_local6, f17_local7, f17_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function hagetakakishi310000_Act24(arg0, arg1, arg2)
    local f18_local0 = 2
    local f18_local1 = TARGET_ENE_0
    local f18_local2 = 45
    local f18_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f18_local4 = true
    local f18_local5 = 0
    local f18_local6 = arg0:GetRandam_Int(1, 100)
    local f18_local7 = -1
    if f18_local6 <= f18_local5 then
        f18_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f18_local0, f18_local1, f18_local2, f18_local7, f18_local3, f18_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function hagetakakishi310000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_hagetakakishi310001_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16400) then
            arg2:ClearSubGoal()
            local f22_local0 = arg1:GetDist(TARGET_ENE_0)
            local f22_local1 = arg1:GetRandam_Int(1, 100)
            if f22_local0 <= 3.8 then
                local f22_local2 = 0
                if arg1:IsTargetGuard(TARGET_ENE_0) then
                    f22_local2 = 20
                end
                if f22_local1 <= 25 + f22_local2 then
                    local f22_local3 = 5
                    local f22_local4 = 3020
                    local f22_local5 = TARGET_ENE_0
                    local f22_local6 = 10
                    local f22_local7 = 0
                    local f22_local8 = 0
                    local f22_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local3, f22_local4, f22_local5, f22_local6, 0, 0, 0)
                else
                    local f22_local3 = 5
                    local f22_local4 = 3001
                    local f22_local5 = TARGET_ENE_0
                    local f22_local6 = 10
                    local f22_local7 = 0
                    local f22_local8 = 0
                    local f22_local9 = 0
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16401)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local3, f22_local4, f22_local5, successDist2, 0, 0, 0)
                end
            else
                if f22_local1 <= 70 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16404)
                    local f22_local2 = 5
                    local f22_local3 = 3003
                    local f22_local4 = TARGET_ENE_0
                    local f22_local5 = 10
                    local f22_local6 = 0
                    local f22_local7 = 0
                    local f22_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local2, f22_local3, f22_local4, successDist2, 0, 0, 0)
                else
                    local f22_local2 = 5
                    local f22_local3 = 3020
                    local f22_local4 = TARGET_ENE_0
                    local f22_local5 = 10
                    local f22_local6 = 0
                    local f22_local7 = 0
                    local f22_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local2, f22_local3, f22_local4, f22_local5, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16401) then
            arg2:ClearSubGoal()
            local f22_local0 = arg1:GetDist(TARGET_ENE_0)
            local f22_local1 = arg1:GetRandam_Int(1, 100)
            if f22_local0 <= 3.8 then
                local f22_local2 = 0
                if arg1:IsTargetGuard(TARGET_ENE_0) then
                    f22_local2 = 30
                end
                if f22_local1 <= 15 + f22_local2 then
                    local f22_local3 = 5
                    local f22_local4 = 3018
                    local f22_local5 = TARGET_ENE_0
                    local f22_local6 = 10
                    local f22_local7 = 0
                    local f22_local8 = 0
                    local f22_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local3, f22_local4, f22_local5, successDist2, 0, 0, 0)
                elseif f22_local1 <= 80 then
                    local f22_local3 = 5
                    local f22_local4 = 3017
                    local f22_local5 = TARGET_ENE_0
                    local f22_local6 = 10
                    local f22_local7 = 0
                    local f22_local8 = 0
                    local f22_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local3, f22_local4, f22_local5, successDist2, 0, 0, 0)
                else
                    local f22_local3 = 5
                    local f22_local4 = 3004
                    local f22_local5 = TARGET_ENE_0
                    local f22_local6 = 10
                    local f22_local7 = 0
                    local f22_local8 = 0
                    local f22_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local3, f22_local4, f22_local5, successDist2, 0, 0, 0)
                end
            else
                if f22_local1 <= 70 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16405)
                    local f22_local2 = 5
                    local f22_local3 = 3012
                    local f22_local4 = TARGET_ENE_0
                    local f22_local5 = 10
                    local f22_local6 = 0
                    local f22_local7 = 0
                    local f22_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local2, f22_local3, f22_local4, successDist2, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16402) then
            arg2:ClearSubGoal()
            local f22_local0 = arg1:GetDist(TARGET_ENE_0)
            local f22_local1 = arg1:GetRandam_Int(1, 100)
            if f22_local0 <= 4 then
                if f22_local1 <= 60 then

                else
                    local f22_local2 = arg1:GetRandam_Int(1, 100)
                    local f22_local3 = nil
                    if f22_local2 <= 70 then
                        f22_local3 = 3001
                    else
                        f22_local3 = 3020
                    end
                    local f22_local4 = 5
                    local f22_local5 = TARGET_ENE_0
                    local f22_local6 = 10
                    local f22_local7 = 0
                    local f22_local8 = 0
                    local f22_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local4, f22_local3, f22_local5, f22_local6, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16403) then
            arg2:ClearSubGoal()
            local f22_local0 = arg1:GetDist(TARGET_ENE_0)
            local f22_local1 = arg1:GetRandam_Int(1, 100)
            if f22_local0 <= 4 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 160) then
                    local f22_local2 = 5
                    local f22_local3 = 3000
                    local f22_local4 = TARGET_ENE_0
                    local f22_local5 = 10
                    local f22_local6 = 0
                    local f22_local7 = 0
                    local f22_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local2, f22_local3, f22_local4, successDist2, 0, 0, 0)
                elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) then
                    local f22_local2 = 5
                    local f22_local3 = 3001
                    local f22_local4 = TARGET_ENE_0
                    local f22_local5 = 10
                    local f22_local6 = 0
                    local f22_local7 = 0
                    local f22_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local2, f22_local3, f22_local4, successDist2, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16404) then
            arg2:ClearSubGoal()
            local f22_local0 = arg1:GetDist(TARGET_ENE_0)
            local f22_local1 = arg1:GetRandam_Int(1, 100)
            local f22_local3 = arg1
            local f22_local2 = arg1.AddObserveSpecialEffectAttribute
            local f22_local4 = TARGET_SELF
            local f22_local5 = 16407
            f22_local2(f22_local3, f22_local4, f22_local5)
            if f22_local0 >= 7 then
                f22_local2 = 5
                f22_local3 = 3014
                f22_local4 = TARGET_ENE_0
                f22_local5 = 10
                local f22_local6 = 0
                local f22_local7 = 0
                local f22_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local2, f22_local3, f22_local4, successDist2, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16405) then
            arg2:ClearSubGoal()
            local f22_local0 = arg1:GetDist(TARGET_ENE_0)
            local f22_local1 = arg1:GetRandam_Int(1, 100)
            local f22_local3 = arg1
            local f22_local2 = arg1.AddObserveSpecialEffectAttribute
            local f22_local4 = TARGET_SELF
            local f22_local5 = 16406
            f22_local2(f22_local3, f22_local4, f22_local5)
            if f22_local0 >= 5 then
                f22_local2 = 5
                f22_local3 = 3013
                f22_local4 = TARGET_ENE_0
                f22_local5 = 10
                local f22_local6 = 0
                local f22_local7 = 0
                local f22_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local2, f22_local3, f22_local4, f22_local5, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16406) then
            arg2:ClearSubGoal()
            local f22_local0 = arg1:GetDist(TARGET_ENE_0)
            local f22_local1 = arg1:GetRandam_Int(1, 100)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16407)
            if f22_local0 >= 5 then
                local f22_local2 = 5
                local f22_local3 = 3014
                local f22_local4 = TARGET_ENE_0
                local f22_local5 = 10
                local f22_local6 = 0
                local f22_local7 = 0
                local f22_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local2, f22_local3, f22_local4, successDist2, 0, 0, 0)
            else
                local f22_local2 = 5
                local f22_local3 = 3016
                local f22_local4 = TARGET_ENE_0
                local f22_local5 = 10
                local f22_local6 = 0
                local f22_local7 = 0
                local f22_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local2, f22_local3, f22_local4, successDist2, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16407) then
            arg2:ClearSubGoal()
            local f22_local0 = arg1:GetDist(TARGET_ENE_0)
            local f22_local1 = arg1:GetRandam_Int(1, 100)
            local f22_local3 = arg1
            local f22_local2 = arg1.AddObserveSpecialEffectAttribute
            local f22_local4 = TARGET_SELF
            local f22_local5 = 16412
            f22_local2(f22_local3, f22_local4, f22_local5)
            if f22_local0 >= 5 then
                f22_local2 = 5
                f22_local3 = 3015
                f22_local4 = 3016
                f22_local5 = TARGET_ENE_0
                local f22_local6 = 10
                local f22_local7 = 0
                local f22_local8 = 0
                local f22_local9 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local2, f22_local3, f22_local5, f22_local6, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f22_local2, f22_local4, f22_local5, f22_local6, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16408) then
            arg2:ClearSubGoal()
            local f22_local0 = arg1:GetDist(TARGET_ENE_0)
            local f22_local1 = arg1:GetRandam_Int(1, 100)
            if f22_local0 <= 4.7 and f22_local1 <= 90 then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 16414) then

                else
                    local f22_local2 = 5
                    local f22_local3 = 3022
                    local f22_local4 = TARGET_ENE_0
                    local f22_local5 = 10
                    local f22_local6 = 0
                    local f22_local7 = 0
                    local f22_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f22_local2, f22_local3, f22_local4, f22_local5, 0, 0, 0)
                end
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16409) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16409)
            arg2:ClearSubGoal()
            local f22_local0 = arg1:GetDist(TARGET_ENE_0)
            local f22_local1 = arg1:GetRandam_Int(1, 100)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16407)
            if f22_local0 <= 4 then

            elseif f22_local0 <= 8 then
                local f22_local2 = 5
                local f22_local3 = 3025
                local f22_local4 = TARGET_ENE_0
                local f22_local5 = 10
                local f22_local6 = 0
                local f22_local7 = 0
                local f22_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local2, f22_local3, f22_local4, f22_local5, 0, 0, 0)
            else
                local f22_local2 = 5
                local f22_local3 = 3014
                local f22_local4 = TARGET_ENE_0
                local f22_local5 = 10
                local f22_local6 = 0
                local f22_local7 = 0
                local f22_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local2, f22_local3, f22_local4, f22_local5, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16411) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16411)
            arg2:ClearSubGoal()
            local f22_local0 = arg1:GetDist(TARGET_ENE_0)
            local f22_local1 = arg1:GetRandam_Int(1, 100)
            if f22_local0 <= 3.5 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16400)
                local f22_local2 = 5
                local f22_local3 = 3000
                local f22_local4 = TARGET_ENE_0
                local f22_local5 = 10
                local f22_local6 = 0
                local f22_local7 = 0
                local f22_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local2, f22_local3, f22_local4, f22_local5, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16410) then
            arg2:ClearSubGoal()
            local f22_local0 = arg1:GetDist(TARGET_ENE_0)
            local f22_local1 = arg1:GetRandam_Int(1, 100)
            local f22_local2 = arg1:GetRandam_Int(5, 7)
            if f22_local2 <= f22_local0 then
                f22_local2 = 5
                local f22_local3 = 3024
                local f22_local4 = TARGET_ENE_0
                local f22_local5 = 10
                local f22_local6 = 0
                local f22_local7 = 0
                local f22_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local2, f22_local3, f22_local4, successDist2, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16412) then
            arg2:ClearSubGoal()
            local f22_local0 = arg1:GetDist(TARGET_ENE_0)
            local f22_local1 = arg1:GetRandam_Int(1, 100)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16401)
            if f22_local0 <= 4 then
                local f22_local2 = arg1:GetRandam_Int(1, 100)
                local f22_local3 = nil
                if f22_local2 <= 70 then
                    f22_local3 = 3001
                else
                    f22_local3 = 3020
                end
                local f22_local4 = 5
                local f22_local5 = TARGET_ENE_0
                local f22_local6 = 10
                local f22_local7 = 0
                local f22_local8 = 0
                local f22_local9 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local4, f22_local3, f22_local5, successDist2, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16415) then
            arg2:ClearSubGoal()
            local f22_local0 = arg1:GetDist(TARGET_ENE_0)
            local f22_local1 = arg1:GetRandam_Int(1, 100)
            if f22_local0 <= 5 then
                if f22_local1 <= 70 then
                    local f22_local2 = 5
                    local f22_local3 = 3020
                    local f22_local4 = TARGET_ENE_0
                    local f22_local5 = 10
                    local f22_local6 = 0
                    local f22_local7 = 0
                    local f22_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local2, f22_local3, f22_local4, successDist2, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16413) then
                arg2:ClearSubGoal()
                local f22_local0 = arg1:GetDist(TARGET_ENE_0)
                local f22_local1 = arg1:GetRandam_Int(1, 100)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16410)
                if f22_local0 >= 4 then
                    if f22_local1 <= 70 then
                        local f22_local2 = arg1:GetRandam_Int(1, 100)
                        local f22_local3 = 3019
                        local f22_local4 = 5
                        local f22_local5 = TARGET_ENE_0
                        local f22_local6 = 10
                        local f22_local7 = 0
                        local f22_local8 = 0
                        local f22_local9 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local4, f22_local3, f22_local5, successDist2, 0, 0, 0)
                    end
                    return true
                end
            else
                arg2:ClearSubGoal()
                arg1:Replaning()
            end
            return true
        end
    end
    if not not arg1:IsInterupt(INTERUPT_Shoot) or arg1:IsInterupt(INTERUPT_UseItem) then
        local f22_local0 = arg1:GetDist(TARGET_ENE_0)
        local f22_local1 = arg1:GetRandam_Int(1, 100)
        local f22_local2 = arg1:GetRandam_Int(1, 100)
        if f22_local1 <= 85 then
            arg2:ClearSubGoal()
            local f22_local3 = 4
            local f22_local4 = TARGET_ENE_0
            local f22_local5 = arg1:GetRandam_Int(7, 10)
            local f22_local6 = TARGET_SELF
            local f22_local7 = false
            local f22_local8 = arg1:GetDist(TARGET_ENE_0)
            local f22_local9 = 0
            local f22_local10 = arg1:GetRandam_Int(1, 100)
            local f22_local11 = -1
            if f22_local10 <= f22_local9 then
                f22_local11 = 9910
            end
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, f22_local3, f22_local4, f22_local5, f22_local6, f22_local7, f22_local11)
            if f22_local8 <= 3.5 then
                hagetakakishi310000_Act01(arg1, arg2)
            elseif f22_local8 <= 6 then
                hagetakakishi310000_Act04(arg1, arg2)
            elseif f22_local8 <= 9 then
                hagetakakishi310000_Act12(arg1, arg2)
            else
                hagetakakishi310000_Act09(arg1, arg2)
            end
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_GuardBreak) then
        arg2:ClearSubGoal()
        hagetakakishi310000_Act06(arg1, arg2)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_hagetakakishi310001_AfterAttackAct, "hagetakakishi310001_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_hagetakakishi310001_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


