RegisterTableGoal(GOAL_RuneFlowerBig448000_Battle, "RuneFlowerBig448000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneFlowerBig448000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 0)
    
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
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 14980)
    local f2_local12 = arg1:HasSpecialEffectId(TARGET_SELF, 14981)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    if f2_local11 == true and arg1:GetNumber(1) ~= 1 then
        if f2_local5 == true or f2_local6 == true or f2_local8 == true or f2_local9 == true or f2_local10 == true then
            f2_local0[4] = 30
        elseif f2_local7 == true then
            f2_local0[5] = 30
        end
    elseif f2_local3 >= 8 then
        f2_local0[2] = 20
        f2_local0[4] = 50
        f2_local0[5] = 50
    elseif f2_local3 >= 3 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            f2_local0[1] = 15
            f2_local0[2] = 25
            f2_local0[3] = 45
            f2_local0[4] = 50
            f2_local0[5] = 50
        else
            f2_local0[1] = 20
            f2_local0[2] = 30
            f2_local0[4] = 40
            f2_local0[5] = 40
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        f2_local0[1] = 50
        f2_local0[2] = 25
        f2_local0[3] = 30
        f2_local0[4] = 60
        f2_local0[5] = 60
    else
        f2_local0[1] = 50
        f2_local0[2] = 30
        f2_local0[4] = 60
        f2_local0[5] = 60
    end
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 7, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3009, 15, f2_local0[5], 1)
    if f2_local12 == true then
        f2_local0[4] = 0
        f2_local0[5] = 0
    end
    if f2_local5 == true or f2_local6 == true or f2_local8 == true or f2_local9 == true or f2_local10 == true then
        f2_local0[5] = 0
    end
    if f2_local7 == true then
        f2_local0[4] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RuneFlowerBig448000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RuneFlowerBig448000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RuneFlowerBig448000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RuneFlowerBig448000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RuneFlowerBig448000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RuneFlowerBig448000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, RuneFlowerBig448000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, RuneFlowerBig448000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, RuneFlowerBig448000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, RuneFlowerBig448000_Act10)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, RuneFlowerBig448000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, RuneFlowerBig448000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, RuneFlowerBig448000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, RuneFlowerBig448000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, RuneFlowerBig448000_Act19)
    local f2_local13 = REGIST_FUNC(arg1, arg2, RuneFlowerBig448000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local13, f2_local2)
    
end

function RuneFlowerBig448000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 3000
    local f3_local2 = 3006
    local f3_local3 = 3007
    local f3_local4 = 3005
    local f3_local5 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local6 = 0
    local f3_local7 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14963)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 90, 20) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local1, TARGET_ENE_0, f3_local5, f3_local6, f3_local7, 0, 0)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 90, 20) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local2, TARGET_ENE_0, f3_local5, f3_local6, f3_local7, 0, 0)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 90, 20) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local3, TARGET_ENE_0, f3_local5, f3_local6, f3_local7, 0, 0)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 90, 20) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local4, TARGET_ENE_0, f3_local5, f3_local6, f3_local7, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local1, TARGET_ENE_0, f3_local5, f3_local6, f3_local7, 0, 0)
    end
    return GetWellSpace_Odds
    
end

function RuneFlowerBig448000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 3001
    local f4_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 0
    local f4_local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14963)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3, 6), TARGET_SELF, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 40, f4_local1, TARGET_ENE_0, f4_local2, f4_local3, f4_local4, 0, 0)
    return GetWellSpace_Odds
    
end

function RuneFlowerBig448000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 3002
    local f5_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 0
    local f5_local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14963)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local1, TARGET_ENE_0, f5_local2, f5_local3, f5_local4, 0, 0)
    return GetWellSpace_Odds
    
end

function RuneFlowerBig448000_Act04(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 3003
    local f6_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 0
    local f6_local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14963)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local1, TARGET_ENE_0, f6_local2, f6_local3, f6_local4, 0, 0)
    return GetWellSpace_Odds
    
end

function RuneFlowerBig448000_Act05(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 3009
    local f7_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 0
    local f7_local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14963)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local1, TARGET_ENE_0, f7_local2, f7_local3, f7_local4, 0, 0)
    return GetWellSpace_Odds
    
end

