REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SideWay_For_Fear_Of_Fire, 0, "???????ûÐ??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SideWay_For_Fear_Of_Fire, 1, "?K?[?hID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SideWay_For_Fear_Of_Fire, 2, "?T?C?h?E?F?C?????", 0)
function SideWayForFearOfFire_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    if f1_local0 <= 4 then
        f1_local0 = 4
    end
    arg1:SetNumber(1, f1_local0)
    arg1:SetNumber(2, 4)
    arg1:SetNumber(3, arg0:GetRandam_Float(0.5, 5))
    arg1:SetNumber(4, arg0:GetRandam_Int(0, 1))
    SideWayForFearOfFire_AddInnerGoal(arg0, arg1, 1)
    
end

function SideWayForFearOfFire_Update(arg0, arg1)
    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BEAST_REPELLENT_UNDAMAGED) == false then
        return GOAL_RESULT_SUCCESS
    end
    if arg1:GetNumber(6) == 1 then
        if arg0:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_BEAST_REPELLENT) == true then
            arg1:SetNumber(6, 0)
        end
        if arg1:GetTimer(2) <= 0 then
            return GOAL_RESULT_SUCCESS
        end
    elseif arg0:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_BEAST_REPELLENT) == false then
        arg1:SetNumber(6, 1)
        arg1:SetTimer(2, arg0:GetRandam_Float(0.5, 3.5))
    end
    if arg1:GetNumber(7) == 1 then
        if arg0:GetDist(TARGET_ENE_0) >= 2.5 then
            arg1:SetTimer(1, 4.5)
        end
        if arg1:GetTimer(1) <= 0 then
            arg0:SetStringIndexedNumber("DisableFearOfFire", 1)
            return GOAL_RESULT_SUCCESS
        end
    end
    local f2_local0 = arg1:GetParam(1)
    local f2_local1 = arg1:GetParam(2)
    local f2_local2 = arg1:GetNumber(2)
    local f2_local3 = arg1:GetNumber(3)
    local f2_local4 = arg1:GetTimer(0)
    if arg1:GetNumber(0) == 1 and (not (f2_local1 ~= 0 or arg0:GetDist(TARGET_ENE_0) > f2_local2) or f2_local1 == 1 and arg0:GetDist(TARGET_ENE_0) <= f2_local3 and f2_local4 <= 0) then
        arg1:SetNumber(0, 0)
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Wait, waitTime, TARGET_SELF)
    end
    if arg1:GetSubGoalNum() <= 0 then
        SideWayForFearOfFire_AddInnerGoal(arg0, arg1, 0)
    end
    return GOAL_RESULT_Continue
    
end

function SideWayForFearOfFire_Terminate(arg0, arg1)
    
end

function SideWayForFearOfFire_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) then
        SideWayForFearOfFire_AddWaitGoal(arg0, arg1, 1)
        return true
    end
    return false
    
end

function SideWayForFearOfFire_AddInnerGoal(arg0, arg1, arg2)
    arg1:SetNumber(0, 0)
    local f5_local0 = arg1:GetNumber(1)
    local f5_local1 = arg1:GetNumber(2)
    local f5_local2 = arg1:GetNumber(3)
    local f5_local3 = arg1:GetNumber(4)
    local f5_local4 = arg1:GetNumber(5)
    local f5_local5 = arg1:GetParam(1)
    local f5_local6 = arg1:GetParam(2)
    local f5_local7 = arg0:GetDist(TARGET_ENE_0)
    local f5_local8 = arg1:GetTimer(0)
    if f5_local6 == 0 then
        if f5_local7 <= f5_local1 or f5_local4 == 1 then
            arg1:SetNumber(5, 1)
            if arg0:HasSpecialEffectId(TARGET_SELF, 5160) then
                arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF)
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 20, TARGET_ENE_0, 999, TARGET_SELF, false, f5_local5, GUARD_GOAL_DESIRE_RET_Success, false, 1)
            else
                arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF)
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Escape, 20, TARGET_ENE_0, 999, TARGET_SELF, false, 2)
            end
        elseif f5_local7 <= f5_local0 then
            arg1:SetNumber(2, arg0:GetRandam_Float(1, 4))
            arg1:SetNumber(0, 1)
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, f5_local0 + 2, TARGET_ENE_0, true, f5_local5)
        else
            arg1:SetNumber(2, arg0:GetRandam_Float(1, 4))
            arg1:SetNumber(0, 1)
            SideWayForFearOfFire_AddWaitGoal(arg0, arg1, 1)
        end
    elseif f5_local5 > 0 then
        if arg2 == 1 and f5_local7 <= f5_local2 then
            if arg0:GetExistMeshOnLineDist(TARGET_SELF, AI_DIR_TYPE_B, 4.5) > 3 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
            else
                SideWayForFearOfFire_AddWaitGoal(arg0, arg1, 1)
            end
        else
            arg1:SetNumber(7, 1)
            if arg1:GetTimer(1) <= 0 then
                arg1:SetTimer(1, 4.5)
            end
            local f5_local9 = 20
            local f5_local10 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f5_local9, TARGET_ENE_0, f5_local3, arg0:GetRandam_Int(30, 45), true, true, f5_local5, GUARD_GOAL_DESIRE_RET_Continue, true)
            f5_local10:SetLifeEndSuccess(true)
        end
    elseif f5_local7 <= f5_local2 and f5_local8 <= 0 then
        if arg0:GetExistMeshOnLineDist(TARGET_SELF, AI_DIR_TYPE_B, 4.5) > 3 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
            arg1:SetTimer(0, arg0:GetRandam_Float(0.5, 2.5))
        else
            SideWayForFearOfFire_AddWaitGoal(arg0, arg1, 1)
        end
    else
        arg1:SetNumber(7, 1)
        if arg1:GetTimer(1) <= 0 then
            arg1:SetTimer(1, 4.5)
        end
        arg1:SetNumber(3, arg0:GetRandam_Float(0.5, 5))
        local f5_local9 = 20
        local f5_local10 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f5_local9, TARGET_ENE_0, f5_local3, arg0:GetRandam_Int(30, 45), true, true, f5_local5, GUARD_GOAL_DESIRE_RET_Continue, true)
        f5_local10:SetLifeEndSuccess(true)
    end
    
end

function SideWayForFearOfFire_AddWaitGoal(arg0, arg1, arg2)
    local f6_local0 = arg1:GetParam(1)
    if f6_local0 == -1 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Guard, arg2, f6_local0, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Success, true)
    end
    
end


