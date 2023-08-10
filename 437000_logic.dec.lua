function RoamCommonSoldiersOneHand437000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        if f1_local0 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local0 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13670) then
            if arg0:IsExistReqObjAct() then
                arg0:AddTopGoal(GOAL_COMMON_ObjActTest, 10, OBJ_ACT_TYPE_LEVER)
                arg0:AddTopGoal(GOAL_COMMON_Wait, 5, TARGET_SELF)
            elseif arg0:GetDist(TARGET_ENE_0) <= 10 or arg0:GetDist(POINT_INITIAL) >= 3 then
                COMMON_EasySetup3(arg0)
            else
                arg0:AddTopGoal(GOAL_COMMON_Wait, 5, TARGET_SELF)
            end
        elseif RideRequest(arg0, 10, -1) then
            arg0:AddTopGoal(GOAL_COMMON_Mount, 10, 5)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function RoamCommonSoldiersOneHand437000_Interupt(arg0, arg1)
    
end


