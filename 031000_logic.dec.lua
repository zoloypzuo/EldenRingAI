function npc31000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:GetEventRequest(1)
        local f1_local2 = arg0:IsSearchTarget(TARGET_ENE_0)
        if f1_local0 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local0 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif f1_local0 == 80 then
            arg0:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE)
            arg0:AddTopGoal(GOAL_COMMON_WaitWithAnime, 10, 1000 + f1_local1, TARGET_NONE)
        elseif arg0:IsBattleState() == false and arg0:IsSearchHighState() == false and arg0:IsSearchLowState() == false and arg0:IsCautionState() == false and arg0:IsMemoryState() == false then
            if arg0:GetDist(TARGET_HOSTPLAYER) > 2 then
                arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_HOSTPLAYER, 2, TARGET_SELF, false, -1)
            else
                arg0:AddTopGoal(GOAL_COMMON_Wait, 2, TARGET_HOSTPLAYER)
            end
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function npc31000_Interupt(arg0, arg1)
    return false
    
end


