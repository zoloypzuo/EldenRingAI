REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_LiftOff, true)
function LiftOff_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 9520, TARGET_NONE, DIST_None)
    
end

function LiftOff_Update(arg0, arg1)
    local f2_local0 = 5
    local f2_local1 = arg0:GetDistY(TARGET_ENE_0)
    local f2_local2 = arg1:GetLastSubGoalResult()
    if (f2_local2 == GOAL_RESULT_Success or f2_local2 == GOAL_RESULT_Failed) and (not not arg0:IsLand() or f2_local1 < f2_local0) then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 9520, TARGET_NONE, DIST_None)
    end
    local f2_local3 = arg0:IsLand()
    if not f2_local3 and f2_local0 <= f2_local1 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

function LiftOff_Terminate(arg0, arg1)
    
end

function LiftOff_Interupt(arg0, arg1)
    return false
    
end

REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_Landing, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Landing, true)
function Landing_Activate(arg0, arg1)
    local f5_local0 = arg1:GetParam(0)
    arg0:SetAIFixedMoveTarget(f5_local0, TARGET_SELF, 0)
    local f5_local1 = arg1:GetParam(1)
    arg1:AddSubGoal(GOAL_COMMON_Landing_Move, 10, f5_local1)
    if arg0:GetDistYSigned(TARGET_ENE_0) > 0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_AI_FIXED_POS, 0.1, TARGET_SELF, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Landing_Landing, 10)
    end
    
end

function Landing_Update(arg0, arg1)
    return GOAL_RESULT_Continue
    
end

function Landing_Terminate(arg0, arg1)
    
end

function Landing_Interupt(arg0, arg1)
    return false
    
end

REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_Landing_Move, 0.5, 0.5)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Landing_Move, true)
function Landing_Move_Activate(arg0, arg1)
    local f9_local0 = arg1:GetParam(0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_AI_FIXED_POS, f9_local0, TARGET_SELF, false, -1)
    
end

function Landing_Move_Update(arg0, arg1)
    local f10_local0 = arg0:GetDistXZ(POINT_AI_FIXED_POS)
    if f10_local0 < 1 then
        return GOAL_RESULT_Success
    end
    if arg0:IsLand() then
        return GOAL_RESULT_Failed
    end
    return GOAL_RESULT_Continue
    
end

function Landing_Move_Terminate(arg0, arg1)
    
end

function Landing_Move_Interupt(arg0, arg1)
    return false
    
end

REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_Landing_Landing, 0.5, 0.5)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Landing_Landing, true)
function Landing_Landing_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_Attack, arg1:GetLife(), 9510, TARGET_NONE, DIST_None)
    
end

function Landing_Landing_Update(arg0, arg1)
    if arg0:IsLand() then
        local f14_local0 = arg1:GetNumber(0)
        if f14_local0 > 10 then
            return GOAL_RESULT_Success
        else
            f14_local0 = f14_local0 + 1
            arg1:SetNumber(0, f14_local0)
        end
    end
    local f14_local0 = arg1:GetLastSubGoalResult()
    if (f14_local0 == GOAL_RESULT_Success or f14_local0 == GOAL_RESULT_Failed) and not arg0:IsLand() then
        arg1:AddSubGoal(GOAL_COMMON_Attack, arg1:GetLife(), 9510, TARGET_NONE, DIST_None)
    end
    if arg0:GetDistYSigned(POINT_AI_FIXED_POS) > 1 then
        arg0:PrintText("[Landing_Landing_Update]?^?[?Q?b?g??????????????????B???s????????B")
        return GOAL_RESULT_Failed
    end
    return GOAL_RESULT_Continue
    
end

function Landing_Landing_Terminate(arg0, arg1)
    
end

function Landing_Landing_Interupt(arg0, arg1)
    return false
    
end


