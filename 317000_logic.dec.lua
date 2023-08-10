function WolfRider317000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local2 = arg0:GetDist(TARGET_ENE_0)
        if f1_local0 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local0 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_INITIAL_STANDBY) == true then
            arg0:AddTopGoal(GOAL_COMMON_Wait, 2, TARGET_NONE)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 11855) == false and arg0:HasSpecialEffectId(TARGET_SELF, 11880) and RideRequest(arg0, 3, -1) then
            arg0:AddTopGoal(GOAL_COMMON_Mount, 2, 3, 4)
        elseif arg0:IsRiding(TARGET_SELF) == false and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false and arg0:IsCautionState() == false and arg0:IsBattleState() == false and arg0:IsMemoryState() == false then
            arg0:AddTopGoal(GOAL_COMMON_Wait, 1, TARGET_NONE)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function WolfRider317000_Interupt(arg0, arg1)
    
end


