REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Guard_On_FailedPath, 0, "?p?X?`?F?b?N??u", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Guard_On_FailedPath, 1, "????????A????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Guard_On_FailedPath, 2, "?K?[?h???s????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Guard_On_FailedPath, 3, "?A?????E???p??", 0)
function GuardOnFailedPath_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    local f1_local1 = arg1:GetParam(1)
    arg1:SetTimer(0, f1_local0)
    arg1:SetTimer(1, f1_local1)
    arg1:AddSubGoal(GOAL_COMMON_Guard, 3, 9910, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Continue, true)
    
end

function GuardOnFailedPath_Update(arg0, arg1)
    local f2_local0 = GOAL_RESULT_Continue
    local f2_local1 = arg1:GetParam(3)
    if true == arg1:IsFinishTimer(0) then
        if f2_local1 > 0 then
            local f2_local2 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__maxBackhomeDist)
            local f2_local3 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backhomeBattleDist)
            local f2_local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backhomeDist)
            local f2_local5 = arg0:GetMovePointNumber()
            local f2_local6 = 0
            local f2_local7 = false
            if arg0:GetDist(TARGET_ENE_0) < f2_local3 then
                f2_local0 = GOAL_RESULT_Success
            end
            if arg0:IsValidPlatoon() == true and arg0:IsPlatoonLeader() == false then
                local f2_local8 = arg0:GetPlatoonCommand()
                local f2_local9 = f2_local8:GetCommandNo()
                if f2_local9 == PLAN_PLATOON_COMMAND__MOVE or f2_local9 == PLAN_PLATOON_COMMAND__PATROL_BEHAVIOR or f2_local9 == PLAN_PLATOON_COMMAND__PATROL_BEHAVIOR_RESET or f2_local9 == PLAN_PLATOON_COMMAND__DEF or f2_local9 == PLAN_PLATOON_COMMAND__SCOUT_MOVE then
                    f2_local7 = true
                end
            end
            if f2_local7 == true then
                f2_local6 = arg0:GetDistAtoB(TARGET_ENE_0, TARGET_TEAM_FORMATION)
            elseif f2_local5 >= 0 then
                f2_local6 = arg0:GetDistAtoB(TARGET_ENE_0, POINT_MOVE_POINT)
            else
                f2_local6 = arg0:GetDistAtoB(TARGET_ENE_0, POINT_INITIAL)
            end
            if arg1:GetSubGoalNum() <= 0 then
                if f2_local6 < arg0:GetMovePointEffectRange() or f2_local2 < arg0:GetMovePointEffectRange() or arg0:GetMovePointEffectRange() < f2_local4 then
                    f2_local0 = GOAL_RESULT_Success
                else
                    GuardOnFailedPath_AddInnerGoal(arg0, arg1)
                end
            end
        else
            if true == arg1:IsFinishTimer(0) then
                local f2_local2 = arg0:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0)
                if true == f2_local2 then
                    f2_local0 = GOAL_RESULT_Success
                else
                    local f2_local3 = arg1:GetParam(0)
                    arg1:SetTimer(0, f2_local3)
                end
            end
            if arg1:GetSubGoalNum() <= 0 then
                GuardOnFailedPath_AddInnerGoal(arg0, arg1)
            end
        end
    end
    return f2_local0
    
end

function GuardOnFailedPath_Terminate(arg0, arg1)
    
end

function GuardOnFailedPath_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Guard, arg1:GetLife(), 9910, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Continue, true)
        return true
    end
    return false
    
end

function GuardOnFailedPath_AddInnerGoal(arg0, arg1)
    local f5_local0 = arg1:GetParam(2)
    local f5_local1 = arg0:GetRandam_Float(2, 4)
    if arg1:IsFinishTimer(1) then
        arg1:SetNumber(0, 1)
        local f5_local2 = arg0:GetMovePointEffectRange()
        local f5_local3 = 2
        if f5_local2 < f5_local3 then
            arg1:AddSubGoal(GOAL_COMMON_Guard, f5_local1, 9910, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Continue, true)
            arg1:SetNumber(0, 2)
        else
            if arg0:IsRiding(TARGET_SELF) == true then
                local f5_local4 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, -1, POINT_INITIAL, 1, TARGET_SELF, true, f5_local0, GUARD_GOAL_DESIRE_RET_Continue, true)
                f5_local4:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
            else
                local f5_local4 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, -1, POINT_INITIAL, 1, TARGET_ENE_0, true, f5_local0, GUARD_GOAL_DESIRE_RET_Continue, true)
                f5_local4:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
            end
            arg1:SetNumber(0, 1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Guard, f5_local1, 9910, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Continue, true)
    end
    
end


