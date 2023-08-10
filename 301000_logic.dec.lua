function LostKnight_301000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:GetDist(TARGET_ENE_0)
        local f1_local2 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local3 = arg0:GetDist(POINT_INITIAL)
        local f1_local4 = GetCurrentTimeType(arg0)
        local f1_local5 = arg0:GetPrevTargetState()
        local f1_local6 = arg0:GetCurrTargetState()
        local f1_local7 = arg0:HasSpecialEffectId(TARGET_SELF, 10890)
        local f1_local8 = arg0:HasSpecialEffectId(TARGET_SELF, 10891)
        local f1_local9 = arg0:HasSpecialEffectId(TARGET_SELF, 10892)
        local f1_local10 = arg0:HasSpecialEffectId(TARGET_SELF, 10164)
        local f1_local11 = arg0:HasSpecialEffectId(TARGET_SELF, 10850)
        local f1_local12 = arg0:HasSpecialEffectId(TARGET_SELF, 10851)
        local f1_local13 = arg0:IsBattleState()
        if f1_local6 >= AI_TARGET_STATE__SEARCH and f1_local7 == true and f1_local8 == true then
            arg0:AddTopGoal(GOAL_COMMON_Turn, 1.5, TARGET_ENE_0, 45)
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 20001, TARGET_ENE_0, DIST_None, 0, 0)
        elseif f1_local6 <= AI_TARGET_STATE__NONE and f1_local7 == true and f1_local9 == true then
            arg0:AddTopGoal(GOAL_COMMON_Wait, 2, TARGET_NONE)
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 20000, TARGET_ENE_0, DIST_None, 0, 0)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function LostKnight_301000_Interupt(arg0, arg1)
    local f2_local0 = arg0:GetDist(TARGET_ENE_0)
    local f2_local1 = arg0:GetDist(TARGET_FRI_0)
    local f2_local2 = arg0:GetRandam_Int(1, 100)
    local f2_local3 = arg0:HasSpecialEffectId(TARGET_ENE_0, 90)
    local f2_local4 = arg0:HasSpecialEffectId(TARGET_SELF, 10164)
    local f2_local5 = arg0:HasSpecialEffectId(TARGET_SELF, 10850)
    local f2_local6 = arg0:HasSpecialEffectId(TARGET_SELF, 10851)
    local f2_local7 = arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    
end


