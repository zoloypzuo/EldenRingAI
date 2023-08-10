RegisterTableGoal(GOAL_RoamArmyBothHandsSword431020_Battle, "RoamArmyBothHandsSword431020_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamArmyBothHandsSword431020_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(2, 3000)
    arg1:EnableUnfavorableAttackCheck(2, 3001)
    arg1:EnableUnfavorableAttackCheck(2, 3002)
    arg1:EnableUnfavorableAttackCheck(2, 3003)
    arg1:EnableUnfavorableAttackCheck(2, 3004)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 7)
    arg1:AddObserveAreaCustom(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 3)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 13298) and arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
        f2_local0[30] = 100
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[15] = 0
        f2_local0[18] = 100
        if arg1:HasSpecialEffectId(TARGET_SELF, 13277) then
            f2_local0[21] = 10
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13280) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                f2_local0[1] = 0
                f2_local0[4] = 0
                f2_local0[13] = 0
                f2_local0[16] = 80
                f2_local0[20] = 20
                f2_local0[30] = 0
            else
                f2_local0[1] = 0
                f2_local0[4] = 0
                f2_local0[13] = 0
                f2_local0[16] = 80
                f2_local0[20] = 20
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13281) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                f2_local0[6] = 0
                f2_local0[22] = 0
                f2_local0[30] = 0
            else
                f2_local0[6] = 0
                f2_local0[22] = 10
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13285) then
            f2_local0[20] = 20
            f2_local0[24] = 0
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13282) then
            f2_local0[27] = 0
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13283) then
            f2_local0[25] = 10
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[4] = 20
        f2_local0[15] = 0
        f2_local0[18] = 80
        if arg1:HasSpecialEffectId(TARGET_SELF, 13277) then
            f2_local0[21] = 10
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13280) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                f2_local0[1] = 0
                f2_local0[4] = 0
                f2_local0[13] = 0
                f2_local0[16] = 80
                f2_local0[20] = 20
                f2_local0[30] = 0
            else
                f2_local0[1] = 0
                f2_local0[4] = 0
                f2_local0[13] = 0
                f2_local0[16] = 80
                f2_local0[20] = 20
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13281) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                f2_local0[6] = 0
                f2_local0[22] = 0
                f2_local0[30] = 0
            else
                f2_local0[6] = 0
                f2_local0[22] = 10
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13285) then
            f2_local0[20] = 40
            f2_local0[24] = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 13284) then
                f2_local0[27] = 30
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13282) then
            f2_local0[27] = 10
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13283) then
            f2_local0[25] = 10
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) then
        if f2_local3 >= 3 then
            f2_local0[17] = 100
        else
            f2_local0[1] = 40
            f2_local0[5] = 20
            f2_local0[17] = 60
        end
    elseif f2_local3 >= 8 then
        f2_local0[1] = 30
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 70
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        if arg1:HasSpecialEffectId(TARGET_SELF, 13277) then
            f2_local0[21] = 20
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13280) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                f2_local0[1] = 0
                f2_local0[4] = 0
                f2_local0[13] = 0
                f2_local0[16] = 40
                f2_local0[20] = 60
                f2_local0[30] = 0
            else
                f2_local0[1] = 0
                f2_local0[4] = 0
                f2_local0[13] = 0
                f2_local0[16] = 40
                f2_local0[20] = 60
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13281) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                f2_local0[6] = 0
                f2_local0[22] = 0
                f2_local0[30] = 0
            else
                f2_local0[6] = 0
                f2_local0[22] = 50
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13285) then
            f2_local0[20] = 50
            f2_local0[24] = 60
            if arg1:HasSpecialEffectId(TARGET_SELF, 13284) then
                f2_local0[27] = 30
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13282) then
            f2_local0[27] = 10
            if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                f2_local0[27] = 20
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13283) then
            f2_local0[25] = 50
        end
    elseif f2_local3 >= 3.5 then
        f2_local0[1] = 10
        f2_local0[4] = 50
        f2_local0[5] = 30
        f2_local0[16] = 10
        if arg1:HasSpecialEffectId(TARGET_SELF, 13277) then
            f2_local0[21] = 50
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13280) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                f2_local0[1] = 0
                f2_local0[4] = 0
                f2_local0[13] = 0
                f2_local0[16] = 40
                f2_local0[20] = 60
                f2_local0[30] = 60
            else
                f2_local0[1] = 0
                f2_local0[4] = 0
                f2_local0[13] = 0
                f2_local0[16] = 40
                f2_local0[20] = 60
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13281) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                f2_local0[6] = 0
                f2_local0[22] = 0
                f2_local0[30] = 50
            else
                f2_local0[6] = 0
                f2_local0[22] = 40
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13285) then
            f2_local0[20] = 0
            f2_local0[24] = 90
            if arg1:HasSpecialEffectId(TARGET_SELF, 13284) then
                f2_local0[27] = 30
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13282) then
            f2_local0[27] = 10
            if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                f2_local0[27] = 40
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13283) then
            f2_local0[6] = 50
            f2_local0[25] = 10
        end
    else
        f2_local0[1] = 40
        f2_local0[4] = 0
        f2_local0[5] = 25
        f2_local0[13] = 35
        f2_local0[16] = 0
        if arg1:HasSpecialEffectId(TARGET_SELF, 13277) then
            f2_local0[21] = 50
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13280) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                f2_local0[1] = 20
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[30] = 50
            else
                f2_local0[1] = 20
                f2_local0[4] = 0
                f2_local0[5] = 20
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13281) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                f2_local0[6] = 0
                f2_local0[22] = 0
                f2_local0[30] = 50
            else
                f2_local0[6] = 0
                f2_local0[22] = 40
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13285) then
            f2_local0[20] = 0
            f2_local0[24] = 80
            if arg1:HasSpecialEffectId(TARGET_SELF, 13284) then
                f2_local0[27] = 30
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13282) then
            f2_local0[27] = 10
            if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                f2_local0[27] = 20
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13283) then
            f2_local0[6] = 50
            f2_local0[25] = 10
        end
    end
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 4, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 4, f2_local0[5], 0)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3007, 4, f2_local0[20], 0)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[21], 0)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[22], 0)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[24], 0)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3025, 15, f2_local0[30], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act01)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act06)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act18)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act27)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020_Act30)
    local f2_local6 = REGIST_FUNC(arg1, arg2, RoamArmyBothHandsSword431020ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function RoamArmyBothHandsSword431020_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 2.5
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 0
    local f3_local7 = 3
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 13282) or not not arg0:HasSpecialEffectId(TARGET_SELF, 13281) or arg0:HasSpecialEffectId(TARGET_SELF, 13283) then
        f3_local2 = 100
        f3_local3 = 999
        f3_local4 = 0
        f3_local6 = 5
        f3_local7 = 0
    end
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = 3001
    local f3_local11 = 3002
    local f3_local12 = TARGET_ENE_0
    local f3_local13 = 2.5
    local f3_local14 = 2.5
    local f3_local15 = 3
    local f3_local16 = 0
    local f3_local17 = 0
    local f3_local18 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13058)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local8, f3_local9, f3_local12, f3_local13, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f3_local8, f3_local10, f3_local12, f3_local14, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f3_local8, f3_local11, f3_local12, f3_local15, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamArmyBothHandsSword431020_Act04(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 5.5
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 3
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 13282) or not not arg0:HasSpecialEffectId(TARGET_SELF, 13281) or arg0:HasSpecialEffectId(TARGET_SELF, 13283) then
        f4_local2 = 100
        f4_local3 = 999
        f4_local4 = 0
        f4_local6 = 5
        f4_local7 = 0
    end
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 5
    local f4_local9 = 3003
    local f4_local10 = TARGET_ENE_0
    local f4_local11 = 7.5
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local8, f4_local9, f4_local10, f4_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamArmyBothHandsSword431020_Act05(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 2.5
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 0
    local f5_local7 = 3
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 13282) or not not arg0:HasSpecialEffectId(TARGET_SELF, 13281) or arg0:HasSpecialEffectId(TARGET_SELF, 13283) then
        f5_local2 = 100
        f5_local3 = 999
        f5_local4 = 0
        f5_local6 = 5
        f5_local7 = 0
    end
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 5
    local f5_local9 = 3004
    local f5_local10 = TARGET_ENE_0
    local f5_local11 = 2
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local8, f5_local9, f5_local10, f5_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamArmyBothHandsSword431020_Act06(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = arg0:GetRandam_Int(1, 100)
    if f6_local0 >= 3 then
        local f6_local2 = 4
        local f6_local3 = TARGET_ENE_0
        local f6_local4 = 0.1
        local f6_local5 = TARGET_SELF
        local f6_local6 = true
        local f6_local7 = arg0:GetDist(TARGET_ENE_0)
        local f6_local8 = 100
        local f6_local9 = arg0:GetRandam_Int(1, 100)
        local f6_local10 = -1
        if f6_local9 <= f6_local8 then
            f6_local10 = 9910
        end
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local10)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f6_local2 = arg0:GetRandam_Int(1, 2)
        local f6_local3 = TARGET_ENE_0
        local f6_local4 = arg0:GetRandam_Int(0, 1)
        local f6_local5 = arg0:GetRandam_Int(30, 45)
        local f6_local6 = 0.1
        local f6_local7 = TARGET_SELF
        local f6_local8 = true
        local f6_local9 = true
        local f6_local10 = arg0:GetDist(TARGET_ENE_0)
        local f6_local11 = 100
        local f6_local12 = arg0:GetRandam_Int(1, 100)
        local f6_local13 = -1
        if f6_local12 <= f6_local11 then
            f6_local13 = 9910
        end
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f6_local2, f6_local3, f6_local4, f6_local5, f6_local8, f6_local9, f6_local13)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function RoamArmyBothHandsSword431020_Act13(arg0, arg1, arg2)
    local f7_local0 = 2.5
    local f7_local1 = TARGET_ENE_0
    local f7_local2 = 2.2
    local f7_local3 = TARGET_ENE_0
    local f7_local4 = true
    local f7_local5 = arg0:GetDist(TARGET_ENE_0)
    local f7_local6 = 0
    local f7_local7 = arg0:GetRandam_Int(1, 100)
    local f7_local8 = -1
    if f7_local7 <= f7_local6 then
        f7_local8 = 9910
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 13280) then
        f7_local0 = 5.5
        f7_local2 = 8.5
        f7_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamArmyBothHandsSword431020_Act14(arg0, arg1, arg2)
    local f8_local0 = 10
    local f8_local1 = TARGET_ENE_0
    local f8_local2 = 2
    local f8_local3 = TARGET_SELF
    local f8_local4 = false
    local f8_local5 = arg0:GetDist(TARGET_ENE_0)
    local f8_local6 = 0
    local f8_local7 = arg0:GetRandam_Int(1, 100)
    local f8_local8 = -1
    if f8_local7 <= f8_local6 then
        f8_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamArmyBothHandsSword431020_Act15(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 2
    local f9_local2 = 12
    local f9_local3 = 0
    local f9_local4 = arg0:GetRandam_Int(1, 100)
    local f9_local5 = -1
    if f9_local4 <= f9_local3 then
        f9_local5 = 9910
    end
    if f9_local1 <= f9_local0 then
        Approach_Act(arg0, arg1, f9_local1, f9_local2, f9_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, f9_local1, TARGET_ENE_0, true, f9_local5)
    
end

function RoamArmyBothHandsSword431020_Act16(arg0, arg1, arg2)
    local f10_local0 = arg0:GetRandam_Int(2, 4)
    local f10_local1 = TARGET_ENE_0
    local f10_local2 = arg0:GetRandam_Int(0, 1)
    local f10_local3 = arg0:GetRandam_Int(30, 45)
    local f10_local4 = 2
    local f10_local5 = TARGET_SELF
    local f10_local6 = true
    local f10_local7 = arg0:GetDist(TARGET_ENE_0)
    local f10_local8 = 0
    local f10_local9 = arg0:GetRandam_Int(1, 100)
    local f10_local10 = -1
    if f10_local9 <= f10_local8 then
        f10_local10 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f10_local0, f10_local1, f10_local2, f10_local3, f10_local6, f10_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamArmyBothHandsSword431020_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamArmyBothHandsSword431020_Act18(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetRandam_Int(4, 8)
    local f12_local2 = 999
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = arg0:GetRandam_Int(2, 10)
    local f12_local7 = 0
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    local f12_local8 = arg0:GetRandam_Int(5, 20)
    local f12_local9 = TARGET_ENE_0
    local f12_local10 = arg0:GetRandam_Int(0, 1)
    local f12_local11 = arg0:GetRandam_Int(90, 360)
    local f12_local12 = 2
    local f12_local13 = TARGET_SELF
    local f12_local14 = true
    local f12_local15 = true
    local f12_local16 = arg0:GetDist(TARGET_ENE_0)
    local f12_local17 = 0
    local f12_local18 = arg0:GetRandam_Int(1, 100)
    local f12_local19 = -1
    if f12_local18 <= f12_local17 then
        f12_local19 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f12_local8, f12_local9, f12_local10, f12_local11, f12_local14, f12_local15, f12_local19)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamArmyBothHandsSword431020_Act20(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 15.5
    local f13_local2 = 0
    local f13_local3 = 999
    local f13_local4 = 100
    local f13_local5 = 0
    local f13_local6 = 3
    local f13_local7 = 3
    Approach_Act_Flex(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    local f13_local8 = 5
    local f13_local9 = 3007
    local f13_local10 = TARGET_ENE_0
    local f13_local11 = 10
    local f13_local12 = 0
    local f13_local13 = 0
    local f13_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local8, f13_local9, f13_local10, f13_local11, 0, 0, 0)
    
end

function RoamArmyBothHandsSword431020_Act21(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 3.5
    local f14_local2 = 0
    local f14_local3 = 999
    local f14_local4 = 100
    local f14_local5 = 0
    local f14_local6 = 3
    local f14_local7 = 3
    Approach_Act_Flex(arg0, arg1, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7)
    local f14_local8 = 5
    local f14_local9 = 3008
    local f14_local10 = TARGET_ENE_0
    local f14_local11 = 10
    local f14_local12 = 0
    local f14_local13 = 0
    local f14_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local8, f14_local9, f14_local10, f14_local11, 0, 0, 0)
    
end

function RoamArmyBothHandsSword431020_Act22(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13287) == false then
        local f15_local0 = 5
        local f15_local1 = 3009
        local f15_local2 = TARGET_ENE_0
        local f15_local3 = 10
        local f15_local4 = 0
        local f15_local5 = 0
        local f15_local6 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local0, f15_local1, f15_local2, f15_local3, 0, 0, 0)
    end
    
end

function RoamArmyBothHandsSword431020_Act23(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 3.5
    local f16_local2 = 0
    local f16_local3 = 999
    local f16_local4 = 100
    local f16_local5 = 0
    local f16_local6 = 3
    local f16_local7 = 3
    Approach_Act_Flex(arg0, arg1, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7)
    local f16_local8 = 5
    local f16_local9 = 3010
    local f16_local10 = TARGET_ENE_0
    local f16_local11 = 10
    local f16_local12 = 0
    local f16_local13 = 0
    local f16_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local8, f16_local9, f16_local10, f16_local11, 0, 0, 0)
    
end

function RoamArmyBothHandsSword431020_Act24(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 3.5
    local f17_local2 = 0
    local f17_local3 = 999
    local f17_local4 = 100
    local f17_local5 = 0
    local f17_local6 = 3
    local f17_local7 = 3
    Approach_Act_Flex(arg0, arg1, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6, f17_local7)
    local f17_local8 = 5
    local f17_local9 = 3011
    local f17_local10 = TARGET_ENE_0
    local f17_local11 = 10
    local f17_local12 = 0
    local f17_local13 = 0
    local f17_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f17_local8, f17_local9, f17_local10, f17_local11, 0, 0, 0)
    
end

function RoamArmyBothHandsSword431020_Act25(arg0, arg1, arg2)
    local f18_local0 = 5
    local f18_local1 = 3012
    local f18_local2 = TARGET_ENE_0
    local f18_local3 = 10
    local f18_local4 = 0
    local f18_local5 = 0
    local f18_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local0, f18_local1, f18_local2, f18_local3, 0, 0, 0)
    
