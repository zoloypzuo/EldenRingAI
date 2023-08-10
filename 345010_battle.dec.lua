RegisterTableGoal(GOAL_ChimeraJsWingtype345010_Battle, "ChimeraJsWingtype345010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ChimeraJsWingtype345010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(1, 3003)
    
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
        if arg1:HasSpecialEffectId(TARGET_SELF, 5401) then
            if f2_local3 >= 15 then
                f2_local0[14] = 100
            else
                f2_local0[6] = 10
                f2_local0[7] = 10
                f2_local0[8] = 10
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 70
            end
        elseif f2_local3 >= 15 then
            f2_local0[14] = 100
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 50
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 50
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5401) then
            if f2_local3 >= 15 then
                f2_local0[14] = 100
            else
                f2_local0[6] = 20
                f2_local0[7] = 20
                f2_local0[8] = 20
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 40
            end
        elseif f2_local3 >= 15 then
            f2_local0[14] = 100
        else
            f2_local0[1] = 30
            f2_local0[2] = 0
            f2_local0[3] = 40
            f2_local0[4] = 0
            f2_local0[5] = 30
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 170) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5401) then
            f2_local0[7] = 20
            f2_local0[8] = 20
            f2_local0[17] = 0
        else
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[17] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5401) then
        if f2_local3 >= 15 then
            f2_local0[14] = 100
        elseif f2_local3 >= 9 then
            local f2_local6 = 1
            local f2_local7 = 1
            if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                f2_local6 = 0
                f2_local7 = 5
            end
            f2_local0[6] = 40 * f2_local7
            f2_local0[7] = 20 * f2_local7
            f2_local0[8] = 20 * f2_local7
            f2_local0[9] = 0 * f2_local6
            f2_local0[10] = 10
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
        elseif f2_local3 >= 3 then
            local f2_local6 = 1
            local f2_local7 = 1
            if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                f2_local6 = 0
                f2_local7 = 3
            end
            f2_local0[6] = 35 * f2_local7
            f2_local0[7] = 15 * f2_local7
            f2_local0[8] = 15 * f2_local7
            f2_local0[9] = 0 * f2_local6
            f2_local0[10] = 20
            f2_local0[14] = 0
            f2_local0[15] = 20
            f2_local0[16] = 0
        else
            local f2_local6 = 1
            local f2_local7 = 1
            if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                f2_local6 = 0
                f2_local7 = 3
            end
            f2_local0[6] = 20 * f2_local7
            f2_local0[7] = 10 * f2_local7
            f2_local0[8] = 10 * f2_local7
            f2_local0[9] = 20 * f2_local6
            f2_local0[10] = 0
            f2_local0[14] = 0
            f2_local0[15] = 30
            f2_local0[16] = 20
        end
    elseif f2_local3 >= 8 then
        f2_local0[1] = 0
        f2_local0[2] = 40
        f2_local0[3] = 40
        f2_local0[4] = 20
        f2_local0[5] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
    elseif f2_local3 >= 2 then
        f2_local0[1] = 0
        f2_local0[2] = 20
        f2_local0[3] = 30
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
    else
        f2_local0[1] = 30
        f2_local0[2] = 0
        f2_local0[3] = 40
        f2_local0[4] = 0
        f2_local0[5] = 30
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false then
        f2_local0[15] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 2) == false then
        f2_local0[7] = 0
    end
    if SpaceCheck(arg1, arg2, -90, 2) == false then
        f2_local0[8] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3010, 8, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3013, 10, f2_local0[2], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3014, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3016, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3017, 20, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3000, 3, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3001, 3, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3002, 3, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[10], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, ChimeraJsWingtype345010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, ChimeraJsWingtype345010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, ChimeraJsWingtype345010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, ChimeraJsWingtype345010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, ChimeraJsWingtype345010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, ChimeraJsWingtype345010_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, ChimeraJsWingtype345010_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, ChimeraJsWingtype345010_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, ChimeraJsWingtype345010_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, ChimeraJsWingtype345010_Act10)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, ChimeraJsWingtype345010_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, ChimeraJsWingtype345010_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, ChimeraJsWingtype345010_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, ChimeraJsWingtype345010_Act17)
    local f2_local6 = REGIST_FUNC(arg1, arg2, ChimeraJsWingtype345010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function ChimeraJsWingtype345010_Act01(arg0, arg1, arg2)
    local f3_local0 = 5
    local f3_local1 = 3010
    local f3_local2 = 3011
    local f3_local3 = arg0:GetRandam_Int(3012, 3014)
    local f3_local4 = TARGET_ENE_0
    local f3_local5 = 10
    local f3_local6 = 0
    local f3_local7 = 0
    local f3_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local0, f3_local1, f3_local4, f3_local5, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f3_local0, f3_local2, f3_local4, f3_local5, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f3_local0, f3_local3, f3_local4, f3_local5, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsWingtype345010_Act02(arg0, arg1, arg2)
    local f4_local0 = 5
    local f4_local1 = arg0:GetRandam_Int(3013, 3014)
    local f4_local2 = TARGET_ENE_0
    local f4_local3 = 10
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local0, f4_local1, f4_local2, f4_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsWingtype345010_Act03(arg0, arg1, arg2)
    local f5_local0 = 5
    local f5_local1 = 3012
    local f5_local2 = TARGET_ENE_0
    local f5_local3 = 10
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local0, f5_local1, f5_local2, f5_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsWingtype345010_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 10
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 3
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 5
    local f6_local9 = 3016
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 10
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsWingtype345010_Act05(arg0, arg1, arg2)
    local f7_local0 = 5
    local f7_local1 = 3017
    local f7_local2 = TARGET_ENE_0
    local f7_local3 = TARGET_SELF
    local f7_local4 = 10
    local f7_local5 = 0
    local f7_local6 = 0
    local f7_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f7_local0, f7_local1, f7_local2, f7_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsWingtype345010_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetRandam_Float(0.1, 1.5)
    local f8_local1 = TARGET_ENE_0
    local f8_local2 = arg0:GetRandam_Int(0, 1)
    local f8_local3 = arg0:GetRandam_Int(30, 45)
    local f8_local4 = 0.1
    local f8_local5 = TARGET_SELF
    local f8_local6 = true
    local f8_local7 = true
    local f8_local8 = arg0:GetDist(TARGET_ENE_0)
    local f8_local9 = 0
    local f8_local10 = arg0:GetRandam_Int(1, 100)
    local f8_local11 = -1
    if f8_local10 <= f8_local9 then
        f8_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f8_local0, f8_local1, f8_local2, f8_local3, f8_local6, f8_local7, f8_local11)
    local f8_local12 = 5
    local f8_local13 = 3000
    local f8_local14 = TARGET_ENE_0
    local f8_local15 = TARGET_SELF
    local f8_local16 = 10
    local f8_local17 = 0
    local f8_local18 = 0
    local f8_local19 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f8_local12, f8_local13, f8_local14, f8_local16, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsWingtype345010_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetRandam_Float(0.1, 2)
    local f9_local1 = TARGET_ENE_0
    local f9_local2 = 1
    local f9_local3 = arg0:GetRandam_Int(30, 45)
    local f9_local4 = 0.1
    local f9_local5 = TARGET_SELF
    local f9_local6 = true
    local f9_local7 = true
    local f9_local8 = arg0:GetDist(TARGET_ENE_0)
    local f9_local9 = 0
    local f9_local10 = arg0:GetRandam_Int(1, 100)
    local f9_local11 = -1
    if f9_local10 <= f9_local9 then
        f9_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f9_local0, f9_local1, f9_local2, f9_local3, f9_local6, f9_local7, f9_local11)
    local f9_local12 = 5
    local f9_local13 = 3001
    local f9_local14 = TARGET_ENE_0
    local f9_local15 = TARGET_SELF
    local f9_local16 = 10
    local f9_local17 = 0
    local f9_local18 = 0
    local f9_local19 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f9_local12, f9_local13, f9_local14, f9_local16, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsWingtype345010_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetRandam_Float(0.1, 2)
    local f10_local1 = TARGET_ENE_0
    local f10_local2 = 0
    local f10_local3 = arg0:GetRandam_Int(30, 45)
    local f10_local4 = 0.1
    local f10_local5 = TARGET_SELF
    local f10_local6 = true
    local f10_local7 = true
    local f10_local8 = arg0:GetDist(TARGET_ENE_0)
    local f10_local9 = 0
    local f10_local10 = arg0:GetRandam_Int(1, 100)
    local f10_local11 = -1
    if f10_local10 <= f10_local9 then
        f10_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f10_local0, f10_local1, f10_local2, f10_local3, f10_local6, f10_local7, f10_local11)
    local f10_local12 = 5
    local f10_local13 = 3002
    local f10_local14 = TARGET_ENE_0
    local f10_local15 = TARGET_SELF
    local f10_local16 = 10
    local f10_local17 = 0
    local f10_local18 = 0
    local f10_local19 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f10_local12, f10_local13, f10_local14, f10_local16, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsWingtype345010_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 4
    local f11_local2 = 0
    local f11_local3 = 999
    local f11_local4 = 100
    local f11_local5 = 0
    local f11_local6 = 3
    local f11_local7 = 3
    Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    local f11_local8 = 5
    local f11_local9 = 3003
    local f11_local10 = TARGET_ENE_0
    local f11_local11 = 10
    local f11_local12 = 0
    local f11_local13 = 0
    local f11_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local8, f11_local9, f11_local10, f11_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsWingtype345010_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 7
    local f12_local2 = 0
    local f12_local3 = 999
    local f12_local4 = 100
    local f12_local5 = 0
    local f12_local6 = 3
    local f12_local7 = 3
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    local f12_local8 = 5
    local f12_local9 = 3004
    local f12_local10 = TARGET_ENE_0
    local f12_local11 = 10
    local f12_local12 = 0
    local f12_local13 = 0
    local f12_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local8, f12_local9, f12_local10, f12_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsWingtype345010_Act14(arg0, arg1, arg2)
    local f13_local0 = 1
    local f13_local1 = TARGET_ENE_0
    local f13_local2 = 15
    local f13_local3 = TARGET_SELF
    local f13_local4 = false
    local f13_local5 = arg0:GetDist(TARGET_ENE_0)
    local f13_local6 = 0
    local f13_local7 = arg0:GetRandam_Int(1, 100)
    local f13_local8 = -1
    if f13_local7 <= f13_local6 then
        f13_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsWingtype345010_Act15(arg0, arg1, arg2)
    local f14_local0 = 3
    local f14_local1 = TARGET_ENE_0
    local f14_local2 = 8
    local f14_local3 = TARGET_ENE_0
    local f14_local4 = true
    local f14_local5 = arg0:GetDist(TARGET_ENE_0)
    local f14_local6 = 0
    local f14_local7 = arg0:GetRandam_Int(1, 100)
    local f14_local8 = -1
    if f14_local7 <= f14_local6 then
        f14_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsWingtype345010_Act16(arg0, arg1, arg2)
    local f15_local0 = arg0:GetRandam_Int(1, 2)
    local f15_local1 = TARGET_ENE_0
    local f15_local2 = arg0:GetRandam_Int(0, 1)
    local f15_local3 = arg0:GetRandam_Int(30, 45)
    local f15_local4 = 3
    local f15_local5 = TARGET_SELF
    local f15_local6 = true
    local f15_local7 = true
    local f15_local8 = arg0:GetDist(TARGET_ENE_0)
    local f15_local9 = 0
    local f15_local10 = arg0:GetRandam_Int(1, 100)
    local f15_local11 = -1
    if f15_local10 <= f15_local9 then
        f15_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f15_local0, f15_local1, f15_local2, f15_local3, f15_local6, f15_local7, f15_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsWingtype345010_Act17(arg0, arg1, arg2)
    local f16_local0 = 2
    local f16_local1 = TARGET_ENE_0
    local f16_local2 = 45
    local f16_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f16_local4 = true
    local f16_local5 = 0
    local f16_local6 = arg0:GetRandam_Int(1, 100)
    local f16_local7 = -1
    if f16_local6 <= f16_local5 then
        f16_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f16_local0, f16_local1, f16_local2, f16_local7, f16_local3, f16_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsWingtype345010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Template010010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
    
end

RegisterTableGoal(GOAL_ChimeraJsWingtype345010_AfterAttackAct, "ChimeraJsWingtype345010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ChimeraJsWingtype345010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


