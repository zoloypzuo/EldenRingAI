RegisterTableGoal(GOAL_WitheredLeg_Restraint_367020_Battle, "WitheredLeg_Restraint_367020_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WitheredLeg_Restraint_367020_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:HasSpecialEffectId(TARGET_SELF, 17102) == true and arg1:HasSpecialEffectId(TARGET_SELF, 17117) == false then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 100
            f2_local0[4] = 0
            f2_local0[20] = 0
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 17103) == true and arg1:HasSpecialEffectId(TARGET_SELF, 17118) == false then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 100
            f2_local0[20] = 0
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 17102) == false and arg1:HasSpecialEffectId(TARGET_SELF, 17103) == false then
            if f2_local3 <= 20 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 70
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                else
                    f2_local0[1] = 70
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                end
            elseif f2_local3 >= 15 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 70
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                else
                    f2_local0[1] = 70
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                end
            elseif f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 70
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                else
                    f2_local0[1] = 70
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                end
            elseif f2_local3 >= 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 70
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                else
                    f2_local0[1] = 70
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
            else
                f2_local0[1] = 70
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
            end
        end
    elseif f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:HasSpecialEffectId(TARGET_SELF, 17102) == true and arg1:HasSpecialEffectId(TARGET_SELF, 17117) == false then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 100
            f2_local0[4] = 0
            f2_local0[20] = 0
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 17103) == true and arg1:HasSpecialEffectId(TARGET_SELF, 17118) == false then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 100
            f2_local0[20] = 0
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 17102) == false and arg1:HasSpecialEffectId(TARGET_SELF, 17103) == false then
            if f2_local3 <= 20 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 70
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                else
                    f2_local0[1] = 70
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                end
            elseif f2_local3 >= 15 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 70
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                else
                    f2_local0[1] = 70
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                end
            elseif f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 70
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                else
                    f2_local0[1] = 70
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                end
            elseif f2_local3 >= 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 70
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                else
                    f2_local0[1] = 70
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
            else
                f2_local0[1] = 70
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 17102) == true and arg1:HasSpecialEffectId(TARGET_SELF, 17117) == false then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 100
        f2_local0[4] = 0
        f2_local0[20] = 0
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 17103) == true and arg1:HasSpecialEffectId(TARGET_SELF, 17118) == false then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 100
        f2_local0[20] = 0
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 17102) == false and arg1:HasSpecialEffectId(TARGET_SELF, 17103) == false then
        if f2_local3 <= 20 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
            else
                f2_local0[1] = 70
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
            end
        elseif f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
            else
                f2_local0[1] = 70
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
            end
        elseif f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
            else
                f2_local0[1] = 70
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
            end
        elseif f2_local3 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
            else
                f2_local0[1] = 70
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 70
            f2_local0[2] = 30
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[20] = 0
        else
            f2_local0[1] = 70
            f2_local0[2] = 30
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[20] = 0
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3015, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3016, 30, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 20020, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 20021, 10, f2_local0[4], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, WitheredLeg_Restraint_367020_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, WitheredLeg_Restraint_367020_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, WitheredLeg_Restraint_367020_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, WitheredLeg_Restraint_367020_Act4)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, WitheredLeg_Restraint_367020_Act20)
    local f2_local8 = REGIST_FUNC(arg1, arg2, WitheredLeg_Restraint_367020_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function WitheredLeg_Restraint_367020_Act1(arg0, arg1, arg2)
    local f3_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 0
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    local f3_local7 = 3015
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WitheredLeg_Restraint_367020_Act2(arg0, arg1, arg2)
    local f4_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 0
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f4_local7 = 3016
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WitheredLeg_Restraint_367020_Act3(arg0, arg1, arg2)
    local f5_local0 = arg0:GetRandam_Int(1, 100)
    local f5_local1 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = f5_local1 + 0
    local f5_local3 = f5_local1 + 0
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f5_local8 = 20020
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WitheredLeg_Restraint_367020_Act4(arg0, arg1, arg2)
    local f6_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 0
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f6_local7 = 20021
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WitheredLeg_Restraint_367020_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WitheredLeg_Restraint_367020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_WitheredLeg_Restraint_367020_AfterAttackAct, 10)
    
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
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 30) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3017, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 30) then
        if f11_local4 <= 40 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3017, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3018, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 30) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 20010, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 30) then
        if f11_local4 <= 40 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 20010, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 20026, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 30) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 20011, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 30) then
        if f11_local4 <= 40 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 20011, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 20029, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_WitheredLeg_Restraint_367020_AfterAttackAct, "WitheredLeg_Restraint_367020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WitheredLeg_Restraint_367020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


