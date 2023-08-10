function AutoTest1540_Logic(arg0)
    arg0:AddTopGoal(GOAL_COMMON_MoveToSomewhere, 5, POINT_AutoWalkAroundTest, AI_DIR_TYPE_CENTER, 1, TARGET_SELF, false)
    
end

function AutoTest1540_Interupt(arg0, arg1)
    if arg0:DbgAutoRemo_IsWaitCommand() then
        arg1:ClearSubGoal()
        local f2_local0 = arg0:DbgAutoRemo_GetWaitCommandTime()
        arg0:AddTopGoal(GOAL_COMMON_Wait, f2_local0, TARGET_NONE, 0, 0, 0)
        arg0:DbgAutoRemo_ResetWaitCommand()
        return true
    end
    return false
    
end


