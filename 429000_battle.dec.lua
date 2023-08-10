RegisterTableGoal(GOAL_HoundDog_429000_Battle, "HoundDog_429000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HoundDog_429000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13515)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 14570) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14572) then
            f2_local0[35] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            f2_local0[19] = 20
        else
            f2_local0[36] = 100
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 17 then
            arg1:SetNumber(1, 1)
        end
        if arg1:GetNumber(1) == 0 then
            arg1:SetNumber(1, 1)
            f2_local0[5] = 20
            f2_local0[8] = 80
        elseif arg1:GetNumber(1) == 1 then
            arg1:SetNumber(1, 0)
            f2_local0[1] = 40
            f2_local0[2] = 20
            f2_local0[3] = 20
            f2_local0[7] = 20
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 17 then
            arg1:SetNumber(1, 1)
        end
        if arg1:GetNumber(1) == 0 then
            arg1:SetNumber(1, 1)
            f2_local0[5] = 20
            f2_local0[8] = 80
        elseif arg1:GetNumber(1) == 1 then
            arg1:SetNumber(1, 0)
            f2_local0[1] = 40
            f2_local0[2] = 20
            f2_local0[3] = 20
            f2_local0[7] = 20
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) then
        f2_local0[4] = 30
        f2_local0[5] = 30
        f2_local0[19] = 30
        if f2_local3 <= 4 then
            f2_local0[5] = 20
            f2_local0[10] = 30
            f2_local0[19] = 20
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        f2_local0[12] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5400) == true then
        if f2_local3 >= 8 then
            f2_local0[1] = 20
            f2_local0[2] = 20
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 30
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 30
        elseif f2_local3 >= 5 then
            f2_local0[1] = 0
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 10
            f2_local0[7] = 10
            f2_local0[8] = 30
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 30
        elseif f2_local3 >= 3 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 30
            f2_local0[5] = 20
            f2_local0[6] = 30
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 20
            f2_local0[10] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 50
            f2_local0[5] = 30
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 20
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 5, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 5, f2_local0[5], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3007, 15, f2_local0[7], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act19)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, HoundDog_429000_Act36)
    local f2_local6 = REGIST_FUNC(arg1, arg2, HoundDog_419000_Act02_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function HoundDog_429000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 11.5
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 0
    local f3_local7 = 3
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13510)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = TARGET_ENE_0
    local f3_local11 = 10
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f3_local8, f3_local9, f3_local10, f3_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HoundDog_429000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 12.5
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 3
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13511)
    local f4_local8 = 5
    local f4_local9 = 3001
    local f4_local10 = TARGET_ENE_0
    local f4_local11 = 10
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local8, f4_local9, f4_local10, f4_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HoundDog_429000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 5.5
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 0
    local f5_local7 = 3
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 5
    local f5_local9 = 3004
    local f5_local10 = TARGET_ENE_0
    local f5_local11 = 10
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local8, f5_local9, f5_local10, f5_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HoundDog_429000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 3.8
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 0
    local f6_local7 = 3
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13512)
    local f6_local8 = arg0:GetRandam_Int(1, 100)
    if f6_local8 <= 30 then
        local f6_local9 = 1
        local f6_local10 = -1
        local f6_local11 = -1
        local f6_local12 = 1
        local f6_local13 = 1
        local f6_local14 = TARGET_ENE_0
        local f6_local15 = 3
        local f6_local16 = 0
        local f6_local17 = true
        local f6_local18 = arg0:GetRandam_Int(1, 2)
        if f6_local18 == 1 then
            f6_local13 = 1
            f6_local12 = -1
        end
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f6_local9, f6_local10, f6_local11, f6_local12, f6_local13, f6_local14, f6_local15, f6_local16, f6_local17)
    end
    local f6_local9 = 5
    local f6_local10 = 3005
    local f6_local11 = TARGET_ENE_0
    local f6_local12 = 10
    local f6_local13 = 0
    local f6_local14 = 0
    local f6_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f6_local9, f6_local10, f6_local11, f6_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HoundDog_429000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 3.8
    local f7_local2 = 999
    local f7_local3 = 999
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 4
    local f7_local7 = 0
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13512)
    local f7_local8 = 5
    local f7_local9 = 3006
    local f7_local10 = TARGET_ENE_0
    local f7_local11 = 10
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f7_local8, f7_local9, f7_local10, f7_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HoundDog_429000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 5.5
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 100
    local f8_local5 = 0
    local f8_local6 = 0
    local f8_local7 = 3
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13514)
    local f8_local8 = 5
    local f8_local9 = 3011
    local f8_local10 = TARGET_ENE_0
    local f8_local11 = 10
    local f8_local12 = 0
    local f8_local13 = 0
    local f8_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local8, f8_local9, f8_local10, f8_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HoundDog_429000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 8.5
    local f9_local2 = 0
    local f9_local3 = 999
    local f9_local4 = 100
    local f9_local5 = 0
    local f9_local6 = 3
    local f9_local7 = 3
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    local f9_local8 = 5
    local f9_local9 = 3007
    local f9_local10 = TARGET_ENE_0
    local f9_local11 = 10
    local f9_local12 = 0
    local f9_local13 = 0
    local f9_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local8, f9_local9, f9_local10, f9_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HoundDog_429000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetRandam_Float(1, 4.5)
    local f10_local1 = TARGET_ENE_0
    local f10_local2 = arg0:GetRandam_Int(0, 1)
    local f10_local3 = arg0:GetRandam_Int(40, 65)
    local f10_local4 = arg0:GetRandam_Float(2, 4.5)
    local f10_local5 = TARGET_SELF
    local f10_local6 = true
    local f10_local7 = false
    local f10_local8 = arg0:GetDist(TARGET_ENE_0)
    local f10_local9 = 0
    local f10_local10 = arg0:GetRandam_Int(1, 100)
    local f10_local11 = -1
    if f10_local10 <= f10_local9 then
        f10_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f10_local0, f10_local1, f10_local2, f10_local3, f10_local6, f10_local7, f10_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HoundDog_429000_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 10
    local f11_local2 = 0
    local f11_local3 = 999
    local f11_local4 = 100
    local f11_local5 = 0
    local f11_local6 = 3
    local f11_local7 = 3
    Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    local f11_local8 = 5
    local f11_local9 = 3002
    local f11_local10 = TARGET_ENE_0
    local f11_local11 = 10
    local f11_local12 = 0
    local f11_local13 = 0
    local f11_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local8, f11_local9, f11_local10, f11_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HoundDog_429000_Act10(arg0, arg1, arg2)
    local f12_local0 = 5
    local f12_local1 = 3016
    local f12_local2 = TARGET_ENE_0
    local f12_local3 = 10
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f12_local0, f12_local1, f12_local2, f12_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HoundDog_429000_Act11(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13516)
    local f13_local0 = 5
    local f13_local1 = arg0:GetRandam_Int(3017, 3018)
    local f13_local2 = TARGET_ENE_0
    local f13_local3 = 10
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local0, f13_local1, f13_local2, f13_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HoundDog_429000_Act12(arg0, arg1, arg2)
    local f14_local0 = 5
    local f14_local1 = 3015
    local f14_local2 = TARGET_ENE_0
    local f14_local3 = 10
    local f14_local4 = 0
    local f14_local5 = 0
    local f14_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f14_local0, f14_local1, f14_local2, f14_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HoundDog_429000_Act16(arg0, arg1, arg2)
    local f15_local0 = arg0:GetRandam_Int(3, 5)
    local f15_local1 = TARGET_ENE_0
    local f15_local2 = arg0:GetRandam_Int(0, 1)
    local f15_local3 = arg0:GetRandam_Int(30, 45)
    local f15_local4 = 2
    local f15_local5 = TARGET_SELF
    local f15_local6 = true
    local f15_local7 = arg0:GetDist(TARGET_ENE_0)
    local f15_local8 = 0
    local f15_local9 = arg0:GetRandam_Int(1, 100)
    local f15_local10 = -1
    if f15_local9 <= f15_local8 then
        f15_local10 = 9910
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f15_local0, f15_local1, f15_local2, f15_local3, f15_local6, f15_local10)
    if f15_local7 <= 7 and f15_local9 <= 70 then
        if f15_local9 <= 50 then
            local f15_local11 = 5
            local f15_local12 = arg0:GetRandam_Int(6002, 6003)
            local f15_local13 = TARGET_ENE_0
            local f15_local14 = 2
            local f15_local15 = 0
            local f15_local16 = 0
            local f15_local17 = 0
            arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local11, f15_local12, f15_local13, f15_local14, 0, 0, 0)
        elseif f15_local7 <= 5 then
            local f15_local11 = 5
            local f15_local12 = 6000
            local f15_local13 = TARGET_ENE_0
            local f15_local14 = 2
            local f15_local15 = 0
            local f15_local16 = 0
            local f15_local17 = 0
            arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local11, f15_local12, f15_local13, f15_local14, 0, 0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HoundDog_429000_Act17(arg0, arg1, arg2)
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

