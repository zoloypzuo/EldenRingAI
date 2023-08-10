RegisterTableGoal(GOAL_PumpkinHead4Frail434000_Battle, "PumpkinHead4Frail434000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PumpkinHead4Frail434000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3026)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 79)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 13250) == true then
        if f2_local3 >= 7 then
            f2_local0[7] = 80
            f2_local0[8] = 20
        else
            f2_local0[7] = 100
            f2_local0[8] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13259) == true then
        f2_local0[20] = 25
        f2_local0[21] = 25
        f2_local0[22] = 25
        f2_local0[23] = 25
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13260) == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13256) == true then
            f2_local0[24] = 100
        else
            f2_local0[25] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13261) == true then
        f2_local0[25] = 100
    elseif arg1:HasSpecialEffectAttribute(TARGET_SELF, 395) == true then
        f2_local0[5] = 100
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 79) == true then
        f2_local0[11] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if f2_local3 >= 3 then
            f2_local0[17] = 100
        else
            f2_local0[9] = 40
            f2_local0[17] = 60
        end
    elseif f2_local3 >= 4 then
        f2_local0[1] = 0
        f2_local0[2] = 20
        f2_local0[3] = 20
        f2_local0[4] = 20
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[10] = 40
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[17] = 0
        f2_local0[18] = 0
        f2_local0[19] = 0
    elseif f2_local3 >= 2 then
        f2_local0[1] = 20
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 30
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[10] = 50
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[17] = 0
        f2_local0[18] = 0
        f2_local0[19] = 0
    else
        f2_local0[1] = 20
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 40
        f2_local0[10] = 40
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[17] = 0
        f2_local0[18] = 0
        f2_local0[19] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[2], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[4], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[6], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act11)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_Act25)
    local f2_local6 = REGIST_FUNC(arg1, arg2, PumpkinHead4Frail434000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function PumpkinHead4Frail434000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 5.5
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 0
    local f3_local7 = 3
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 5.5
    local f3_local9 = 3000
    local f3_local10 = TARGET_ENE_0
    local f3_local11 = 7
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:SetTimer(0, 10)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local8, f3_local9, f3_local10, f3_local11, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 8.5
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 3
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 5
    local f4_local9 = 3002
    local f4_local10 = TARGET_ENE_0
    local f4_local11 = 8.5
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local8, f4_local9, f4_local10, f4_local11, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act03(arg0, arg1, arg2)
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
    local f5_local9 = 3006
    local f5_local10 = TARGET_ENE_0
    local f5_local11 = 8.5
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local8, f5_local9, f5_local10, f5_local11, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 5
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 0
    local f6_local7 = 3
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 5
    local f6_local9 = 3007
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 5
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act05(arg0, arg1, arg2)
    local f7_local0 = 10
    local f7_local1 = 3010
    local f7_local2 = 3011
    local f7_local3 = 3026
    local f7_local4 = arg0:GetRandam_Int(3014, 3016)
    local f7_local5 = 3026
    local f7_local6 = 3026
    local f7_local7 = arg0:GetRandam_Int(3014, 3016)
    local f7_local8 = arg0:GetRandam_Int(3014, 3016)
    local f7_local9 = 3026
    local f7_local10 = 3026
    local f7_local11 = TARGET_LOCALPLAYER
    local f7_local12 = 50
    local f7_local13 = 0
    local f7_local14 = 0
    local f7_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f7_local0, f7_local1, f7_local11, f7_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 1.3
    local f8_local2 = 0
    local f8_local3 = 100
    local f8_local4 = 100
    local f8_local5 = 0
    local f8_local6 = 0
    local f8_local7 = 3
    local f8_local8 = 5
    local f8_local9 = 3004
    local f8_local10 = 3005
    local f8_local11 = TARGET_ENE_0
    local f8_local12 = 2
    local f8_local13 = 4
    local f8_local14 = 0
    local f8_local15 = 0
    local f8_local16 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local8, f8_local9, f8_local11, f8_local13, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f8_local8, f8_local10, f8_local11, successDist2, f8_local14, f8_local15, f8_local16)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act07(arg0, arg1, arg2)
    local f9_local0 = 5
    local f9_local1 = 3012
    local f9_local2 = TARGET_ENE_0
    local f9_local3 = 50
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local0, f9_local1, f9_local2, f9_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act08(arg0, arg1, arg2)
    local f10_local0 = 5
    local f10_local1 = 3013
    local f10_local2 = TARGET_ENE_0
    local f10_local3 = 50
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local0, f10_local1, f10_local2, f10_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act09(arg0, arg1, arg2)
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

