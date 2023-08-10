function GroundTaco422000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:GetDist(TARGET_ENE_0)
        local f1_local2 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local3 = arg0:GetDist(POINT_INITIAL)
        local f1_local4 = GetCurrentTimeType(arg0)
        local f1_local5 = arg0:GetPrevTargetState()
        local f1_local6 = arg0:GetCurrTargetState()
        local f1_local7 = arg0:HasSpecialEffectId(TARGET_SELF, 11751)
        local f1_local8 = arg0:HasSpecialEffectId(TARGET_SELF, 11753)
        local f1_local9 = arg0:HasSpecialEffectId(TARGET_SELF, 11755)
        local f1_local10 = arg0:HasSpecialEffectId(TARGET_SELF, 11757)
        local f1_local11 = arg0:IsBattleState()
        if f1_local11 == false then
            if f1_local9 == true and f1_local10 == false then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, DIST_None, 0, 0)
            end
            if arg0:GetHpRate(TARGET_SELF) <= 0.9 and f1_local8 == false and f1_local7 == true then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_None, 0, 0)
            end
        end
        COMMON_EasySetup3(arg0)
    end
    
end

function GroundTaco422000_Interupt(arg0, arg1)
    
end


