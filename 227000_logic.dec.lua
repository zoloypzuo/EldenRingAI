function CrabBig227000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetMovePointNumber()
        local f1_local1 = arg0:GetEventRequest()
        local f1_local2 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local3 = arg0:GetRandam_Int(1, 100)
        if f1_local1 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local1 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        else
            local f1_local4 = arg0:GetRandam_Int(1, 100)
            local f1_local5 = arg0:GetRandam_Int(1, 100)
            local f1_local6 = arg0:GetEventRequest()
            local f1_local7 = arg0:IsSearchTarget(TARGET_ENE_0)
            local f1_local8 = arg0:GetDist(POINT_INITIAL)
            local f1_local9 = GetCurrentTimeType(arg0)
            local f1_local10 = arg0:GetPrevTargetState()
            local f1_local11 = arg0:GetCurrTargetState()
            local f1_local12 = arg0:IsBattleState()
            local f1_local13 = arg0:IsCautionState()
            local f1_local14 = arg0:HasSpecialEffectId(TARGET_SELF, 12048)
            if arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false and arg0:IsCautionState() == false and arg0:IsMemoryState() == false and arg0:IsBattleState() == false and f1_local14 == true then
                if f1_local4 > 70 or arg0:GetNumber(3) >= 2 then
                    arg0:SetNumber(3, 0)
                    arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_NONE, DIST_None, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_NONE, DIST_None, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_NONE, DIST_None, 0, 0)
                elseif f1_local4 > 20 then
                    arg0:SetNumber(3, arg0:GetNumber(3) + 1)
                    COMMON_EasySetup3(arg0)
                else
                    arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 5, 10, true, -1, 3, 1, false, false)
                end
            else
                COMMON_EasySetup3(arg0)
            end
        end
    end
    
end

function CrabBig227000_Interupt(arg0, arg1)
    return false
    
end


