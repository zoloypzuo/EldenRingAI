function RuneHunterKnight315000_Logic(arg0)
    COMMON_Initialize(arg0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11805)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11825)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local2 = arg0:GetDist(TARGET_ENE_0)
        if f1_local0 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local0 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function RuneHunterKnight315000_Interupt(arg0, arg1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11805)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11825)
    if arg0:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg0:HasSpecialEffectId(TARGET_SELF, 11805) and arg0:ReserveRide(10) == true then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Mount, 10, 3, 5)
        return true
    end
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) and arg0:IsRiding(TARGET_SELF) == false and arg0:HasSpecialEffectId(TARGET_SELF, 11805) == false and arg0:HasSpecialEffectId(TARGET_SELF, 11825) == true then
        arg1:ClearSubGoal()
        local f2_local0 = arg0:GetDist(TARGET_ENE_0)
        local f2_local1 = 3025
        local f2_local2 = 0
        local f2_local3 = 0
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f2_local1, TARGET_ENE_0, 999, f2_local2, f2_local3, 0, 0)
        return true
    end
    return false
    
end


