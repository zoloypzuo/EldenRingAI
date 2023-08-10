function Wilddragonfly608000_Logic(arg0)
    COMMON_Initialize(arg0)
    local f1_local0 = arg0:GetPrevTargetState()
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local1 = arg0:GetMovePointNumber()
        local f1_local2 = arg0:GetEventRequest()
        local f1_local3 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local4 = arg0:GetRandam_Int(1, 100)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        if f1_local2 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local2 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        else
            local f1_local5 = arg0:HasSpecialEffectId(TARGET_SELF, 11455)
            if arg0:IsBattleState() == false and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false and arg0:IsCautionState() == false and arg0:IsMemoryState() == false and f1_local1 == -1 and arg0:IsValidPlatoon() == false and f1_local5 == true then
                local f1_local6 = arg0:GetRandam_Int(1, 100)
                local f1_local7 = arg0:GetOffsetY(TARGET_SELF)
                if f1_local7 < 1.6 or f1_local6 <= 30 then
                    local f1_local8 = 3011
                    local f1_local9 = ATT_SUCCESSDIST
                    local f1_local10 = 0
                    local f1_local11 = 0
                    arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, f1_local8, TARGET_SELF, f1_local9, f1_local10, f1_local11, 0, 0)
                end
                local f1_local8 = 10
                local f1_local9 = 1
                local f1_local10 = 1
                local f1_local11 = true
                local f1_local12 = 3012
                local f1_local13 = 1.5
                local f1_local14 = 4
                local f1_local15 = false
                local f1_local16 = true
                arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, f1_local8, f1_local9, f1_local10, f1_local11, f1_local12, f1_local13, f1_local14, f1_local15, f1_local16)
            else
                COMMON_EasySetup3(arg0)
            end
        end
    end
    
end

function Wilddragonfly608000_Interupt(arg0, arg1)
    return false
    
end


