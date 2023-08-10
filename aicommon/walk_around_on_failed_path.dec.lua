REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_WalkAround_On_FailedPath, 0, "?p?X?`?F?b?N??u", 0)
function WalkAroundOnFailedPath_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    arg1:SetTimer(0, f1_local0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, 0, 0, 0, 0)
    arg0:BeginWalkAroundFree()
    
end

function WalkAroundOnFailedPath_Update(arg0, arg1)
    local f2_local0 = GOAL_RESULT_Continue
    if true == arg1:IsFinishTimer(0) then
        local f2_local1 = arg0:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0)
        if true == f2_local1 then
            f2_local0 = GOAL_RESULT_Success
        else
            local f2_local2 = arg1:GetParam(0)
            arg1:SetTimer(0, f2_local2)
        end
    end
    if arg1:GetSubGoalNum() <= 0 then
        WalkAroundFailedPath_AddInnerGoal(arg0, arg1)
    end
    return f2_local0
    
end

function WalkAroundOnFailedPath_Terminate(arg0, arg1)
    arg0:EndWalkAroundFree()
    
end

function WalkAroundOnFailedPath_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) then
        return true
    end
    return false
    
end

function WalkAroundFailedPath_AddInnerGoal(arg0, arg1)
    local f5_local0 = POINT_WalkAroundPosition_Free
    arg0:ChangeWalkAroundFreePoint()
    local f5_local1 = arg0:GetDist(f5_local0)
    if arg0:IsRiding(TARGET_SELF) == true then
        if f5_local1 >= 2 then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 30, f5_local0, AI_DIR_TYPE_CENTER, 1, TARGET_SELF, true)
            arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(3, 6), TARGET_SELF, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF, 0, 0, 0)
        end
    elseif f5_local1 >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 30, f5_local0, AI_DIR_TYPE_CENTER, 1, TARGET_ENE_0, true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(3, 6), TARGET_ENE_0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0, 0, 0, 0)
    end
    
end


