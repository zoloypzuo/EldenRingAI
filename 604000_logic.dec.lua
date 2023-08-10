function Wildowl604000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local2 = GetCurrentTimeType(arg0)
        if f1_local0 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local0 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 11420) == false and (f1_local2 == PLAN_TIME_TYPE_NIGHT or f1_local2 == PLAN_TIME_TYPE_MIDNIGHT) then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_None, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 11420) == true and (f1_local2 == PLAN_TIME_TYPE_MORNING or f1_local2 == PLAN_TIME_TYPE_DAYTIME or f1_local2 == PLAN_TIME_TYPE_EVENING) then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 0, 0)
        elseif RideRequest(arg0, 10, -1) then
            arg0:AddTopGoal(GOAL_COMMON_Mount, 10, 1.2)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function Wildowl604000_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_ChangeSoundTarget) then
        arg0:SetStringIndexedNumber("DoneSoundInterrupt", 1)
        if arg0:GetLatestSoundTargetRank() == AI_SOUND_RANK__NORMAL or arg0:GetLatestSoundTargetRank() == AI_SOUND_RANK__IMPORTANT then
            arg0:ClearSubGoal()
            arg0:AddTopGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3000, TARGET_SELF, DIST_None, 0, 180, 0, 0)
        end
        return true
    end
    
end


