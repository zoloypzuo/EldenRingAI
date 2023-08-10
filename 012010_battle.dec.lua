RegisterTableGoal(GOAL_CatapultDummyEvileye12010_Battle, "CatapultDummyEvileye12010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CatapultDummyEvileye12010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetTimer(1, 2)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local3 < 300 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
            f2_local0[1] = 100
            f2_local0[2] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 100
        end
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, CatapultDummyEvileye12010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, CatapultDummyEvileye12010_Act02)
    local f2_local9 = REGIST_FUNC(arg1, arg2, CatapultDummyEvileye12010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9)
    
end

function CatapultDummyEvileye12010_Act01(arg0, arg1, arg2)
    local f3_local0 = 300 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 20
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    local f3_local7 = arg0:GetRandam_Int(1, 100)
    local f3_local8 = 3000
    local f3_local9 = 3001
    local f3_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local11 = 0
    local f3_local12 = 0
    if arg0:IsFinishTimer(1) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local9, TARGET_ENE_0, f3_local10, f3_local11, f3_local12, 0, 0)
    elseif arg0:GetTimer(1) >= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local8, TARGET_ENE_0, f3_local10, f3_local11, f3_local12, 0, 0)
    elseif arg0:IsFinishTimer(1) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local8, TARGET_ENE_0, f3_local10, f3_local11, f3_local12, 0, 0)
        arg0:SetTimer(1, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CatapultDummyEvileye12010_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CatapultDummyEvileye12010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_CatapultDummyEvileye12010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
    
end

RegisterTableGoal(GOAL_CatapultDummyEvileye12010_AfterAttackAct, "CatapultDummyEvileye12010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CatapultDummyEvileye12010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


