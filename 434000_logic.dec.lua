function PumpkinHead4Frail434000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local2 = arg0:GetMovePointNumber()
        if f1_local0 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local0 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13255) == true and arg0:IsBattleState() == false and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false and arg0:IsCautionState() == false and arg0:IsMemoryState() == false and f1_local2 == -1 and arg0:IsValidPlatoon() == false then
            local f1_local3 = 2
            local f1_local4 = 10
            local f1_local5 = true
            local f1_local6 = 3010
            local f1_local7 = 7
            local f1_local8 = 1
            local f1_local9 = false
            local f1_local10 = true
            local f1_local11 = false
            arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, -1, f1_local3, f1_local4, f1_local5, f1_local6, f1_local7, f1_local8, f1_local9, f1_local10, f1_local11)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13250) == true and (arg0:IsSearchLowState() == true or arg0:IsSearchHighState() == true or arg0:IsCautionState() == true) then
            if arg0:IsInsideTarget(TARGET_SOUND, AI_DIR_TYPE_B, 60) then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 5, 3022, TARGET_SELF, 9998, 0, 0, 0, 0)
            elseif arg0:IsInsideTarget(TARGET_SOUND, AI_DIR_TYPE_R, 90) then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 5, 3021, TARGET_SELF, 9998, 0, 0, 0, 0)
            elseif arg0:IsInsideTarget(TARGET_SOUND, AI_DIR_TYPE_L, 90) then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 5, 3020, TARGET_SELF, 9998, 0, 0, 0, 0)
            end
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function PumpkinHead4Frail434000_Interupt(arg0, arg1)
    
end


