REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTargetAllDirection, 0, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTargetAllDirection, 1, "???B???•c??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTargetAllDirection, 2, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTargetAllDirection, 3, "?????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTargetAllDirection, 4, "?K?[?hEzState???", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_ApproachTargetAllDirection, 0, 0)
function ApproachTargetAllDirection_Activate(arg0, arg1)
    local f1_local0 = arg1:GetLife()
    local f1_local1 = arg1:GetParam(0)
    local f1_local2 = arg1:GetParam(1)
    local f1_local3 = arg1:GetParam(2)
    local f1_local4 = arg1:GetParam(3)
    local f1_local5 = arg1:GetParam(4)
    local f1_local6 = AI_DIR_TYPE_CENTER
    local f1_local7 = 0
    local f1_local8 = arg1:GetParam(5)
    local f1_local9 = arg1:GetParam(6)
    local f1_local10 = arg1:GetParam(7)
    arg0:SetMoveAllDirection_LegWalk2And4(true)
    arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, f1_local0, f1_local1, f1_local6, f1_local2, f1_local3, f1_local4, f1_local7, nil, f1_local10)
    local f1_local11 = arg0:GetDist(f1_local1)
    if f1_local2 < f1_local11 then
        GuardGoalSubFunc_Activate(arg0, f1_local0, f1_local5)
    end
    
end

function ApproachTargetAllDirection_Update(arg0, arg1, arg2)
    local f2_local0 = arg1:GetParam(4)
    local f2_local1 = arg1:GetParam(5)
    local f2_local2 = arg1:GetParam(6)
    return GuardGoalSubFunc_Update(arg0, arg1, f2_local0, f2_local1, f2_local2)
    
end

function ApproachTargetAllDirection_Terminate(arg0, arg1)
    arg0:SetMoveAllDirection_LegWalk2And4(false)
    
end

function ApproachTargetAllDirection_Interupt(arg0, arg1)
    local f4_local0 = arg1:GetParam(4)
    local f4_local1 = arg1:GetParam(5)
    return GuardGoalSubFunc_Interrupt(arg0, arg1, f4_local0, f4_local1)
    
end


