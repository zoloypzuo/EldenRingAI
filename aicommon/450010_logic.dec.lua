function Wyvern450010_Logic(arg0)
    COMMON_Initialize(arg0)
    local f1_local0 = GetCurrentTimeType(arg0)
    if arg0:IsChangeState() and arg0:GetCurrTargetState() == AI_TARGET_STATE__NONE then
        arg0:GetStringIndexedNumber("Wyvern450010_FistActDone")
    end
    if not arg0:IsUseFlyRoute() and arg0:IsChangeState() then
        local f1_local1 = arg0:GetPrevTargetState()
        if arg0:IsBattleState() then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_NONE, 0, 90)
        elseif arg0:IsSearchLowState() and f1_local1 == AI_TARGET_STATE__NONE then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_SEARCH, DIST_NONE, 0, 90)
        elseif arg0:IsCautionState() and f1_local1 == AI_TARGET_STATE__NONE then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, DIST_None, 0, 90)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, DIST_None, 0, 90)
            end
        elseif (f1_local1 == AI_TARGET_STATE__SEARCH or f1_local1 == AI_TARGET_STATE__SEARCH2) and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false and arg0:IsCautionState() == false and arg0:IsBattleState() == false then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_NONE, 0, 90)
        end
    end
    if arg0:IsBattleState() then
        arg0:AddTopGoal(arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__battleGoalID), -1)
    elseif arg0:IsSearchLowState() then
        arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, TARGET_ENE_0)
    elseif arg0:IsCautionState() then
        arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, TARGET_ENE_0)
    elseif arg0:GetStringIndexedNumber("Wyvern450010_FistActDone") ~= 1 then
        arg0:AddTopGoal(GOAL_COMMON_WaitWithAnime, -1, 3021, TARGET_SELF)
        arg0:SetStringIndexedNumber("Wyvern450010_FistActDone", 1)
    else
        local f1_local1 = 2
        local f1_local2 = 10
        local f1_local3 = true
        local f1_local4 = 3020
        local f1_local5 = 18
        local f1_local6 = -1
        local f1_local7 = false
        local f1_local8 = true
        arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, -1, f1_local1, f1_local2, f1_local3, f1_local4, f1_local5, f1_local6, f1_local7, f1_local8)
    end
    
end

function Wyvern450010_Interupt(arg0, arg1)
    return false
    
end


