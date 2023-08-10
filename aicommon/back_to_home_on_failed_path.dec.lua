REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_BackToHome_On_FailedPath, 0, "?p?X?`?F?b?N??u", 0)
function BackToHomeOnFailedPath_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    arg1:SetTimer(0, f1_local0)
    local f1_local1 = arg1:GetParam(1)
    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) then
        arg1:SetNumber(1, 1)
        arg1:SetNumber(0, 1)
    else
        arg1:SetNumber(1, 0)
        arg1:SetNumber(0, 0)
    end
    if arg0:IsRiding(TARGET_SELF) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 100, POINT_INITIAL, 1, TARGET_SELF, true, -1, -1, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_BackToHome, 100, f1_local1)
    end
    
end

function BackToHomeOnFailedPath_Update(arg0, arg1)
    local f2_local0 = GOAL_RESULT_Continue
    local f2_local1 = arg0:IsBattleState()
    if f2_local1 == true then
        f2_local1 = 6
        if arg0:GetDist(TARGET_ENE_0) < f2_local1 then
            arg0:SetStringIndexedNumber("IsIgnore_Sideway_onFailedPath", 1)
            return GOAL_RESULT_Success
        end
    end
    f2_local1 = TARGET_ENE_0
    if arg0:IsSearchLowState() == true or arg0:IsSearchHighState() == true then
        f2_local1 = TARGET_SEARCH
    end
    if true == arg1:IsFinishTimer(0) then
        local f2_local2 = false
        f2_local2 = arg0:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0)
        if true == f2_local2 then
            f2_local0 = GOAL_RESULT_Success
        else
            local f2_local3 = arg1:GetParam(0)
            arg1:SetTimer(0, f2_local3)
        end
    end
    if arg1:GetNumber(1) == 1 and arg0:GetDist(TARGET_HOSTPLAYER) >= 23 then
        return GOAL_RESULT_Success
    end
    if arg1:GetNumber(0) == 1 and arg0:GetDist(POINT_INITIAL) <= 2 then
        arg1:SetNumber(0, 0)
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE)
    end
    if arg1:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    return f2_local0
    
end

function BackToHomeOnFailedPath_Terminate(arg0, arg1)
    
end

function BackToHomeOnFailedPath_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_Shoot) then
        local f4_local0 = arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_FINDSHOOT_STEP_ON_FAILED_PATHGOAL)
        if f4_local0 then
            f4_local0 = 3
            local f4_local1 = arg0:GetExistMeshOnLineDist(TARGET_SELF, AI_DIR_TYPE_R, f4_local0 + 1)
            local f4_local2 = arg0:GetExistMeshOnLineDist(TARGET_SELF, AI_DIR_TYPE_L, f4_local0 + 1)
            local f4_local3 = false
            local f4_local4 = false
            local f4_local5 = 0
            local f4_local6 = 6003
            local f4_local7 = 6002
            if f4_local0 <= f4_local1 then
                f4_local3 = true
            end
            if f4_local0 <= f4_local2 then
                f4_local4 = true
            end
            if f4_local3 == true and f4_local4 == true then
                f4_local5 = arg0:GetRandam_Int(f4_local7, f4_local6)
            elseif f4_local3 == false and f4_local4 == false then
                f4_local5 = arg0:GetRandam_Int(f4_local7, f4_local6)
            elseif f4_local3 == true then
                f4_local5 = f4_local6
            else
                f4_local5 = f4_local7
            end
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, f4_local5, TARGET_ENE_0, 0, AI_DIR_TYPE_CENTER, 0)
            return true
        end
    end
    if arg0:IsInterupt(INTERUPT_CANNOT_MOVE) then
        local f4_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__CannotMoveAction)
        if arg0:IsTouchBreakableObject() and f4_local0 >= 0 then
            local f4_local1 = arg0:IsLookToTarget(POINT_CurrRequestPosition, 90)
            if f4_local1 then
                f4_local1 = 10
                if arg0:IsHugeEnemy() == true then
                    f4_local1 = 100
                end
                if arg0:GetTouchBreakableObjectDefense() <= f4_local1 then
                    arg1:ClearSubGoal()
                    if arg0:IsRiding(TARGET_SELF) == false then
                        local f4_local2 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__enableWeaponOnOff)
                        local f4_local3 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__weaponOffSpecialEffectId)
                        local f4_local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__weaponOnAnimId)
                        local f4_local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__weaponOffAnimId)
                        if f4_local2 > 0 and arg0:HasSpecialEffectId(TARGET_SELF, f4_local3) == true then
                            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local4, TARGET_SELF, 9999, 0, 0, 0, 0)
                            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, -1, f4_local0, TARGET_NONE, DIST_None)
                            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local5, TARGET_SELF, 9999, 0, 0, 0, 0)
                            return true
                        end
                    end
                    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, -1, f4_local0, TARGET_NONE, DIST_None)
                    return true
                end
            end
        end
        local f4_local1 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backToHomeStuckAct)
        local f4_local2 = 1
        if arg1:GetNumber(1) == 1 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
            return true
        end
        if f4_local1 == f4_local2 and arg0:GetStringIndexedNumber("mRepCount_Disable_FailedPath") == 0 then
            arg1:ClearSubGoal()
            arg0:SetStringIndexedNumber("RepCount_Disable_FailedPath", 1)
            arg1:AddSubGoal(GOAL_COMMON_FadeWarpToInitPos, 10, 2, 4)
        else
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_Wait, arg1:GetLife(), TARGET_ENE_0)
        end
        return true
    end
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) then
        return true
    end
    return false
    
end


