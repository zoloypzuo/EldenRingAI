REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SideWay_On_FailedPath, 0, "?p?X?`?F?b?N??u", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SideWay_On_FailedPath, 1, "?r???s????A?j??ID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SideWay_On_FailedPath, 2, "?r???s?????s??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SideWay_On_FailedPath, 3, "?r???s?????s????u", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SideWay_On_FailedPath, 4, "????????A????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SideWay_On_FailedPath, 5, "?K?[?h???s????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SideWay_On_FailedPath, 6, "?A?????E???p??", 0)
function SideWayOnFailedPath_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    local f1_local1 = arg1:GetParam(4)
    arg1:SetTimer(0, f1_local0)
    arg1:SetTimer(1, f1_local1)
    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) then
        arg1:SetNumber(1, 1)
    else
        arg1:SetNumber(1, 0)
    end
    SideWayOnFailedPath_AddInnerGoal(arg0, arg1)
    
end

function SideWayOnFailedPath_Update(arg0, arg1)
    local f2_local0 = GOAL_RESULT_Continue
    local f2_local1 = arg1:GetParam(6)
    if f2_local1 > 0 then
        local f2_local2 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__maxBackhomeDist)
        local f2_local3 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backhomeBattleDist)
        local f2_local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backhomeDist)
        local f2_local5 = arg0:GetMovePointNumber()
        local f2_local6 = 0
        local f2_local7 = false
        if arg0:IsBattleState() == true and arg0:GetDist(TARGET_ENE_0) < f2_local3 then
            return GOAL_RESULT_Failed
        end
        if arg1:GetNumber(1) == 1 and arg0:GetDist(TARGET_HOSTPLAYER) >= 23 then
            return GOAL_RESULT_Success
        end
        if arg0:IsValidPlatoon() == true and arg0:IsPlatoonLeader() == false then
            local f2_local8 = arg0:GetPlatoonCommand()
            local f2_local9 = f2_local8:GetCommandNo()
            if f2_local9 == PLAN_PLATOON_COMMAND__MOVE or f2_local9 == PLAN_PLATOON_COMMAND__PATROL_BEHAVIOR or f2_local9 == PLAN_PLATOON_COMMAND__PATROL_BEHAVIOR_RESET or f2_local9 == PLAN_PLATOON_COMMAND__DEF or f2_local9 == PLAN_PLATOON_COMMAND__SCOUT_MOVE then
                f2_local7 = true
            end
        end
        if f2_local7 == true then
            f2_local6 = arg0:GetDistAtoB(TARGET_ENE_0, TARGET_TEAM_FORMATION)
        elseif f2_local5 >= 0 then
            f2_local6 = arg0:GetDistAtoB(TARGET_ENE_0, POINT_MOVE_POINT)
        else
            f2_local6 = arg0:GetDistAtoB(TARGET_ENE_0, POINT_INITIAL)
        end
        if arg1:GetSubGoalNum() <= 0 then
            if f2_local6 < arg0:GetMovePointEffectRange() or f2_local2 < arg0:GetMovePointEffectRange() or arg0:GetMovePointEffectRange() < f2_local4 then
                return GOAL_RESULT_Success
            else
                SideWayOnFailedPath_AddInnerGoal(arg0, arg1)
            end
        end
    else
        if arg0:IsBattleState() == true then
            local f2_local2 = 6
            if arg0:GetDist(TARGET_ENE_0) < f2_local2 then
                arg0:SetStringIndexedNumber("IsIgnore_Sideway_onFailedPath", 1)
                return GOAL_RESULT_Success
            end
        end
        if arg1:GetNumber(1) == 1 and arg0:GetDist(TARGET_HOSTPLAYER) >= 23 then
            return GOAL_RESULT_Success
        end
        local f2_local2 = TARGET_ENE_0
        if arg0:IsSearchLowState() == true or arg0:IsSearchHighState() == true then
            f2_local2 = TARGET_SEARCH
        end
        if true == arg1:IsFinishTimer(0) then
            local f2_local3 = arg0:CheckDoesExistPath(f2_local2, AI_DIR_TYPE_CENTER, 0)
            if true == f2_local3 then
                return GOAL_RESULT_Success
            else
                local f2_local4 = arg1:GetParam(0)
                arg1:SetTimer(0, f2_local4)
            end
        end
        if arg1:GetSubGoalNum() <= 0 then
            SideWayOnFailedPath_AddInnerGoal(arg0, arg1)
        end
    end
    return f2_local0
    
end

function SideWayOnFailedPath_Terminate(arg0, arg1)
    
end

