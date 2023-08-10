REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_LeaveTargetToPathEnd, 0, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_LeaveTargetToPathEnd, 1, "???B???•c??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_LeaveTargetToPathEnd, 2, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_LeaveTargetToPathEnd, 3, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_LeaveTargetToPathEnd, 4, "?K?[?h???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_LeaveTargetToPathEnd, 5, "?K?[?h?I??????I??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_LeaveTargetToPathEnd, 6, "?K?[?h???????s??????????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_LeaveTargetToPathEnd, 7, "?p?X?`?F?b?N???s??????", 0)
function LeaveTargetToPathEnd_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    local f1_local1 = arg1:GetParam(1)
    local f1_local2 = arg1:GetParam(2)
    local f1_local3 = arg1:GetParam(3)
    local f1_local4 = arg1:GetParam(4)
    local f1_local5 = arg1:GetParam(5)
    local f1_local6 = arg1:GetParam(6)
    arg1:SetTimer(0, 1)
    local f1_local7 = arg1:GetParam(1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, -1, f1_local0, f1_local1, f1_local2, f1_local3, f1_local4, f1_local5, f1_local6)
    
end

function LeaveTargetToPathEnd_Update(arg0, arg1)
    local f2_local0 = arg1:GetParam(7)
    local f2_local1 = GOAL_RESULT_Continue
    if true == arg1:IsFinishTimer(0) then
        local f2_local2 = SpaceCheck(arg0, arg1, 0, f2_local0)
        arg1:SetTimer(0, 1)
        if f2_local2 == false then
            f2_local1 = GOAL_RESULT_Success
        end
    end
    return f2_local1
    
end

function LeaveTargetToPathEnd_Terminate(arg0, arg1)
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_LeaveTargetToPathEnd, true)
function LeaveTargetToPathEnd_Interupt(arg0, arg1)
    return false
    
end


