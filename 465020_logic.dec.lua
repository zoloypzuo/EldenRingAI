function DevastationerSummoner465020_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        if arg0:HasSpecialEffectId(TARGET_SELF, 13200) == true and arg0:HasSpecialEffectId(TARGET_SELF, 13219) == true then
            if arg0:IsBattleState() == false and arg0:IsSearchHighState() == false and arg0:IsSearchLowState() == false and arg0:IsCautionState() == false and arg0:IsMemoryState() == false then
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, 20011, TARGET_SELF, 999, 0, 0, 0, 0)
            else
                COMMON_EasySetup3(arg0)
            end
        elseif f1_local0 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local0 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif f1_local0 == 80 and arg0:IsNpcPlayer() == true then
            local f1_local2 = arg0:GetEventRequest(1)
            arg0:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE)
            arg0:AddTopGoal(GOAL_COMMON_WaitWithAnime, 10, 1000 + f1_local2, TARGET_NONE)
        elseif RideRequest(arg0, 10, 6) then
            arg0:AddTopGoal(GOAL_COMMON_Mount, 4, 1.2)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function DevastationerSummoner465020_Interupt(arg0, arg1)
    return false
    
end


