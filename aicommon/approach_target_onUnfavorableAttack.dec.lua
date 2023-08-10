REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_UnfavorableAttack, 0, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_UnfavorableAttack, 1, "???B???•c??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_UnfavorableAttack, 2, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_UnfavorableAttack, 3, "?????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_UnfavorableAttack, 4, "?K?[?hEzState???", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_ApproachTarget_UnfavorableAttack, 0, 0)
function ApproachTarget_UnfavorableAttack_Activate(arg0, arg1)
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
    local f1_local11 = false
    local f1_local12 = true
    arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, f1_local0, f1_local1, f1_local6, f1_local2, f1_local3, f1_local4, f1_local7, nil, f1_local10, f1_local11, f1_local12)
    local f1_local13 = arg0:GetDist(f1_local1)
    if f1_local2 < f1_local13 then
        GuardGoalSubFunc_Activate(arg0, f1_local0, f1_local5)
    end
    
end

function ApproachTarget_UnfavorableAttack_Update(arg0, arg1, arg2)
    local f2_local0 = arg1:GetParam(4)
    local f2_local1 = arg1:GetParam(5)
    local f2_local2 = arg1:GetParam(6)
    return GuardGoalSubFunc_Update(arg0, arg1, f2_local0, f2_local1, f2_local2)
    
end

function ApproachTarget_UnfavorableAttack_Terminate(arg0, arg1)
    
end

function ApproachTarget_UnfavorableAttack_Interupt(arg0, arg1)
    local f4_local0 = arg1:GetParam(4)
    local f4_local1 = arg1:GetParam(5)
    return GuardGoalSubFunc_Interrupt(arg0, arg1, f4_local0, f4_local1)
    
end


