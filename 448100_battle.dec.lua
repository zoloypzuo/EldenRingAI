RegisterTableGoal(GOAL_RuneFlowerLittle448100_Battle, "RuneFlowerLittle448100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneFlowerLittle448100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 14930)
    local f2_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 14931)
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 14932)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 14933)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 14934)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 14935)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 14939)
    if f2_local11 == true then
        f2_local0[11] = 100
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 160, 90, 2) then
        f2_local0[2] = 30
        f2_local0[17] = 70
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 160, 90, 20) then
        f2_local0[17] = 100
    elseif f2_local3 >= 4 then
        f2_local0[2] = 30
        f2_local0[6] = 10
        f2_local0[16] = 35
        f2_local0[18] = 35
    elseif f2_local3 >= 2.5 then
        f2_local0[1] = 10
        f2_local0[2] = 5
        f2_local0[3] = 20
        f2_local0[5] = 10
        f2_local0[6] = 10
        f2_local0[16] = 40
        f2_local0[18] = 25
    else
        f2_local0[1] = 15
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[5] = 5
        f2_local0[6] = 5
        f2_local0[15] = 10
        f2_local0[16] = 10
    end
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 8, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 8, f2_local0[3], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3003, 20, f2_local0[6], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RuneFlowerLittle448100_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RuneFlowerLittle448100_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RuneFlowerLittle448100_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RuneFlowerLittle448100_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RuneFlowerLittle448100_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RuneFlowerLittle448100_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, RuneFlowerLittle448100_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, RuneFlowerLittle448100_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, RuneFlowerLittle448100_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, RuneFlowerLittle448100_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, RuneFlowerLittle448100_Act11)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, RuneFlowerLittle448100_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, RuneFlowerLittle448100_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, RuneFlowerLittle448100_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, RuneFlowerLittle448100_Act18)
    local f2_local12 = REGIST_FUNC(arg1, arg2, RuneFlowerLittle448100_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local12, f2_local2)
    
end

function RuneFlowerLittle448100_Act01(arg0, arg1, arg2)
    local f3_local0 = 0.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 0.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 0.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerLittle448100_Act02(arg0, arg1, arg2)
    local f4_local0 = 5
    local f4_local1 = 3001
    local f4_local2 = TARGET_ENE_0
    local f4_local3 = 7.5
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, f4_local3, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerLittle448100_Act03(arg0, arg1, arg2)
    local f5_local0 = 2.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 2.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 2.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 5
    local f5_local8 = 3002
    local f5_local9 = TARGET_ENE_0
    local f5_local10 = 7.5
    local f5_local11 = 0
    local f5_local12 = 0
    local f5_local13 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, f5_local10, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerLittle448100_Act04(arg0, arg1, arg2)
    local f6_local0 = 5
    local f6_local1 = 20001
    local f6_local2 = TARGET_ENE_0
    local f6_local3 = 7.5
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20001, TARGET_ENE_0, f6_local3, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerLittle448100_Act05(arg0, arg1, arg2)
    local f7_local0 = 1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3004
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerLittle448100_Act06(arg0, arg1, arg2)
    local f8_local0 = 3003
    local f8_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 0
    local f8_local3 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_SELF, f8_local1, f8_local2, f8_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerLittle448100_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, successDist1, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerLittle448100_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, successDist1, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerLittle448100_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, successDist1, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerLittle448100_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, successDist1, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerLittle448100_Act11(arg0, arg1, arg2)
    local f13_local0 = 5
    local f13_local1 = 3000
    local f13_local2 = TARGET_ENE_0
    local f13_local3 = 7.5
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, f13_local3, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerLittle448100_Act15(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 10
    local f14_local2 = 0
    local f14_local3 = 0
    local f14_local4 = arg0:GetRandam_Int(1, 100)
    local f14_local5 = -1
    if f14_local4 <= f14_local3 then
        f14_local5 = 9910
    end
    if f14_local1 <= f14_local0 then
        Approach_Act(arg0, arg1, f14_local1, f14_local2, f14_local3, 3)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, f14_local1, TARGET_ENE_0, true, f14_local5)
    
end

function RuneFlowerLittle448100_Act16(arg0, arg1, arg2)
    local f15_local0 = 0
    local f15_local1 = arg0:GetRandam_Int(1, 100)
    local f15_local2 = 0
    if f15_local1 <= f15_local0 then
        f15_local2 = 9910
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f15_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerLittle448100_Act17(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerLittle448100_Act18(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 3
    local f17_local2 = true
    local f17_local3 = arg0:GetRandam_Int(1, 100)
    local f17_local4 = -1
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f17_local1, TARGET_ENE_0, f17_local2, f17_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerLittle448100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RuneFlowerLittle448100_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 14950) and arg1:GetHpRate(TARGET_SELF) <= 0.5 then
        arg2:ClearSubGoal()
        local f21_local0 = 10
        local f21_local1 = 20001
        local f21_local2 = 5
        local f21_local3 = TARGET_ENE_0
        local f21_local4 = 0
        local f21_local5 = 0
        local f21_local6 = 0
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f21_local0, f21_local1, f21_local3, successDist)
        return true
    end
    
end

RegisterTableGoal(GOAL_RuneFlowerLittle448100_AfterAttackAct, "RuneFlowerLittle448100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneFlowerLittle448100_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


