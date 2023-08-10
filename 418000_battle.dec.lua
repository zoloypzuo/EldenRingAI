RegisterTableGoal(GOAL_Reikurage418000_Battle, "GOAL_Reikurage418000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Reikurage418000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[6] = 20
        f2_local0[16] = 80
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            f2_local0[17] = 100
        elseif f2_local3 >= 8 then
            f2_local0[5] = 20
            f2_local0[6] = 40
            f2_local0[16] = 40
        else
            f2_local0[4] = 20
            f2_local0[15] = 60
            f2_local0[16] = 40
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            f2_local0[6] = 30
            f2_local0[17] = 70
        elseif f2_local3 >= 10 then
            f2_local0[5] = 70
            f2_local0[6] = 30
        elseif f2_local3 >= 7 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[6] = 20
            f2_local0[5] = 80
        elseif f2_local3 >= 3 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 20
            f2_local0[5] = 40
            f2_local0[15] = 40
        else
            f2_local0[1] = 20
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 20
            f2_local0[5] = 0
            f2_local0[15] = 30
            f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 5)
            f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[2], 5)
            f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[3], 5)
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14200) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            f2_local0[6] = 30
            f2_local0[17] = 70
        elseif f2_local3 >= 10 then
            f2_local0[5] = 30
            f2_local0[6] = 70
        elseif f2_local3 >= 5 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 40
            f2_local0[6] = 60
        elseif f2_local3 >= 3 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 20
            f2_local0[5] = 60
            f2_local0[6] = 20
        else
            f2_local0[1] = 25
            f2_local0[2] = 25
            f2_local0[3] = 25
            f2_local0[4] = 15
            f2_local0[5] = 0
            f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 5)
            f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[2], 5)
            f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[3], 5)
            f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[4], 5)
        end
    else
        f2_local0[7] = 100
    end
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[4], 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == false then
        f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[5], 0)
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Reikurage418000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Reikurage418000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Reikurage418000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Reikurage418000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Reikurage418000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Reikurage418000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Reikurage418000_Act07)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Reikurage418000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, Reikurage418000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, Reikurage418000_Act17)
    local f2_local6 = REGIST_FUNC(arg1, arg2, Reikurage418000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function Reikurage418000_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Reikurage418000_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Reikurage418000_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Reikurage418000_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Reikurage418000_Act05(arg0, arg1, arg2)
    local f7_local0 = 3004
    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        f7_local0 = 3005
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 7, f7_local0, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Reikurage418000_Act06(arg0, arg1, arg2)
    local f8_local0 = 5
    local f8_local1 = TARGET_ENE_0
    local f8_local2 = 5
    local f8_local3 = TARGET_SELF
    local f8_local4 = true
    local f8_local5 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 4.5)
    if f8_local5 == true then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 4, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Reikurage418000_Act07(arg0, arg1, arg2)
    local f9_local0 = 5
    local f9_local1 = 3012
    local f9_local2 = TARGET_ENE_0
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f9_local0, f9_local1, f9_local2, f9_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Reikurage418000_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Reikurage418000_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Reikurage418000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Reikurage418000_Act15(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 8
    local f13_local2 = 12
    local f13_local3 = 50
    local f13_local4 = arg0:GetRandam_Int(1, 100)
    local f13_local5 = -1
    if f13_local4 <= f13_local3 then
        f13_local5 = 9910
    end
    if f13_local1 <= f13_local0 then
        Approach_Act(arg0, arg1, f13_local1, f13_local2, f13_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f13_local1, TARGET_ENE_0, true, f13_local5)
    
end

function Reikurage418000_Act16(arg0, arg1, arg2)
    local f14_local0 = 50
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    local f14_local2 = -1
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, false, f14_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Reikurage418000_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Reikurage418000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Reikurage418000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
    
end

RegisterTableGoal(GOAL_Reikurage418000_AfterAttackAct, "Reikurage418000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Reikurage418000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


