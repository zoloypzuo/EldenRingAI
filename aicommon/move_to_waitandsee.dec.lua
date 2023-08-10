REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToWaitandSee, 0, "???B???•c??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToWaitandSee, 1, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToWaitandSee, 2, "?????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToWaitandSee, 3, "?p?X?`?F?b?N??C???^?[?o??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToWaitandSee, 4, "?K?[?hEzState???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToWaitandSee, 5, "?K?[?h?S?[???I???^?C?v", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToWaitandSee, 6, "?K?[?h?S?[??:?????t?????????????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToWaitandSee, 7, "???B?????XZ??????????g?p?????H", 0)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_MoveToWaitandSee, true)
function MoveToWaitandSee_Activate(arg0, arg1)
    local f1_local0 = arg1:GetLife()
    local f1_local1 = POINT_WaitAndSee
    local f1_local2 = arg1:GetParam(0)
    local f1_local3 = arg1:GetParam(1)
    local f1_local4 = arg1:GetParam(2)
    local f1_local5 = arg1:GetParam(3)
    local f1_local6 = arg1:GetParam(4)
    local f1_local7 = AI_DIR_TYPE_CENTER
    local f1_local8 = 0
    local f1_local9 = arg1:GetParam(5)
    local f1_local10 = arg1:GetParam(6)
    local f1_local11 = arg1:GetParam(7)
    arg1:SetTimer(0, f1_local5)
    arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, f1_local0, f1_local1, f1_local7, f1_local2, f1_local3, f1_local4, f1_local8, nil, f1_local11)
    
end

function MoveToWaitandSee_Update(arg0, arg1, arg2)
    local f2_local0 = arg1:GetParam(3)
    if arg1:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    if true == arg1:IsFinishTimer(0) then
        if arg0:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
            return GOAL_RESULT_Failed
        else
            arg1:SetTimer(0, f2_local0)
        end
    end
    return GOAL_RESULT_Continue
    
end

function MoveToWaitandSee_Terminate(arg0, arg1)
    
end

function MoveToWaitandSee_Interupt(arg0, arg1)
    return false
    
end