end

function RoamArmyBothHandsSword431020_Act26(arg0, arg1, arg2)
    local f19_local0 = 5
    local f19_local1 = 3026
    local f19_local2 = TARGET_ENE_0
    local f19_local3 = 10
    local f19_local4 = 0
    local f19_local5 = 0
    local f19_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local0, f19_local1, f19_local2, f19_local3, 0, 0, 0)
    
end

function RoamArmyBothHandsSword431020_Act27(arg0, arg1, arg2)
    local f20_local0 = 5
    local f20_local1 = arg0:GetRandam_Int(3027, 3028)
    local f20_local2 = TARGET_ENE_0
    local f20_local3 = 10
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local0, f20_local1, f20_local2, f20_local3, 0, 0, 0)
    
end

function RoamArmyBothHandsSword431020_Act30(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13298) then
        local f21_local0 = arg0:GetDist(TARGET_ENE_0)
        local f21_local1 = 8.5
        local f21_local2 = 0
        local f21_local3 = 999
        local f21_local4 = 100
        local f21_local5 = 0
        local f21_local6 = 3
        local f21_local7 = 3
        if arg0:HasSpecialEffectId(TARGET_SELF, 13055) then
            f21_local5 = 0
        end
        if arg0:HasSpecialEffectId(TARGET_SELF, 13282) then
            f21_local2 = 100
            f21_local3 = 999
            f21_local4 = 0
            f21_local6 = 5
            f21_local7 = 0
        end
        Approach_Act_Flex(arg0, arg1, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6, f21_local7)
    end
    local f21_local0 = 5
    local f21_local1 = 3025
    local f21_local2 = TARGET_ENE_0
    local f21_local3 = 10
    local f21_local4 = 0
    local f21_local5 = 0
    local f21_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f21_local0, f21_local1, f21_local2, f21_local3, 0, 0, 0)
    
