function PatrolLeader20000_Logic(arg0)
    COMMON_Initialize(arg0)
    arg0:AddTopGoal(GOAL_COMMON_NonBattleAct, 10, 100, false, false, TARGET_SELF, 1)
    
end

function PatrolLeader20000_Interupt(arg0, arg1)
    return false
    
end


