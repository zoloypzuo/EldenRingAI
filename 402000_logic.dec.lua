function HorriblenessGrub402000_Logic(arg0)
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
            local f1_local5 = arg0:IsBattleState()
            local f1_local6 = arg0:IsCautionState()
            local f1_local7 = arg0:HasSpecialEffectId(TARGET_SELF, 10121)
            local f1_local8 = arg0:HasSpecialEffectId(TARGET_SELF, 16670)
            local f1_local9 = arg0:HasSpecialEffectId(TARGET_SELF, 16671)
            local f1_local10 = arg0:HasSpecialEffectId(TARGET_SELF, 16672)
            local f1_local11 = SetCoolTime(arg0, nil, action1, 25, 1, 0)
            local f1_local12 = arg0:HasSpecialEffectId(TARGET_SELF, 16680)
            if arg0:IsBattleState() == false and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false and arg0:IsCautionState() == false and arg0:IsMemoryState() == false and f1_local1 == -1 and arg0:IsValidPlatoon() == false and f1_local12 == false then
                if arg0:GetNumber(3) >= 2 then
                    arg0:SetNumber(3, 0)
                    arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, 5, 1, 10, true, 3037, 3, 1, true, false)
                elseif f1_local4 > 40 then
                    arg0:SetNumber(3, arg0:GetNumber(3) + 1)
                    arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 2, 10, true, -1, 3, 1, true, false)
                else
                    arg0:SetNumber(3, arg0:GetNumber(3) + 1)
                    arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 2, 10, true, -1, 3, 1, true, false)
                end
            else
                COMMON_EasySetup3(arg0)
            end
        end
    end
    
end

function HorriblenessGrub402000_Interupt(arg0, arg1)
    local f2_local0 = arg0:GetDist(TARGET_ENE_0)
    local f2_local1 = arg0:GetDist(TARGET_FRI_0)
    local f2_local2 = arg0:GetRandam_Int(1, 100)
    local f2_local3 = arg0:HasSpecialEffectId(TARGET_SELF, 10798)
    local f2_local4 = arg0:GetPrevTargetState()
    local f2_local5 = arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg0:IsInterupt(INTERUPT_ActivateSpecialEffect) and battleCheck == false and arg0:GetSpecialEffectActivateInterruptId(10798) then
        arg0:Replanning()
        return true
    end
    return false
    
end


