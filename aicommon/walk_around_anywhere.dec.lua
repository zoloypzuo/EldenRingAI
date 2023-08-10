REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_WalkAround_Anywhere, 0, "?????????B???•c??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_WalkAround_Anywhere, 1, "???????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_WalkAround_Anywhere, 2, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_WalkAround_Anywhere, 3, "?????A?j????ID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_WalkAround_Anywhere, 4, "?????A?j?????s??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_WalkAround_Anywhere, 5, "????????????s???Z?b?g??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_WalkAround_Anywhere, 6, "?????????A?j?????????????????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_WalkAround_Anywhere, 7, "???????|?C???g???????????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_WalkAround_Anywhere, 8, "?????A?j????S?[?????A?j???I????????", 0)
function WalkAroundAnywhere_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(6)
    if arg0:GetStringIndexedNumber("COMMON_WAA__isPointCreated") == 0 then
        arg0:BeginWalkAroundFree()
        arg0:SetStringIndexedNumber("COMMON_WAA__isPointCreated", 1)
    end
    arg0:ChangeWalkAroundFreePoint()
    if f1_local0 == 1 then
        arg1:SetNumber(0, 1)
    else
        arg1:SetNumber(0, 0)
    end
    WalkAroundAnyWhere_InnerGoal(arg0, arg1)
    
end

function WalkAroundAnywhere_Update(arg0, arg1)
    local f2_local0 = GOAL_RESULT_Continue
    local f2_local1 = arg1:GetParam(5)
    if arg1:GetSubGoalNum() <= 0 and (f2_local1 == -1 or arg1:GetNumber(1) < f2_local1) then
        WalkAroundAnyWhere_InnerGoal(arg0, arg1)
    end
    return f2_local0
    
end

function WalkAroundAnywhere_Terminate(arg0, arg1)
    
end

function WalkAroundAnywhere_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) then
        arg1:ClearSubGoal()
        WalkAroundAnyWhere_InnerGoal(arg0, arg1)
        return true
    end
    return false
    
end

function WalkAroundAnyWhere_InnerGoal(arg0, arg1)
    local f5_local0 = arg1:GetParam(0)
    local f5_local1 = arg1:GetParam(1)
    local f5_local2 = arg1:GetParam(2)
    local f5_local3 = arg1:GetParam(3)
    local f5_local4 = arg1:GetParam(4)
    local f5_local5 = arg1:GetParam(5)
    local f5_local6 = arg1:GetParam(7)
    local f5_local7 = arg1:GetParam(8)
    local f5_local8 = POINT_WalkAroundPosition_Free
    local f5_local9 = arg0:GetDist(f5_local8)
    if arg1:GetNumber(0) == 0 then
        local f5_local10 = arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, f5_local1, f5_local8, AI_DIR_TYPE_CENTER, f5_local0, TARGET_SELF, f5_local2)
        f5_local10:SetLifeEndSuccess(true)
        arg1:SetNumber(0, 1)
    else
        if f5_local5 ~= -1 then
            arg1:SetNumber(1, arg1:GetNumber(1) + 1)
        end
        if f5_local3 == -1 then
            arg1:AddSubGoal(GOAL_COMMON_Wait, f5_local4, TARGET_SELF, 0, 0, 0)
        elseif f5_local7 == 1 then
            arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, f5_local4, f5_local3, TARGET_SELF)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f5_local4, f5_local3, TARGET_SELF, 9999, 0, -1)
        end
        arg1:SetNumber(0, 0)
        if f5_local6 == 1 then
            arg0:EndWalkAroundFree()
            arg0:BeginWalkAroundFree()
        end
        arg0:ChangeWalkAroundFreePoint()
    end
    return false
    
end


