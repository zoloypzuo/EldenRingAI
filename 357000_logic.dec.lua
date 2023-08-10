function GodSkinFatherFat357000_Logic(arg0)
    COMMON_Initialize(arg0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15452)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        if f1_local0 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local0 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif RideRequest(arg0, 10, -1) then
            arg0:AddTopGoal(GOAL_COMMON_Mount, 10, 1.2)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function GodSkinFatherFat357000_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg0:GetSpecialEffectActivateInterruptId(15452) and arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_ANIME_SLEEPING) == true then
        arg1:ClearSubGoal()
        arg0:AddTopGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 12002, TARGET_SELF, 999, 0, 0, 0, 0)
        return true
    end
    return false
    
end


