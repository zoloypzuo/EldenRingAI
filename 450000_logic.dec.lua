function Wyvern450000_Logic(arg0)
    COMMON_Initialize(arg0)
    local f1_local0 = arg0:GetPrevTargetState()
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local1 = arg0:GetMovePointNumber()
        local f1_local2 = arg0:GetEventRequest()
        local f1_local3 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local4 = arg0:GetRandam_Int(1, 100)
        if f1_local2 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local2 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        else
            if not arg0:IsUseFlyRoute() and arg0:IsChangeState() then
                local f1_local5 = arg0:GetPrevTargetState()
                if arg0:IsSearchLowState() and f1_local5 == AI_TARGET_STATE__NONE then
                    arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_SEARCH, DIST_NONE, 0, 90)
                elseif arg0:IsSearchHighState() and f1_local5 == AI_TARGET_STATE__SEARCH then
                    arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 4, 3025, TARGET_SEARCH, DIST_NONE, 0, 90)
                    arg0:SetTimer(2, 6)
                elseif arg0:IsCautionState() and f1_local5 == AI_TARGET_STATE__NONE then
                    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, DIST_None, 0, 90)
                    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, DIST_None, 0, 90)
                    end
                elseif (f1_local5 == AI_TARGET_STATE__SEARCH or f1_local5 == AI_TARGET_STATE__SEARCH2) and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false and arg0:IsCautionState() == false and arg0:IsBattleState() == false then
                    arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_NONE, 0, 90)
                else
                    COMMON_EasySetup3(arg0)
                end
                return 
            end
            if arg0:IsBattleState() == false and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false and arg0:IsCautionState() == false and arg0:IsMemoryState() == false and arg0:HasSpecialEffectId(TARGET_SELF, 10247) == false then
                if arg0:GetNumber(5) == 0 and arg0:GetAttackPassedTime(3023) >= 12 then
                    arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_NONE, 0, 90)
                    arg0:SetNumber(5, 1)
                    arg0:SetTimer(1, 10)
                elseif arg0:IsFinishTimer(1) then
                    local f1_local5 = -5
                    local f1_local6 = 10
                    local f1_local7 = true
                    local f1_local8 = 3020
                    local f1_local9 = 18
                    local f1_local10 = -1
                    local f1_local11 = false
                    local f1_local12 = true
                    local f1_local13 = true
                    arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, -1, f1_local5, f1_local6, f1_local7, f1_local8, f1_local9, f1_local10, f1_local11, f1_local12, f1_local13)
                else
                    COMMON_EasySetup3(arg0)
                end
            else
                COMMON_EasySetup3(arg0)
            end
        end
    end
    
end

function Wyvern450000_Interupt(arg0, arg1)
    return false
    
end


