function TyrannoRaven456000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        if f1_local0 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local0 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 15444) == true and arg0:HasSpecialEffectId(TARGET_SELF, 5034) == true and arg0:IsBattleState() == false then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 1, 20021, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function TyrannoRaven456000_Interupt(arg0, arg1)
    
end


