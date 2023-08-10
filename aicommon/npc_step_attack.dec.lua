REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NPCStepAttack, 0, "?U?????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NPCStepAttack, 1, "?X?e?b?vR1?U??????????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NPCStepAttack, 2, "?X?e?b?vR2?U??????????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NPCStepAttack, 3, "?????????????????AR1?U?????o???m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NPCStepAttack, 4, "R1?U??????????????", 0)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_NPCStepAttack, true)
function NPCStepAttack_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    local f1_local1 = arg1:GetParam(1)
    local f1_local2 = arg1:GetParam(2)
    local f1_local3 = arg1:GetParam(3)
    local f1_local4 = arg1:GetParam(4)
    local f1_local5 = arg0:GetDist(TARGET_ENE_0)
    local f1_local6 = arg0:GetRandam_Int(1, 100)
    if f1_local4 == nil then
        f1_local4 = false
    end
    if f1_local3 == nil then
        f1_local3 = 0
    end
    if f1_local5 <= f1_local1 and f1_local5 <= f1_local2 then
        if f1_local6 <= f1_local3 then
            if f1_local4 == 1 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        end
    elseif f1_local5 <= f1_local1 then
        if f1_local4 == 1 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
        end
    elseif f1_local5 <= f1_local2 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    else

    end
    
end

function NPCStepAttack_Update(arg0, arg1)
    if arg1:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

function NPCStepAttack_Terminate(arg0, arg1)
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_NPCStepAttack, true)
function NPCStepAttack_Interupt(arg0, arg1)
    return false
    
end


