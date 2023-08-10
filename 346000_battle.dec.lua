RegisterTableGoal(GOAL_ChimeraJsLeotype346000_Battle, "ChimeraJsLeotype346000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ChimeraJsLeotype346000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 20
        f2_local0[8] = 30
        f2_local0[17] = 30
        f2_local0[20] = 20
    elseif f2_local3 >= 10 then
        f2_local0[1] = 60
        f2_local0[13] = 40
    elseif f2_local3 >= 7 then
        f2_local0[1] = 30
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[4] = 0
        f2_local0[5] = 20
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 20
        f2_local0[10] = 30
        f2_local0[11] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 30
        f2_local0[18] = 0
        f2_local0[19] = 0
        f2_local0[20] = 0
    elseif f2_local3 >= 4 then
        f2_local0[1] = 0
        f2_local0[2] = 30
        f2_local0[3] = 20
        f2_local0[4] = 0
        f2_local0[5] = 10
        f2_local0[6] = 10
        f2_local0[7] = 40
        f2_local0[8] = 0
        f2_local0[9] = 10
        f2_local0[10] = 20
        f2_local0[11] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 20
        f2_local0[18] = 0
        f2_local0[19] = 0
        f2_local0[20] = 0
    elseif f2_local3 >= 1.5 then
        f2_local0[1] = 0
        f2_local0[2] = 40
        f2_local0[3] = 20
        f2_local0[4] = 10
        f2_local0[5] = 70
        f2_local0[6] = 20
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 70
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 10
        f2_local0[18] = 0
        f2_local0[19] = 0
        f2_local0[20] = 20
    else
        f2_local0[1] = 0
        f2_local0[2] = 20
        f2_local0[3] = 20
        f2_local0[4] = 50
        f2_local0[5] = 70
        f2_local0[6] = 10
        f2_local0[7] = 0
        f2_local0[8] = 30
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 70
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[18] = 0
        f2_local0[19] = 0
        f2_local0[20] = 20
    end
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3007, 30, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3020, 10, f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[7], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3024, 10, f2_local0[9], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3025, 10, f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3027, 20, f2_local0[11], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 6002, 10, f2_local0[18], 0)
    f2_local0[19] = SetCoolTime(arg1, arg2, 6000, 10, f2_local0[19], 0)
    f2_local0[20] = SetCoolTime(arg1, arg2, 6001, 10, f2_local0[20], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act11)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act21)
    local f2_local5 = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

function ChimeraJsLeotype346000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 10.5
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

