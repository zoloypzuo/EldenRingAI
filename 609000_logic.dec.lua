function Tortoises609000_Logic(arg0)
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
            if arg0:IsBattleState() == false and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false and arg0:IsCautionState() == false and arg0:IsMemoryState() == false and f1_local1 == -1 then
                local f1_local5 = arg0:IsValidPlatoon()
                local f1_local6 = false
                if f1_local5 == f1_local6 then
                    f1_local5 = 2
                    f1_local6 = 10
                    local f1_local7 = true
                    local f1_local8 = 3020
                    local f1_local9 = 7
                    local f1_local10 = 1
                    local f1_local11 = false
                    local f1_local12 = true
                    local f1_local13 = false
                    arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, -1, f1_local5, f1_local6, f1_local7, f1_local8, f1_local9, f1_local10, f1_local11, f1_local12, f1_local13)
                    local f1_local14 = arg0:GetRandam_Int(1, 100)
                    local f1_local15 = 5
                    local f1_local16 = 3021
                    local f1_local17 = TARGET_SELF
                    local f1_local18 = 10
                    arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f1_local15, f1_local16, f1_local17, f1_local18)
                    if f1_local14 >= 70 then
                        arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f1_local15, f1_local16, f1_local17, f1_local18)
                    end
                else
                    COMMON_EasySetup3(arg0)
                end
            end
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function Tortoises609000_Interupt(arg0, arg1)
    
end