function PumpkinHead4Frail434000_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 3.5
    local f12_local2 = 0
    local f12_local3 = 999
    local f12_local4 = 100
    local f12_local5 = 0
    local f12_local6 = 3
    local f12_local7 = 3
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f12_local8 = 5
    local f12_local9 = 3017
    local f12_local10 = 3018
    local f12_local11 = 3003
    if arg0:GetRandam_Int(1, 100) <= 30 then
        f12_local11 = 3003
    end
    local f12_local12 = TARGET_ENE_0
    local f12_local13 = 10
    local f12_local14 = 0
    local f12_local15 = 0
    local f12_local16 = 0
    if f12_local0 >= 2.5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local8, f12_local9, f12_local12, f12_local13, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f12_local8, f12_local10, f12_local12, successDist2, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local8, f12_local10, f12_local12, f12_local13, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 0.1
    local f13_local2 = 0
    local f13_local3 = 999
    local f13_local4 = 100
    local f13_local5 = 0
    local f13_local6 = 3
    local f13_local7 = 3
    Approach_Act_Flex(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    local f13_local8 = 3110
    local f13_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local10 = 0
    local f13_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 0.5, f13_local8, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act13(arg0, arg1, arg2)
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
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act14(arg0, arg1, arg2)
    local f15_local0 = 10
    local f15_local1 = TARGET_ENE_0
    local f15_local2 = 2
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
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act15(arg0, arg1, arg2)
    local f16_local0 = 10
    local f16_local1 = TARGET_ENE_0
    local f16_local2 = 2
    local f16_local3 = TARGET_SELF
    local f16_local4 = false
    local f16_local5 = arg0:GetDist(TARGET_ENE_0)
    local f16_local6 = 0
    local f16_local7 = arg0:GetRandam_Int(1, 100)
    local f16_local8 = -1
    if f16_local7 <= f16_local6 then
        f16_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act16(arg0, arg1, arg2)
    local f17_local0 = arg0:GetRandam_Int(1, 3)
    local f17_local1 = TARGET_ENE_0
    local f17_local2 = 2
    local f17_local3 = TARGET_SELF
    local f17_local4 = true
    local f17_local5 = arg0:GetDist(TARGET_ENE_0)
    local f17_local6 = 0
    local f17_local7 = arg0:GetRandam_Int(1, 100)
    local f17_local8 = -1
    if f17_local7 <= f17_local6 then
        f17_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local0, f17_local1, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), f17_local4, IsGuard)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act18(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act19(arg0, arg1, arg2)
    local f20_local0 = 5
    local f20_local1 = -1
    local f20_local2 = 1
    local f20_local3 = 1
    local f20_local4 = 1
    local f20_local5 = TARGET_ENE_0
    local f20_local6 = 3
    local f20_local7 = 0
    local f20_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7, f20_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act20(arg0, arg1, arg2)
    local f21_local0 = 5
    local f21_local1 = 3026
    local f21_local2 = TARGET_LOCALPLAYER
    local f21_local3 = 100
    local f21_local4 = 0
    local f21_local5 = 0
    local f21_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f21_local0, f21_local1, f21_local2, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act21(arg0, arg1, arg2)
    local f22_local0 = 5
    local f22_local1 = 3014
    local f22_local2 = TARGET_LOCALPLAYER
    local f22_local3 = 100
    local f22_local4 = 0
    local f22_local5 = 0
    local f22_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f22_local0, f22_local1, f22_local2, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act22(arg0, arg1, arg2)
    local f23_local0 = 5
    local f23_local1 = 3015
    local f23_local2 = TARGET_LOCALPLAYER
    local f23_local3 = 100
    local f23_local4 = 0
    local f23_local5 = 0
    local f23_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f23_local0, f23_local1, f23_local2, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act23(arg0, arg1, arg2)
    local f24_local0 = 5
    local f24_local1 = 3016
    local f24_local2 = TARGET_LOCALPLAYER
    local f24_local3 = 100
    local f24_local4 = 0
    local f24_local5 = 0
    local f24_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f24_local0, f24_local1, f24_local2, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act24(arg0, arg1, arg2)
    local f25_local0 = 5
    local f25_local1 = 3011
    local f25_local2 = TARGET_LOCALPLAYER
    local f25_local3 = 100
    local f25_local4 = 0
    local f25_local5 = 0
    local f25_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f25_local0, f25_local1, f25_local2, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_Act25(arg0, arg1, arg2)
    local f26_local0 = 5
    local f26_local1 = 3004
    local f26_local2 = 3011
    local f26_local3 = TARGET_ENE_0
    local f26_local4 = TARGET_SELF
    local f26_local5 = 100
    local f26_local6 = 0
    local f26_local7 = 0
    local f26_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f26_local0, f26_local1, f26_local3, f26_local5, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f26_local0, f26_local2, f26_local3, successDist2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PumpkinHead4Frail434000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_PumpkinHead4Frail434000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(79) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            local f30_local0 = arg1:GetDist(TARGET_ENE_0)
            local f30_local1 = arg1:GetRandam_Int(1, 100)
            if f30_local0 <= 3 then
                arg2:ClearSubGoal()
                if f30_local1 <= 20 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                    local f30_local2 = 5
                    local f30_local3 = 3001
                    local f30_local4 = 3003
                    local f30_local5 = TARGET_ENE_0
                    local f30_local6 = 4
                    local f30_local7 = 0
                    local f30_local8 = 0
                    local f30_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f30_local2, f30_local3, f30_local5, f30_local6, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f30_local2, f30_local3, f30_local5, f30_local6, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f30_local2, f30_local3, f30_local5, f30_local6, 0, 0, 0)
                    if f30_local1 <= 5 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f30_local2, f30_local3, f30_local5, f30_local6, 0, 0, 0)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f30_local2, f30_local3, f30_local5, f30_local6, 0, 0, 0)
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f30_local2, f30_local4, f30_local5, f30_local6, 0, 0, 0)
                elseif f30_local1 <= 60 then
                    local f30_local2 = 5
                    local f30_local3 = 3003
                    local f30_local4 = TARGET_ENE_0
                    local f30_local5 = 10
                    local f30_local6 = 0
                    local f30_local7 = 0
                    local f30_local8 = 0
                    if f30_local0 <= 1.5 then
                        f30_local3 = 3025
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f30_local2, f30_local3, f30_local4, successDist2, 0, 0, 0)
                end
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            local f30_local0 = arg1:GetDist(TARGET_ENE_0)
            if f30_local0 <= 3 then
                local f30_local1 = arg1:GetRandam_Int(1, 100)
                if f30_local1 <= 70 then
                    if arg1:IsFinishTimer(0) then
                        arg2:ClearSubGoal()
                        local f30_local2 = 3003
                        local f30_local3 = arg1:GetRandam_Int(1, 100)
                        if f30_local3 <= 30 then
                            f30_local2 = 3019
                        end
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f30_local2, TARGET_ENE_0, 8, 0, 90)
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 8, 0, 90)
                    end
                else
                    arg2:ClearSubGoal()
                    local f30_local2 = 3003
                    local f30_local3 = arg1:GetRandam_Int(1, 100)
                    if f30_local3 <= 30 then
                        f30_local2 = 3019
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f30_local2, TARGET_ENE_0, 8, 0, 90)
                end
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            local f30_local0 = arg1:GetDist(TARGET_ENE_0)
            arg2:ClearSubGoal()
            local f30_local1 = 5
            local f30_local2 = nil
            local f30_local3 = TARGET_ENE_0
            local f30_local4 = 10
            local f30_local5 = 0
            local f30_local6 = 0
            local f30_local7 = 0
            if f30_local0 <= 1.5 then
                local f30_local8 = 3025
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f30_local1, f30_local8, f30_local3, successDist2, 0, 0, 0)
            elseif f30_local0 <= 3 then
                local f30_local8 = 3003
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f30_local1, f30_local8, f30_local3, successDist2, 0, 0, 0)
            elseif f30_local0 <= 4 then
                local f30_local8 = 3019
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f30_local1, f30_local8, f30_local3, successDist2, 0, 0, 0)
            else

            end
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_PumpkinHead4Frail434000_AfterAttackAct, "PumpkinHead4Frail434000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PumpkinHead4Frail434000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


