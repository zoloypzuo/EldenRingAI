function NonActPatrolMember20010_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        if arg0:IsValidPlatoon() == true then
            local f1_local0 = arg0:GetPlatoonCommand()
            local f1_local1 = f1_local0:GetCommandNo()
            local f1_local2 = arg0:GetDist(TARGET_TEAM_FORMATION)
            local f1_local3 = 20000
            arg0:SetEnableUsePath(true)
            if f1_local1 == PLAN_PLATOON_COMMAND__STOP or f1_local1 == PLAN_PLATOON_COMMAND__WAIT or f1_local1 == PLAN_PLATOON_COMMAND__PATROLEND then
                if arg0:HasSpecialEffectId(TARGET_SELF, 11500) == false then
                    arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, f1_local3, TARGET_SELF, 0, 0, 0)
                else
                    arg0:AddTopGoal(GOAL_COMMON_Stay, 2, 0, TARGET_SELF)
                end
            elseif f1_local2 < 2 then
                arg0:AddTopGoal(GOAL_COMMON_Stay, 0.5, 0, TARGET_SELF)
            elseif arg0:HasSpecialEffectId(TARGET_SELF, 11501) then
                arg0:SetEnableUsePath(false)
                arg0:AddTopGoal(GOAL_COMMON_ApproachSettingDirection, 0.3, TARGET_SELF, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 3)
            else
                arg0:AddTopGoal(GOAL_COMMON_MoveToSomewhere, 2, TARGET_TEAM_FORMATION, AI_DIR_TYPE_CENTER, 0.1, TARGET_SELF, true)
            end
        else
            arg0:AddTopGoal(GOAL_COMMON_Wait, 20, TARGET_SELF)
        end
    end
    
end

function NonActPatrolMember20010_Interupt(arg0, arg1)
    if arg0:IsValidPlatoon() == true then
        isChangedOrder = arg0:IsInterupt(INTERUPT_PlatoonAiOrder)
        if isChangedOrder then
            arg1:ClearSubGoal()
            arg0:Replaning()
        end
    end
    
end


