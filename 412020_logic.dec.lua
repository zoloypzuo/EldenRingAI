function DemiHumanBerserk412020_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local2 = arg0:GetDist(POINT_INITIAL)
        local f1_local3 = GetCurrentTimeType(arg0)
        local f1_local4 = arg0:GetPrevTargetState()
        local f1_local5 = arg0:IsBattleState()
        if arg0:HasSpecialEffectId(TARGET_SELF, 10545) == true then
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3038, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 10544) == true then
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0, 0, 0)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function DemiHumanBerserk412020_Interupt(arg0, arg1)
    
end

function DemiHumanBerserk412020_NoneBattleCheck(arg0)
    if arg0:IsBattleState() == false and arg0:IsCautionState() == false and arg0:IsFindState() == false and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false then
        return true
    else
        return false
    end
    
end


