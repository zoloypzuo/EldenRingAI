RegisterTableGoal(GOAL_DosouSkeletonSwordShield350030_Battle, "DosouSkeletonSwordShield350030_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DosouSkeletonSwordShield350030_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
    arg1:EnableUnfavorableAttackCheck(1000000, 3003)
    
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
        if f2_local3 >= 8 then
            f2_local0[30] = 100
        else
            f2_local0[8] = 100
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 8 then
            f2_local0[30] = 100
        else
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[8] = 80
        end
    elseif f2_local3 >= 8 then
        f2_local0[30] = 100
    elseif f2_local3 >= 6 then
        f2_local0[4] = 10
        f2_local0[5] = 30
        f2_local0[3] = 20
        f2_local0[8] = 10
        f2_local0[15] = 20
        f2_local0[30] = 30
    elseif f2_local3 >= 4 then
        if InsideRange(arg1, arg2, 0, 270, 0, 99) then
            f2_local0[4] = 20
            f2_local0[5] = 30
            f2_local0[3] = 30
            f2_local0[8] = 30
            f2_local0[15] = 30
            f2_local0[30] = 10
        else
            f2_local0[6] = 100
        end
    elseif InsideRange(arg1, arg2, 0, 270, 0, 99) then
        f2_local0[4] = 50
        f2_local0[5] = 0
        f2_local0[3] = 50
        f2_local0[8] = 40
        f2_local0[15] = 30
    else
        f2_local0[6] = 80
        f2_local0[31] = 20
    end
    f2_local0[3] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[5], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3030, 15, f2_local0[15], 0)
    if f2_local6 == false then
        f2_local0[15] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, DosouSkeletonSwordShield350030_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, DosouSkeletonSwordShield350030_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, DosouSkeletonSwordShield350030_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, DosouSkeletonSwordShield350030_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, DosouSkeletonSwordShield350030_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, DosouSkeletonSwordShield350030_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, DosouSkeletonSwordShield350030_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, DosouSkeletonSwordShield350030_Act08)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, DosouSkeletonSwordShield350030_Act15)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, DosouSkeletonSwordShield350030_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, DosouSkeletonSwordShield350030_Act31)
    local f2_local7 = REGIST_FUNC(arg1, arg2, DosouSkeletonSwordShield350030_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function DosouSkeletonSwordShield350030_Act01(arg0, arg1, arg2)
    local f3_local0 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 50
    local f3_local3 = 100
    local f3_local4 = 80
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSwordShield350030_Act02(arg0, arg1, arg2)
    local f4_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 50
    local f4_local3 = 100
    local f4_local4 = 80
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSwordShield350030_Act03(arg0, arg1, arg2)
    local f5_local0 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 50
    local f5_local3 = 100
    local f5_local4 = 100
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3000
    local f5_local8 = 3001
    local f5_local9 = 7
    local f5_local10 = 7
    local f5_local11 = 0
    local f5_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local9, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local8, TARGET_ENE_0, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSwordShield350030_Act04(arg0, arg1, arg2)
    local f6_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 50
    local f6_local3 = 100
    local f6_local4 = 100
    local f6_local5 = 4
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3003
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSwordShield350030_Act05(arg0, arg1, arg2)
    local f7_local0 = 6.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 50
    local f7_local3 = 100
    local f7_local4 = 100
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3002
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSwordShield350030_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = arg0:GetRandam_Int(1, 100)
    local f8_local2 = 100
    local f8_local3 = -1
    if f8_local1 <= f8_local2 then
        f8_local3 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1.5, TARGET_ENE_0, 0, f8_local3, GUARD_GOAL_DESIRE_RET_Continue, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSwordShield350030_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 0
    local f9_local2 = 0
    local f9_local3 = 100
    local f9_local4 = arg0:GetRandam_Int(1, 100)
    local f9_local5 = -1
    if f9_local4 <= f9_local3 then
        f9_local5 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Guard, 15, 30, TARGET_ENE_0, resultTypeIfGuardSuccess, true)
    
end

function DosouSkeletonSwordShield350030_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetRandam_Int(1, 100)
    local f10_local1 = 100
    local f10_local2 = -1
    if f10_local0 <= f10_local1 then
        f10_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f10_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSwordShield350030_Act15(arg0, arg1, arg2)
    local f11_local0 = 13
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 50
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 8
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    local f11_local7 = 3030
    local f11_local8 = 7
    local f11_local9 = 7
    local f11_local10 = 0
    local f11_local11 = 0
    local f11_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local0, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSwordShield350030_Act30(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetRandam_Float(3, 6)
    local f12_local2 = arg0:GetRandam_Float(2.5, 4.5)
    local f12_local3 = 100
    local f12_local4 = -1
    if arg0:GetRandam_Int(1, 100) <= f12_local3 then
        f12_local4 = 9910
    end
    if f12_local0 >= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f12_local1, TARGET_ENE_0, f12_local2, TARGET_SELF, false, f12_local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f12_local1, TARGET_ENE_0, f12_local2, TARGET_SELF, true, f12_local4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSwordShield350030_Act31(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 4.5
    local f13_local2 = 10
    local f13_local3 = 100
    local f13_local4 = arg0:GetRandam_Int(1, 100)
    local f13_local5 = -1
    if f13_local4 <= f13_local3 then
        f13_local5 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, f13_local1, TARGET_ENE_0, true, f13_local5)
    
end

function DosouSkeletonSwordShield350030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DosouSkeletonSwordShield350030_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
    
end

RegisterTableGoal(GOAL_DosouSkeletonSwordShield350030_AfterAttackAct, "DosouSkeletonSwordShield350030_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DosouSkeletonSwordShield350030_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


