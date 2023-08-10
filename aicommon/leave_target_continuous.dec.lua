REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_LeaveTarget_Continuous, 0, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_LeaveTarget_Continuous, 1, "???B???•c??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_LeaveTarget_Continuous, 2, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_LeaveTarget_Continuous, 3, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_LeaveTarget_Continuous, 4, "?K?[?h???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_LeaveTarget_Continuous, 5, "?K?[?h?I??????I??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_LeaveTarget_Continuous, 6, "?K?[?h???????s??????????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_LeaveTarget_Continuous, 7, "?p?X?`?F?b?N???s??????", 0)
function LeaveTargetContinuous_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    local f1_local1 = arg1:GetParam(1)
    local f1_local2 = arg1:GetParam(2)
    local f1_local3 = arg1:GetParam(3)
    local f1_local4 = arg1:GetParam(4)
    local f1_local5 = arg1:GetParam(5)
    local f1_local6 = arg1:GetParam(6)
    local f1_local7 = arg1:GetParam(7)
    arg1:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, -1, f1_local0, 9999, f1_local2, f1_local3, f1_local4, f1_local5, f1_local6, f1_local7)
    
end

function LeaveTargetContinuous_Update(arg0, arg1)
    local f2_local0 = arg1:GetParam(0)
    local f2_local1 = arg1:GetParam(1)
    local f2_local2 = arg1:GetParam(2)
    local f2_local3 = arg1:GetParam(3)
    local f2_local4 = arg1:GetParam(4)
    local f2_local5 = arg1:GetParam(5)
    local f2_local6 = arg1:GetParam(6)
    local f2_local7 = arg1:GetParam(7)
    local f2_local8 = GOAL_RESULT_Continue
    if f2_local1 < arg0:GetDist(f2_local0) then
        return GOAL_RESULT_Success
    end
    if arg1:GetSubGoalNum() <= 0 then
        if arg1:GetNumber(0) == 0 then
            local f2_local9 = {AI_DIR_TYPE_BL, AI_DIR_TYPE_BR, AI_DIR_TYPE_L, AI_DIR_TYPE_R}
            local f2_local10 = {225, 135, 270, 90}
            local f2_local11 = false
            for f2_local12 = 1, 4, 1 do
                local f2_local15 = arg0:GetRandam_Int(1, table.getn(f2_local9))
                f2_local11 = SpaceCheck(arg0, arg1, f2_local10[f2_local15], f2_local7)
                arg0:SetAIFixedMoveTarget(TARGET_SELF, f2_local9[f2_local15], 5)
                table.remove(f2_local9, f2_local15)
                table.remove(f2_local10, f2_local15)
                if f2_local11 == true then
                    break
                end
            end
            local f2_local12 = true
            if f2_local11 == f2_local12 then
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, POINT_AI_FIXED_POS)
            else
                arg0:SetAIFixedMoveTarget(TARGET_SELF, AI_DIR_TYPE_B, 5)
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, POINT_AI_FIXED_POS)
            end
            arg1:SetNumber(0, 1)
        elseif arg1:GetTimer(0) <= 0 then
            arg0:SetAIFixedMoveTarget(TARGET_SELF, AI_DIR_TYPE_B, 1)
            arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, -1, POINT_AI_FIXED_POS, 9999, f2_local2, f2_local3, f2_local4, f2_local5, f2_local6, f2_local7)
            arg1:SetTimer(0, 1)
            arg1:SetNumber(0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
        end
    end
    return f2_local8
    
end

function LeaveTargetContinuous_Terminate(arg0, arg1)
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_LeaveTarget_Continuous, true)
function LeaveTargetContinuous_Interupt(arg0, arg1)
    return false
    
end


