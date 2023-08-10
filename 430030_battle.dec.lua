RegisterTableGoal(GOAL_UncoverTombNobleManFlag430030_Battle, "UncoverTombNobleManFlag430030_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_UncoverTombNobleManFlag430030_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 80
                f2_local0[20] = 20
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[1] = 0
                f2_local0[20] = 0
                f2_local0[21] = 30
                f2_local0[22] = 70
                f2_local0[23] = 0
            end
        elseif f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 20
                f2_local0[23] = 0
            else
                f2_local0[1] = 0
                f2_local0[20] = 0
                f2_local0[21] = 30
                f2_local0[22] = 70
                f2_local0[23] = 0
            end
        elseif f2_local3 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 20
                f2_local0[23] = 0
            else
                f2_local0[1] = 0
                f2_local0[20] = 0
                f2_local0[21] = 30
                f2_local0[22] = 70
                f2_local0[23] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 80
            f2_local0[20] = 0
            f2_local0[21] = 20
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[1] = 0
            f2_local0[20] = 0
            f2_local0[21] = 30
            f2_local0[22] = 70
            f2_local0[23] = 0
        end
    elseif f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 80
                f2_local0[20] = 20
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[1] = 0
                f2_local0[20] = 0
                f2_local0[21] = 30
                f2_local0[22] = 70
                f2_local0[23] = 0
            end
        elseif f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 20
                f2_local0[23] = 0
            else
                f2_local0[1] = 0
                f2_local0[20] = 0
                f2_local0[21] = 30
                f2_local0[22] = 70
                f2_local0[23] = 0
            end
        elseif f2_local3 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 20
                f2_local0[23] = 0
            else
                f2_local0[1] = 0
                f2_local0[20] = 0
                f2_local0[21] = 30
                f2_local0[22] = 70
                f2_local0[23] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 80
            f2_local0[20] = 0
            f2_local0[21] = 20
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[1] = 0
            f2_local0[20] = 0
            f2_local0[21] = 30
            f2_local0[22] = 70
            f2_local0[23] = 0
        end
    elseif f2_local3 >= 15 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 80
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[1] = 0
            f2_local0[20] = 0
            f2_local0[21] = 30
            f2_local0[22] = 70
            f2_local0[23] = 0
        end
    elseif f2_local3 >= 10 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 70
            f2_local0[20] = 0
            f2_local0[21] = 10
            f2_local0[22] = 20
            f2_local0[23] = 0
        else
            f2_local0[1] = 0
            f2_local0[20] = 0
            f2_local0[21] = 30
            f2_local0[22] = 70
            f2_local0[23] = 0
        end
    elseif f2_local3 >= 5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 70
            f2_local0[20] = 0
            f2_local0[21] = 10
            f2_local0[22] = 20
            f2_local0[23] = 0
        else
            f2_local0[1] = 0
            f2_local0[20] = 0
            f2_local0[21] = 30
            f2_local0[22] = 70
            f2_local0[23] = 0
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
        f2_local0[1] = 80
        f2_local0[20] = 0
        f2_local0[21] = 20
        f2_local0[22] = 0
        f2_local0[23] = 0
    else
        f2_local0[1] = 0
        f2_local0[20] = 0
        f2_local0[21] = 30
        f2_local0[22] = 70
        f2_local0[23] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3005, 15, f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3006, 15, f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3022, 15, f2_local0[1], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, UncoverTombNobleManFlag430030_Act01)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, UncoverTombNobleManFlag430030_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, UncoverTombNobleManFlag430030_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, UncoverTombNobleManFlag430030_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, UncoverTombNobleManFlag430030_Act23)
    local f2_local8 = REGIST_FUNC(arg1, arg2, UncoverTombNobleManFlag430030_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function UncoverTombNobleManFlag430030_Act01(arg0, arg1, arg2)
    local f3_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 10
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    local f3_local7 = 3005
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local9 = 0
    local f3_local10 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 8802) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 3006, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 3022, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 3005, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function UncoverTombNobleManFlag430030_Act20(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    if f4_local0 >= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function UncoverTombNobleManFlag430030_Act21(arg0, arg1, arg2)
    local f5_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f5_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 30, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function UncoverTombNobleManFlag430030_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function UncoverTombNobleManFlag430030_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.5, 2.5), TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function UncoverTombNobleManFlag430030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_UncoverTombNobleManFlag430031_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f11_local0 = arg1:GetDist(TARGET_ENE_0)
    local f11_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 0
    local f11_local3 = 0
    local f11_local4 = arg1:GetRandam_Int(1, 100)
    local f11_local5 = arg1:GetHpRate(TARGET_SELF)
    local f11_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    return false
    
end

RegisterTableGoal(GOAL_UncoverTombNobleManFlag430031_AfterAttackAct, "UncoverTombNobleManFlag430031_AfterAttackAct ")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_UncoverTombNobleManFlag430031_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


