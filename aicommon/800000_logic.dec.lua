function Horse_800000_Logic(arg0)
    if arg0:IsSearchTarget(TARGET_LOCALPLAYER) == true then
        local f1_local0 = arg0:GetDist(TARGET_LOCALPLAYER)
        local f1_local1 = 6
        local f1_local2 = false
        local f1_local3 = -1
        if f1_local0 >= 30 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 15, TARGET_LOCALPLAYER, f1_local1, TARGET_SELF, f1_local2, f1_local3)
        else
            arg0:AddTopGoal(GOAL_COMMON_Wait, 1, TARGET_NONE)
        end
    end
    
end

function Horse_800000_Interupt(arg0, arg1)
    return false
    
end


