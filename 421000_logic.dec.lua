function StormHawk421000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        if f1_local0 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local0 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
            if arg0:HasSpecialEffectId(TARGET_SELF, 5400) == true and arg0:HasSpecialEffectId(TARGET_SELF, 10920) == true then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 5, 3020, TARGET_SELF, 9998, 0, 0, 0, 0)
            elseif arg0:HasSpecialEffectId(TARGET_SELF, 5020) == true and arg0:HasSpecialEffectId(TARGET_SELF, 10946) == false and arg0:HasSpecialEffectId(TARGET_SELF, 10945) == false then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_LOCALPLAYER, 999, 0, 0, 0, 0)
            else
                COMMON_EasySetup3(arg0)
            end
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5400) == true and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false and arg0:IsCautionState() == false and arg0:IsBattleState() == false then
            arg0:AddTopGoal(GOAL_COMMON_Wait, 1, TARGET_NONE)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5400) == true and (arg0:IsSearchLowState() == true or arg0:IsSearchHighState() == true or arg0:IsCautionState() == true or arg0:IsBattleState() == true) then
            if arg0:HasSpecialEffectId(TARGET_SELF, 10920) == true then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 5, 3020, TARGET_SELF, 9998, 0, 0, 0, 0)
            else
                arg0:AddTopGoal(GOAL_COMMON_Wait, 1, TARGET_NONE)
            end
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false and arg0:IsCautionState() == false and arg0:IsBattleState() == false and arg0:IsMemoryState() == false and arg0:GetDistXZ(POINT_INITIAL) < 1 then
            arg0:SetAIFixedMoveTargetSpecifyAngle(TARGET_SELF, 180, 1, AI_SPA_DIR_TYPE_TargetF)
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 5, 3020, POINT_AI_FIXED_POS, 9999, 5, 20, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true and arg0:HasSpecialEffectId(TARGET_SELF, 10907) and arg0:CheckDoesExistPath(POINT_INITIAL, AI_DIR_TYPE_F, 0) and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false and arg0:IsCautionState() == false and arg0:IsBattleState() == false and arg0:IsMemoryState() == false then
            local f1_local2 = arg0
            local f1_local3 = arg0.AddTopGoal
            local f1_local4 = GOAL_COMMON_BackToHome
            local f1_local5 = 0.5
            local f1_local6 = nil
            local f1_local7 = true
            local f1_local8, f1_local9 = nil
            f1_local3(f1_local2, f1_local4, f1_local5, f1_local6, f1_local7, f1_local8, f1_local9, POINT_INITIAL)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function StormHawk421000_Interupt(arg0, arg1)
    
end


