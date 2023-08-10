REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 0, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 1, "???B???�c??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 2, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 3, "?????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 4, "?K?[?hEzState???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 5, "???????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 6, "?w???????????", 0)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ApproachSettingDirection, true)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_ApproachSettingDirection, true)
function ApproachSettingDirection_Activate(arg0, arg1)
    local f1_local0 = arg1:GetLife()
    local f1_local1 = arg1:GetParam(0)
    local f1_local2 = arg1:GetParam(1)
    local f1_local3 = arg1:GetParam(2)
    local f1_local4 = arg1:GetParam(3)
    local f1_local5 = arg1:GetParam(4)
    local f1_local6 = arg1:GetParam(5)
    local f1_local7 = arg1:GetParam(6)
    arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, -1, f1_local1, f1_local6, f1_local2, f1_local3, f1_local4, f1_local7)
    if f1_local5 > 0 then
        local f1_local8 = arg0:GetDist(f1_local1)
        if f1_local2 < f1_local8 then
            arg0:DoEzAction(f1_local0, f1_local5)
        end
    end
    
end

function ApproachSettingDirection_Update(arg0, arg1, arg2)
    if arg1:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

function ApproachSettingDirection_Terminate(arg0, arg1)
    
end

function ApproachSettingDirection_Interupt(arg0, arg1)
    return false
    
end


