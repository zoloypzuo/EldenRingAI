function common14500_Logic(arg0)
    COMMON_Initialize(arg0)
    if not arg0:IsUseFlyRoute() and arg0:IsChangeState() then
        local f1_local0 = arg0:GetPrevTargetState()
        if arg0:IsBattleState() then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_NONE, 0, 90)
        elseif arg0:IsSearchLowState() and f1_local0 == AI_TARGET_STATE__NONE then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_SEARCH, DIST_NONE, 0, 90)
        elseif arg0:IsSearchHighState() and f1_local0 == AI_TARGET_STATE__SEARCH then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 4, 3025, TARGET_SEARCH, DIST_NONE, 0, 90)
            arg0:SetTimer(2, 6)
        elseif arg0:IsCautionState() and f1_local0 == AI_TARGET_STATE__NONE then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, DIST_None, 0, 90)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, DIST_None, 0, 90)
            end
        elseif (f1_local0 == AI_TARGET_STATE__SEARCH or f1_local0 == AI_TARGET_STATE__SEARCH2) and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false and arg0:IsCautionState() == false and arg0:IsBattleState() == false then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_NONE, 0, 90)
        end
    end
    if not arg0:IsUseFlyRoute() then
        if arg0:IsBattleState() then
            arg0:AddTopGoal(arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__battleGoalID), -1)
            arg0:SetNumber(5, 0)
        elseif arg0:IsSearchLowState() then
            arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, TARGET_ENE_0)
            arg0:SetNumber(5, 0)
        elseif arg0:IsSearchHighState() then
            if arg0:IsFinishTimer(2) and arg0:GetRandam_Int(1, 100) < 20 and arg0:GetAttackPassedTime(3027) >= 20 then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 9, 3027, TARGET_SEARCH, DIST_NONE, 0, -1)
            else
                arg0:AddTopGoal(GOAL_COMMON_MoveToSomewhere, 1, TARGET_SEARCH, AI_DIR_TYPE_CENTER, 1, TARGET_SELF, true)
            end
            arg0:SetNumber(5, 0)
        elseif arg0:IsCautionState() then
            arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, TARGET_ENE_0)
            arg0:SetNumber(5, 0)
        elseif arg0:GetNumber(5) == 0 and arg0:GetAttackPassedTime(3023) >= 12 then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_NONE, 0, 90)
            arg0:SetNumber(5, 1)
            arg0:SetTimer(1, 10)
        elseif arg0:IsFinishTimer(1) then
            arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, -1)
        else
            arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, TARGET_ENE_0)
        end
    end
    
end

function common14500_Interupt(arg0, arg1)
    
end


