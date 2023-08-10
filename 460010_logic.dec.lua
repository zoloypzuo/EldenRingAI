function Troll460010_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetPlatoonCommand()
        local f1_local1 = f1_local0:GetCommandNo()
        local f1_local2 = arg0:GetDist(TARGET_TEAM_FORMATION)
        local f1_local3 = arg0:GetRandam_Int(1, 100)
        local f1_local4 = arg0:GetDist(TARGET_ENE_0)
        if arg0:IsValidPlatoon() == false then
            COMMON_EasySetup3(arg0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5551) == true then
            COMMON_EasySetup3(arg0)
        else
            local f1_local5 = arg0:GetDist(TARGET_TEAM_MEMBER_3)
            if arg0:IsBattleState() == true and f1_local4 <= 3.5 then
                if f1_local5 > 20 then
                    if arg0:HasSpecialEffectId(TARGET_SELF, 5025) == true then
                        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 20002, TARGET_NONE, 0, 0, 180, 180, 180)
                    end
                    arg0:SetAIFixedMoveTargetSpecifyAngle(TARGET_TEAM_MEMBER_3, 180, f1_local5 + 10, AI_SPA_DIR_TYPE_ToTarget)
                    arg0:AddTopGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_TEAM_MEMBER_3, AI_DIR_TYPE_CENTER, 18, POINT_AI_FIXED_POS, true)
                elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 100) then
                    if f1_local3 <= 50 then
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    else
                        arg0:AddTopGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
                    end
                elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 100) then
                    if f1_local3 <= 50 then
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    else
                        arg0:AddTopGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
                    end
                end
            elseif f1_local1 == PLAN_PLATOON_COMMAND__STOP or f1_local1 == PLAN_PLATOON_COMMAND__CONFLUENCE or f1_local1 == PLAN_PLATOON_COMMAND__PATROLEND then
                if arg0:HasSpecialEffectId(TARGET_SELF, 5025) == false then
                    arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 20012, TARGET_NONE, 0, 0, 180, 180, 180)
                else
                    arg0:AddTopGoal(GOAL_COMMON_Stay, 3, 2, TARGET_NONE)
                end
            elseif f1_local1 == PLAN_PLATOON_COMMAND__WAIT then
                arg0:AddTopGoal(GOAL_COMMON_Stay, 0.5, 0, TARGET_NONE)
            elseif f1_local2 < 1 then
                arg0:AddTopGoal(GOAL_COMMON_Stay, 0.5, 0, TARGET_NONE)
            else
                arg0:AddTopGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_TEAM_FORMATION, AI_DIR_TYPE_CENTER, 0.1, TARGET_SELF, true)
            end
        end
    end
    
end

function Troll460010_Interupt(arg0, arg1)
    isChangedOrder = arg0:IsInterupt(INTERUPT_PlatoonAiOrder)
    if isChangedOrder then
        arg1:ClearSubGoal()
        arg0:Replaning()
    end
    
end