function ChimeraJsLeotype346000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 5.5
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
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f4_local8, f4_local9, f4_local10, f4_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsLeotype346000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 5.5
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 3
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f5_local8 = 5
    local f5_local9 = 3009
    local f5_local10 = TARGET_ENE_0
    local f5_local11 = 10
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f5_local8, f5_local9, f5_local10, f5_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsLeotype346000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 3.8
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 3
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f6_local8 = 5
    local f6_local9 = 3006
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 10
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsLeotype346000_Act05(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f7_local0 = 5
    local f7_local1 = 3007
    local f7_local2 = TARGET_ENE_0
    local f7_local3 = 40
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 13073) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f7_local0, f7_local1, f7_local2, f7_local3, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsLeotype346000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 5.5
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 3
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local8 = 5
    local f8_local9 = 3020
    local f8_local10 = TARGET_ENE_0
    local f8_local11 = 10
    local f8_local12 = 0
    local f8_local13 = 0
    local f8_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f8_local8, f8_local9, f8_local10, f8_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsLeotype346000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    if f9_local0 <= 4 then
        local f9_local1 = 5
        local f9_local2 = -1
        local f9_local3 = 1
        local f9_local4 = -1
        local f9_local5 = -1
        local f9_local6 = TARGET_ENE_0
        local f9_local7 = 3
        local f9_local8 = 0
        local f9_local9 = true
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7, f9_local8, f9_local9)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f9_local1 = 5
    local f9_local2 = 3010
    local f9_local3 = TARGET_ENE_0
    local f9_local4 = 10
    local f9_local5 = 0
    local f9_local6 = 0
    local f9_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f9_local1, f9_local2, f9_local3, f9_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsLeotype346000_Act08(arg0, arg1, arg2)
    local f10_local0 = 5
    local f10_local1 = 3011
    local f10_local2 = TARGET_ENE_0
    local f10_local3 = TARGET_SELF
    local f10_local4 = 10
    local f10_local5 = 0
    local f10_local6 = 0
    local f10_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f10_local0, f10_local1, f10_local2, f10_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsLeotype346000_Act09(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f11_local0 = 5
    local f11_local1 = 3024
    local f11_local2 = TARGET_ENE_0
    local f11_local3 = TARGET_SELF
    local f11_local4 = 10
    local f11_local5 = 0
    local f11_local6 = 0
    local f11_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f11_local0, f11_local1, f11_local2, f11_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsLeotype346000_Act10(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f12_local0 = 5
    local f12_local1 = 3025
    local f12_local2 = TARGET_ENE_0
    local f12_local3 = TARGET_SELF
    local f12_local4 = 10
    local f12_local5 = 0
    local f12_local6 = 0
    local f12_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f12_local0, f12_local1, f12_local2, f12_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsLeotype346000_Act11(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13079) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
        local f13_local0 = 5
        local f13_local1 = 3027
        local f13_local2 = TARGET_ENE_0
        local f13_local3 = TARGET_SELF
        local f13_local4 = 10
        local f13_local5 = 0
        local f13_local6 = 0
        local f13_local7 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f13_local0, f13_local1, f13_local2, f13_local4, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsLeotype346000_Act13(arg0, arg1, arg2)
    local f14_local0 = 10
    local f14_local1 = TARGET_ENE_0
    local f14_local2 = 9
    local f14_local3 = TARGET_SELF
    local f14_local4 = false
    local f14_local5 = arg0:GetDist(TARGET_ENE_0)
    local f14_local6 = 0
    local f14_local7 = arg0:GetRandam_Int(1, 100)
    local f14_local8 = -1
    if f14_local7 <= f14_local6 then
        f14_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local8)
    
end

function ChimeraJsLeotype346000_Act14(arg0, arg1, arg2)
    local f15_local0 = 10
    local f15_local1 = TARGET_ENE_0
    local f15_local2 = 3
    local f15_local3 = TARGET_SELF
    local f15_local4 = false
    local f15_local5 = arg0:GetDist(TARGET_ENE_0)
    local f15_local6 = 0
    local f15_local7 = arg0:GetRandam_Int(1, 100)
    local f15_local8 = -1
    if f15_local7 <= f15_local6 then
        f15_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local8)
    
end

