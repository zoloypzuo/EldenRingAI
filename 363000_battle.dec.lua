RegisterTableGoal(GOAL_MoonServant_debu_363000_Battle, "MoonServant_debu_363000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoonServant_debu_363000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 100
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[10] = 30
            f2_local0[11] = 60
            f2_local0[12] = 0
            f2_local0[13] = 0
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 100
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 10
            f2_local0[10] = 40
            f2_local0[11] = 50
            f2_local0[12] = 0
            f2_local0[13] = 0
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 140) then
        if f2_local3 >= 7 then
            f2_local0[24] = 100
        else
            f2_local0[1] = 30
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 20
            f2_local0[9] = 20
            f2_local0[24] = 30
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        if f2_local3 >= 5 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 100
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
        else
            f2_local0[1] = 20
            f2_local0[2] = 30
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 30
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 20
            f2_local0[9] = 0
        end
    elseif f2_local3 >= 8 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 10
        f2_local0[4] = 10
        f2_local0[5] = 0
        f2_local0[6] = 30
        f2_local0[7] = 30
        f2_local0[8] = 0
        f2_local0[9] = 20
    elseif f2_local3 >= 5 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 30
        f2_local0[4] = 20
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 10
        f2_local0[8] = 20
        f2_local0[9] = 20
    else
        f2_local0[1] = 20
        f2_local0[2] = 30
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 30
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 20
        f2_local0[9] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 17, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3005, 5, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3011, 5, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3007, 5, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3009, 5, f2_local0[9], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act15)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, MoonServant_debu_363000_Act26)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, atkAfterFunc, f2_local2)
    
end

