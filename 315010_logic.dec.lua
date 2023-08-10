function RuneHunterKnight315010_Logic(arg0)
    COMMON_Initialize(arg0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11805)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11825)
    if COMMON_EasySetup_Initial(arg0) == false then
        if arg0:IsValidPlatoon() == false then
            COMMON_EasySetup3(arg0)
        else
            local f1_local0 = true
            local f1_local1 = true
            local f1_local2 = arg0:GetAreaHour()
            if not not arg0:IsBattleState() or not not arg0:IsCautionState() or not not arg0:IsSearchHighState() or not not arg0:IsSearchLowState() or arg0:IsMemoryState() then
                f1_local0 = false
            end
            if f1_local2 >= 6 and f1_local2 <= 19 then
                f1_local1 = false
            end
            if f1_local0 == true and f1_local1 == false and arg0:HasSpecialEffectId(TARGET_SELF, 11830) == false then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, -1, 3038, TARGET_NONE, 0, 0, 0, 0, 0)
                return 
            elseif f1_local1 == true and arg0:HasSpecialEffectId(TARGET_SELF, 11830) == true then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, -1, 3039, TARGET_NONE, 0, 0, 0, 0, 0)
                return 
            else
                local f1_local3 = arg0:GetPlatoonCommand()
                local f1_local4 = f1_local3:GetCommandNo()
                if f1_local4 == PLAN_PLATOON_COMMAND__MOVE and f1_local0 == true then
                    local f1_local5 = arg0:GetDist(TARGET_TEAM_FORMATION)
                    if f1_local5 < 3 then
                        arg0:AddTopGoal(GOAL_COMMON_Stay, 0.5, 0, TARGET_SELF)
                    else
                        arg0:AddTopGoal(GOAL_COMMON_MoveToSomewhere, 3, TARGET_TEAM_FORMATION, AI_DIR_TYPE_CENTER, 3, TARGET_SELF, true)
                    end
                else
                    COMMON_EasySetup3(arg0)
                end
            end
        end
    end
    
end

function RuneHunterKnight315010_Interupt(arg0, arg1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11805)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11825)
    if arg0:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg0:HasSpecialEffectId(TARGET_SELF, 11805) and arg0:ReserveRide(10) == true then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Mount, 10, 3, 5)
        return true
    end
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) and arg0:IsRiding(TARGET_SELF) == false and arg0:HasSpecialEffectId(TARGET_SELF, 11805) == false and arg0:HasSpecialEffectId(TARGET_SELF, 11825) == true then
        arg1:ClearSubGoal()
        local f2_local0 = arg0:GetDist(TARGET_ENE_0)
        local f2_local1 = 3025
        local f2_local2 = 0
        local f2_local3 = 0
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f2_local1, TARGET_ENE_0, 999, f2_local2, f2_local3, 0, 0)
        return true
    end
    return false
    
end


