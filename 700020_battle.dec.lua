RegisterTableGoal(GOAL_BuddyStandardBow700020_Battle, "BuddyStandardBow700020_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BuddyStandardBow700020_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    
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
    if arg1:HasSpecialEffectId(TARGET_SELF, 10312) and arg1:GetLatestSoundBehaviorID() == 700000 then
        f2_local0[10] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10312) and f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 20 then
            f2_local0[5] = 800
            f2_local0[11] = 200
        elseif f2_local3 >= 3 then
            f2_local0[5] = 500
            f2_local0[9] = 300
            f2_local0[11] = 200
        else
            f2_local0[11] = 100
            f2_local0[16] = 900
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10312) and f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 20 then
            f2_local0[1] = 800
            f2_local0[11] = 200
        elseif f2_local3 >= 3 then
            f2_local0[1] = 400
            f2_local0[9] = 400
            f2_local0[11] = 200
        else
            f2_local0[11] = 100
            f2_local0[16] = 900
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true and arg1:IsFinishTimer(5) == true then
        f2_local0[9] = 100
    elseif InsideRange(arg1, arg2, 180, 180, 0, 15) then
        f2_local0[20] = 100
    elseif f2_local3 >= 20 then
        f2_local0[1] = 500
        f2_local0[2] = 400
        f2_local0[4] = 0
        f2_local0[11] = 100
        f2_local0[12] = 0
    elseif f2_local3 >= 3 then
        f2_local0[1] = 800
        f2_local0[2] = 200
        f2_local0[4] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
    else
        f2_local0[1] = 400
        f2_local0[2] = 0
        f2_local0[4] = 200
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[16] = 400
    end
    if 3.5 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local3 then
        f2_local0[4] = 0
    end
    if arg1:IsFinishTimer(5) == false then
        f2_local0[9] = 0
    end
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 20, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3000, arg1:GetRandam_Float(1, 3), f2_local0[5], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3024, 40, f2_local0[9], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3026, 40, f2_local0[9], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, BuddyStandardBow700020_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, BuddyStandardBow700020_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, BuddyStandardBow700020_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, BuddyStandardBow700020_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, BuddyStandardBow700020_Act05)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, BuddyStandardBow700020_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, BuddyStandardBow700020_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, BuddyStandardBow700020_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, BuddyStandardBow700020_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, BuddyStandardBow700020_Act13)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, BuddyStandardBow700020_Act16)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, BuddyStandardBow700020_Act20)
    local f2_local6 = REGIST_FUNC(arg1, arg2, BuddyStandardBow700020_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function BuddyStandardBow700020_Act01(arg0, arg1, arg2)
    local f3_local0 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = 50
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3001
    local f3_local9 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 0
    local f3_local12 = 0
    local f3_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local11, f3_local12, 0, 0)
    if f3_local13 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, f3_local10, 90)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardBow700020_Act02(arg0, arg1, arg2)
    local f4_local0 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 50
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3002
    local f4_local8 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardBow700020_Act03(arg0, arg1, arg2)
    local f5_local0 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 50
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3003
    local f5_local8 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardBow700020_Act04(arg0, arg1, arg2)
    local f6_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 50
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3004
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardBow700020_Act05(arg0, arg1, arg2)
    local f7_local0 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 50
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3000
    local f7_local8 = 3001
    local f7_local9 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local11 = 0
    local f7_local12 = 0
    local f7_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local10, f7_local11, f7_local12, 0, 0)
    if f7_local13 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local8, TARGET_ENE_0, f7_local10, 90)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardBow700020_Act09(arg0, arg1, arg2)
    local f8_local0 = 3024
    local f8_local1 = 3002
    local f8_local2 = TARGET_ENE_0
    local f8_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = arg0:GetDist(TARGET_ENE_0)
    arg0:SetTimer(5, 30)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 0.3, TARGET_ENE_0, arg0:GetRandam_Int(15, 20), IsGuard, GUARD_GOAL_DESIRE_RET_Continue, true)
    if f8_local6 >= 4 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local0, TARGET_ENE_0, 999, f8_local4, f8_local5, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local1, TARGET_ENE_0, f8_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardBow700020_Act10(arg0, arg1, arg2)
    local f9_local0 = 3026
    local f9_local1 = 3002
    local f9_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 0
    local f9_local4 = 0
    arg0:SetTimer(5, 25)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 0.3, TARGET_ENE_0, arg0:GetRandam_Int(15, 20), IsGuard, GUARD_GOAL_DESIRE_RET_Continue, true)
    if arg0:HasSpecialEffectId(TARGET_SELF, 10317) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local0, TARGET_ENE_0, 999, f9_local3, f9_local4, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f9_local1, TARGET_ENE_0, f9_local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardBow700020_Act11(arg0, arg1, arg2)
    local f10_local0 = 0
    local f10_local1 = arg0:GetRandam_Int(1, 100)
    local f10_local2 = -1
    if f10_local1 <= f10_local0 then
        f10_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f10_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardBow700020_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardBow700020_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardBow700020_Act14(arg0, arg1, arg2)
    local f13_local0 = 3020
    local f13_local1 = ATT3011_DIST_MAX
    local f13_local2 = 0
    local f13_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local0, TARGET_ENE_0, f13_local1, f13_local2, f13_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardBow700020_Act15(arg0, arg1, arg2)
    local f14_local0 = 3021
    local f14_local1 = ATT3012_DIST_MAX
    local f14_local2 = 0
    local f14_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardBow700020_Act16(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 10
    local f15_local2 = 12
    local f15_local3 = 0
    local f15_local4 = arg0:GetRandam_Int(1, 100)
    local f15_local5 = -1
    if f15_local1 <= f15_local0 then
        Approach_Act(arg0, arg1, f15_local1, f15_local2, f15_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 3), TARGET_ENE_0, arg0:GetRandam_Float(5, 7), TARGET_ENE_0, true, f15_local5)
    
end

function BuddyStandardBow700020_Act20(arg0, arg1, arg2)
    local f16_local0 = -1
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20), f16_local0, GUARD_GOAL_DESIRE_RET_Continue, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardBow700020_Act40(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = arg0:GetRandam_Int(1, 100)
    local f17_local2 = arg0:GetDist(TARGET_HOSTPLAYER)
    if f17_local2 <= 2.5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_HOSTPLAYER, 3, TARGET_HOSTPLAYER, true, -1)
    elseif f17_local2 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_HOSTPLAYER, 4, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_HOSTPLAYER, 4, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardBow700020_Act50(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.1, 1.5), TARGET_NONE, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, arg0:GetRandam_Int(3031, 3033), TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardBow700020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BuddyStandardBow700020_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    
end

RegisterTableGoal(GOAL_BuddyStandardBow700020_AfterAttackAct, "BuddyStandardBow700020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BuddyStandardBow700020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


