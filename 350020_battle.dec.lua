RegisterTableGoal(GOAL_DosouSkeletonSickle350020_Battle, "GOAL_DosouSkeletonSickle350020_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DosouSkeletonSickle350020_Battle, true)
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
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 12545)
    local f2_local7 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 19050) then
        if f2_local7 == 10 then
            f2_local0[41] = 10
        elseif f2_local3 > 3 then
            f2_local0[40] = 20
            f2_local0[30] = 5
        else
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[40] = 20
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 7 then
            f2_local0[31] = 100
        else
            f2_local0[30] = 100
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 7 then
            f2_local0[31] = 100
        else
            f2_local0[3] = 20
            f2_local0[4] = 40
            f2_local0[30] = 40
        end
    elseif f2_local3 >= 7 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 70
        f2_local0[4] = 30
        f2_local0[5] = 0
        f2_local0[15] = 40
    elseif f2_local3 >= 3 then
        if InsideRange(arg1, arg2, 0, 150, 0, 99) then
            f2_local0[2] = 40
            f2_local0[3] = 20
            f2_local0[4] = 40
            f2_local0[5] = 20
            f2_local0[15] = 40
            f2_local0[32] = 30
        else
            f2_local0[2] = 0
            f2_local0[4] = 60
            f2_local0[5] = 40
            f2_local0[15] = 40
            f2_local0[32] = 30
        end
    elseif InsideRange(arg1, arg2, 0, 180, 0, 99) then
        f2_local0[1] = 70
        f2_local0[32] = 30
        f2_local0[15] = 40
    else
        f2_local0[1] = 1
        f2_local0[32] = 1
    end
    f2_local0[4] = SetCoolTime(arg1, arg2, 3013, 5, f2_local0[4], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3030, 15, f2_local0[15], 0)
    if f2_local6 == false then
        f2_local0[15] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, DosouSkeletonSickle350020_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, DosouSkeletonSickle350020_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, DosouSkeletonSickle350020_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, DosouSkeletonSickle350020_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, DosouSkeletonSickle350020_Act05)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, DosouSkeletonSickle350020_Act15)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, DosouSkeletonSickle350020_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, DosouSkeletonSickle350020_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, DosouSkeletonSickle350020_Act32)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, DosouSkeletonSickle350020_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, DosouSkeletonSickle350020_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, DosouSkeletonSickle350020_Act42)
    local f2_local8 = REGIST_FUNC(arg1, arg2, DosouSkeletonSickle350020_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function DosouSkeletonSickle350020_Act01(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17410)
    local f3_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 50
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3011
    local f3_local8 = 3015
    local f3_local9 = 4
    local f3_local10 = 4
    local f3_local11 = 0
    local f3_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local9, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSickle350020_Act02(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17410)
    local f4_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 50
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3012
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSickle350020_Act03(arg0, arg1, arg2)
    local f5_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 50
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = arg0:GetRandam_Int(1, 100)
    local f5_local8 = arg0:GetDist(TARGET_ENE_0)
    if f5_local8 <= 1.5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 2, TARGET_ENE_0, false, -1)
    end
    local f5_local9 = 3013
    local f5_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local11 = 0
    local f5_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local9, TARGET_ENE_0, f5_local10, f5_local11, f5_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSickle350020_Act04(arg0, arg1, arg2)
    local f6_local0 = 3010
    local f6_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 0
    local f6_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local1, f6_local2, f6_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSickle350020_Act05(arg0, arg1, arg2)
    local f7_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 50
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3014
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSickle350020_Act15(arg0, arg1, arg2)
    local f8_local0 = 13
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 50
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    local f8_local7 = 3030
    local f8_local8 = 7
    local f8_local9 = 7
    local f8_local10 = 0
    local f8_local11 = 0
    local f8_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local0, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSickle350020_Act30(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17410)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSickle350020_Act31(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = arg0:GetRandam_Float(2, 4)
    local f10_local2 = arg0:GetRandam_Float(4, 6)
    local f10_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f10_local1, TARGET_ENE_0, f10_local2, TARGET_SELF, true, f10_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSickle350020_Act32(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetRandam_Float(2, 4)
    local f11_local2 = arg0:GetRandam_Float(4, 6)
    local f11_local3 = -1
    if f11_local0 > 5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 8, TARGET_ENE_0, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSickle350020_Act40(arg0, arg1, arg2)
    local f12_local0 = arg0:GetRandam_Int(1, 100)
    local f12_local1 = arg0:GetDist(TARGET_ENE_0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17410)
    if f12_local1 <= 30 then
        local f12_local2 = 3016
        local f12_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f12_local4 = 0
        local f12_local5 = 0
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local2, TARGET_ENE_0, f12_local3, f12_local4, f12_local5, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSickle350020_Act41(arg0, arg1, arg2)
    local f13_local0 = 20020
    local f13_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 0
    local f13_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local0, TARGET_ENE_0, f13_local1, f13_local2, f13_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSickle350020_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17410)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetRandam_Float(2, 4)
    local f14_local2 = arg0:GetRandam_Float(4, 6)
    local f14_local3 = -1
    if f14_local0 > 5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 8, TARGET_ENE_0, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSickle350020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DosouSkeletonSickle350020_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17410)
    if arg1:HasSpecialEffectId(TARGET_SELF, 17410) then
        arg2:ClearSubGoal()
        DosouSkeletonSickle350020_Act41(arg1, arg2)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_DosouSkeletonSickle350020_AfterAttackAct, "GOAL_DosouSkeletonSickle350020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DosouSkeletonSickle350020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


