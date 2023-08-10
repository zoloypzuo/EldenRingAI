RegisterTableGoal(GOAL_DosouSkeletonSpear350000_Battle, "GOAL_DosouSkeletonSpear350000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DosouSkeletonSpear350000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    if arg1:IsRiding(TARGET_SELF) then
        if f2_local3 < 5 then
            f2_local0[41] = 100
        else
            f2_local0[40] = 100
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 6 then
            f2_local0[31] = 100
        else
            f2_local0[30] = 100
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 6 then
            f2_local0[31] = 100
        else
            f2_local0[1] = 5
            f2_local0[2] = 5
            f2_local0[30] = 90
        end
    elseif f2_local3 >= 6 then
        if InsideRange(arg1, arg2, 180, 120, 0, 99) then
            f2_local0[8] = 100
        elseif InsideRange(arg1, arg2, 0, 130, 0, 99) then
            f2_local0[7] = 30
            f2_local0[1] = 35
            f2_local0[2] = 35
            f2_local0[15] = 30
        else
            f2_local0[1] = 50
            f2_local0[2] = 50
            f2_local0[15] = 50
        end
    elseif f2_local3 >= 2.5 then
        if InsideRange(arg1, arg2, 180, 120, 0, 99) then
            f2_local0[8] = 100
        elseif InsideRange(arg1, arg2, 0, 130, 0, 99) then
            f2_local0[7] = 0
            f2_local0[1] = 20
            f2_local0[2] = 20
            f2_local0[15] = 20
        else
            f2_local0[1] = 50
            f2_local0[2] = 50
            f2_local0[15] = 50
        end
    elseif InsideRange(arg1, arg2, 180, 120, 0, 99) then
        f2_local0[8] = 100
    elseif InsideRange(arg1, arg2, 0, 130, 0, 99) then
        f2_local0[6] = 100
        f2_local0[15] = 100
    else
        f2_local0[6] = 100
        f2_local0[15] = 100
    end
    f2_local0[7] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[7], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3030, 15, f2_local0[15], 0)
    if f2_local6 == false then
        f2_local0[15] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, DosouSkeletonSpear350000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, DosouSkeletonSpear350000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, DosouSkeletonSpear350000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, DosouSkeletonSpear350000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, DosouSkeletonSpear350000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, DosouSkeletonSpear350000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, DosouSkeletonSpear350000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, DosouSkeletonSpear350000_Act08)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, DosouSkeletonSpear350000_Act15)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, DosouSkeletonSpear350000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, DosouSkeletonSpear350000_Act31)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, DosouSkeletonSpear350000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, DosouSkeletonSpear350000_Act41)
    local f2_local7 = REGIST_FUNC(arg1, arg2, DosouSkeletonSpear350000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function DosouSkeletonSpear350000_Act01(arg0, arg1, arg2)
    local f3_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 50
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3001
    local f3_local8 = 3003
    local f3_local9 = 7
    local f3_local10 = 7
    local f3_local11 = 0
    local f3_local12 = 0
    local f3_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local0, f3_local11, f3_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, f3_local9, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSpear350000_Act02(arg0, arg1, arg2)
    local f4_local0 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 50
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3002
    local f4_local8 = 3003
    local f4_local9 = 7
    local f4_local10 = 7
    local f4_local11 = 0
    local f4_local12 = 0
    local f4_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local0, f4_local11, f4_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local8, TARGET_ENE_0, f4_local9, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSpear350000_Act03(arg0, arg1, arg2)
    local f5_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 50
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3001
    local f5_local8 = 7
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSpear350000_Act04(arg0, arg1, arg2)
    local f6_local0 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 50
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3002
    local f6_local8 = 7
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSpear350000_Act05(arg0, arg1, arg2)
    local f7_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 50
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3003
    local f7_local8 = 7
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSpear350000_Act06(arg0, arg1, arg2)
    local f8_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 50
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3004
    local f8_local8 = 3003
    local f8_local9 = 2.5
    local f8_local10 = 6
    local f8_local11 = 0
    local f8_local12 = 0
    local f8_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local0, f8_local11, f8_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local8, TARGET_ENE_0, f8_local9, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSpear350000_Act07(arg0, arg1, arg2)
    local f9_local0 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 50
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3000
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSpear350000_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 0.5, TARGET_ENE_0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSpear350000_Act15(arg0, arg1, arg2)
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

function DosouSkeletonSpear350000_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSpear350000_Act31(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetRandam_Float(2, 4)
    local f13_local2 = arg0:GetRandam_Float(5, 5.5)
    local f13_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f13_local1, TARGET_ENE_0, f13_local2, TARGET_SELF, true, f13_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSpear350000_Act40(arg0, arg1, arg2)
    local f14_local0 = 3000
    local f14_local1 = 3001
    local f14_local2 = 3005
    local f14_local3 = 3006
    local f14_local4 = 3007
    local f14_local5 = 3010
    local f14_local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local7 = 0
    local f14_local8 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 10173) or arg0:HasSpecialEffectId(TARGET_SELF, 5232) then
        if arg0:IsFinishTimer(0) == true and arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 85, 90, 20) == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local5, TARGET_ENE_0, f14_local6, f14_local7, f14_local8, 0, 0)
            arg0:SetTimer(0, 5)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5231) then
        if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 85, 90, 50) == true then
            if arg0:IsRiding(TARGET_ENE_0) == true then
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local4, TARGET_ENE_0, 999, 0, 0, 0, 0)
            elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 150) then
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local3, TARGET_ENE_0, 999, 0, 0, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local2, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
        end
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 85, 90, 50) == true then
        if arg0:HasSpecialEffectId(TARGET_SELF, 10169) then
            arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local1, TARGET_ENE_0, f14_local6, f14_local7, f14_local8, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local6, f14_local7, f14_local8, 0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSpear350000_Act41(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Dismount, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonSpear350000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DosouSkeletonSpear350000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(17602) then
        local f19_local0 = arg1:GetDist(TARGET_ENE_0)
        local f19_local1 = arg1:GetRandam_Int(1, 100)
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 0, 0, 0, 0, 0)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_DosouSkeletonSpear350000_AfterAttackAct, "GOAL_DosouSkeletonSpear350000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DosouSkeletonSpear350000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


