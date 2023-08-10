REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_WaypointAnimTrial, 0, "waypointAttribute", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_WaypointAnimTrial, 0, 0)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_WaypointAnimTrial, true)
function WaypointAnimTrial_Activate(arg0, arg1)
    local f1_local0 = arg1:GetLife()
    local f1_local1 = arg1:GetParam(0)
    arg0:WaypointAnimTrial_PlayAnim(f1_local1)
    
end

function WaypointAnimTrial_Update(arg0, arg1)
    return GOAL_RESULT_Continue
    
end

function WaypointAnimTrial_Terminate(arg0, arg1)
    arg0:WaypointAnimTrial_ResetAnim()
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_WaypointAnimTrial, true)
function WaypointAnimTrial_Interupt(arg0, arg1)
    return false
    
end


