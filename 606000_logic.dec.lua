function Wildsheep606000_Logic(arg0)
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
            if arg0:IsBattleState() == false and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false and arg0:IsCautionState() == false and arg0:IsMemoryState() == false and f1_local1 == -1 then
                local f1_local5 = arg0:IsValidPlatoon()
                local f1_local6 = false
                if f1_local5 == f1_local6 then
                    f1_local5 = 2
                    f1_local6 = 10
                    local f1_local7 = true
                    local f1_local8 = 3021
                    local f1_local9 = 7
                    local f1_local10 = 1
                    local f1_local11 = false
                    local f1_local12 = true
                    local f1_local13 = false
                    local f1_local14 = arg0:GetRandam_Int(1, 2)
                    if f1_local14 == 2 then
                        f1_local8 = 3020
                    end
                    arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, -1, f1_local5, f1_local6, f1_local7, f1_local8, f1_local9, f1_local10, f1_local11, f1_local12, f1_local13)
                else
                    COMMON_EasySetup3(arg0)
                end
            end
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function Wildsheep606000_Interupt(arg0, arg1)
    return false
    
end


