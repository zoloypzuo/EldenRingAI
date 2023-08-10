function RottenDead_366100_Logic(arg0)
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
            local f1_local5 = arg0:HasSpecialEffectId(TARGET_SELF, 17005)
            local f1_local6 = arg0:HasSpecialEffectId(TARGET_SELF, 13471)
            local f1_local7 = arg0:HasSpecialEffectId(TARGET_SELF, 17048)
            if arg0:IsBattleState() == false and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false and arg0:IsCautionState() == false and arg0:IsMemoryState() == false and f1_local1 == -1 and arg0:IsValidPlatoon() == false then
                if f1_local7 == true then
                    local f1_local8 = 2
                    local f1_local9 = 10
                    local f1_local10 = true
                    local f1_local11 = 3020
                    local f1_local12 = 7
                    local f1_local13 = 1
                    local f1_local14 = false
                    local f1_local15 = true
                    local f1_local16 = true
                    arg0:SetStringIndexedNumber("WalkBefore", 1)
                    local f1_local17 = arg0:GetRandam_Int(1, 100)
                    arg0:SetNumber(0, 0)
                    local f1_local18 = arg0:GetRandam_Int(3, 7)
                    if f1_local17 > 80 then
                        arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 1, 6, true, 3007, f1_local18, 1, false, false, true)
                    else
                        arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 1, 6, true, -1, 0, 1, false, false, true)
                    end
                else
                    COMMON_EasySetup3(arg0)
                end
            else
                COMMON_EasySetup3(arg0)
            end
        end
    end
    
end

function RottenDead_366100_Interupt(arg0, arg1)
    if Damaged_Act(arg0, arg1, distNearRes, oddsNearRes) then
        arg1:ClearSubGoal()
        return true
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 16489) and (arg0:IsBattleState() == true or arg0:IsSearchLowState() == true or arg0:IsSearchHighState() == true or arg0:IsCautionState() == true or arg0:IsMemoryState() == true) then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end


