RegisterTableGoal(GOAL_FootPage_370300_Battle, "FootPage_370300_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FootPage_370300_Battle, true)
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
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 79)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 18 then
            f2_local0[15] = 100
        else
            f2_local0[8] = 100
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 18 then
            f2_local0[15] = 100
        else
            f2_local0[8] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 170) then
        if f2_local3 >= 2 then
            f2_local0[24] = 100
        else
            f2_local0[5] = 70
            f2_local0[24] = 30
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 79) == true then
        f2_local0[10] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        if f2_local3 >= 8 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 70
            f2_local0[8] = 30
            f2_local0[26] = 30
        elseif f2_local3 >= 3 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 10
            f2_local0[7] = 50
            f2_local0[8] = 40
            f2_local0[26] = 30
        elseif f2_local3 >= 1 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 20
            f2_local0[6] = 0
            f2_local0[7] = 50
            f2_local0[8] = 10
            f2_local0[26] = 30
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 40
            f2_local0[6] = 0
            f2_local0[7] = 30
            f2_local0[8] = 0
            f2_local0[25] = 30
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14403) then
        if f2_local3 >= 8 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14443) == true then
                f2_local0[7] = 100
            else
                f2_local0[1] = 10
                f2_local0[2] = 20
                f2_local0[3] = 10
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 30
                f2_local0[7] = 50
                f2_local0[8] = 0
            end
        elseif f2_local3 >= 3 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14443) == true then
                f2_local0[7] = 100
            else
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 20
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 30
                f2_local0[7] = 20
                f2_local0[8] = 0
            end
        elseif f2_local3 >= 1 then
            f2_local0[1] = 20
            f2_local0[2] = 0
            f2_local0[3] = 25
            f2_local0[4] = 25
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 30
            f2_local0[8] = 0
        else
            f2_local0[1] = 20
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 40
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[25] = 20
        end
    elseif f2_local3 >= 8 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14443) == true then
            f2_local0[7] = 100
        else
            f2_local0[1] = 10
            f2_local0[2] = 20
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 30
            f2_local0[7] = 50
            f2_local0[8] = 0
        end
    elseif f2_local3 >= 3 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14443) == true then
            f2_local0[7] = 100
        else
            f2_local0[1] = 15
            f2_local0[2] = 25
            f2_local0[3] = 20
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 30
            f2_local0[7] = 0
            f2_local0[8] = 0
        end
    elseif f2_local3 >= 1 then
        f2_local0[1] = 50
        f2_local0[2] = 0
        f2_local0[3] = 25
        f2_local0[4] = 25
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
    else
        f2_local0[1] = 20
        f2_local0[2] = 0
        f2_local0[3] = 10
        f2_local0[4] = 10
        f2_local0[5] = 40
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[25] = 20
    end
    f2_local0[26] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[26], 0)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[26], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, FootPage_370300_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, FootPage_370300_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, FootPage_370300_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, FootPage_370300_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, FootPage_370300_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, FootPage_370300_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, FootPage_370300_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, FootPage_370300_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, FootPage_370300_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, FootPage_370300_Act10)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, FootPage_370300_Act15)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, FootPage_370300_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, FootPage_370300_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, FootPage_370300_Act26)
    local f2_local6 = REGIST_FUNC(arg1, arg2, FootPage_370300_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function FootPage_370300_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 2.8
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 3
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = TARGET_ENE_0
    local f3_local11 = 10
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local8, f3_local9, f3_local10, f3_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FootPage_370300_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 4.5
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 3
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f4_local8 = 5
    local f4_local9 = 3001
    local f4_local10 = TARGET_ENE_0
    local f4_local11 = 10
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local8, f4_local9, f4_local10, f4_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FootPage_370300_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 4.2
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 3
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 5
    local f5_local9 = 3004
    local f5_local10 = 3005
    local f5_local11 = TARGET_ENE_0
    local f5_local12 = 4
    local f5_local13 = 0
    local f5_local14 = 0
    local f5_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local8, f5_local9, f5_local11, f5_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f5_local8, f5_local10, f5_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FootPage_370300_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 3.7
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 3
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 5
    local f6_local9 = 3006
    local f6_local10 = 3007
    local f6_local11 = TARGET_ENE_0
    local f6_local12 = 4
    local f6_local13 = 0
    local f6_local14 = 0
    local f6_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local8, f6_local9, f6_local11, f6_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f6_local8, f6_local10, f6_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FootPage_370300_Act05(arg0, arg1, arg2)
    local f7_local0 = 5
    local f7_local1 = 3008
    local f7_local2 = TARGET_ENE_0
    local f7_local3 = TARGET_SELF
    local f7_local4 = 10
    local f7_local5 = 0
    local f7_local6 = 0
    local f7_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f7_local0, f7_local1, f7_local2, f7_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FootPage_370300_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 6.5
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 100
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 3
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f8_local8 = 5
    local f8_local9 = 3009
    local f8_local10 = TARGET_ENE_0
    local f8_local11 = 10
    local f8_local12 = 0
    local f8_local13 = 0
    local f8_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local8, f8_local9, f8_local10, f8_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FootPage_370300_Act07(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f9_local0 = 5
    local f9_local1 = 3010
    local f9_local2 = TARGET_ENE_0
    local f9_local3 = 10
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 14403) then
        f9_local1 = 3012
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local0, f9_local1, f9_local2, f9_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FootPage_370300_Act08(arg0, arg1, arg2)
    local f10_local0 = 10
    local f10_local1 = TARGET_ENE_0
    local f10_local2 = 18
    local f10_local3 = true
    local f10_local4 = arg0:GetDist(TARGET_ENE_0)
    local f10_local5 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f10_local5 = 100
    end
    local f10_local6 = arg0:GetRandam_Int(1, 100)
    local f10_local7 = -1
    if f10_local6 <= f10_local5 then
        f10_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f10_local0, f10_local1, f10_local2, turnTarget, f10_local3, f10_local7)
    local f10_local8 = arg0:GetRandam_Float(0.1, 3.6)
    local f10_local9 = TARGET_ENE_0
    local f10_local10 = arg0:GetRandam_Int(0, 1)
    local f10_local11 = arg0:GetRandam_Int(30, 45)
    local f10_local12 = 1
    local f10_local13 = TARGET_SELF
    local f10_local14 = true
    local f10_local15 = true
    local f10_local16 = arg0:GetDist(TARGET_ENE_0)
    local f10_local17 = 0
    local f10_local18 = arg0:GetRandam_Int(1, 100)
    local f10_local19 = -1
    if f10_local18 <= f10_local17 then
        f10_local19 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f10_local8, f10_local9, f10_local10, f10_local11, f10_local14, f10_local15, f10_local19)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f10_local20 = 5
    local f10_local21 = 3010
    local f10_local22 = TARGET_ENE_0
    local f10_local23 = 10
    local f10_local24 = 0
    local f10_local25 = 0
    local f10_local26 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local20, f10_local21, f10_local22, f10_local23, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FootPage_370300_Act10(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 0.2
    local f11_local2 = 0
    local f11_local3 = 999
    local f11_local4 = 100
    local f11_local5 = 0
    local f11_local6 = 3
    local f11_local7 = 3
    Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    local f11_local8 = 3110
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local10 = 0
    local f11_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 0.5, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FootPage_370300_Act15(arg0, arg1, arg2)
    local f12_local0 = 10
    local f12_local1 = TARGET_ENE_0
    local f12_local2 = 4
    local f12_local3 = true
    local f12_local4 = arg0:GetDist(TARGET_ENE_0)
    local f12_local5 = 0
    local f12_local6 = arg0:GetRandam_Int(1, 100)
    local f12_local7 = -1
    if f12_local6 <= f12_local5 then
        f12_local7 = 9910
    end
    if f12_local2 <= f12_local4 then
        local f12_local8 = TARGET_SELF
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f12_local0, f12_local1, f12_local2, f12_local8, f12_local3, f12_local7)
    else
        local f12_local8 = TARGET_ENE_0
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f12_local0, f12_local1, f12_local2, f12_local8, f12_local3, f12_local7)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FootPage_370300_Act24(arg0, arg1, arg2)
    local f13_local0 = 2
    local f13_local1 = TARGET_ENE_0
    local f13_local2 = 45
    local f13_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f13_local4 = true
    local f13_local5 = 0
    local f13_local6 = arg0:GetRandam_Int(1, 100)
    local f13_local7 = -1
    if f13_local6 <= f13_local5 then
        f13_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f13_local0, f13_local1, f13_local2, f13_local7, f13_local3, f13_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FootPage_370300_Act25(arg0, arg1, arg2)
    local f14_local0 = 5
    local f14_local1 = -1
    local f14_local2 = -1
    local f14_local3 = 1
    local f14_local4 = 1
    local f14_local5 = TARGET_ENE_0
    local f14_local6 = 3
    local f14_local7 = 0
    local f14_local8 = true
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14402)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f14_local0, f14_local1, 2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7, f14_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f14_local0, f14_local1, f14_local2, 1, -1, f14_local5, f14_local6, f14_local7, f14_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f14_local0, f14_local1, f14_local2, -1, 1, f14_local5, f14_local6, f14_local7, f14_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FootPage_370300_Act26(arg0, arg1, arg2)
    local f15_local0 = 5
    local f15_local1 = -1
    local f15_local2 = -1
    local f15_local3 = 1
    local f15_local4 = 1
    local f15_local5 = TARGET_ENE_0
    local f15_local6 = 2
    local f15_local7 = 0
    local f15_local8 = true
    local f15_local9 = arg0:GetRandam_Int(1, 2)
    if f15_local9 == 1 then
        f15_local4 = 1
        f15_local3 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7, f15_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FootPage_370300_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_FootPage_370300_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(79) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            arg2:ClearSubGoal()
            local f19_local0 = arg1:GetDist(TARGET_ENE_0)
            local f19_local1 = arg1:GetRandam_Int(1, 100)
            if f19_local0 <= 3.5 then
                local f19_local2 = 0
                if arg1:IsTargetGuard(TARGET_ENE_0) then
                    f19_local2 = 50
                end
                if f19_local1 <= 0 + f19_local2 then
                    FootPage_370300_Act25(arg1, arg2)
                elseif f19_local1 <= 70 then
                    local f19_local3 = 5
                    local f19_local4 = 3002
                    local f19_local5 = 3003
                    local f19_local6 = TARGET_ENE_0
                    local f19_local7 = 10
                    local f19_local8 = 0
                    local f19_local9 = 0
                    local f19_local10 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f19_local3, f19_local4, f19_local6, successDist2, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f19_local3, f19_local5, f19_local6, successDist2, 0, 0, 0)
                else
                    local f19_local3 = 5
                    local f19_local4 = 3003
                    local f19_local5 = TARGET_ENE_0
                    local f19_local6 = 10
                    local f19_local7 = 0
                    local f19_local8 = 0
                    local f19_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f19_local3, f19_local4, f19_local5, successDist2, 0, 0, 0)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                    local f19_local10 = 5
                    local f19_local11 = 3010
                    local f19_local12 = TARGET_ENE_0
                    local f19_local13 = 10
                    local f19_local14 = 0
                    local f19_local15 = 0
                    local f19_local16 = 0
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14403) then
                        f19_local11 = 3012
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f19_local10, f19_local11, f19_local12, f19_local13, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            local f19_local0 = arg1:GetDist(TARGET_ENE_0)
            local f19_local1 = arg1:GetRandam_Int(1, 100)
            if arg1:HasSpecialEffectId(TARGET_SELF, 14403) and f19_local1 <= 70 then
                if f19_local0 >= 4 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                    local f19_local2 = 5
                    local f19_local3 = 3012
                    local f19_local4 = TARGET_ENE_0
                    local f19_local5 = 10
                    local f19_local6 = 0
                    local f19_local7 = 0
                    local f19_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f19_local2, f19_local3, f19_local4, f19_local5, 0, 0, 0)
                else
                    arg2:ClearSubGoal()
                    if f19_local1 <= 30 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                        local f19_local2 = 5
                        local f19_local3 = 3012
                        local f19_local4 = TARGET_ENE_0
                        local f19_local5 = 10
                        local f19_local6 = 0
                        local f19_local7 = 0
                        local f19_local8 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f19_local2, f19_local3, f19_local4, f19_local5, 0, 0, 0)
                    elseif f19_local1 <= 50 then
                        FootPage_370300_Act25(arg1, arg2)
                    end
                end
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            arg2:ClearSubGoal()
            local f19_local0 = arg1:GetDist(TARGET_ENE_0)
            local f19_local1 = arg1:GetRandam_Int(1, 100)
            if f19_local0 <= 5 then
                local f19_local2 = 5
                local f19_local3 = 3011
                local f19_local4 = TARGET_ENE_0
                local f19_local5 = 10
                local f19_local6 = 0
                local f19_local7 = 0
                local f19_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f19_local2, f19_local3, f19_local4, f19_local5, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14402) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14402)
            arg2:ClearSubGoal()
            local f19_local0 = arg1:GetDist(TARGET_ENE_0)
            local f19_local1 = arg1:GetRandam_Int(1, 100)
            if f19_local0 >= 4 and f19_local1 <= 50 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                local f19_local2 = 5
                local f19_local3 = 3010
                local f19_local4 = TARGET_ENE_0
                local f19_local5 = 10
                local f19_local6 = 0
                local f19_local7 = 0
                local f19_local8 = 0
                if arg1:HasSpecialEffectId(TARGET_SELF, 14403) then
                    f19_local3 = 3012
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local2, f19_local3, f19_local4, f19_local5, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local f19_local0 = arg1:GetDist(TARGET_ENE_0)
        local f19_local1 = arg1:GetRandam_Int(1, 100)
        if arg1:IsFinishTimer(0) and f19_local0 <= 6 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14403) then
                if f19_local0 <= 4 then
                    if f19_local1 <= 40 then
                        arg2:ClearSubGoal()
                        FootPage_370300_Act25(arg1, arg2)
                    elseif f19_local1 <= 70 then
                        arg2:ClearSubGoal()
                        FootPage_370300_Act05(arg1, arg2)
                    end
                end
            elseif f19_local1 <= 40 then
                arg2:ClearSubGoal()
                FootPage_370300_Act25(arg1, arg2)
            end
            arg1:SetTimer(0, 3)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
        local f19_local0 = arg1:GetDist(TARGET_ENE_0)
        local f19_local1 = arg1:GetRandam_Int(1, 100)
        if arg1:HasSpecialEffectId(TARGET_SELF, 14403) and f19_local0 <= 4 and f19_local1 <= 80 then
            arg2:ClearSubGoal()
            FootPage_370300_Act25(arg1, arg2)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) then
        if not (1 ~= doAdmirer or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku) or 1 == doAdmirer and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            local f19_local0 = arg1:GetDist(TARGET_ENE_0)
            if arg1:GetRandam_Int(1, 100) <= 40 then
                if f19_local0 <= 7 then
                    arg2:ClearSubGoal()
                    FootPage_370300_Act02(arg1, arg2)
                else
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                    local f19_local2 = 5
                    local f19_local3 = 3010
                    local f19_local4 = TARGET_ENE_0
                    local f19_local5 = 10
                    local f19_local6 = 0
                    local f19_local7 = 0
                    local f19_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local2, f19_local3, f19_local4, f19_local5, 0, 0, 0)
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14403) and 4 >= targetDist and 70 >= fate then
            arg2:ClearSubGoal()
            FootPage_370300_Act25(arg1, arg2)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_GuardBreak) then
        arg2:ClearSubGoal()
        FootPage_370300_Act06(arg1, arg2)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_FootPage_370300_AfterAttackAct, "FootPage_370300_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FootPage_370300_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