function MoonServant_debu_363000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 3.2
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 0
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = 3006
    local f3_local11 = TARGET_ENE_0
    local f3_local12 = 3.9
    local f3_local13 = 0
    local f3_local14 = 0
    local f3_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f3_local8, f3_local9, f3_local11, f3_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f3_local8, f3_local10, f3_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 2.2
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 0
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 5
    local f4_local9 = 3001
    local f4_local10 = TARGET_ENE_0
    local f4_local11 = 2.5
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f4_local8, f4_local9, f4_local10, f4_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 4.5
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 0
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 5
    local f5_local9 = 3002
    local f5_local10 = TARGET_ENE_0
    local f5_local11 = 5
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f5_local8, f5_local9, f5_local10, f5_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 5.2
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 0
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 5
    local f6_local9 = 3003
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 10.5
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 4
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 0
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 5
    local f7_local9 = 3004
    local f7_local10 = TARGET_ENE_0
    local f7_local11 = 4.5
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f7_local8, f7_local9, f7_local10, f7_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act06(arg0, arg1, arg2)
    local f8_local0 = 5
    local f8_local1 = 3005
    local f8_local2 = TARGET_ENE_0
    local f8_local3 = 20.5
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local0, f8_local1, f8_local2, f8_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act07(arg0, arg1, arg2)
    local f9_local0 = 5
    local f9_local1 = 3011
    local f9_local2 = TARGET_ENE_0
    local f9_local3 = 10
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f9_local0, f9_local1, f9_local2, f9_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 5.5
    local f10_local2 = 0
    local f10_local3 = 999
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 3
    local f10_local7 = 0
    Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    local f10_local8 = 5
    local f10_local9 = 3007
    local f10_local10 = 3008
    local f10_local11 = TARGET_ENE_0
    local f10_local12 = 6.5
    local f10_local13 = 3.2
    local f10_local14 = 2.4
    local f10_local15 = 1.5
    local f10_local16 = 0
    local f10_local17 = 0
    local f10_local18 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f10_local8, f10_local9, f10_local11, f10_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f10_local8, f10_local10, f10_local11, f10_local13, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f10_local8, f10_local10, f10_local11, f10_local14, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f10_local8, f10_local10, f10_local11, f10_local15, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 7.5
    local f11_local2 = 0
    local f11_local3 = 999
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 3
    local f11_local7 = 0
    Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    local f11_local8 = 5
    local f11_local9 = 3009
    local f11_local10 = TARGET_ENE_0
    local f11_local11 = 2.5
    local f11_local12 = 0
    local f11_local13 = 0
    local f11_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f11_local8, f11_local9, f11_local10, f11_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act10(arg0, arg1, arg2)
    local f12_local0 = 10
    local f12_local1 = TARGET_ENE_0
    local f12_local2 = arg0:GetRandam_Int(6, 10)
    local f12_local3 = TARGET_SELF
    local f12_local4 = true
    local f12_local5 = arg0:GetDist(TARGET_ENE_0)
    local f12_local6 = 0
    local f12_local7 = arg0:GetRandam_Int(1, 100)
    local f12_local8 = -1
    if f12_local7 <= f12_local6 then
        f12_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetRandam_Int(1, 3)
    local f13_local1 = TARGET_ENE_0
    local f13_local2 = arg0:GetRandam_Int(0, 1)
    local f13_local3 = arg0:GetRandam_Int(30, 45)
    local f13_local4 = 5
    local f13_local5 = TARGET_SELF
    local f13_local6 = true
    local f13_local7 = true
    local f13_local8 = arg0:GetDist(TARGET_ENE_0)
    local f13_local9 = 0
    local f13_local10 = arg0:GetRandam_Int(1, 100)
    local f13_local11 = -1
    if f13_local10 <= f13_local9 then
        f13_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f13_local0, f13_local1, f13_local2, f13_local3, f13_local6, f13_local7, f13_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetRandam_Int(1, 3)
    local f14_local1 = TARGET_ENE_0
    local f14_local2 = 7
    local f14_local3 = TARGET_ENE_0
    local f14_local4 = false
    local f14_local5 = arg0:GetDist(TARGET_ENE_0)
    local f14_local6 = 0
    local f14_local7 = arg0:GetRandam_Int(1, 100)
    local f14_local8 = -1
    if f14_local7 <= f14_local6 then
        f14_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local8)
    local f14_local9 = 5
    local f14_local10 = 3002
    local f14_local11 = TARGET_ENE_0
    local f14_local12 = 10
    local f14_local13 = 0
    local f14_local14 = 0
    local f14_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local9, f14_local10, f14_local11, f14_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act13(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 2
    local f15_local2 = 0
    local f15_local3 = 999
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 0
    local f15_local7 = 7
    Approach_Act_Flex(arg0, arg1, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7)
    local f15_local8 = 5
    local f15_local9 = 3002
    local f15_local10 = TARGET_ENE_0
    local f15_local11 = 2.5
    local f15_local12 = 0
    local f15_local13 = 0
    local f15_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local8, f15_local9, f15_local10, f15_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act14(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 5.5
    local f16_local2 = 0
    local f16_local3 = 999
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = 0
    local f16_local7 = 3
    Approach_Act_Flex(arg0, arg1, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7)
    local f16_local8 = 5
    local f16_local9 = 3004
    local f16_local10 = TARGET_ENE_0
    local f16_local11 = 5.5
    local f16_local12 = 0
    local f16_local13 = 0
    local f16_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local8, f16_local9, f16_local10, f16_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act15(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 2.5
    local f17_local2 = 0
    local f17_local3 = 999
    local f17_local4 = 0
    local f17_local5 = 0
    local f17_local6 = 0
    local f17_local7 = 3
    Approach_Act_Flex(arg0, arg1, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6, f17_local7)
    local f17_local8 = 5
    local f17_local9 = 3005
    local f17_local10 = TARGET_ENE_0
    local f17_local11 = 2.5
    local f17_local12 = 0
    local f17_local13 = 0
    local f17_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f17_local8, f17_local9, f17_local10, f17_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act20(arg0, arg1, arg2)
    local f18_local0 = 10
    local f18_local1 = TARGET_ENE_0
    local f18_local2 = 2
    local f18_local3 = TARGET_SELF
    local f18_local4 = false
    local f18_local5 = arg0:GetDist(TARGET_ENE_0)
    local f18_local6 = 100
    local f18_local7 = arg0:GetRandam_Int(1, 100)
    local f18_local8 = -1
    if f18_local7 <= f18_local6 then
        f18_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act21(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 3
    local f19_local2 = TARGET_ENE_0
    local f19_local3 = 1
    local f19_local4 = TARGET_SELF
    local f19_local5 = true
    local f19_local6 = arg0:GetRandam_Int(5, 20)
    local f19_local7 = 100
    local f19_local8 = arg0:GetRandam_Int(1, 100)
    local f19_local9 = -1
    if f19_local8 <= f19_local7 then
        f19_local9 = 9910
    end
    local f19_local10 = 50
    local f19_local11 = arg0:GetRandam_Int(0, 100)
    local f19_local12 = AI_DIR_TYPE_ToR
    if f19_local11 <= f19_local10 then
        f19_local12 = AI_DIR_TYPE_ToL
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, 9910, f19_local12, f19_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act22(arg0, arg1, arg2)
    local f20_local0 = arg0:GetRandam_Int(1, 3)
    local f20_local1 = TARGET_ENE_0
    local f20_local2 = 10
    local f20_local3 = TARGET_ENE_0
    local f20_local4 = true
    local f20_local5 = arg0:GetDist(TARGET_ENE_0)
    local f20_local6 = 100
    local f20_local7 = arg0:GetRandam_Int(1, 100)
    local f20_local8 = -1
    if f20_local7 <= f20_local6 then
        f20_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act23(arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Int(1, 2)
    local f21_local1 = TARGET_ENE_0
    local f21_local2 = arg0:GetRandam_Int(0, 1)
    local f21_local3 = arg0:GetRandam_Int(30, 45)
    local f21_local4 = 3
    local f21_local5 = TARGET_SELF
    local f21_local6 = true
    local f21_local7 = true
    local f21_local8 = arg0:GetDist(TARGET_ENE_0)
    local f21_local9 = 100
    local f21_local10 = arg0:GetRandam_Int(1, 100)
    local f21_local11 = -1
    if f21_local10 <= f21_local9 then
        f21_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f21_local0, f21_local1, f21_local2, f21_local3, f21_local6, f21_local7, f21_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act24(arg0, arg1, arg2)
    local f22_local0 = 2
    local f22_local1 = TARGET_ENE_0
    local f22_local2 = 45
    local f22_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f22_local4 = true
    local f22_local5 = 0
    local f22_local6 = arg0:GetRandam_Int(1, 100)
    local f22_local7 = -1
    if f22_local6 <= f22_local5 then
        f22_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f22_local0, f22_local1, f22_local2, f22_local7, f22_local3, f22_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act25(arg0, arg1, arg2)
    local f23_local0 = 5
    local f23_local1 = -1
    local f23_local2 = 1
    local f23_local3 = -1
    local f23_local4 = -1
    local f23_local5 = TARGET_ENE_0
    local f23_local6 = 3
    local f23_local7 = 0
    local f23_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6, f23_local7, f23_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_Act26(arg0, arg1, arg2)
    local f24_local0 = 5
    local f24_local1 = -1
    local f24_local2 = -1
    local f24_local3 = 1
    local f24_local4 = 1
    local f24_local5 = TARGET_ENE_0
    local f24_local6 = 3
    local f24_local7 = 0
    local f24_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6, f24_local7, f24_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoonServant_debu_363000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MoonServant_debu_363000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            local f28_local0 = arg1:GetDist(TARGET_ENE_0)
            local f28_local1 = arg1:GetRandam_Int(1, 100)
            if f28_local0 <= 3 and f28_local1 <= 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, 1, 1, TARGET_ENE_0, 3, 0, true)
            end
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_MoonServant_debu_363000_AfterAttackAct, "MoonServant_debu_363000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MoonServant_debu_363000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


