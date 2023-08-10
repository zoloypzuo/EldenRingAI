RegisterTableGoal(GOAL_BlackSwordMariques211000_Battle, "BlackSwordMariques211000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackSwordMariques211000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
        if f2_local3 > 10 then
            f2_local0[1] = 20
            f2_local0[3] = 25
            f2_local0[4] = 20
            f2_local0[8] = 35
            f2_local0[41] = 0
            f2_local0[44] = 0
        elseif f2_local3 > 7 then
            f2_local0[1] = 30
            f2_local0[4] = 15
            f2_local0[2] = 0
            f2_local0[5] = 30
            f2_local0[6] = 25
        elseif f2_local3 > 2.5 then
            f2_local0[2] = 20
            f2_local0[5] = 40
            f2_local0[6] = 30
            f2_local0[10] = 10
            f2_local0[12] = 20
        else
            f2_local0[1] = 0
            f2_local0[2] = 30
            f2_local0[4] = 20
            f2_local0[5] = 0
            f2_local0[7] = 15
            f2_local0[10] = 10
            f2_local0[11] = 25
            f2_local0[12] = 30
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[43] = 0
        end
    elseif f2_local3 < 2.5 then
        f2_local0[2] = 20
        f2_local0[9] = 80
        f2_local0[12] = 20
    elseif f2_local3 < 20 then
        f2_local0[2] = 100
    else
        f2_local0[42] = 100
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18699) then
        f2_local0[10] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 20, f2_local0[1], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 20, f2_local0[2], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 20, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 20, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 25, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3011, 20, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3014, 20, f2_local0[9], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3015, 40, f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3038, 15, f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3017, 15, f2_local0[12], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3018, 15, f2_local0[12], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act12)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_Act46)
    local f2_local7 = REGIST_FUNC(arg1, arg2, BlackSwordMariques211000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function BlackSwordMariques211000_Act01(arg0, arg1, arg2)
    local f3_local0 = 15
    local f3_local1 = 0
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f3_local7 = 10
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211000_Act02(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f4_local0 = arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180)
    if f4_local0 then
        f4_local0 = 10
        local f4_local1 = 3001
        local f4_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local3 = 0
        local f4_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local0, f4_local1, TARGET_ENE_0, f4_local2, f4_local3, f4_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        f4_local0 = 10
        local f4_local1 = 3002
        local f4_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local3 = 0
        local f4_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local0, f4_local1, TARGET_ENE_0, f4_local2, f4_local3, f4_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function BlackSwordMariques211000_Act03(arg0, arg1, arg2)
    local f5_local0 = 20
    local f5_local1 = 0
    local f5_local2 = 999
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f5_local7 = 10
    local f5_local8 = 3003
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local7, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211000_Act04(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f6_local0 = 30
    local f6_local1 = 0
    local f6_local2 = 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 2
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 10
    local f6_local8 = 3005
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 0
    local f6_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local7, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211000_Act05(arg0, arg1, arg2)
    local f7_local0 = 7
    local f7_local1 = 0
    local f7_local2 = 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 2
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    local f7_local7 = 10
    local f7_local8 = 3007
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 0
    local f7_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local7, f7_local8, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211000_Act06(arg0, arg1, arg2)
    local f8_local0 = 9
    local f8_local1 = 0
    local f8_local2 = 999
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 2
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f8_local7 = 10
    local f8_local8 = 3010
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 0
    local f8_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local7, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211000_Act07(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f9_local0 = 10
    local f9_local1 = 3011
    local f9_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 0
    local f9_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local0, f9_local1, TARGET_ENE_0, f9_local2, f9_local3, f9_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211000_Act08(arg0, arg1, arg2)
    local f10_local0 = 12.5
    local f10_local1 = 0
    local f10_local2 = 999
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 2
    local f10_local6 = 10
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f10_local7 = 10
    local f10_local8 = 3012
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 0
    local f10_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local7, f10_local8, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211000_Act09(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f11_local0 = 10
    local f11_local1 = 3014
    local f11_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 0
    local f11_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local0, f11_local1, TARGET_ENE_0, f11_local2, f11_local3, f11_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211000_Act10(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f12_local0 = 10
    local f12_local1 = 3015
    local f12_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local3 = 0
    local f12_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local0, f12_local1, TARGET_ENE_0, f12_local2, f12_local3, f12_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211000_Act11(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f13_local0 = 10
    local f13_local1 = 3038
    local f13_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = 0
    local f13_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local0, f13_local1, TARGET_ENE_0, f13_local2, f13_local3, f13_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211000_Act12(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f14_local0 = arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180)
    if f14_local0 then
        f14_local0 = 10
        local f14_local1 = 3017
        local f14_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f14_local3 = 0
        local f14_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local0, f14_local1, TARGET_ENE_0, f14_local2, f14_local3, f14_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        f14_local0 = 10
        local f14_local1 = 3018
        local f14_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f14_local3 = 0
        local f14_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local0, f14_local1, TARGET_ENE_0, f14_local2, f14_local3, f14_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function BlackSwordMariques211000_Act40(arg0, arg1, arg2)
    local f15_local0 = 2
    local f15_local1 = 2
    local f15_local2 = true
    local f15_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_local0, TARGET_ENE_0, f15_local1, TARGET_SELF, f15_local2, f15_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211000_Act41(arg0, arg1, arg2)
    local f16_local0 = 2
    local f16_local1 = 8
    local f16_local2 = false
    local f16_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f16_local0, TARGET_ENE_0, f16_local1, TARGET_SELF, f16_local2, f16_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211000_Act43(arg0, arg1, arg2)
    local f18_local0 = 1
    local f18_local1 = 0
    local f18_local2 = 100
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = TARGET_ENE_0
    local f18_local6 = 1
    local f18_local7 = 0
    local f18_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6, f18_local7, f18_local8)
    local f18_local9 = arg0:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211000_Act44(arg0, arg1, arg2)
    local f19_local0 = arg0:GetRandam_Int(0, 1)
    local f19_local1 = 2
    local f19_local2 = TARGET_ENE_0
    local f19_local3 = f19_local0
    local f19_local4 = 15
    local f19_local5 = true
    local f19_local6 = -1
    local f19_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f19_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, isLifeSuccess, f19_local6, f19_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211000_Act45(arg0, arg1, arg2)
    local f20_local0 = 6
    local f20_local1 = 15
    local f20_local2 = true
    local f20_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f20_local0, TARGET_ENE_0, f20_local1, TARGET_SELF, f20_local2, f20_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211000_Act46(arg0, arg1, arg2)
    local f21_local0 = 3
    local f21_local1 = TARGET_ENE_0
    local f21_local2 = 8
    local f21_local3 = TARGET_ENE_0
    local f21_local4 = true
    local f21_local5 = -1
    local f21_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f21_local7 = false
    local f21_local8 = 1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f21_local0, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6, f21_local7, f21_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BlackSwordMariques211000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    local f25_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f25_local1 = 0
    local f25_local2 = 20
    local f25_local3 = arg1:GetDist(TARGET_ENE_0)
    local f25_local4 = arg1:GetRandam_Int(1, 100)
    local f25_local5 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_Damaged) then

    else

    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 20 + arg1:GetMapHitRadius(TARGET_SELF)) and f25_local3 > 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) and f25_local3 > 1.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 15 + arg1:GetMapHitRadius(TARGET_SELF)) and f25_local3 < 1.5 then
                if f25_local4 < 60 and arg1:GetTimer(1) <= 0 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    arg1:SetTimer(1, 15)
                elseif f25_local5 < 70 and arg1:GetAttackPassedTime(3005) > 20 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 3.6 + arg1:GetMapHitRadius(TARGET_SELF)) and f25_local3 > 1.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 5.5 + arg1:GetMapHitRadius(TARGET_SELF)) and f25_local3 > 1.5 then
                if f25_local4 > 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3039, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9 + arg1:GetMapHitRadius(TARGET_SELF)) and f25_local3 > 1.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3039, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 15 + arg1:GetMapHitRadius(TARGET_SELF)) and f25_local3 < 1.5 then
                if f25_local4 < 60 and arg1:GetTimer(1) <= 0 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    arg1:SetTimer(1, 15)
                elseif f25_local5 < 70 and arg1:GetAttackPassedTime(3005) > 20 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 8.2 + arg1:GetMapHitRadius(TARGET_SELF)) and f25_local3 > 2.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 15 + arg1:GetMapHitRadius(TARGET_SELF)) and f25_local3 < 3.5 then
                if f25_local4 < 60 and arg1:GetTimer(1) <= 0 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    arg1:SetTimer(1, 15)
                elseif f25_local5 < 70 and arg1:GetAttackPassedTime(3005) > 20 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 50 + arg1:GetMapHitRadius(TARGET_SELF)) and f25_local3 > 9 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 5.4 + arg1:GetMapHitRadius(TARGET_SELF)) and f25_local3 > 1.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 15 + arg1:GetMapHitRadius(TARGET_SELF)) and f25_local3 < 1.5 then
                if f25_local4 < 60 and arg1:GetTimer(1) <= 0 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    arg1:SetTimer(1, 15)
                elseif f25_local5 < 70 and arg1:GetAttackPassedTime(3005) > 20 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) and f25_local3 > 1.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 15 + arg1:GetMapHitRadius(TARGET_SELF)) and f25_local3 < 1.5 then
                if f25_local4 < 60 and arg1:GetTimer(1) <= 0 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    arg1:SetTimer(1, 15)
                elseif f25_local5 < 70 and arg1:GetAttackPassedTime(3005) > 20 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_BlackSwordMariques211000_AfterAttackAct, "BlackSwordMariques211000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackSwordMariques211000_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


