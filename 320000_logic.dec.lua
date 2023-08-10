function RedEyeGypsy320000_Logic(arg0)
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
        elseif RideRequest(arg0, 10, 2) then
            arg0:AddTopGoal(GOAL_COMMON_Mount, 4, 1.2, 8)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function RedEyeGypsy320000_Interupt(arg0, arg1)
    
end


