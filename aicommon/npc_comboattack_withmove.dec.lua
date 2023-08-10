REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcComboAttack_WithMove, 0, "?A?j??ID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcComboAttack_WithMove, 1, "?A?j??ID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcComboAttack_WithMove, 2, "?U?????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcComboAttack_WithMove, 3, "????????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcComboAttack_WithMove, 4, "???b?V???`?F?b?N???1", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcComboAttack_WithMove, 5, "???b?V???`?F?b?N???2", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcComboAttack_WithMove, 6, "?R???{?i??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcComboAttack_WithMove, 7, "???b?V?????????ûÐ??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcComboAttack_WithMove, 8, "?U???O??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcComboAttack_WithMove, 9, "????????????p?x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcComboAttack_WithMove, 10, "??U?????s?????p?x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NpcComboAttack_WithMove, 11, "???U?????s?????p?x", 0)
function NpcComboAttackWithMove_Activate(arg0, arg1)
    arg1:SetNumber(0, 0)
    if NpcComboAttackWithMove_AddInnerGoal(arg0, arg1) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, attackTarget)
    end
    
end

function NpcComboAttackWithMove_Update(arg0, arg1)
    if arg1:GetSubGoalNum() <= 0 then
        if arg1:GetParam(6) <= arg1:GetNumber(0) then
            return GOAL_RESULT_Success
        elseif NpcComboAttackWithMove_AddInnerGoal(arg0, arg1) == 0 then
            return GOAL_RESULT_Failed
        end
    end
    return GOAL_RESULT_Continue
    
end

function NpcComboAttackWithMove_Terminate(arg0, arg1)
    
end

function NpcComboAttackWithMove_Interupt(arg0, arg1)
    return false
    
end

function NpcComboAttackWithMove_AddInnerGoal(arg0, arg1)
    local f5_local0 = arg1:GetParam(0)
    local f5_local1 = arg1:GetParam(1)
    local f5_local2 = arg1:GetParam(2)
    local f5_local3 = arg1:GetParam(3)
    local f5_local4 = arg1:GetParam(4)
    local f5_local5 = arg1:GetParam(5)
    local f5_local6 = arg1:GetParam(6)
    local f5_local7 = arg1:GetParam(7)
    local f5_local8 = arg1:GetParam(8)
    if f5_local8 < 0 then
        f5_local8 = 1.5
    end
    local f5_local9 = arg1:GetParam(9)
    local f5_local10 = arg1:GetParam(10)
    local f5_local11 = arg1:GetParam(11)
    local f5_local12 = false
    local f5_local13 = false
    local f5_local14 = -1
    if f5_local4 ~= -1 and f5_local7 <= arg0:GetExistMeshOnLineDist(TARGET_SELF, f5_local4, f5_local7 + 0.5) then
        f5_local12 = true
    end
    if f5_local5 ~= -1 and f5_local7 <= arg0:GetExistMeshOnLineDist(TARGET_SELF, f5_local5, f5_local7 + 0.5) then
        f5_local13 = true
    end
    if f5_local12 == true and f5_local13 == true then
        if arg0:GetRandam_Int(0, 1) == 1 then
            f5_local14 = f5_local0
        else
            f5_local14 = f5_local1
        end
    elseif f5_local12 == true and f5_local13 == false then
        f5_local14 = f5_local0
    elseif f5_local12 == false and f5_local13 == true then
        f5_local14 = f5_local1
    else
        return 0
    end
    local f5_local15 = arg1:GetNumber(0)
    if f5_local15 == 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local14, f5_local2, f5_local3, f5_local8, f5_local9, f5_local10, f5_local11)
    elseif f5_local15 == f5_local6 - 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local14, f5_local2, f5_local3, f5_local10, f5_local11)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f5_local14, f5_local2, f5_local3, f5_local10, f5_local11)
    end
    arg1:SetNumber(0, f5_local15 + 1)
    return 1
    
end


