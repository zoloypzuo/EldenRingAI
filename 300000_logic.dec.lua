function LossRaceSoldier300000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetRandam_Int(1, 100)
        local f1_local1 = arg0:GetEventRequest()
        local f1_local2 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local3 = arg0:GetDist(TARGET_ENE_0)
        local f1_local4 = arg0:GetDist(POINT_INITIAL)
        local f1_local5 = GetCurrentTimeType(arg0)
        local f1_local6 = arg0:GetPrevTargetState()
        local f1_local7 = arg0:GetCurrTargetState()
        if f1_local1 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local1 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif RideRequest(arg0, 10, -1) then
            arg0:AddTopGoal(GOAL_COMMON_Mount, 10, 1.2)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 10170) and arg0:GetCurrTargetState() ~= AI_TARGET_STATE__BATTLE and arg0:HasSpecialEffectId(TARGET_SELF, 10170) ~= false then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 5, 3020, TARGET_ENE_0, 0, 0, 0, 0, 0)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function LossRaceSoldier300000_Interupt(arg0, arg1)
    local f2_local0 = arg0:GetPlatoonCommand()
    local f2_local1 = f2_local0:GetCommandNo()
    isChangedOrder = arg0:IsInterupt(INTERUPT_PlatoonAiOrder)
    if isChangedOrder and f2_local1 == PLAN_PLATOON_COMMAND__WAIT then
        arg1:ClearSubGoal()
        arg0:Replaning()
    end
    if arg0:IsInterupt(INTERUPT_ChangeSoundTarget) and arg0:GetLatestSoundBehaviorID() == 300000 then
        arg1:ClearSubGoal()
        arg0:Replaning()
        return true
    end
    return false
    
end


