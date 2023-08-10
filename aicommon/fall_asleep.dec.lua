REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Fall_Asleep, 0, "????????????", 0)
function FallAsleep_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParamBool(0)
    local f1_local1 = PLAN_ANIMEID_SLEEP_START
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, PLAN_SP_EFFECT_NATURAL_SLEEP_GUARD)
    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_ANIME_SLEEPING) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_SELF, 0, 0, 0)
    elseif f1_local0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f1_local1, TARGET_SELF, 9999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INIT_POSE, 1, TARGET_SELF, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 8), POINT_INIT_POSE)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f1_local1, POINT_INIT_POSE, 9999, 5, 10, 0, 0)
    end
    
end

function FallAsleep_Update(arg0, arg1)
    local f2_local0 = GOAL_RESULT_Continue
    local f2_local1 = arg1:GetParamBool(0)
    if f2_local1 == true and arg0:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == false then
        return GOAL_RESULT_Failed
    end
    return f2_local0
    
end

function FallAsleep_Terminate(arg0, arg1)
    
end

function FallAsleep_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg0:GetSpecialEffectActivateInterruptId(PLAN_SP_EFFECT_NATURAL_SLEEP_GUARD) then
        arg1:ClearSubGoal()
        arg0:Replaning()
        return true
    end
    return false
    
end


