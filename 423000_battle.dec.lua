RegisterTableGoal(GOAL_GroundTacoJr423000_Battle, "GroundTacoJr423000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GroundTacoJr423000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetEventRequest()
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[22] = 20
        f2_local0[24] = 80
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[3] = 40
        f2_local0[24] = 60
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 10 - arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[21] = 100
    elseif f2_local3 >= 8 then
        f2_local0[22] = 100
    elseif f2_local3 >= 4 then
        f2_local0[1] = 50
        f2_local0[2] = 20
        f2_local0[3] = 20
        f2_local0[22] = 10
    else
        f2_local0[1] = 20
        f2_local0[2] = 60
        f2_local0[3] = 20
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, GroundTacoJr423000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, GroundTacoJr423000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, GroundTacoJr423000_Act03)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, GroundTacoJr423000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, GroundTacoJr423000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, GroundTacoJr423000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, GroundTacoJr423000_Act24)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, GroundTacoJr423000_Act31)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, GroundTacoJr423000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, GroundTacoJr423000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, GroundTacoJr423000_Act47)
    local f2_local7 = REGIST_FUNC(arg1, arg2, GroundTacoJr423000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function GroundTacoJr423000_Act01(arg0, arg1, arg2)
    local f3_local0 = 1.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 1.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 1.8 - arg0:GetMapHitRadius(TARGET_SELF) + 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 8
    local f3_local6 = 0
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3001
    local f3_local8 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTacoJr423000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetRandam_Int(1, 100)
    local f4_local1 = 1.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 1.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 1.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 8
    local f4_local7 = 0
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 3002
    local f4_local9 = 3003
    local f4_local10 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local f4_local11 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local12 = 0
    local f4_local13 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f4_local8, TARGET_ENE_0, f4_local10, f4_local12, f4_local13, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f4_local9, TARGET_ENE_0, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTacoJr423000_Act03(arg0, arg1, arg2)
    local f5_local0 = 2
    local f5_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 8
    local f5_local6 = 0
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3000
    local f5_local8 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTacoJr423000_ActCP2(arg0, arg1, arg2)
    local f6_local0 = arg0:GetRandam_Int(1, 100)
    local f6_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 4
    local f6_local7 = 8
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 3001
    local f6_local9 = 3002
    local f6_local10 = 3003
    local f6_local11 = 1.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local12 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local13 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local14 = 0
    local f6_local15 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f6_local8, TARGET_ENE_0, f6_local11, f6_local14, f6_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f6_local9, TARGET_ENE_0, f6_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f6_local10, TARGET_ENE_0, f6_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTacoJr423000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTacoJr423000_Act22(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = (10 - arg0:GetMapHitRadius(TARGET_SELF)) / 2
    local f8_local2 = true
    local f8_local3 = arg0:GetRandam_Int(1, 100)
    local f8_local4 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f8_local1, TARGET_ENE_0, f8_local2, f8_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTacoJr423000_Act23(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = (10 - arg0:GetMapHitRadius(TARGET_SELF)) * 2
    local f9_local2 = true
    local f9_local3 = arg0:GetRandam_Int(1, 100)
    local f9_local4 = -1
    if f9_local0 <= (10 - arg0:GetMapHitRadius(TARGET_SELF)) / 1.5 then
        arg1:ClearSubGoal()
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f9_local1, TARGET_ENE_0, false, f9_local4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTacoJr423000_Act24(arg0, arg1, arg2)
    local f10_local0 = arg0:GetRandam_Int(1, 100)
    local f10_local1 = -1
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f10_local1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTacoJr423000_ActCP3(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTacoJr423000_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTacoJr423000_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTacoJr423000_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTacoJr423000_Approach_Act_Flex(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = arg0:GetRandam_Int(1, 100)
    local f15_local2 = false
    if arg3 <= f15_local0 then
        f15_local2 = true
    elseif arg4 <= f15_local0 and f15_local1 <= arg5 then
        f15_local2 = false
    end
    local f15_local3 = -1
    local f15_local4 = arg0:GetRandam_Int(1, 100)
    if f15_local4 <= arg6 then
        f15_local3 = 9910
    end
    if f15_local2 == true then
        life = arg7
    else
        life = arg8
    end
    if arg2 <= f15_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, life, TARGET_ENE_0, arg2, TARGET_SELF, f15_local2, f15_local3)
    end
    
end

function GroundTacoJr423000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_GroundTacoJr423000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f19_local0 = arg1:GetDist(TARGET_ENE_0)
    local f19_local1 = arg1:GetDist(TARGET_FRI_0)
    local f19_local2 = arg1:GetRandam_Int(1, 100)
    local f19_local3 = arg1:GetPrevTargetState()
    local f19_local4 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptType(0) == PLAN_SP_EFFECT_FALL_FROM_HORSE then
        arg2:ClearSubGoal()
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then

    else

    end
    return false
    
end

RegisterTableGoal(GOAL_GroundTacoJr423000_AfterAttackAct, "GroundTacoJr423000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GroundTacoJr423000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


