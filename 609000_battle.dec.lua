RegisterTableGoal(GOAL_Tortoises609000_Battle, "Tortoises609000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Tortoises609000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    Init_Pseudo_Global(arg1, arg2)
    arg1:GetStringIndexedNumber("WalkBefore")
    arg1:GetStringIndexedNumber("ForceEscape")
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 11431)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDist(TARGET_FRI_0)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetPrevTargetState()
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_ENE_0, 8110)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_FRI_0, 8110)
    local f2_local9 = arg1:GetRandam_Int(35, 35)
    local f2_local10 = arg1:GetRandam_Int(ALERT_DIST_MIN, ALERT_DIST_MAX)
    local f2_local11 = arg1:GetDist(TARGET_ENE_0)
    local f2_local12 = arg1:GetRandam_Int(1, 100)
    local f2_local13 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 11431) then
        f2_local0[2] = 100
    else
        f2_local0[1] = 100
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Tortoises609000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Tortoises609000_Act02)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Tortoises609000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Tortoises609000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Tortoises609000_Act12)
    local f2_local14 = REGIST_FUNC(arg1, arg2, Tortoises609000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local14, f2_local2)
    
end

function Tortoises609000_Act01(arg0, arg1, arg2)
    local f3_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local f3_local2 = -1
    local f3_local3 = 360
    local f3_local4 = arg0:GetRandam_Int(1, 100)
    local f3_local5 = TARGET_ENE_0
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 10, f3_local5, 30, TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Tortoises609000_Act02(arg0, arg1, arg2)
    local f4_local0 = 5
    local f4_local1 = 20005
    local f4_local2 = 20001
    local f4_local3 = TARGET_NONE
    local f4_local4 = 10
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f4_local0, f4_local1, f4_local3, f4_local4, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f4_local0, f4_local2, f4_local3, successDist2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Tortoises609000_Act10(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("WalkBefore", 1)
    arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 1, 50, true, -1, 0, 1, false, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Tortoises609000_Act11(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("WalkBefore", 0)
    local f6_local0 = arg0:GetRandam_Int(2, 5)
    local f6_local1 = f6_local0
    local f6_local2 = f6_local0 + 10
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 10, TARGET_ENE_0, 2, TARGET_SELF, true, -1, AI_DIR_TYPE_F, f6_local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Tortoises609000_Act12(arg0, arg1, arg2)
    local f7_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local f7_local2 = -1
    local f7_local3 = 360
    local f7_local4 = arg0:GetRandam_Int(1, 100)
    local f7_local5 = TARGET_ENE_0
    arg1:AddSubGoal(GGOAL_COMMON_LeaveTarget_Continuous, 10, f7_local5, 30, TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Tortoises609000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Tortoises609000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f11_local0 = arg1:GetRandam_Int(1, 100)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(5026) then
            arg2:ClearSubGoal()
            local f11_local1 = 5
            local f11_local2 = 20000
            local f11_local3 = TARGET_NONE
            local f11_local4 = 10
            local f11_local5 = 0
            local f11_local6 = 0
            local f11_local7 = 0
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f11_local1, f11_local2, f11_local3, f11_local4, 0, 0, 0)
        else
            arg2:ClearSubGoal()
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Tortoises609000_AfterAttackAct, "Tortoises609000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Tortoises609000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