function ChimeraJsLeotype346000_Act15(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 2
    local f16_local2 = 2
    local f16_local3 = 0
    local f16_local4 = arg0:GetRandam_Int(1, 100)
    local f16_local5 = -1
    if f16_local4 <= f16_local3 then
        f16_local5 = 9910
    end
    if f16_local1 <= f16_local0 then
        Approach_Act(arg0, arg1, f16_local1, f16_local2, f16_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, f16_local1, TARGET_ENE_0, true, f16_local5)
    
end

function ChimeraJsLeotype346000_Act16(arg0, arg1, arg2)
    local f17_local0 = arg0:GetRandam_Int(1, 3)
    local f17_local1 = TARGET_ENE_0
    local f17_local2 = arg0:GetRandam_Int(0, 1)
    local f17_local3 = arg0:GetRandam_Int(30, 45)
    local f17_local4 = 6
    local f17_local5 = TARGET_SELF
    local f17_local6 = true
    local f17_local7 = true
    local f17_local8 = arg0:GetDist(TARGET_ENE_0)
    local f17_local9 = 0
    local f17_local10 = arg0:GetRandam_Int(1, 100)
    local f17_local11 = -1
    if f17_local10 <= f17_local9 then
        f17_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local0, f17_local1, f17_local2, f17_local3, f17_local6, f17_local7, f17_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsLeotype346000_Act17(arg0, arg1, arg2)
    local f18_local0 = 0.5
    local f18_local1 = TARGET_ENE_0
    local f18_local2 = 30
    local f18_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f18_local4 = true
    local f18_local5 = 0
    local f18_local6 = arg0:GetRandam_Int(1, 100)
    local f18_local7 = -1
    if f18_local6 <= f18_local5 then
        f18_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f18_local0, f18_local1, f18_local2, f18_local7, f18_local3, f18_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsLeotype346000_Act18(arg0, arg1, arg2)
    local f19_local0 = 5
    local f19_local1 = -1
    local f19_local2 = -1
    local f19_local3 = 1
    local f19_local4 = 2
    local f19_local5 = TARGET_ENE_0
    local f19_local6 = 3
    local f19_local7 = 0
    local f19_local8 = true
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f19_local0, f19_local1, 1, f19_local3, f19_local4, f19_local5, f19_local6, f19_local7, f19_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f19_local0, f19_local1, f19_local2, 1, -1, f19_local5, f19_local6, f19_local7, f19_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f19_local0, f19_local1, f19_local2, -1, 1, f19_local5, f19_local6, f19_local7, f19_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsLeotype346000_Act19(arg0, arg1, arg2)
    local f20_local0 = 5
    local f20_local1 = -1
    local f20_local2 = 1
    local f20_local3 = -1
    local f20_local4 = -1
    local f20_local5 = TARGET_ENE_0
    local f20_local6 = 3
    local f20_local7 = 0
    local f20_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7, f20_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsLeotype346000_Act20(arg0, arg1, arg2)
    local f21_local0 = 5
    local f21_local1 = -1
    local f21_local2 = -1
    local f21_local3 = -1
    local f21_local4 = -1
    local f21_local5 = TARGET_ENE_0
    local f21_local6 = 3
    local f21_local7 = 0
    local f21_local8 = true
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f21_local0, f21_local1, f21_local2, 1, -1, f21_local5, f21_local6, f21_local7, f21_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f21_local0, f21_local1, f21_local2, -1, 1, f21_local5, f21_local6, f21_local7, f21_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsLeotype346000_Act22(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsLeotype346000_Act23(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsLeotype346000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Template010010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_Shoot) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13080) then
            local f27_local0 = arg1:GetDist(TARGET_ENE_0)
            local f27_local1 = arg1:GetRandam_Int(1, 100)
            local f27_local2 = arg1:GetRandam_Int(1, 100)
            if f27_local1 <= 50 then
                arg2:ClearSubGoal()
                if f27_local0 >= 5.5 then
                    local f27_local3 = arg1:GetRandam_Int(1, 3)
                    if f27_local3 == 1 then
                        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, 1, TARGET_ENE_0, 3, 0, true)
                    else
                        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, true)
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
                else
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                end
            else
                arg2:ClearSubGoal()
                if f27_local2 <= 30 then
                    local f27_local3 = arg1:GetDist(TARGET_ENE_0)
                    local f27_local4 = 6.5
                    local f27_local5 = 0
                    local f27_local6 = 999
                    local f27_local7 = 0
                    local f27_local8 = 0
                    local f27_local9 = 3
                    local f27_local10 = 3
                    Approach_Act_Flex(arg1, arg2, f27_local4, f27_local5, f27_local6, f27_local7, f27_local8, f27_local9, f27_local10)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                    local f27_local11 = 5
                    local f27_local12 = 3009
                    local f27_local13 = TARGET_ENE_0
                    local f27_local14 = 10
                    local f27_local15 = 0
                    local f27_local16 = 0
                    local f27_local17 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f27_local11, f27_local12, f27_local13, f27_local14, 0, 0, 0)
                elseif f27_local2 <= 70 then
                    local f27_local3 = arg1:GetDist(TARGET_ENE_0)
                    local f27_local4 = 13.5
                    local f27_local5 = 0
                    local f27_local6 = 999
                    local f27_local7 = 0
                    local f27_local8 = 0
                    local f27_local9 = 3
                    local f27_local10 = 3
                    Approach_Act_Flex(arg1, arg2, f27_local4, f27_local5, f27_local6, f27_local7, f27_local8, f27_local9, f27_local10)
                    local f27_local11 = 5
                    local f27_local12 = 3000
                    local f27_local13 = TARGET_ENE_0
                    local f27_local14 = 10
                    local f27_local15 = 0
                    local f27_local16 = 0
                    local f27_local17 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f27_local11, f27_local12, f27_local13, f27_local14, 0, 0, 0)
                else
                    local f27_local3 = 5
                    local f27_local4 = 3024
                    local f27_local5 = TARGET_ENE_0
                    local f27_local6 = 10
                    local f27_local7 = 0
                    local f27_local8 = 0
                    local f27_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f27_local3, f27_local4, f27_local5, f27_local6, 0, 0, 0)
                end
            end
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) then
        local f27_local0 = arg1:GetDist(TARGET_ENE_0)
        local f27_local1 = arg1:GetRandam_Int(1, 100)
        local f27_local2 = arg1:GetRandam_Int(1, 100)
        if f27_local0 <= 6 and arg1:HasSpecialEffectId(TARGET_SELF, 13081) and f27_local1 <= 40 then
            arg2:ClearSubGoal()
            if f27_local2 <= 50 then
                ChimeraJsLeotype346000_Act05(arg1, arg2)
            else
                ChimeraJsLeotype346000_Act06(arg1, arg2)
            end
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13079) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
                local f27_local0 = arg1:GetDist(TARGET_ENE_0)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                local f27_local1 = 5
                local f27_local2 = TARGET_ENE_0
                local f27_local3 = 10
                local f27_local4 = 0
                local f27_local5 = 0
                local f27_local6 = 0
                local f27_local7 = nil
                if f27_local0 <= 3 then
                    if arg1:GetRandam_Int(1, 100) <= 50 then
                        f27_local7 = 3006
                    else
                        f27_local7 = 3007
                    end
                elseif f27_local0 <= 8 then
                    if arg1:GetRandam_Int(1, 100) <= 50 then
                        f27_local7 = 3001
                    else
                        f27_local7 = 3005
                    end
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local1, f27_local7, f27_local2, f27_local3, 0, 0, 0)
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
                local f27_local0 = arg1:GetDist(TARGET_ENE_0)
                local f27_local1 = arg1:GetRandam_Int(1, 100)
                if f27_local0 <= 3 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 4, 0, 90)
                else
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                    arg2:ClearSubGoal()
                    local f27_local2 = 5
                    local f27_local3 = 3003
                    local f27_local4 = 3008
                    local f27_local5 = TARGET_ENE_0
                    local f27_local6 = 10
                    local f27_local7 = 0
                    local f27_local8 = 0
                    local f27_local9 = 0
                    if f27_local1 <= 20 then
                        f27_local4 = 3004
                    elseif f27_local1 <= 50 then
                        f27_local4 = 3001
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local2, f27_local3, f27_local5, f27_local6, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local2, f27_local4, f27_local5, f27_local6, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
                local f27_local0 = arg1:GetDist(TARGET_ENE_0)
                local f27_local1 = arg1:GetRandam_Int(1, 100)
                if f27_local0 <= 4 then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                    local f27_local2 = 5
                    local f27_local3 = 3004
                    local f27_local4 = TARGET_ENE_0
                    local f27_local5 = 10
                    local f27_local6 = 0
                    local f27_local7 = 0
                    local f27_local8 = 0
                    if f27_local1 <= 20 then
                        f27_local3 = 3008
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local2, f27_local3, f27_local4, successDist2, 0, 0, 0)
                else
                    arg2:ClearSubGoal()
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 8, 0, 90)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
                local f27_local0 = arg1:GetDist(TARGET_ENE_0)
                arg2:ClearSubGoal()
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                local f27_local1 = 5
                local f27_local2 = TARGET_ENE_0
                local f27_local3 = 10
                local f27_local4 = 0
                local f27_local5 = 0
                local f27_local6 = 0
                local f27_local7 = nil
                local f27_local8 = arg1:GetRandam_Int(1, 100)
                if f27_local0 <= 3 then
                    if f27_local8 <= 50 then
                        f27_local7 = 3006
                    else
                        f27_local7 = 3007
                    end
                elseif f27_local0 <= 8 then
                    if f27_local8 <= 50 then
                        f27_local7 = 3001
                    else
                        f27_local7 = 3005
                    end
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local1, f27_local7, f27_local2, f27_local3, 0, 0, 0)
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
                local f27_local0 = arg1:GetDist(TARGET_ENE_0)
                arg2:ClearSubGoal()
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                local f27_local1 = 5
                local f27_local2 = TARGET_ENE_0
                local f27_local3 = 10
                local f27_local4 = 0
                local f27_local5 = 0
                local f27_local6 = 0
                local f27_local7 = nil
                local f27_local8 = arg1:GetRandam_Int(1, 100)
                if f27_local0 <= 3 then
                    if f27_local8 <= 40 then
                        f27_local7 = 3002
                    elseif f27_local8 <= 80 then
                        f27_local7 = 3007
                    else
                        f27_local7 = 3024
                    end
                elseif f27_local8 <= 60 then
                    f27_local7 = 3003
                else
                    f27_local7 = 3024
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local1, f27_local7, f27_local2, f27_local3, 0, 0, 0)
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
                local f27_local0 = arg1:GetDist(TARGET_ENE_0)
                local f27_local1 = arg1:GetRandam_Int(1, 100)
                arg2:ClearSubGoal()
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
                local f27_local2 = 5
                local f27_local3 = TARGET_ENE_0
                local f27_local4 = 10
                local f27_local5 = 0
                local f27_local6 = 0
                local f27_local7 = 0
                local f27_local8 = nil
                if f27_local0 <= 3 then
                    f27_local8 = 3011
                else
                    f27_local8 = 3010
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local2, f27_local8, f27_local3, f27_local4, 0, 0, 0)
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
                local f27_local0 = arg1:GetDist(TARGET_ENE_0)
                if f27_local0 <= 11 then
                    arg2:ClearSubGoal()
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                    local f27_local1 = 5
                    local f27_local2 = TARGET_ENE_0
                    local f27_local3 = 10
                    local f27_local4 = 0
                    local f27_local5 = 0
                    local f27_local6 = 0
                    local f27_local7 = 3026
                    local f27_local8 = 3025
                    local f27_local9 = arg1:GetRandam_Int(1, 100)
                    if f27_local9 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local1, f27_local8, f27_local2, f27_local3, 0, 0, 0)
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local1, f27_local7, f27_local2, f27_local3, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
                local f27_local0 = arg1:GetDist(TARGET_ENE_0)
                local f27_local1 = arg1:GetRandam_Int(1, 100)
                if f27_local0 <= 18 then
                    arg2:ClearSubGoal()
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                    local f27_local2 = 5
                    local f27_local3 = 3028
                    local f27_local4 = TARGET_ENE_0
                    local f27_local5 = 10
                    local f27_local6 = 0
                    local f27_local7 = 0
                    local f27_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local2, f27_local3, f27_local4, f27_local5, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
                local f27_local0 = arg1:GetDist(TARGET_ENE_0)
                local f27_local1 = arg1:GetRandam_Int(1, 100)
                if f27_local0 <= 4 then
                    arg2:ClearSubGoal()
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
                    local f27_local2 = 5
                    local f27_local3 = TARGET_ENE_0
                    local f27_local4 = 10
                    local f27_local5 = 0
                    local f27_local6 = 0
                    local f27_local7 = 0
                    local f27_local8 = nil
                    local f27_local9 = arg1:GetRandam_Int(1, 100)
                    if f27_local9 <= 25 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                        f27_local8 = 3027
                    elseif f27_local9 <= 50 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                        f27_local8 = 3009
                    else
                        f27_local8 = 3011
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local2, f27_local8, f27_local3, f27_local4, 0, 0, 0)
                end
                return true
            end
        else
            if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
                local f27_local0 = arg1:GetDist(TARGET_ENE_0)
                if f27_local0 <= 2 then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                    arg2:ClearSubGoal()
                    local f27_local1 = 5
                    local f27_local2 = TARGET_ENE_0
                    local f27_local3 = 10
                    local f27_local4 = 0
                    local f27_local5 = 0
                    local f27_local6 = 0
                    local f27_local7 = nil
                    local f27_local8 = arg1:GetRandam_Int(1, 100)
                    if f27_local8 <= 50 then
                        f27_local7 = 3006
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                    else
                        f27_local7 = 3020
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local1, f27_local7, f27_local2, f27_local3, 0, 0, 0)
                elseif f27_local0 <= 6 then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                    arg2:ClearSubGoal()
                    local f27_local1 = 5
                    local f27_local2 = 3005
                    local f27_local3 = TARGET_ENE_0
                    local f27_local4 = 10
                    local f27_local5 = 0
                    local f27_local6 = 0
                    local f27_local7 = 0
                    local f27_local8 = nil
                    local f27_local9 = arg1:GetRandam_Int(1, 100)
                    if f27_local9 <= 50 then
                        f27_local8 = 3005
                    else
                        f27_local8 = 6000
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local1, f27_local8, f27_local3, f27_local4, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
                local f27_local0 = arg1:GetDist(TARGET_ENE_0)
                local f27_local1 = arg1:GetRandam_Int(1, 100)
                if f27_local0 <= 3 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 4, 0, 90)
                else
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                    arg2:ClearSubGoal()
                    local f27_local2 = 5
                    local f27_local3 = 3003
                    local f27_local4 = 3008
                    local f27_local5 = TARGET_ENE_0
                    local f27_local6 = 10
                    local f27_local7 = 0
                    local f27_local8 = 0
                    local f27_local9 = 0
                    if f27_local1 <= 20 then
                        f27_local4 = 3004
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local2, f27_local3, f27_local5, f27_local6, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local2, f27_local4, f27_local5, f27_local6, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
                local f27_local0 = arg1:GetDist(TARGET_ENE_0)
                local f27_local1 = arg1:GetRandam_Int(1, 100)
                if f27_local0 <= 4 then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                    local f27_local2 = 5
                    local f27_local3 = 3004
                    local f27_local4 = TARGET_ENE_0
                    local f27_local5 = 10
                    local f27_local6 = 0
                    local f27_local7 = 0
                    local f27_local8 = 0
                    if f27_local1 <= 30 then
                        f27_local3 = 3008
                    elseif f27_local1 <= 50 then
                        f27_local3 = 3020
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local2, f27_local3, f27_local4, successDist2, 0, 0, 0)
                else
                    arg2:ClearSubGoal()
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 8, 0, 90)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
                local f27_local0 = arg1:GetDist(TARGET_ENE_0)
                local f27_local1 = arg1:GetRandam_Int(1, 100)
                if f27_local1 <= 40 and f27_local0 <= 18 then
                    arg2:ClearSubGoal()
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                    local f27_local2 = 5
                    local f27_local3 = TARGET_ENE_0
                    local f27_local4 = 10
                    local f27_local5 = 0
                    local f27_local6 = 0
                    local f27_local7 = 0
                    local f27_local8 = 3026
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local2, f27_local8, f27_local3, f27_local4, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
                local f27_local0 = arg1:GetDist(TARGET_ENE_0)
                local f27_local1 = arg1:GetRandam_Int(1, 100)
                if f27_local0 <= 10 and f27_local1 <= 40 then
                    arg2:ClearSubGoal()
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                    local f27_local2 = 5
                    local f27_local3 = 3024
                    local f27_local4 = TARGET_ENE_0
                    local f27_local5 = 10
                    local f27_local6 = 0
                    local f27_local7 = 0
                    local f27_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local2, f27_local3, f27_local4, f27_local5, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
                local f27_local0 = arg1:GetDist(TARGET_ENE_0)
                local f27_local1 = arg1:GetRandam_Int(1, 100)
                arg2:ClearSubGoal()
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                local f27_local2 = 5
                local f27_local3 = TARGET_ENE_0
                local f27_local4 = 10
                local f27_local5 = 0
                local f27_local6 = 0
                local f27_local7 = 0
                local f27_local8 = nil
                if f27_local0 <= 3 then
                    f27_local8 = 3011
                else
                    f27_local8 = 3010
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local2, f27_local8, f27_local3, f27_local4, 0, 0, 0)
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
                local f27_local0 = arg1:GetDist(TARGET_ENE_0)
                local f27_local1 = arg1:GetRandam_Int(1, 100)
                if f27_local0 <= 11 then
                    arg2:ClearSubGoal()
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                    local f27_local2 = 5
                    local f27_local3 = 3026
                    local f27_local4 = TARGET_ENE_0
                    local f27_local5 = 10
                    local f27_local6 = 0
                    local f27_local7 = 0
                    local f27_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local2, f27_local3, f27_local4, f27_local5, 0, 0, 0)
                end
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_ChimeraJsLeotype346000_AfterAttackAct, "ChimeraJsLeotype346000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ChimeraJsLeotype346000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


