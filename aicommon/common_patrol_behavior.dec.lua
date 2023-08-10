function COMMON_PatrolBehavior_FlagInitialize(arg0, arg1)
    local f1_local0 = arg0:GetMovePointNumber()
    if arg0:GetStringIndexedNumber("COMMON_PatrolBehavior_MovePointIdx") ~= f1_local0 or arg1 then
        arg0:SetStringIndexedNumber("COMMON_PatrolBehavior_DoneAct", 0)
    end
    if not not arg0:IsSearchLowState() or not not arg0:IsSearchHighState() or not not arg0:IsCautionState() or arg0:IsBattleState() then
        arg0:SetStringIndexedNumber("COMMON_PatrolBehavior_DoneAct", 1)
    end
    arg0:SetStringIndexedNumber("COMMON_PatrolBehavior_MovePointIdx", f1_local0)
    
end

function COMMON_PatrolBehavior(arg0, arg1, arg2)
    local f2_local0 = arg0:GetPrevMovePointNumber()
    local f2_local1 = arg0:GetMovePointActionId(f2_local0)
    if arg2 ~= nil and arg2 ~= -1 then
        f2_local1 = arg2
    end
    if f2_local1 == 402000 then
        arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, -1, 3037, TARGET_SELF)
        return true
    end
    if f2_local1 == 405099 then
        arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, -1, 3031, TARGET_SELF)
        return true
    end
    if f2_local1 == 449100 then
        arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, -1, 20020, TARGET_SELF)
        return true
    end
    if f2_local1 == 455001 then
        arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, -1, 20002, TARGET_SELF)
        return true
    end
    if f2_local1 == 460000 then
        arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, -1, 3033, TARGET_SELF)
        return true
    end
    if f2_local1 >= 900001 and f2_local1 <= 900099 then
        local f2_local2 = f2_local1 - 900000
        arg1:AddSubGoal(GOAL_COMMON_Wait, f2_local2, TARGET_SELF)
        return true
    end
    if f2_local1 >= 910001 and f2_local1 <= 919999 then
        local f2_local2 = (f2_local1 - 910000) / 100
        arg1:AddSubGoal(GOAL_COMMON_Wait, f2_local2, TARGET_SELF)
        return true
    end
    if f2_local1 >= 1000000 and f2_local1 <= 1099999 then
        local f2_local2 = f2_local1 - 1000000
        if f2_local2 >= 3000 and f2_local2 <= 3039 then

        elseif f2_local2 >= 3100 and f2_local2 <= 3104 then

        elseif f2_local2 >= 3200 and f2_local2 <= 3204 then

        elseif f2_local2 >= 20000 and f2_local2 <= 20029 then

        else
            return false
        end
        arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, -1, f2_local2, TARGET_SELF)
        return true
    end
    return false
    
end


