function CrabMini227100_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetRandam_Int(1, 100)
        local f1_local1 = arg0:GetRandam_Int(1, 100)
        local f1_local2 = arg0:GetEventRequest()
        local f1_local3 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local4 = arg0:GetDist(POINT_INITIAL)
        local f1_local5 = GetCurrentTimeType(arg0)
        local f1_local6 = arg0:GetPrevTargetState()
        local f1_local7 = arg0:GetCurrTargetState()
        local f1_local8 = arg0:IsBattleState()
        local f1_local9 = arg0:IsCautionState()
        local f1_local10 = arg0:HasSpecialEffectId(TARGET_SELF, 12048)
        if arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false and arg0:IsCautionState() == false and arg0:IsBattleState() == false and f1_local10 == true then
            if f1_local0 > 70 or arg0:GetNumber(3) >= 2 then
                arg0:SetNumber(3, 0)
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_NONE, DIST_None, 0, 0)
            elseif f1_local0 > 20 then
                arg0:SetNumber(3, arg0:GetNumber(3) + 1)
                COMMON_EasySetup3(arg0)
            else
                arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 5, 10, true, -1, 3, 1, false, false)
            end
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function CrabMini227100_Interupt(arg0, arg1)
    local f2_local0 = arg0:GetDist(TARGET_ENE_0)
    local f2_local1 = arg0:GetDist(TARGET_FRI_0)
    local f2_local2 = arg0:GetRandam_Int(1, 100)
    local f2_local3 = arg0:HasSpecialEffectId(TARGET_SELF, 10798)
    local f2_local4 = arg0:GetPrevTargetState()
    local f2_local5 = arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg0:IsInterupt(INTERUPT_ActivateSpecialEffect) and battleCheck == false and arg0:GetSpecialEffectActivateInterruptId(10798) then
        arg0:Replanning()
        return true
    end
    return false
    
end


