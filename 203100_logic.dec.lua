function ProlificRenala203100_Logic(arg0)
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
        elseif arg0:GetHp(TARGET_HOSTPLAYER) == 0 then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 40, 20000, TARGET_HOSTPLAYER, 0, 5, 60, 0, 0)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function ProlificRenala203100_Interupt(arg0, arg1)
    
end


