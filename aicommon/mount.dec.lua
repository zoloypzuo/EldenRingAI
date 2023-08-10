REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Mount, 0, "???B???•c??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Mount, 1, "?????????????N?[???^?C???b??", 0)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_Mount, true)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_Mount, 0, 0)
local f0_local0 = 90000
function _GetRequestId_forMount(arg0, arg1)
    local f1_local0 = arg0
    if arg1:IsNpcPlayer() == true and arg0 == f0_local0 then
        f1_local0 = NPC_ATK_RideMount
    end
    return f1_local0
    
end

function _GetCoolTime_forMount(arg0, arg1)
    local f2_local0 = 300
    if arg1:GetParam(1) ~= nil and arg1:GetParam(1) > 0 then
        f2_local0 = arg1:GetParam(1)
    end
    return f2_local0
    
end

function Mount_Activate(arg0, arg1)
    if arg0:IsRiding(TARGET_SELF) then
        arg1:SetNumber(0, -1)
        return 
    end
    local f3_local0 = arg0:IsSearchTarget(TARGET_RIDE_0)
    if f3_local0 == false and arg0:ReserveRide(10) == true then
        f3_local0 = arg0:IsSearchTarget(TARGET_RIDE_0)
    end
    if f3_local0 == true then
        local f3_local1 = arg1:GetLife()
        local f3_local2 = TARGET_RIDE_0
        local f3_local3 = arg1:GetParam(0)
        local f3_local4 = TARGET_SELF
        local f3_local5 = 0
        local f3_local6 = AI_DIR_TYPE_CENTER
        if arg0:HasSpecialEffectId(f3_local2, 5210) then
            f3_local5 = 2
            f3_local6 = AI_DIR_TYPE_B
            f3_local3 = 0.5
        elseif arg0:HasSpecialEffectId(f3_local2, 5211) then
            f3_local5 = 1.5
            f3_local6 = AI_DIR_TYPE_B
            f3_local3 = 0.5
        elseif arg0:HasSpecialEffectId(f3_local2, 5212) then
            f3_local5 = 3
            f3_local6 = AI_DIR_TYPE_B
            f3_local3 = 0.5
        elseif arg0:HasSpecialEffectId(f3_local2, 5213) then
            f3_local5 = 1
            f3_local6 = AI_DIR_TYPE_B
            f3_local3 = 0.5
        end
        if arg0:HasSpecialEffectId(TARGET_SELF, 5225) then
            f3_local5 = 1.5
            f3_local6 = AI_DIR_TYPE_B
            f3_local3 = 0.5
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5226) then
            f3_local5 = 1.5
            f3_local6 = AI_DIR_TYPE_R
            f3_local3 = 0.5
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5227) then
            f3_local5 = 1.5
            f3_local6 = AI_DIR_TYPE_L
            f3_local3 = 0.5
        end
        local f3_local7 = arg0:GetExistMeshOnLineDistEx(f3_local2, f3_local6, f3_local5, 1, 0)
        if f3_local7 < f3_local5 then
            arg0:SetTimer(13, _GetCoolTime_forMount(arg0, arg1))
            arg1:SetNumber(0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f3_local1, f3_local2, f3_local3, f3_local4, false, -1, f3_local6, f3_local5)
            arg1:AddSubGoal(GOAL_COMMON_MountSub, 4)
            arg1:SetNumber(0, 0)
        end
    else
        arg1:SetNumber(0, -1)
    end
    
end

function Mount_Update(arg0, arg1)
    local f4_local0 = arg1:GetNumber(0)
    if arg1:GetLife() <= 0 and arg0:IsRiding(TARGET_SELF) == false then
        arg0:SetTimer(13, _GetCoolTime_forMount(arg0, arg1))
        return GOAL_RESULT_Failed
    end
    if f4_local0 == 0 then
        if arg1:GetSubGoalNum() <= 0 then
            local f4_local1 = arg1:GetLastSubGoalResult()
            if f4_local1 == GOAL_RESULT_Success then
                return GOAL_RESULT_Success
            else
                return GOAL_RESULT_Failed
            end
        end
    else
        return GOAL_RESULT_Failed
    end
    return GOAL_RESULT_Continue
    
end

function Mount_Terminate(arg0, arg1)
    
end

function Mount_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) then
        arg1:ClearSubGoal()
        arg0:SetTimer(13, _GetCoolTime_forMount(arg0, arg1))
        return true
    end
    return false
    
end

REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_MountSub, true)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_MountSub, 0, 0)
function MountSub_Activate(arg0, arg1)
    local f7_local0 = arg1:GetLife()
    arg0:ClearMoveRequest()
    arg0:TurnTo(TARGET_RIDE_0)
    arg0:SetAttackRequest(_GetRequestId_forMount(f0_local0, arg0))
    
end

function MountSub_Update(arg0, arg1)
    if arg1:GetLife() <= 0 and arg0:IsRiding(TARGET_SELF) == false then
        arg0:SetTimer(13, _GetCoolTime_forMount(arg0, arg1))
        return GOAL_RESULT_Failed
    end
    if arg0:IsEnableComboAttack() then
        return GOAL_RESULT_Success
    elseif arg0:IsEnableCancelMove() then
        return GOAL_RESULT_Success
    elseif arg0:IsEnableCancelAttack() then
        return GOAL_RESULT_Success
    elseif arg0:IsFinishAttack_CheckAttackNo(_GetRequestId_forMount(f0_local0, arg0)) then
        return GOAL_RESULT_Success
    end
    if arg0:IsStartAttack_CheckAttackNo(_GetRequestId_forMount(f0_local0, arg0)) == false then
        arg0:SetAttackRequest(_GetRequestId_forMount(f0_local0, arg0))
    end
    return GOAL_RESULT_Continue
    
end

function MountSub_Terminate(arg0, arg1)
    
end

function MountSub_Interupt(arg0, arg1)
    return false
    
end


