function Nanimosinai11000Battle_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_NONE, 0, 0, 0)
    
end

function Nanimosinai11000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
    
end

function Nanimosinai11000Battle_Terminate(arg0, arg1)
    
end

function Nanimosinai11000Battle_Interupt(arg0, arg1)
    return false
    
end


