REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack_SuccessAngle180, 0, "EzStateID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack_SuccessAngle180, 1, "?U?????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack_SuccessAngle180, 2, "????????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack_SuccessAngle180, 3, "??U???p?x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack_SuccessAngle180, 4, "???U???p?x", 0)
function ComboAttack180_Activate(arg0, arg1)
    local f1_local0 = arg1:GetLife()
    local f1_local1 = arg1:GetParam(0)
    local f1_local2 = arg1:GetParam(1)
    local f1_local3 = arg1:GetParam(2)
    local f1_local4 = 180
    local f1_local5 = 1.5
    local f1_local6 = 20
    local f1_local7 = true
    local f1_local8 = true
    local f1_local9 = false
    local f1_local10 = false
    local f1_local11 = arg1:GetParam(3)
    local f1_local12 = arg1:GetParam(4)
    local f1_local13 = true
    arg1:AddSubGoal(GOAL_COMMON_CommonAttack, f1_local0, f1_local1, f1_local2, f1_local3, f1_local4, f1_local5, f1_local6, f1_local7, f1_local8, f1_local9, f1_local10, f1_local11, f1_local12, f1_local13)
    
end

function ComboAttack180_Update(arg0, arg1)
    return GOAL_RESULT_Continue
    
end

function ComboAttack180_Terminate(arg0, arg1)
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ComboAttack_SuccessAngle180, true)
function ComboAttack180_Interupt(arg0, arg1)
    return false
    
end


