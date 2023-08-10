function RuneSlave366000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local2 = arg0:GetRandam_Int(1, 100)
        if f1_local0 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local0 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 14723) == true then
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif RideRequest(arg0, 10, 6) then
            arg0:AddTopGoal(GOAL_COMMON_Mount, 10, 1.2)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function RuneSlave366000_Interupt(arg0, arg1)
    return false
    
end


