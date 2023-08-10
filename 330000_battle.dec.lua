RegisterTableGoal(GOAL_MarikaLineageMan330000_Battle, "MarikaLineageMan330000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MarikaLineageMan330000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3100)
    arg1:EnableUnfavorableAttackCheck(0, 3101)
    arg1:EnableUnfavorableAttackCheck(0, 3103)
    arg1:EnableUnfavorableAttackCheck(0, 3104)
    arg1:EnableUnfavorableAttackCheck(5, 3000)
    arg1:EnableUnfavorableAttackCheck(5, 3001)
    arg1:EnableUnfavorableAttackCheck(5, 3003)
    arg1:EnableUnfavorableAttackCheck(5, 3004)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 79)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 83)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 11693)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 11655)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetHpRate(TARGET_SELF)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = 0
    if arg1:IsFinishTimer(0) then
        f2_local7 = 1
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5405) == true then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 79) == true then
            f2_local0[14] = 100
        elseif f2_local3 >= 5 then
            f2_local0[8] = 10
            f2_local0[9] = 0
            f2_local0[10] = 10
            f2_local0[11] = 10
            f2_local0[13] = 100 * f2_local7
            f2_local0[30] = 20
            f2_local0[31] = 10
            f2_local0[32] = 0
        else
            f2_local0[8] = 10
            f2_local0[9] = 0
            f2_local0[10] = 10
            f2_local0[11] = 10
            f2_local0[13] = 40 * f2_local7
            f2_local0[30] = 0
            f2_local0[31] = 30
            f2_local0[32] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 79) == true then
        f2_local0[14] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 210) then
        f2_local0[32] = 100
    elseif f2_local3 >= 15 then
        f2_local0[30] = 100
    elseif f2_local3 >= 5 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 10
        f2_local0[7] = 10
        f2_local0[30] = 0
        f2_local0[31] = 30
        f2_local0[32] = 0
    elseif f2_local3 >= 1.8 then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[4] = 10
        f2_local0[5] = 10
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[30] = 0
        f2_local0[31] = 0
        f2_local0[32] = 0
    else
        f2_local0[1] = 35
        f2_local0[2] = 25
        f2_local0[3] = 10
        f2_local0[4] = 10
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[12] = 30
        f2_local0[30] = 0
        f2_local0[31] = 0
        f2_local0[32] = 0
    end
    f2_local0[6] = SetCoolTime(arg1, arg2, 3011, 4, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3012, 4, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3103, 4, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3104, 4, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3100, 4, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3101, 4, f2_local0[11], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act6)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act7)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act8)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act9)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act14)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_Act34)
    local f2_local8 = REGIST_FUNC(arg1, arg2, MarikaLineageMan330000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function MarikaLineageMan330000_Act1(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 2.5
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 3
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = TARGET_ENE_0
    local f3_local11 = 10
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local8, f3_local9, f3_local10, f3_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageMan330000_Act2(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 2.5
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 3
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
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

function MarikaLineageMan330000_Act3(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 3.5
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 3
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f5_local8 = 5
    local f5_local9 = 3002
    local f5_local10 = TARGET_ENE_0
    local f5_local11 = 10
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local8, f5_local9, f5_local10, f5_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageMan330000_Act4(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 5.5
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 3
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f6_local8 = 5
    local f6_local9 = 3004
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 10
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageMan330000_Act5(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 4.5
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 3
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f7_local8 = 5
    local f7_local9 = 3010
    local f7_local10 = TARGET_ENE_0
    local f7_local11 = 10
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local8, f7_local9, f7_local10, f7_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageMan330000_Act6(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 6
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 3
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
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

function MarikaLineageMan330000_Act7(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 6
    local f9_local2 = 0
    local f9_local3 = 999
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 3
    local f9_local7 = 3
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f9_local8 = 5
    local f9_local9 = 3012
    local f9_local10 = TARGET_ENE_0
    local f9_local11 = 10
    local f9_local12 = 0
    local f9_local13 = 0
    local f9_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local8, f9_local9, f9_local10, f9_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageMan330000_Act8(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 2.5
    local f10_local2 = 0
    local f10_local3 = 999
    local f10_local4 = 100
    local f10_local5 = 0
    local f10_local6 = 3
    local f10_local7 = 3
    Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f10_local8 = 5
    local f10_local9 = 3003
    local f10_local10 = TARGET_ENE_0
    local f10_local11 = 10
    local f10_local12 = 0
    local f10_local13 = 0
    local f10_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local8, f10_local9, f10_local10, f10_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageMan330000_Act9(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 2.5
    local f11_local2 = 0
    local f11_local3 = 999
    local f11_local4 = 100
    local f11_local5 = 0
    local f11_local6 = 3
    local f11_local7 = 3
    Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f11_local8 = 5
    local f11_local9 = 3004
    local f11_local10 = TARGET_ENE_0
    local f11_local11 = 10
    local f11_local12 = 0
    local f11_local13 = 0
    local f11_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local8, f11_local9, f11_local10, f11_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageMan330000_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 2.5
    local f12_local2 = 0
    local f12_local3 = 999
    local f12_local4 = 100
    local f12_local5 = 0
    local f12_local6 = 3
    local f12_local7 = 3
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f12_local8 = 5
    local f12_local9 = 3000
    local f12_local10 = TARGET_ENE_0
    local f12_local11 = 10
    local f12_local12 = 0
    local f12_local13 = 0
    local f12_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local8, f12_local9, f12_local10, f12_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageMan330000_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 2.5
    local f13_local2 = 0
    local f13_local3 = 999
    local f13_local4 = 100
    local f13_local5 = 0
    local f13_local6 = 3
    local f13_local7 = 3
    Approach_Act_Flex(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    local f13_local8 = 5
    local f13_local9 = 3001
    local f13_local10 = TARGET_ENE_0
    local f13_local11 = 10
    local f13_local12 = 0
    local f13_local13 = 0
    local f13_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local8, f13_local9, f13_local10, f13_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageMan330000_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 3.5
    local f14_local2 = 0
    local f14_local3 = 999
    local f14_local4 = 0
    local f14_local5 = 0
    local f14_local6 = 3
    local f14_local7 = 3
    Approach_Act_Flex(arg0, arg1, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7)
    local f14_local8 = 5
    local f14_local9 = 3005
    local f14_local10 = TARGET_ENE_0
    local f14_local11 = 10
    local f14_local12 = 0
    local f14_local13 = 0
    local f14_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local8, f14_local9, f14_local10, f14_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageMan330000_Act13(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 5
    local f15_local2 = -1
    local f15_local3 = 1
    local f15_local4 = -1
    local f15_local5 = -1
    local f15_local6 = TARGET_ENE_0
    local f15_local7 = 3
    local f15_local8 = 0
    local f15_local9 = true
    local f15_local10 = arg0:HasSpecialEffectId(TARGET_SELF, 11656)
    local f15_local11 = false
    if f15_local10 == f15_local11 and f15_local0 <= 4 and arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7, f15_local8, f15_local9)
    end
    f15_local10 = 5
    f15_local11 = 3002
    local f15_local12 = TARGET_ENE_0
    local f15_local13 = 10
    local f15_local14 = 0
    local f15_local15 = 0
    local f15_local16 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f15_local10, f15_local11, f15_local12, f15_local13, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageMan330000_Act14(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5405) == true then
        local f16_local0 = 5
        local f16_local1 = 3002
        local f16_local2 = TARGET_ENE_0
        local f16_local3 = 10
        local f16_local4 = 0
        local f16_local5 = 0
        local f16_local6 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f16_local0, f16_local1, f16_local2, f16_local3, 0, 0, 0)
    end
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 0.7
    local f16_local2 = 0
    local f16_local3 = 999
    local f16_local4 = 100
    local f16_local5 = 0
    local f16_local6 = 3
    local f16_local7 = 3
    Approach_Act_Flex(arg0, arg1, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7)
    local f16_local8 = 3110
    local f16_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local10 = 0
    local f16_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 0.5, f16_local8, TARGET_ENE_0, f16_local9, f16_local10, f16_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageMan330000_Act30(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = arg0:GetRandam_Int(1, 100)
    local f17_local2 = 2
    local f17_local3 = 8
    local f17_local4 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local2, TARGET_ENE_0, f17_local3, TARGET_SELF, true, f17_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageMan330000_Act31(arg0, arg1, arg2)
    local f18_local0 = arg0:GetRandam_Int(1, 2)
    local f18_local1 = TARGET_ENE_0
    local f18_local2 = arg0:GetRandam_Int(0, 1)
    local f18_local3 = arg0:GetRandam_Int(30, 45)
    local f18_local4 = 3
    local f18_local5 = TARGET_SELF
    local f18_local6 = true
    local f18_local7 = true
    local f18_local8 = arg0:GetDist(TARGET_ENE_0)
    local f18_local9 = 0
    local f18_local10 = arg0:GetRandam_Int(1, 100)
    local f18_local11 = -1
    if f18_local10 <= f18_local9 then
        f18_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f18_local0, f18_local1, f18_local2, f18_local3, f18_local6, f18_local7, f18_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageMan330000_Act32(arg0, arg1, arg2)
    local f19_local0 = 2
    local f19_local1 = TARGET_ENE_0
    local f19_local2 = 45
    local f19_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f19_local4 = true
    local f19_local5 = 0
    local f19_local6 = arg0:GetRandam_Int(1, 100)
    local f19_local7 = -1
    if f19_local6 <= f19_local5 then
        f19_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f19_local0, f19_local1, f19_local2, f19_local7, f19_local3, f19_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageMan330000_Act33(arg0, arg1, arg2)
    local f20_local0 = 5
    local f20_local1 = -1
    local f20_local2 = -1
    local f20_local3 = 1
    local f20_local4 = 1
    local f20_local5 = TARGET_ENE_0
    local f20_local6 = 2
    local f20_local7 = 0
    local f20_local8 = true
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f20_local0, f20_local1, 2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7, f20_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f20_local0, f20_local1, f20_local2, 1, -1, f20_local5, f20_local6, f20_local7, f20_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f20_local0, f20_local1, f20_local2, -1, 1, f20_local5, f20_local6, f20_local7, f20_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageMan330000_Act34(arg0, arg1, arg2)
    local f21_local0 = 3
    local f21_local1 = -1
    local f21_local2 = -1
    local f21_local3 = 1
    local f21_local4 = 1
    local f21_local5 = TARGET_ENE_0
    local f21_local6 = 2
    local f21_local7 = 0
    local f21_local8 = true
    local f21_local9 = arg0:GetRandam_Int(1, 100)
    if f21_local9 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f21_local0, f21_local1, f21_local2, 2, f21_local4, f21_local5, f21_local6, f21_local7, f21_local8)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f21_local0, f21_local1, f21_local2, f21_local3, 2, f21_local5, f21_local6, f21_local7, f21_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageMan330000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MarikaLineageMan330000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f25_local0 = arg1:GetDist(TARGET_ENE_0)
    local f25_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f25_local2 = arg1:GetRandam_Int(1, 100)
    local f25_local3 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(79) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            arg2:ClearSubGoal()
            local f25_local4 = arg1:GetDist(TARGET_ENE_0)
            local f25_local5 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:HasSpecialEffectId(TARGET_SELF, 5405) == false then
                local f25_local6 = arg1:GetDist(TARGET_ENE_0)
                local f25_local7 = arg1:GetRandam_Int(1, 100)
                if f25_local6 <= 3 then
                    if f25_local7 <= 60 then
                        arg2:ClearSubGoal()
                        local f25_local8 = 5
                        local f25_local9 = 3022
                        local f25_local10 = TARGET_ENE_0
                        local f25_local11 = 10
                        local f25_local12 = 0
                        local f25_local13 = 0
                        local f25_local14 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local8, f25_local9, f25_local10, successDist2, 0, 0, 0)
                        arg1:SetTimer(0, 20)
                    else
                        arg2:ClearSubGoal()
                        MarikaLineageMan330000_Act33(arg1, arg2)
                    end
                    return true
                end
            end
            if f25_local4 <= 3 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
                if f25_local5 <= 70 then
                    local f25_local6 = 5
                    local f25_local7 = 3001
                    local f25_local8 = TARGET_ENE_0
                    local f25_local9 = 10
                    local f25_local10 = 0
                    local f25_local11 = 0
                    local f25_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local6, f25_local7, f25_local8, successDist2, 0, 0, 0)
                else
                    local f25_local6 = 5
                    local f25_local7 = 3010
                    local f25_local8 = TARGET_ENE_0
                    local f25_local9 = 10
                    local f25_local10 = 0
                    local f25_local11 = 0
                    local f25_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local6, f25_local7, f25_local8, successDist2, 0, 0, 0)
                end
            elseif f25_local4 <= 7 then
                local f25_local6 = 5
                local f25_local7 = 3004
                local f25_local8 = TARGET_ENE_0
                local f25_local9 = 10
                local f25_local10 = 0
                local f25_local11 = 0
                local f25_local12 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local6, f25_local7, f25_local8, successDist2, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            arg2:ClearSubGoal()
            local f25_local4 = arg1:GetDist(TARGET_ENE_0)
            local f25_local5 = arg1:GetRandam_Int(1, 100)
            if f25_local4 <= 3 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                local f25_local6 = 5
                local f25_local7 = 3002
                local f25_local8 = TARGET_ENE_0
                local f25_local9 = 10
                local f25_local10 = 0
                local f25_local11 = 0
                local f25_local12 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local6, f25_local7, f25_local8, successDist2, 0, 0, 0)
            elseif f25_local4 <= 7 then
                local f25_local6 = 5
                local f25_local7 = 3004
                local f25_local8 = TARGET_ENE_0
                local f25_local9 = 10
                local f25_local10 = 0
                local f25_local11 = 0
                local f25_local12 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local6, f25_local7, f25_local8, successDist2, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
            arg2:ClearSubGoal()
            local f25_local4 = arg1:GetDist(TARGET_ENE_0)
            local f25_local5 = arg1:GetRandam_Int(1, 100)
            if f25_local4 <= 2.8 then
                if f25_local5 <= 90 then
                    arg2:ClearSubGoal()
                    local f25_local6 = 5
                    local f25_local7 = 3022
                    local f25_local8 = TARGET_ENE_0
                    local f25_local9 = 10
                    local f25_local10 = 0
                    local f25_local11 = 0
                    local f25_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local6, f25_local7, f25_local8, successDist2, 0, 0, 0)
                    arg1:SetTimer(0, 20)
                else
                    arg2:ClearSubGoal()
                    MarikaLineageMan330000_Act33(arg1, arg2)
                end
                return true
            elseif f25_local4 >= 2.8 and f25_local4 <= 8 then
                local f25_local6 = 5
                local f25_local7 = 3004
                local f25_local8 = TARGET_ENE_0
                local f25_local9 = 10
                local f25_local10 = 0
                local f25_local11 = 0
                local f25_local12 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local6, f25_local7, f25_local8, successDist2, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            arg2:ClearSubGoal()
            local f25_local4 = arg1:GetDist(TARGET_ENE_0)
            local f25_local5 = arg1:GetRandam_Int(1, 100)
            if f25_local4 >= 2.5 and f25_local4 <= 8 then
                local f25_local6 = 5
                local f25_local7 = 3011
                local f25_local8 = TARGET_ENE_0
                local f25_local9 = 10
                local f25_local10 = 0
                local f25_local11 = 0
                local f25_local12 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local6, f25_local7, f25_local8, successDist2, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
            arg2:ClearSubGoal()
            local f25_local4 = arg1:GetDist(TARGET_ENE_0)
            local f25_local5 = arg1:GetRandam_Int(1, 100)
            if f25_local4 <= 3 then
                if f25_local5 <= 60 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                    local f25_local6 = 5
                    local f25_local7 = 3004
                    local f25_local8 = TARGET_ENE_0
                    local f25_local9 = 10
                    local f25_local10 = 0
                    local f25_local11 = 0
                    local f25_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local6, f25_local7, f25_local8, successDist2, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
            arg2:ClearSubGoal()
            local f25_local4 = arg1:GetDist(TARGET_ENE_0)
            local f25_local5 = arg1:GetRandam_Int(1, 100)
            if f25_local4 <= 3 then
                if f25_local5 <= 30 then
                    local f25_local6 = 5
                    local f25_local7 = 3001
                    local f25_local8 = TARGET_ENE_0
                    local f25_local9 = 10
                    local f25_local10 = 0
                    local f25_local11 = 0
                    local f25_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local6, f25_local7, f25_local8, successDist2, 0, 0, 0)
                else

                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
            arg2:ClearSubGoal()
            local f25_local4 = arg1:GetDist(TARGET_ENE_0)
            local f25_local5 = arg1:GetRandam_Int(1, 100)
            if f25_local4 <= 3 then
                if f25_local5 <= 70 then
                    local f25_local6 = 5
                    local f25_local7 = 3004
                    local f25_local8 = TARGET_ENE_0
                    local f25_local9 = 10
                    local f25_local10 = 0
                    local f25_local11 = 0
                    local f25_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local6, f25_local7, f25_local8, successDist2, 0, 0, 0)
                else

                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
            arg2:ClearSubGoal()
            local f25_local4 = arg1:GetDist(TARGET_ENE_0)
            local f25_local5 = arg1:GetRandam_Int(1, 100)
            if f25_local4 <= 3 then
                if f25_local5 <= 40 then
                    local f25_local6 = 5
                    local f25_local7 = 3003
                    local f25_local8 = TARGET_ENE_0
                    local f25_local9 = 10
                    local f25_local10 = 0
                    local f25_local11 = 0
                    local f25_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local6, f25_local7, f25_local8, successDist2, 0, 0, 0)
                elseif f25_local5 <= 60 then
                    local f25_local6 = 5
                    local f25_local7 = 3004
                    local f25_local8 = TARGET_ENE_0
                    local f25_local9 = 10
                    local f25_local10 = 0
                    local f25_local11 = 0
                    local f25_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local6, f25_local7, f25_local8, successDist2, 0, 0, 0)
                else

                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
            arg2:ClearSubGoal()
            local f25_local4 = arg1:GetDist(TARGET_ENE_0)
            local f25_local5 = arg1:GetRandam_Int(1, 100)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
            if f25_local4 <= 3 then
                local f25_local6 = 5
                local f25_local7 = 3001
                local f25_local8 = TARGET_ENE_0
                local f25_local9 = 10
                local f25_local10 = 0
                local f25_local11 = 0
                local f25_local12 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local6, f25_local7, f25_local8, successDist2, 0, 0, 0)
            elseif f25_local4 <= 7 then
                local f25_local6 = 5
                local f25_local7 = 3011
                local f25_local8 = TARGET_ENE_0
                local f25_local9 = 10
                local f25_local10 = 0
                local f25_local11 = 0
                local f25_local12 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local6, f25_local7, f25_local8, successDist2, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5034) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
            arg2:ClearSubGoal()
            local f25_local4 = arg1:GetDist(TARGET_ENE_0)
            local f25_local5 = arg1:GetRandam_Int(1, 100)
            if f25_local4 <= 4 then
                local f25_local6 = 5
                local f25_local7 = 3013
                local f25_local8 = TARGET_ENE_0
                local f25_local9 = 10
                local f25_local10 = 0
                local f25_local11 = 0
                local f25_local12 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local6, f25_local7, f25_local8, successDist2, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 11693) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) then
        local f25_local4 = arg1:GetDist(TARGET_ENE_0)
        local f25_local5 = arg1:GetRandam_Int(1, 100)
        if arg1:HasSpecialEffectId(TARGET_SELF, 11655) == true and f25_local4 <= 3 then
            arg2:ClearSubGoal()
            local f25_local6 = 5
            local f25_local7 = 3022
            local f25_local8 = TARGET_ENE_0
            local f25_local9 = 10
            local f25_local10 = 0
            local f25_local11 = 0
            local f25_local12 = 0
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local6, f25_local7, f25_local8, successDist2, 0, 0, 0)
            arg1:SetTimer(0, 10)
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 11656) == false and arg1:HasSpecialEffectId(TARGET_SELF, 5405) == false and f25_local4 <= 4 then
            arg2:ClearSubGoal()
            MarikaLineageMan330000_Act33(arg1, arg2)
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        local f25_local4 = arg1:GetDist(TARGET_ENE_0)
        local f25_local5 = arg1:GetRandam_Int(1, 100)
        if arg1:HasSpecialEffectId(TARGET_SELF, 11654) == false and f25_local5 < 80 then
            arg2:ClearSubGoal()
            MarikaLineageMan330000_Act34(arg1, arg2)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) then
        if f25_local0 < 3 and f25_local2 < 20 then
            arg2:ClearSubGoal()
            MarikaLineageMan330000_Act10(arg1, arg2)
            return true
        elseif f25_local0 < 4 and f25_local2 < 70 then
            local f25_local4 = 5
            local f25_local5 = -1
            local f25_local6 = 1
            local f25_local7 = -1
            local f25_local8 = -1
            local f25_local9 = TARGET_ENE_0
            local f25_local10 = 3
            local f25_local11 = 0
            local f25_local12 = true
            if arg1:HasSpecialEffectId(TARGET_SELF, 11656) == false and f25_local0 <= 4 then
                arg2:ClearSubGoal()
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, f25_local4, f25_local5, f25_local6, f25_local7, f25_local8, f25_local9, f25_local10, f25_local11, f25_local12)
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(83) then
        arg2:ClearSubGoal()
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_MarikaLineageMan330000_AfterAttackAct, "MarikaLineageMan330000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MarikaLineageMan330000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


