function npc30000_Logic(arg0)
    local f1_local0 = arg0:GetEventRequest(0)
    local f1_local1 = arg0:GetEventRequest(1)
    local f1_local2 = arg0:GetDist(TARGET_ENE_0)
    local f1_local3 = arg0:GetDist(TARGET_HOSTPLAYER)
    local f1_local4 = nil
    local f1_local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__battleGoalID)
    local f1_local6 = 1
    local f1_local7 = arg0:IsBattleState()
    if f1_local7 == true and arg0:HasSpecialEffectId(TARGET_ENE_0, 13945) == true then
        f1_local7 = false
    end
    if f1_local0 == 10 then
        if f1_local3 <= 3 then
            arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_HOSTPLAYER, 999, TARGET_SELF, true, -1)
        elseif arg0:GetDist(POINT_EVENT) <= 0.3 then
            arg0:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF)
        else
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 0.3, TARGET_SELF, false, -1)
        end
    elseif f1_local0 == 80 then
        arg0:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE)
        arg0:AddTopGoal(GOAL_COMMON_WaitWithAnime, 10, 1000 + f1_local1, TARGET_NONE)
    elseif f1_local3 >= 15 then
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_HOSTPLAYER, 2, TARGET_SELF, false, -1)
    elseif f1_local3 >= 5 then
        if f1_local7 == true then
            if f1_local2 >= 15 then
                arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_HOSTPLAYER, 2, TARGET_SELF, false, -1)
            else
                f1_local4 = arg0:AddTopGoal(f1_local5, -1)
            end
        else
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_HOSTPLAYER, 2, TARGET_SELF, false, -1)
        end
    elseif f1_local3 >= 2 then
        if f1_local7 == true then
            if f1_local2 >= 15 then
                arg0:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF)
            else
                f1_local4 = arg0:AddTopGoal(f1_local5, -1)
            end
        else
            arg0:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF)
        end
    elseif f1_local7 == true then
        if f1_local2 > 15 then
            arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_HOSTPLAYER, 999, TARGET_SELF, true, -1)
        else
            f1_local4 = arg0:AddTopGoal(f1_local5, -1)
        end
    else
        arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_HOSTPLAYER, 999, TARGET_SELF, true, -1)
    end
    if f1_local4 then
        f1_local4:SetManagementGoal()
    end
    
end

function npc30000_Interupt(arg0, arg1)
    return false
    
end


