function RenalaChildren204000_Logic(arg0)
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
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 14355) and arg0:HasSpecialEffectId(TARGET_SELF, 14377) then
            goal:ClearSubGoal()
            local f1_local2 = arg0:GetRandam_Float(0, 1)
            goal:AddTopGoal(GOAL_COMMON_Wait, f1_local2, TARGET_ENE_0)
            goal:AddTopGoal(GOAL_COMMON_ComboRepeat, 20, 20001, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function RenalaChildren204000_Interupt(arg0, arg1)
    
end


