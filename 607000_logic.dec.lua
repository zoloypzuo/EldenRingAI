function Wildguillemots607000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        if f1_local0 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local0 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif RideRequest(arg0, 10, -1) then
            arg0:AddTopGoal(GOAL_COMMON_Mount, 10, 1.2)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 11461) == true then
            arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0, 0, 0, 0)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function Wildguillemots607000_Interupt(arg0, arg1)
    
end


