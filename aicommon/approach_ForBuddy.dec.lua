REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachForBuddy, 0, "??]???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachForBuddy, 1, "?????u?????B???•c??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachForBuddy, 2, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachForBuddy, 3, "?????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachForBuddy, 4, "?K?[?hEzState???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachForBuddy, 5, "?????u???õT?p", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachForBuddy, 6, "?????u??p?x??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachForBuddy, 7, "?????u??????", 0)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ApproachForBuddy, true)
function ApproachForBuddy_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(7)
    arg0:AddObserveAreaCustom(0, TARGET_HOSTPLAYER, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 16)
    if f1_local0 + 4 < arg0:GetDist(TARGET_HOSTPLAYER) then
        arg1:SetNumber(0, 0)
    elseif f1_local0 + 2 < arg0:GetDist(TARGET_HOSTPLAYER) then
        arg1:SetNumber(0, 1)
    else
        arg1:SetNumber(0, 2)
    end
    ApproachForBuddy_AddInnerGoal(arg0, arg1)
    if 0 < guardActionId then
        local f1_local1 = arg0:GetDist(targetType)
        if f1_local1 > range then
            arg0:DoEzAction(life_time, guardActionId)
        end
    end
    
end

function ApproachForBuddy_Update(arg0, arg1, arg2)
    local f2_local0 = arg1:GetParam(0)
    local f2_local1 = arg1:GetParam(7)
    if arg1:GetNumber(0) == 1 and f2_local1 + 4 < arg0:GetDist(f2_local0) then
        arg1:SetNumber(0, 0)
        arg1:ClearSubGoal()
        ApproachForBuddy_AddInnerGoal(arg0, arg1)
    end
    if arg1:GetSubGoalNum() <= 0 then
        if arg1:GetNumber(0) == 0 then
            arg1:SetNumber(0, 1)
        elseif arg1:GetNumber(0) == 1 then
            arg1:SetNumber(0, 2)
        else
            return GOAL_RESULT_SUCCESS
        end
        ApproachForBuddy_AddInnerGoal(arg0, arg1)
    end
    return GOAL_RESULT_Continue
    
end

function ApproachForBuddy_Terminate(arg0, arg1)
    arg0:DeleteObserve(0)
    
end

function ApproachForBuddy_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_Inside_ObserveArea) and arg0:IsInsideObserve(0) then
        arg1:ClearSubGoal()
        arg0:Replaning()
        arg0:DeleteObserve(0)
        return true
    end
    return false
    
end

function ApproachForBuddy_AddInnerGoal(arg0, arg1)
    local f5_local0 = arg1:GetLife()
    local f5_local1 = arg1:GetParam(0)
    local f5_local2 = arg1:GetParam(1)
    local f5_local3 = arg1:GetParam(2)
    local f5_local4 = arg1:GetParam(3)
    local f5_local5 = arg1:GetParam(4)
    local f5_local6 = arg1:GetParam(5)
    local f5_local7 = arg1:GetParam(6)
    local f5_local8 = arg1:GetParam(7)
    if arg1:GetNumber(0) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, -1, f5_local1, f5_local8 + 2, f5_local3, f5_local4, f5_local5)
    elseif arg1:GetNumber(0) == 1 then
        local f5_local9 = arg0:GetRandam_Int(f5_local6 - f5_local7, f5_local6 + f5_local7)
        local f5_local10 = arg0:GetExistMeshOnLineDistSpecifyAngle(f5_local1, f5_local9, f5_local8, AI_SPA_DIR_TYPE_TargetF)
        arg0:SetAIFixedMoveTargetSpecifyAngle(f5_local1, f5_local9, f5_local10, AI_SPA_DIR_TYPE_TargetF)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, -1, POINT_AI_FIXED_POS, f5_local2, f5_local3, true, f5_local5, -1, -1, AI_CALC_DIST_TYPE__XZ)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF)
    end
    
end


