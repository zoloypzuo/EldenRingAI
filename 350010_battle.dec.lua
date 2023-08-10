RegisterTableGoal(GOAL_DosouSkeletonCrossbow350010_Battle, "DosouSkeletonCrossbow350010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DosouSkeletonCrossbow350010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f2_local3 = arg1:HasSpecialEffectId(TARGET_SELF, 12535)
    local f2_local4 = arg1:GetDist(TARGET_ENE_0)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 12545)
    if f2_local3 == true then
        if f2_local4 >= 15 then
            if InsideRange(arg1, arg2, 180, 150, 0, 99) then
                f2_local0[2] = 100
            else
                f2_local0[5] = 30
            end
        elseif f2_local4 > 3 then
            if InsideRange(arg1, arg2, 180, 150, 0, 99) then
                f2_local0[2] = 100
            else
                f2_local0[5] = 30
            end
        elseif InsideRange(arg1, arg2, 180, 150, 0, 99) then
            f2_local0[2] = 100
        else
            f2_local0[5] = 30
            f2_local0[3] = 90
        end
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local4 >= 15 then
            f2_local0[31] = 100
        else
            f2_local0[30] = 100
        end
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local4 >= 15 then
            f2_local0[31] = 100
        else
            f2_local0[1] = 30
            f2_local0[30] = 70
        end
    elseif f2_local4 >= 15 then
        if InsideRange(arg1, arg2, 180, 150, 0, 99) then
            f2_local0[2] = 100
        else
            f2_local0[1] = 100
        end
    elseif f2_local4 > 3 then
        if InsideRange(arg1, arg2, 180, 150, 0, 99) then
            f2_local0[2] = 100
        else
            f2_local0[1] = 100
        end
    elseif InsideRange(arg1, arg2, 180, 150, 0, 99) then
        f2_local0[2] = 100
    else
        f2_local0[1] = 30
        f2_local0[3] = 90
        f2_local0[15] = 40
    end
    f2_local0[3] = SetCoolTime(arg1, arg2, 3025, 5, f2_local0[3], 15)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3030, 15, f2_local0[15], 0)
    if f2_local7 == false then
        f2_local0[15] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, DosouSkeletonCrossbow350010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, DosouSkeletonCrossbow350010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, DosouSkeletonCrossbow350010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, DosouSkeletonCrossbow350010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, DosouSkeletonCrossbow350010_Act05)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, DosouSkeletonCrossbow350010_Act15)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, DosouSkeletonCrossbow350010_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, DosouSkeletonCrossbow350010_Act31)
    local f2_local8 = REGIST_FUNC(arg1, arg2, DosouSkeletonCrossbow350010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function DosouSkeletonCrossbow350010_Act01(arg0, arg1, arg2)
    local f3_local0 = 20.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 50
    local f3_local3 = 50
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3020
    local f3_local8 = 3021
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f3_local11 = 0
    local f3_local12 = 0
    local f3_local13 = arg0:GetRandam_Int(1, 100)
    local f3_local14 = arg0:GetDist(TARGET_ENE_0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f3_local14 <= 1.5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 2, TARGET_ENE_0, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local0, f3_local11, f3_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonCrossbow350010_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 0.5, TARGET_ENE_0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonCrossbow350010_Act03(arg0, arg1, arg2)
    local f5_local0 = 3025
    local f5_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = arg0:GetRandam_Int(1, 100)
    local f5_local6 = arg0:GetDist(TARGET_ENE_0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local0, TARGET_ENE_0, AppDist, f5_local3, f5_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonCrossbow350010_Act04(arg0, arg1, arg2)
    local f6_local0 = 3026
    local f6_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = arg0:GetRandam_Int(1, 100)
    local f6_local6 = arg0:GetDist(TARGET_ENE_0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local0, TARGET_ENE_0, AppDist, f6_local3, f6_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonCrossbow350010_Act05(arg0, arg1, arg2)
    local f7_local0 = 3020
    local f7_local1 = 3021
    local f7_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = arg0:GetRandam_Int(1, 100)
    local f7_local7 = arg0:GetDist(TARGET_ENE_0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f7_local7 <= 1.5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 2, TARGET_ENE_0, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local0, TARGET_ENE_0, AppDist, f7_local4, f7_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonCrossbow350010_Act15(arg0, arg1, arg2)
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

function DosouSkeletonCrossbow350010_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonCrossbow350010_Act31(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = arg0:GetRandam_Float(2, 4)
    local f10_local2 = arg0:GetRandam_Float(9, 14)
    local f10_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f10_local1, TARGET_ENE_0, f10_local2, TARGET_SELF, true, f10_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeletonCrossbow350010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DosouSkeletonCrossbow350010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f14_local0 = arg1:GetDist(TARGET_ENE_0)
    local f14_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = arg1:GetRandam_Int(1, 100)
    local f14_local3 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 1.5) then
            arg2:ClearSubGoal()
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, f14_local1, 90)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_DosouSkeletonCrossbow350010_AfterAttackAct, "DosouSkeletonCrossbow350010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DosouSkeletonCrossbow350010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


