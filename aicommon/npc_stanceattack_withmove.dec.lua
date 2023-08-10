REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcStanceAttack_WithMove, 0, "?U?????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcStanceAttack_WithMove, 1, "???????{?^??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcStanceAttack_WithMove, 2, "???b?V?????????ûÐ??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcStanceAttack_WithMove, 3, "?U???O??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcStanceAttack_WithMove, 4, "????????????p?x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcStanceAttack_WithMove, 5, "??U?????s?????p?x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcStanceAttack_WithMove, 6, "???U?????s?????p?x", 0)
function NpcStanceAttackWithMove_Activate(arg0, arg1)
    if NpcStanceAttackWithMove_AddInnerGoal(arg0, arg1) == false then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, attackTarget)
    end
    
end

function NpcStanceAttackWithMove_Update(arg0, arg1)
    local f2_local0 = arg1:GetParam(0)
    if arg0:GetDist(f2_local0) <= 5 then
        return GOAL_RESULT_Failed
    end
    if arg1:GetSubGoalNum() <= 0 and NpcStanceAttackWithMove_AddInnerGoal(arg0, arg1) == false then
        return GOAL_RESULT_Failed
    end
    return GOAL_RESULT_Continue
    
end

function NpcStanceAttackWithMove_Terminate(arg0, arg1)
    
end

function NpcStanceAttackWithMove_Interupt(arg0, arg1)
    return false
    
end

function NpcStanceAttackWithMove_AddInnerGoal(arg0, arg1)
    local f5_local0 = arg1:GetParam(0)
    local f5_local1 = arg1:GetParam(1)
    local f5_local2 = arg1:GetParam(2)
    local f5_local3 = arg1:GetParam(3)
    if f5_local3 < 0 then
        f5_local3 = 1.5
    end
    local f5_local4 = arg1:GetParam(4)
    local f5_local5 = arg1:GetParam(5)
    local f5_local6 = arg1:GetParam(6)
    local f5_local7 = false
    local f5_local8 = false
    local f5_local9 = arg0:GetDist(f5_local0)
    local f5_local10 = {}
    local f5_local11 = {AI_DIR_TYPE_F, AI_DIR_TYPE_B, AI_DIR_TYPE_L, AI_DIR_TYPE_R}
    if f5_local9 <= 5 then
        return false
    elseif f5_local9 <= 7 then
        f5_local10[1] = 0
        f5_local10[2] = 80
        f5_local10[3] = 10
        f5_local10[4] = 10
    elseif f5_local9 <= 10 then
        f5_local10[1] = 10
        f5_local10[2] = 10
        f5_local10[3] = 40
        f5_local10[4] = 40
    elseif f5_local9 <= 15 then
        f5_local10[1] = 80
        f5_local10[2] = 0
        f5_local10[3] = 10
        f5_local10[4] = 10
    else
        return false
    end
    if arg0:GetExistMeshOnLineDist(TARGET_SELF, f5_local11[1], f5_local2 + 0.5) < f5_local2 then
        f5_local10[1] = 0
    end
    if arg0:GetExistMeshOnLineDist(TARGET_SELF, f5_local11[2], f5_local2 + 0.5) < f5_local2 then
        f5_local10[2] = 0
    end
    if arg0:GetExistMeshOnLineDist(TARGET_SELF, f5_local11[3], f5_local2 + 0.5) < f5_local2 then
        f5_local10[3] = 0
    end
    if arg0:GetExistMeshOnLineDist(TARGET_SELF, f5_local11[4], f5_local2 + 0.5) < f5_local2 then
        f5_local10[4] = 0
    end
    local f5_local12 = f5_local10[1] + f5_local10[2] + f5_local10[3] + f5_local10[4]
    if f5_local12 <= 0 then
        return false
    end
    local f5_local13 = arg0:GetRandam_Int(1, f5_local12)
    local f5_local14 = NPC_ATK_L2Hold
    local f5_local15 = 1
    local f5_local16 = 0
    for f5_local17 = 1, 4, 1 do
        f5_local16 = f5_local16 + f5_local10[f5_local17]
        if f5_local13 <= f5_local16 then
            MoveDir = f5_local11[f5_local17]
            local f5_local17 = 4
        end
    end
    f5_local17 = MoveDir
    local f5_local18 = AI_DIR_TYPE_F
    if f5_local17 == f5_local18 then
        f5_local17 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, f5_local0, 0, f5_local0, true, NPC_ATK_L2Hold, GUARD_GOAL_DESIRE_RET_Failed, false)
        f5_local17:SetLifeEndSuccess(true)
    else
        f5_local17 = MoveDir
        f5_local18 = AI_DIR_TYPE_B
        if f5_local17 == f5_local18 then
            f5_local17 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, f5_local0, 999, f5_local0, true, NPC_ATK_L2Hold, GUARD_GOAL_DESIRE_RET_Failed, false)
            f5_local17:SetLifeEndSuccess(true)
        else
            f5_local17 = MoveDir
            f5_local18 = AI_DIR_TYPE_L
            if f5_local17 == f5_local18 then
                f5_local17 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, f5_local0, false, 45, true, true, NPC_ATK_L2Hold, GUARD_GOAL_DESIRE_RET_Failed, false)
                f5_local17:SetLifeEndSuccess(true)
            else
                f5_local17 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, f5_local0, true, 45, true, true, NPC_ATK_L2Hold, GUARD_GOAL_DESIRE_RET_Failed, false)
                f5_local17:SetLifeEndSuccess(true)
            end
        end
    end
    f5_local17 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, f5_local1, f5_local0, 999, f5_local3, f5_local4, f5_local5, f5_local6)
    f5_local17:SetLifeEndSuccess(true)
    f5_local17 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_L2Hold, f5_local0, 999, f5_local3, f5_local4, f5_local5, f5_local6)
    f5_local17:SetLifeEndSuccess(true)
    f5_local17 = true
    return f5_local17
    
end


