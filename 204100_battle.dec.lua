RegisterTableGoal(GOAL_RottenLarva204100_Battle, "RottenLarva204100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RottenLarva204100_Battle, true)
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
    if arg1:HasSpecialEffectId(TARGET_SELF, 18901) and f2_local3 > 3.5 then
        f2_local0[4] = 300
        f2_local0[42] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 18902) then
        f2_local0[3] = 1000000
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[49] = 100
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[49] = 80
        f2_local0[4] = 20
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
        if f2_local3 > 3.5 then
            f2_local0[2] = 20
            f2_local0[3] = 80
            f2_local0[4] = 300
            f2_local0[6] = 10
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            f2_local0[1] = 10
            f2_local0[2] = 50
            f2_local0[3] = 20
            f2_local0[6] = 50
        else
            f2_local0[5] = 30
            f2_local0[2] = 10
            f2_local0[6] = 20
            f2_local0[42] = 70
        end
    else
        if f2_local3 < 3.5 then
            f2_local0[5] = 30
        end
        f2_local0[42] = 70
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18900) == false and arg1:HasSpecialEffectId(TARGET_SELF, 18901) == false then
        f2_local0[4] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 15, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 20, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[6], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RottenLarva204100_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RottenLarva204100_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RottenLarva204100_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RottenLarva204100_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RottenLarva204100_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RottenLarva204100_Act06)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, RottenLarva204100_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, RottenLarva204100_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, RottenLarva204100_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, RottenLarva204100_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, RottenLarva204100_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, RottenLarva204100_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, RottenLarva204100_Act46)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, RottenLarva204100_Act48)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, RottenLarva204100_Act49)
    local f2_local7 = REGIST_FUNC(arg1, arg2, RottenLarva204100_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function RottenLarva204100_Act01(arg0, arg1, arg2)
    local f3_local0 = 0.5
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

function RottenLarva204100_Act02(arg0, arg1, arg2)
    local f4_local0 = 2
    local f4_local1 = 0
    local f4_local2 = 999
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 2
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f4_local7 = 10
    local f4_local8 = 3001
    local f4_local9 = 4
    local f4_local10 = 0
    local f4_local11 = 120
    local f4_local12 = arg0:GetRandam_Int(0, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local7, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f4_local7, 3002, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f4_local7, 3005, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    if f4_local12 > 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f4_local7, 3002, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f4_local7, 3005, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenLarva204100_Act03(arg0, arg1, arg2)
    local f5_local0 = 5.5
    local f5_local1 = 0
    local f5_local2 = 999
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f5_local7 = 10
    local f5_local8 = 3003
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local7, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenLarva204100_Act04(arg0, arg1, arg2)
    local f6_local0 = 20
    local f6_local1 = 3004
    local f6_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 10
    local f6_local4 = 60
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local1, TARGET_ENE_0, f6_local2, f6_local3, f6_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenLarva204100_Act05(arg0, arg1, arg2)
    local f7_local0 = 10
    local f7_local1 = 3006
    local f7_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 0
    local f7_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, TARGET_ENE_0, f7_local2, f7_local3, f7_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenLarva204100_Act06(arg0, arg1, arg2)
    local f8_local0 = 2
    local f8_local1 = 0
    local f8_local2 = 999
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 2
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f8_local7 = 10
    local f8_local8 = 3007
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 0
    local f8_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local7, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenLarva204100_Act40(arg0, arg1, arg2)
    local f9_local0 = 2
    local f9_local1 = 2
    local f9_local2 = true
    local f9_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f9_local0, TARGET_ENE_0, f9_local1, TARGET_SELF, f9_local2, f9_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenLarva204100_Act41(arg0, arg1, arg2)
    local f10_local0 = 2
    local f10_local1 = 8
    local f10_local2 = false
    local f10_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f10_local0, TARGET_ENE_0, f10_local1, TARGET_SELF, f10_local2, f10_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenLarva204100_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenLarva204100_Act43(arg0, arg1, arg2)
    local f12_local0 = 10
    local f12_local1 = 0
    local f12_local2 = 100
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = TARGET_ENE_0
    local f12_local6 = 1
    local f12_local7 = 0
    local f12_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7, f12_local8)
    local f12_local9 = arg0:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenLarva204100_Act44(arg0, arg1, arg2)
    local f13_local0 = arg0:GetRandam_Int(0, 1)
    local f13_local1 = 2
    local f13_local2 = TARGET_ENE_0
    local f13_local3 = f13_local0
    local f13_local4 = 15
    local f13_local5 = true
    local f13_local6 = -1
    local f13_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f13_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, isLifeSuccess, f13_local6, f13_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenLarva204100_Act45(arg0, arg1, arg2)
    local f14_local0 = 6
    local f14_local1 = 15
    local f14_local2 = true
    local f14_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f14_local0, TARGET_ENE_0, f14_local1, TARGET_SELF, f14_local2, f14_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenLarva204100_Act46(arg0, arg1, arg2)
    local f15_local0 = 3
    local f15_local1 = TARGET_ENE_0
    local f15_local2 = 8
    local f15_local3 = TARGET_ENE_0
    local f15_local4 = true
    local f15_local5 = -1
    local f15_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f15_local7 = false
    local f15_local8 = 1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7, f15_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenLarva204100_Act48(arg0, arg1, arg2)
    local f16_local0 = 5
    local f16_local1 = -1
    local f16_local2 = true
    local f16_local3 = 1.5
    local f16_local4 = 10
    local f16_local5 = 2.5
    local f16_local6 = 0.5
    local f16_local7 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, f16_local3)
    local f16_local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, f16_local3)
    local f16_local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, f16_local3)
    local f16_local10 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, f16_local3)
    local f16_local11 = arg0:GetDist(POINT_INITIAL)
    local f16_local12 = arg0:GetRandam_Int(0, 1)
    if f16_local8 == true and f16_local7 == true then

    elseif f16_local8 == true and f16_local7 == false then
        f16_local12 = 0
    elseif f16_local8 == false and f16_local7 == true then
        f16_local12 = 1
    elseif f16_local8 == false and f16_local7 == false then
        f16_local12 = 2
    end
    if f16_local0 < f16_local11 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f16_local4, POINT_INITIAL, f16_local0 - 2, TARGET_SELF, false, f16_local1)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        if f16_local12 <= 1 then
            if f16_local0 - 2 < f16_local11 then
                if f16_local8 == true and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    f16_local12 = 0
                elseif f16_local7 == true and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    f16_local12 = 1
                end
            end
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f16_local5, TARGET_ENE_0, f16_local12, 100, f16_local2, false, f16_local1, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenLarva204100_Act49(arg0, arg1, arg2)
    local f17_local0 = 5
    local f17_local1 = 10
    local f17_local2 = -1
    local f17_local3 = true
    local f17_local4 = 1
    local f17_local5 = 10
    local f17_local6 = 2.5
    local f17_local7 = 0.5
    local f17_local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, f17_local4)
    local f17_local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, f17_local4)
    local f17_local10 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, f17_local4)
    local f17_local11 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, f17_local4)
    local f17_local12 = arg0:GetDist(TARGET_ENE_0)
    local f17_local13 = arg0:GetRandam_Int(0, 1)
    if f17_local9 == true and f17_local8 == true then

    elseif f17_local9 == true and f17_local8 == false then
        f17_local13 = 0
    elseif f17_local9 == false and f17_local8 == true then
        f17_local13 = 1
    elseif f17_local9 == false and f17_local8 == false then
        f17_local13 = 2
    end
    if f17_local1 < f17_local12 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local5, TARGET_ENE_0, arg0:GetRandam_Float(f17_local0, f17_local1), TARGET_SELF, true, f17_local2)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f17_local12 <= f17_local1 and f17_local0 <= f17_local12 then
        if f17_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local6, TARGET_ENE_0, f17_local13, 100, f17_local3, false, f17_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f17_local12 < f17_local0 then
        if f17_local11 == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f17_local7, TARGET_ENE_0, arg0:GetRandam_Float(f17_local0, f17_local1), TARGET_ENE_0, f17_local3, f17_local2, GUARD_GOAL_DESIRE_RET_Success)
        elseif f17_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local6, TARGET_ENE_0, f17_local13, 100, f17_local3, false, f17_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenLarva204100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RottenLarva204100_AfterAttackAct, 10)
    
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
    local f21_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f21_local1 = 0
    local f21_local2 = 20
    local f21_local3 = arg1:GetDist(TARGET_ENE_0)
    local f21_local4 = arg1:GetRandam_Int(1, 100)
    local f21_local5 = 0
    local f21_local6 = 0
    if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 6992) or arg1:HasSpecialEffectId(TARGET_ENE_0, 30) then
        f21_local5 = 1
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 90) then
        f21_local6 = 1
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then

    else

    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6) then
        arg2:ClearSubGoal()
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_RottenLarva204100_AfterAttackAct, "RottenLarva204100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RottenLarva204100_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


