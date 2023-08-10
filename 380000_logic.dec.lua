function RottenKin381000_Logic(arg0)
    COMMON_Initialize(arg0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14437)
    if COMMON_EasySetup_Initial(arg0) == false then
        if eventNo == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif eventNo == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function RottenKin381000_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg0:HasSpecialEffectId(TARGET_SELF, 14437) and arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) then
        arg1:ClearSubGoal()
        local f2_local0 = 5
        local f2_local1 = 3020
        local f2_local2 = TARGET_ENE_0
        local f2_local3 = 100
        local f2_local4 = 0
        local f2_local5 = 0
        local f2_local6 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f2_local0, f2_local1, f2_local2, successDist2, 0, 0, 0)
        return true
    end
    return true
    
end