function HoundDog_429000_Act18(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HoundDog_429000_Act19(arg0, arg1, arg2)
    local f18_local0 = 1
    local f18_local1 = -1
    local f18_local2 = -1
    local f18_local3 = 1
    local f18_local4 = 1
    local f18_local5 = TARGET_ENE_0
    local f18_local6 = 3
    local f18_local7 = 0
    local f18_local8 = true
    local f18_local9 = arg0:GetRandam_Int(1, 2)
    if f18_local9 == 1 then
        f18_local4 = 1
        f18_local3 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6, f18_local7, f18_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HoundDog_429000_Act35(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 10
    local f19_local2 = 20011
    local f19_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local4 = 0
    local f19_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local1, f19_local2, TARGET_ENE_0, f19_local3, f19_local4, f19_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HoundDog_429000_Act36(arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = 12.5
    local f20_local2 = 0
    local f20_local3 = 999
    local f20_local4 = 100
    local f20_local5 = 0
    local f20_local6 = 0
    local f20_local7 = 3
    Approach_Act_Flex(arg0, arg1, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7)
    arg0:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13511)
    arg0:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13513)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 999, 0, 360, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HoundDog_429000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_HoundDog_429000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13510) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13510)
            local f24_local0 = arg1:GetDist(TARGET_ENE_0)
            local f24_local1 = arg1:GetRandam_Int(1, 100)
            arg2:ClearSubGoal()
            if f24_local0 >= 3 and f24_local0 <= 10 then
                local f24_local2 = 5
                local f24_local3 = 3002
                local f24_local4 = TARGET_ENE_0
                local f24_local5 = 5
                local f24_local6 = 0
                local f24_local7 = 0
                local f24_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local2, f24_local3, f24_local4, f24_local5, 0, 0, 0)
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13511) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13511)
            local f24_local0 = arg1:GetDist(TARGET_ENE_0)
            local f24_local1 = arg1:GetRandam_Int(1, 100)
            arg2:ClearSubGoal()
            if f24_local0 <= 3.4 then
                local f24_local2 = 5
                local f24_local3 = 3008
                local f24_local4 = TARGET_ENE_0
                local f24_local5 = 5
                local f24_local6 = 0
                local f24_local7 = 0
                local f24_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local2, f24_local3, f24_local4, f24_local5, 0, 0, 0)
            elseif f24_local0 <= 8 then
                local f24_local2 = arg1:GetRandam_Int(1, 100)
                if f24_local1 <= 40 then
                    local f24_local3 = 5
                    local f24_local4 = 3002
                    local f24_local5 = 3010
                    local f24_local6 = TARGET_ENE_0
                    local f24_local7 = 5
                    local f24_local8 = 0
                    local f24_local9 = 0
                    local f24_local10 = 0
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13514)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local3, f24_local4, f24_local6, f24_local7, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f24_local3, f24_local5, f24_local6, f24_local7, 0, 0, 0)
                else
                    local f24_local3 = 5
                    local f24_local4 = arg1:GetRandam_Int(3017, 3018)
                    local f24_local5 = TARGET_ENE_0
                    local f24_local6 = 5
                    local f24_local7 = 0
                    local f24_local8 = 0
                    local f24_local9 = 0
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13516)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local3, f24_local4, f24_local5, f24_local6, 0, 0, 0)
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13512) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13512)
            local f24_local0 = arg1:GetDist(TARGET_ENE_0)
            local f24_local1 = arg1:GetRandam_Int(1, 100)
            arg2:ClearSubGoal()
            if f24_local0 >= 5 then
                if f24_local1 <= 70 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13516)
                    local f24_local2 = 5
                    local f24_local3 = TARGET_ENE_0
                    local f24_local4 = 5
                    local f24_local5 = 0
                    local f24_local6 = 0
                    local f24_local7 = 0
                    local f24_local8 = nil
                    local f24_local9 = arg1:GetRandam_Int(1, 100)
                    if f24_local9 <= 60 then
                        f24_local8 = 3007
                    else
                        f24_local8 = arg1:GetRandam_Int(3017, 3018)
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local2, f24_local8, f24_local3, f24_local4, 0, 0, 0)
                end
            else
                local f24_local2 = 5
                local f24_local3 = 3008
                local f24_local4 = TARGET_ENE_0
                local f24_local5 = 5
                local f24_local6 = 0
                local f24_local7 = 0
                local f24_local8 = 0
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13513)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local2, f24_local3, f24_local4, f24_local5, 0, 0, 0)
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13513) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13513)
            local f24_local0 = arg1:GetDist(TARGET_ENE_0)
            local f24_local1 = arg1:GetRandam_Int(1, 100)
            arg2:ClearSubGoal()
            if f24_local0 <= 2.7 then
                if f24_local1 <= 70 then
                    local f24_local2 = 5
                    local f24_local3 = 3013
                    local f24_local4 = 3009
                    local f24_local5 = TARGET_ENE_0
                    local f24_local6 = 5
                    local f24_local7 = 0
                    local f24_local8 = 0
                    local f24_local9 = 0
                    if f24_local1 <= 70 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local2, f24_local3, f24_local5, f24_local6, 0, 0, 0)
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local2, f24_local4, f24_local5, f24_local6, 0, 0, 0)
                else
                    local f24_local2 = 5
                    local f24_local3 = 3012
                    local f24_local4 = 3003
                    local f24_local5 = TARGET_ENE_0
                    local f24_local6 = 5
                    local f24_local7 = 0
                    local f24_local8 = 0
                    local f24_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local2, f24_local3, f24_local5, f24_local6, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local2, f24_local4, f24_local5, f24_local6, 0, 0, 0)
                end
            elseif f24_local0 <= 4 then
                local f24_local2 = 5
                local f24_local3 = 3012
                local f24_local4 = 3003
                local f24_local5 = TARGET_ENE_0
                local f24_local6 = 5
                local f24_local7 = 0
                local f24_local8 = 0
                local f24_local9 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local2, f24_local3, f24_local5, f24_local6, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local2, f24_local4, f24_local5, f24_local6, 0, 0, 0)
            elseif f24_local0 <= 8 then
                local f24_local2 = arg1:GetRandam_Int(1, 100)
                if f24_local2 <= 30 then
                    local f24_local3 = 5
                    local f24_local4 = 3013
                    local f24_local5 = 3009
                    local f24_local6 = TARGET_ENE_0
                    local f24_local7 = 5
                    local f24_local8 = 0
                    local f24_local9 = 0
                    local f24_local10 = 0
                    if f24_local1 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local3, f24_local4, f24_local6, f24_local7, 0, 0, 0)
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local3, f24_local5, f24_local6, f24_local7, 0, 0, 0)
                else
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13516)
                    local f24_local3 = 5
                    local f24_local4 = arg1:GetRandam_Int(3017, 3018)
                    local f24_local5 = TARGET_ENE_0
                    local f24_local6 = 5
                    local f24_local7 = 0
                    local f24_local8 = 0
                    local f24_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local3, f24_local4, f24_local5, f24_local6, 0, 0, 0)
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13514) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13514)
            local f24_local0 = arg1:GetDist(TARGET_ENE_0)
            local f24_local1 = arg1:GetRandam_Int(1, 100)
            arg2:ClearSubGoal()
            if f24_local0 <= 2.7 then
                local f24_local2 = 5
                local f24_local3 = 3013
                local f24_local4 = 3009
                local f24_local5 = TARGET_ENE_0
                local f24_local6 = 5
                local f24_local7 = 0
                local f24_local8 = 0
                local f24_local9 = 0
                if f24_local1 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local2, f24_local3, f24_local5, f24_local6, 0, 0, 0)
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local2, f24_local4, f24_local5, f24_local6, 0, 0, 0)
            elseif f24_local0 <= 8 then
                local f24_local2 = arg1:GetRandam_Int(1, 100)
                if f24_local2 <= 30 then
                    local f24_local3 = 5
                    local f24_local4 = 3013
                    local f24_local5 = 3009
                    local f24_local6 = TARGET_ENE_0
                    local f24_local7 = 5
                    local f24_local8 = 0
                    local f24_local9 = 0
                    local f24_local10 = 0
                    if f24_local1 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local3, f24_local4, f24_local6, f24_local7, 0, 0, 0)
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local3, f24_local5, f24_local6, f24_local7, 0, 0, 0)
                else
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13516)
                    local f24_local3 = 5
                    local f24_local4 = arg1:GetRandam_Int(3017, 3018)
                    local f24_local5 = TARGET_ENE_0
                    local f24_local6 = 5
                    local f24_local7 = 0
                    local f24_local8 = 0
                    local f24_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local3, f24_local4, f24_local5, f24_local6, 0, 0, 0)
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13515) then
            local f24_local0 = arg1:GetDist(TARGET_ENE_0)
            local f24_local1 = arg1:GetRandam_Int(1, 100)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13512)
            local f24_local2 = nil
            if arg1:IsFinishTimer(0) then
                arg1:SetTimer(0, arg1:GetRandam_Float(3.5, 7.5))
                if arg1:GetNumber(0) == 0 then
                    arg1:SetNumber(0, 1)
                elseif arg1:GetNumber(0) == 1 then
                    arg1:SetNumber(0, 2)
                elseif arg1:GetNumber(0) == 2 then
                    arg1:SetNumber(0, 3)
                elseif arg1:GetNumber(0) == 3 then
                    arg1:SetNumber(0, 0)
                end
            elseif arg1:IsFinishTimer(0) == false then
                if arg1:GetNumber(0) == 0 then
                    f24_local2 = 1.9
                elseif arg1:GetNumber(0) == 1 then
                    f24_local2 = 4.3
                elseif arg1:GetNumber(0) == 2 then
                    f24_local2 = 2.5
                elseif arg1:GetNumber(0) == 3 then
                    f24_local2 = 4.3
                end
            end
            if f24_local0 <= f24_local2 then
                arg2:ClearSubGoal()
                if f24_local1 <= 70 then
                    local f24_local3 = 5
                    local f24_local4 = arg1:GetRandam_Int(3005, 3006)
                    local f24_local5 = TARGET_ENE_0
                    local f24_local6 = 10
                    local f24_local7 = 0
                    local f24_local8 = 0
                    local f24_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f24_local3, f24_local4, f24_local5, f24_local6, 0, 0, 0)
                else
                    local f24_local3 = 5
                    local f24_local4 = -1
                    local f24_local5 = -1
                    local f24_local6 = 1
                    local f24_local7 = 1
                    local f24_local8 = TARGET_ENE_0
                    local f24_local9 = 3
                    local f24_local10 = 0
                    local f24_local11 = true
                    local f24_local12 = arg1:GetRandam_Int(1, 2)
                    if f24_local12 == 1 then
                        f24_local7 = 1
                        f24_local6 = -1
                    end
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, f24_local3, f24_local4, f24_local5, f24_local6, f24_local7, f24_local8, f24_local9, f24_local10, f24_local11)
                    local f24_local13 = 5
                    local f24_local14 = 3005
                    local f24_local15 = TARGET_ENE_0
                    local f24_local16 = 10
                    local f24_local17 = 0
                    local f24_local18 = 0
                    local f24_local19 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f24_local13, f24_local14, f24_local15, f24_local16, 0, 0, 0)
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13516) then
            local f24_local0 = arg1:GetDist(TARGET_ENE_0)
            local f24_local1 = arg1:GetRandam_Int(1, 100)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13512)
            if f24_local0 <= 5 then
                arg2:ClearSubGoal()
                if f24_local1 <= 80 then
                    local f24_local2 = 5
                    local f24_local3 = 3005
                    local f24_local4 = TARGET_ENE_0
                    local f24_local5 = 10
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f24_local2, f24_local3, f24_local4, f24_local5)
                else
                    local f24_local2 = 5
                    local f24_local3 = -1
                    local f24_local4 = -1
                    local f24_local5 = 1
                    local f24_local6 = 1
                    local f24_local7 = TARGET_ENE_0
                    local f24_local8 = 3
                    local f24_local9 = 0
                    local f24_local10 = true
                    local f24_local11 = arg1:GetRandam_Int(1, 2)
                    if f24_local11 == 1 then
                        f24_local6 = 1
                        f24_local5 = -1
                    end
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6, f24_local7, f24_local8, f24_local9, f24_local10)
                    local f24_local12 = 5
                    local f24_local13 = 3005
                    local f24_local14 = TARGET_ENE_0
                    local f24_local15 = 10
                    local f24_local16 = 0
                    local f24_local17 = 0
                    local f24_local18 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f24_local12, f24_local13, f24_local14, f24_local15)
                end
            end
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        local f24_local0 = arg1:GetDist(TARGET_ENE_0)
        local f24_local1 = arg1:GetRandam_Int(1, 100)
        arg2:ClearSubGoal()
        HoundDog_429000_Act19(arg1, arg2)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_HoundDog_429000_AfterAttackAct, "HoundDog_429000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HoundDog_429000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