end

function RoamArmyBothHandsSword431020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RoamArmyBothHandsSword431020_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13280) then
            if arg1:IsInsideObserve(1) and arg1:IsFinishTimer(1) then
                arg2:ClearSubGoal()
                arg1:SetTimer(0, 6)
                arg1:SetTimer(1, 5)
                arg1:DeleteObserve(1)
            end
            if arg1:IsFinishTimer(0) and arg1:IsInsideObserve(0) then
                arg2:ClearSubGoal()
                RoamArmyBothHandsSword431020_Act13(arg1, arg2)
                arg1:SetTimer(0, 6)
                arg1:DeleteObserve(0)
            end
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) then
        local f25_local0 = arg1:GetDist(TARGET_ENE_0)
        local f25_local1 = arg1:GetRandam_Int(1, 100)
        if f25_local0 <= 3 then
            if (not not arg1:HasSpecialEffectId(TARGET_SELF, 13281) or arg1:HasSpecialEffectId(TARGET_SELF, 13283)) and f25_local1 <= 50 then
                arg2:ClearSubGoal()
                local f25_local2 = 5
                local f25_local3 = 3010
                local f25_local4 = TARGET_ENE_0
                local f25_local5 = 2.5
                local f25_local6 = 0
                local f25_local7 = 0
                local f25_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f25_local2, f25_local3, f25_local4, f25_local5, 0, 0, 0)
            end
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) then
        local f25_local0 = arg1:GetDist(TARGET_ENE_0)
        if (not not arg1:HasSpecialEffectId(TARGET_SELF, 13281) or arg1:HasSpecialEffectId(TARGET_SELF, 13283)) and f25_local0 <= 2 then
            arg2:ClearSubGoal()
            local f25_local1 = 0.7
            local f25_local2 = TARGET_ENE_0
            local f25_local3 = 0.1
            local f25_local4 = TARGET_SELF
            local f25_local5 = true
            local f25_local6 = arg1:GetDist(TARGET_ENE_0)
            local f25_local7 = 100
            local f25_local8 = arg1:GetRandam_Int(1, 100)
            local f25_local9 = -1
            if f25_local8 <= f25_local7 then
                f25_local9 = 9910
            end
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, f25_local1, f25_local2, f25_local3, f25_local4, f25_local5, f25_local9)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        local f25_local0 = arg1:GetDist(TARGET_ENE_0)
        if (not not arg1:HasSpecialEffectId(TARGET_SELF, 13281) or arg1:HasSpecialEffectId(TARGET_SELF, 13283)) and f25_local0 >= 5 then
            arg2:ClearSubGoal()
            local f25_local1 = 2
            local f25_local2 = TARGET_ENE_0
            local f25_local3 = 0.1
            local f25_local4 = TARGET_SELF
            local f25_local5 = true
            local f25_local6 = arg1:GetDist(TARGET_ENE_0)
            local f25_local7 = 100
            local f25_local8 = arg1:GetRandam_Int(1, 100)
            local f25_local9 = -1
            if f25_local8 <= f25_local7 then
                f25_local9 = 9910
            end
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, f25_local1, f25_local2, f25_local3, f25_local4, f25_local5, f25_local9)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            local f25_local0 = arg1:GetDist(TARGET_ENE_0)
            if f25_local0 >= 5 then
                arg2:ClearSubGoal()
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 80) then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13058)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 8, 0, 90)
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 8, 0, 90)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13058) then
            local f25_local0 = arg1:GetDist(TARGET_ENE_0)
            if f25_local0 >= 7 then
                arg2:ClearSubGoal()
            elseif f25_local0 >= 2.7 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 8, 0, 90)
            else
                arg2:ClearSubGoal()
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 8, 0, 90)
                end
            end
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local f25_local0 = arg1:GetDist(TARGET_ENE_0)
        if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
            arg2:ClearSubGoal()
            local f25_local1 = 0.5
            local f25_local2 = TARGET_ENE_0
            local f25_local3 = 10
            local f25_local4 = 0
            local f25_local5 = 0
            local f25_local6 = 0
            local f25_local7 = 3024
            local f25_local8 = arg1:GetRandam_Int(1, 100)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f25_local1, f25_local7, f25_local2, f25_local3, 0, 0, 0)
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_RoamArmyBothHandsSword431020_AfterAttackAct, "RoamArmyBothHandsSword431020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamArmyBothHandsSword431020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


