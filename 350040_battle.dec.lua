RegisterTableGoal(GOAL_DosouSkeletonTwinSword350040_Battle, "DosouSkeletonTwinSword350040_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DosouSkeletonTwinSword350040_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(1000000, 3010)
    arg1:EnableUnfavorableAttackCheck(1000000, 3011)
    arg1:EnableUnfavorableAttackCheck(1000000, 3012)
    arg1:EnableUnfavorableAttackCheck(1000000, 3013)
    arg1:EnableUnfavorableAttackCheck(1000000, 3014)
    arg1:EnableUnfavorableAttackCheck(1000000, 3015)
    
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
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 6.5 then
            f2_local0[31] = 100
        else
            f2_local0[30] = 100
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 6.5 then
            f2_local0[31] = 100
        else
            f2_local0[1] = 5
            f2_local0[7] = 5
            f2_local0[30] = 90
        end
    elseif f2_local3 >= 6.5 then
        f2_local0[1] = 20
        f2_local0[2] = 20
        f2_local0[6] = 60
        f2_local0[15] = 30
    elseif f2_local3 >= 2 then
        if InsideRange(arg1, arg2, 0, 160, 0, 99) then
            f2_local0[1] = 5
            f2_local0[2] = 35
            f2_local0[7] = 60
            f2_local0[15] = 30
        else
            f2_local0[1] = 10
            f2_local0[2] = 70
        end
    elseif InsideRange(arg1, arg2, 0, 180, 0, 99) then
        f2_local0[1] = 15
        f2_local0[2] = 85
        f2_local0[7] = 0
        f2_local0[15] = 40
    else
        f2_local0[1] = 100
    end
    f2_local0[6] = SetCoolTime(arg1, arg2, 3014, 5, f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3015, 5, f2_local0[7], 0)
    if f2_local6 == false then
        f2_local0[15] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, DosouSkeletonTwinSword350040_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, DosouSkeletonTwinSword350040_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, DosouSkeletonTwinSword350040_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, DosouSkeletonTwinSword350040_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, DosouSkeletonTwinSword350040_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, DosouSkeletonTwinSword350040_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, DosouSkeletonTwinSword350040_Act07)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, DosouSkeletonTwinSword350040_Act15)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, DosouSkeletonTwinSword350040_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, DosouSkeletonTwinSword350040_Act31)
    local f2_local7 = REGIST_FUNC(arg1, arg2, DosouSkeletonTwinSword350040_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function DosouSkeletonTwinSword350040_Act01(arg0, arg1, arg2)
    local f3_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 50
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3010
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonTwinSword350040_Act02(arg0, arg1, arg2)
    local f4_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 50
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3011
    local f4_local8 = 3012
    local f4_local9 = 3013
    local f4_local10 = 7
    local f4_local11 = 7
    local f4_local12 = 7
    local f4_local13 = 0
    local f4_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local10, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f4_local8, TARGET_ENE_0, f4_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local9, TARGET_ENE_0, f4_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonTwinSword350040_Act03(arg0, arg1, arg2)
    local f5_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 50
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3011
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonTwinSword350040_Act04(arg0, arg1, arg2)
    local f6_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 50
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3012
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonTwinSword350040_Act05(arg0, arg1, arg2)
    local f7_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 50
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3013
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonTwinSword350040_Act06(arg0, arg1, arg2)
    local f8_local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 50
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3014
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonTwinSword350040_Act07(arg0, arg1, arg2)
    local f9_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 50
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3015
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonTwinSword350040_Act15(arg0, arg1, arg2)
    local f10_local0 = 13
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 50
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    local f10_local7 = 3030
    local f10_local8 = 7
    local f10_local9 = 7
    local f10_local10 = 0
    local f10_local11 = 0
    local f10_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local0, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonTwinSword350040_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonTwinSword350040_Act31(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetRandam_Float(2, 4)
    local f12_local2 = arg0:GetRandam_Float(2, 4)
    local f12_local3 = -1
    if f12_local0 >= 6.5 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f12_local1, TARGET_ENE_0, f12_local2, TARGET_SELF, false, f12_local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f12_local1, TARGET_ENE_0, f12_local2, TARGET_SELF, true, f12_local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonTwinSword350040_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DosouSkeletonTwinSword350040_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
    
end

RegisterTableGoal(GOAL_DosouSkeletonTwinSword350040_AfterAttackAct, "DosouSkeletonTwinSword350040_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DosouSkeletonTwinSword350040_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