function RuneFlowerBig448000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 0
    local f8_local8 = 3005
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 0
    local f8_local11 = 360
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local8, TARGET_SELF, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerBig448000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 3
    local f9_local7 = 0
    local f9_local8 = 3006
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 0
    local f9_local11 = 360
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local8, TARGET_SELF, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerBig448000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local3 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 3
    local f10_local7 = 0
    local f10_local8 = 3007
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 0
    local f10_local11 = 360
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local8, TARGET_SELF, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerBig448000_Act09(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, successDist1, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerBig448000_Act10(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, successDist1, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerBig448000_Act15(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 10
    local f13_local2 = 12
    local f13_local3 = 0
    local f13_local4 = arg0:GetRandam_Int(1, 100)
    local f13_local5 = -1
    if f13_local4 <= f13_local3 then
        f13_local5 = 9910
    end
    if f13_local1 <= f13_local0 then
        Approach_Act(arg0, arg1, f13_local1, f13_local2, f13_local3, 3)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14963)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, f13_local1, TARGET_ENE_0, true, f13_local5)
    
end

function RuneFlowerBig448000_Act16(arg0, arg1, arg2)
    local f14_local0 = arg0:GetRandam_Int(5, 7)
    local f14_local1 = TARGET_ENE_0
    local f14_local2 = arg0:GetRandam_Int(0, 1)
    local f14_local3 = arg0:GetRandam_Int(30, 45)
    local f14_local4 = 4
    local f14_local5 = TARGET_SELF
    local f14_local6 = true
    local f14_local7 = true
    local f14_local8 = arg0:GetDist(TARGET_ENE_0)
    local f14_local9 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f14_local9 = 100
    end
    local f14_local10 = arg0:GetRandam_Int(1, 100)
    local f14_local11 = -1
    if f14_local10 <= f14_local9 then
        f14_local11 = 9910
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14963)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f14_local0, f14_local1, f14_local2, f14_local3, f14_local6, f14_local7, f14_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerBig448000_Act17(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14963)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 4, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerLittle448100_Act18(arg0, arg1, arg2)
    local f16_local0 = arg0:GetRandam_Int(1, 3)
    local f16_local1 = TARGET_ENE_0
    local f16_local2 = 2
    local f16_local3 = TARGET_SELF
    local f16_local4 = true
    local f16_local5 = arg0:GetDist(TARGET_ENE_0)
    local f16_local6 = 0
    local f16_local7 = arg0:GetRandam_Int(1, 100)
    local f16_local8 = -1
    if f16_local7 <= f16_local6 then
        f16_local8 = 9910
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14963)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14965)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local8)
    arg1:ClearSubGoal()
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerBig448000_Act19(arg0, arg1, arg2)
    local f17_local0 = arg0:GetRandam_Int(5, 7)
    local f17_local1 = TARGET_ENE_0
    local f17_local2 = arg0:GetRandam_Int(0, 1)
    local f17_local3 = arg0:GetRandam_Int(30, 45)
    local f17_local4 = 4
    local f17_local5 = TARGET_SELF
    local f17_local6 = true
    local f17_local7 = true
    local f17_local8 = arg0:GetDist(TARGET_ENE_0)
    local f17_local9 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f17_local9 = 100
    end
    local f17_local10 = arg0:GetRandam_Int(1, 100)
    local f17_local11 = -1
    if f17_local10 <= f17_local9 then
        f17_local11 = 9910
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14963)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local0, f17_local1, f17_local2, f17_local3, f17_local6, f17_local7, f17_local11)
    local f17_local12 = 3002
    local f17_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local14 = 0
    local f17_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14950)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14963)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, f17_local13, f17_local14, f17_local15, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneFlowerBig448000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RuneFlowerBig448000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f21_local0 = arg1:HasSpecialEffectId(TARGET_SELF, 14963)
    local f21_local1 = arg1:HasSpecialEffectId(TARGET_SELF, 14964)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 14950) then
        arg2:ClearSubGoal()
        local f21_local2 = arg1:GetDist(TARGET_ENE_0)
        local f21_local3 = 3008
        local f21_local4 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
        local f21_local5 = 0
        local f21_local6 = 0
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f21_local3, TARGET_ENE_0, 999, f21_local5, f21_local6, 0, 0)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_RuneFlowerBig448000_AfterAttackAct, "RuneFlowerBig448000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneFlowerBig448000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