function SideWayOnFailedPath_Interupt(arg0, arg1)
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
    if arg0:IsInterupt(INTERUPT_CANNOT_MOVE) and arg1:GetNumber(0) >= 1 then
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
            arg1:SetNumber(0, 2)
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_Wait, arg1:GetLife(), TARGET_ENE_0)
        end
        return true
    end
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) then
        return true
    end
    if arg1:GetNumber(0) == 2 and (not not arg0:IsInterupt(INTERUPT_Damaged) or arg0:IsInterupt(INTERUPT_SuccessGuard)) then
        arg1:ClearSubGoal()
        SideWayOnFailedPath_AddShootGoal(arg0, arg1)
        return true
    end
    return false
    
end

function SideWayOnFailedPath_AddInnerGoal(arg0, arg1)
    local f5_local0 = arg1:GetParam(1)
    local f5_local1 = arg1:GetParam(2)
    local f5_local2 = arg1:GetParam(3)
    local f5_local3 = arg1:GetParam(5)
    local f5_local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__shiftAnimeId_RangedAttack)
    local f5_local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__spEffectId_RangedAttack)
    if f5_local5 > 0 and f5_local4 > 0 and arg0:HasSpecialEffectId(TARGET_SELF, f5_local5) == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local4, TARGET_ENE_0, 9999, 0, -1)
        return 
    end
    local f5_local6 = true
    if arg0:IsRiding(TARGET_SELF) then
        f5_local6 = false
    end
    if arg1:IsFinishTimer(1) then
        arg1:SetNumber(0, 1)
        local f5_local7 = arg0:GetMovePointEffectRange()
        local f5_local8 = 2
        if f5_local7 < f5_local8 then
            SideWayOnFailedPath_AddWaitGoal(arg0, arg1, 3)
            arg1:SetNumber(0, 2)
        else
            local f5_local9 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, -1, POINT_INITIAL, 1, TARGET_ENE_0, f5_local6, f5_local3, GUARD_GOAL_DESIRE_RET_Continue, true)
            f5_local9:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
            arg1:SetNumber(0, 1)
        end
    elseif arg1:IsFinishTimer(2) and f5_local0 ~= -1 and arg1:GetNumber(0) ~= 1 and arg1:GetNumber(1) ~= 1 and arg1:GetNumber(2) ~= 1 then
        SideWayOnFailedPath_AddShootGoal(arg0, arg1)
        arg1:SetTimer(2, f5_local2)
    elseif arg0:GetRandam_Int(0, 9) == 0 and arg0:IsRiding(TARGET_SELF) == false and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 2) then
        local f5_local7 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, LeaveTime, TARGET_ENE_0, 9999, TARGET_ENE_0, f5_local6, f5_local3, GUARD_GOAL_DESIRE_RET_Continue, true)
        f5_local7:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    else
        local f5_local7 = arg0:GetRandam_Float(2, 4)
        local f5_local8 = 2
        if arg0:IsRiding(TARGET_SELF) then
            f5_local8 = 3
        end
        local f5_local9 = arg0:GetToTargetAngle(TARGET_ENE_0)
        local f5_local10 = arg0:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, 90 + f5_local9, f5_local8 + 2, AI_SPA_DIR_TYPE_TargetF)
        local f5_local11 = arg0:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, -90 + f5_local9, f5_local8 + 2, AI_SPA_DIR_TYPE_TargetF)
        local f5_local12 = false
        local f5_local13 = false
        local f5_local14 = 0
        if f5_local8 <= f5_local10 then
            f5_local12 = true
        end
        if f5_local8 <= f5_local11 then
            f5_local13 = true
        end
        if f5_local12 == false and f5_local13 == false then
            local f5_local15 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, -1, POINT_INITIAL, 1, TARGET_ENE_0, f5_local6, f5_local3, GUARD_GOAL_DESIRE_RET_Continue, true)
            f5_local15:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
            arg1:SetNumber(0, 1)
            arg1:SetTimer(1, 0)
        else
            if f5_local12 == true and f5_local13 == true then
                f5_local14 = arg0:GetRandam_Int(0, 1)
            elseif f5_local12 == true then
                f5_local14 = 1
            else
                f5_local14 = 0
            end
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f5_local7, TARGET_ENE_0, f5_local14, arg0:GetRandam_Int(30, 45), f5_local6, true, f5_local3, GUARD_GOAL_DESIRE_RET_Continue, true)
        end
    end
    
end

function SideWayOnFailedPath_AddShootGoal(arg0, arg1)
    local f6_local0 = arg1:GetParam(1)
    local f6_local1 = arg1:GetParam(2)
    if f6_local0 == -1 or arg0:IsBattleState() == false then
        SideWayOnFailedPath_AddWaitGoal(arg0, arg1, 2)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f6_local1, f6_local0, TARGET_ENE_0, 9999, 0, -1)
    end
    
end

function SideWayOnFailedPath_AddWaitGoal(arg0, arg1, arg2)
    local f7_local0 = arg1:GetParam(5)
    if f7_local0 == -1 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Guard, arg2, f7_local0, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Success, true)
    end
    
end


