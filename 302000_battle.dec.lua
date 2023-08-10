RegisterTableGoal(GOAL_LossRaceSoldierLargeAxe302000_Battle, "LossRaceSoldierLargeAxe302000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LossRaceSoldierLargeAxe302000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(5000000, 3000)
    arg1:EnableUnfavorableAttackCheck(5000000, 3001)
    arg1:EnableUnfavorableAttackCheck(5000000, 3002)
    arg1:EnableUnfavorableAttackCheck(5000000, 3003)
    arg1:EnableUnfavorableAttackCheck(5000000, 3004)
    arg1:EnableUnfavorableAttackCheck(5000000, 3010)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 10859)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10192)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetEventRequest()
    if f2_local3 < 1 then
        if arg1:GetHpRate(TARGET_SELF) <= 0.6 then
            f2_local0[1] = 20
            f2_local0[3] = 40
            f2_local0[5] = 40
            f2_local0[12] = 5
            f2_local0[31] = 10
            f2_local0[32] = 15
        else
            f2_local0[1] = 35
            f2_local0[3] = 60
            f2_local0[12] = 5
            f2_local0[31] = 10
            f2_local0[32] = 15
        end
    elseif f2_local3 < 3 then
        f2_local0[1] = 60
        f2_local0[3] = 5
        f2_local0[4] = 10
        f2_local0[14] = 10
        f2_local0[16] = 15
        f2_local0[31] = 10
        f2_local0[32] = 15
    elseif f2_local3 < 5 then
        f2_local0[4] = 50
        f2_local0[14] = 10
        f2_local0[16] = 40
        f2_local0[30] = 5
        f2_local0[31] = 10
    elseif f2_local3 < 7 then
        f2_local0[4] = 30
        f2_local0[14] = 30
        f2_local0[17] = 40
        f2_local0[30] = 25
        f2_local0[31] = 10
    else
        f2_local0[4] = 30
        f2_local0[14] = 30
        f2_local0[17] = 40
        f2_local0[30] = 25
        f2_local0[31] = 10
    end
    arg1:SetNumber(2, 0)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 5, f2_local0[5], 1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10880) == false then
        f2_local0[30] = 0
        f2_local0[31] = 0
        f2_local0[32] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10859) then
        f2_local0[30] = 0
        f2_local0[31] = 0
        f2_local0[32] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act05)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act19)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act19)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_Act32)
    local f2_local6 = REGIST_FUNC(arg1, arg2, LossRaceSoldierLargeAxe302000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function LossRaceSoldierLargeAxe302000_Act01(arg0, arg1, arg2)
    local f3_local0 = 3
    local f3_local1 = 0
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3001
    local f3_local9 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local13 = 0
    local f3_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10192)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local9, f3_local13, f3_local14, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act02(arg0, arg1, arg2)
    local f4_local0 = 3
    local f4_local1 = 999
    local f4_local2 = 0
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3000
    local f4_local8 = 3001
    local f4_local9 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local11 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local13 = 0
    local f4_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10192)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local9, f4_local13, f4_local14, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local8, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act03(arg0, arg1, arg2)
    local f5_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 50
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    local f5_local7 = 3002
    local f5_local8 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local12 = 0
    local f5_local13 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) then
        Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), f5_local12, f5_local13, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), f5_local12, f5_local13, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act04(arg0, arg1, arg2)
    local f6_local0 = 7.5
    local f6_local1 = 999
    local f6_local2 = 0
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3003
    local f6_local8 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local12 = 0
    local f6_local13 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10192)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), f6_local12, f6_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act05(arg0, arg1, arg2)
    local f7_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 50
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    local f7_local7 = 3004
    local f7_local8 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local12 = 0
    local f7_local13 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10192)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), f7_local12, f7_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act08(arg0, arg1, arg2)
    local f8_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = -999
    local f8_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3010
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act09(arg0, arg1, arg2)
    local f9_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local f9_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f9_local3 = 50
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3011
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act10(arg0, arg1, arg2)
    local f10_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = -999
    local f10_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3010
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act11(arg0, arg1, arg2)
    local f11_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 50
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 8
    local f11_local7 = 3010
    local f11_local8 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local9 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local11 = 0
    local f11_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10192)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local10, f11_local11, f11_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act12(arg0, arg1, arg2)
    local f12_local0 = 0
    local f12_local1 = arg0:GetRandam_Int(1, 100)
    local f12_local2 = -1
    if f12_local1 <= f12_local0 then
        f12_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, true, f12_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act13(arg0, arg1, arg2)
    local f13_local0 = 100
    local f13_local1 = arg0:GetRandam_Int(1, 100)
    local f13_local2 = -1
    if f13_local1 <= f13_local0 then
        f13_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f13_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act14(arg0, arg1, arg2)
    local f14_local0 = 0
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    local f14_local2 = -1
    if f14_local1 <= f14_local0 then
        f14_local2 = 9910
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) then
        if f14_local1 < 50 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_L, 100)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_R, 100)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f14_local2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act16(arg0, arg1, arg2)
    local f16_local0 = 0
    local f16_local1 = arg0:GetRandam_Int(1, 100)
    local f16_local2 = -1
    if f16_local1 <= f16_local0 then
        f16_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_SELF, true, f16_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 4, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act18(arg0, arg1, arg2)
    local f18_local0 = arg0:GetRandam_Int(1, 100)
    local f18_local1 = 0
    local f18_local2 = -1
    if f18_local0 <= f18_local1 then
        f18_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, f18_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act19(arg0, arg1, arg2)
    local f19_local0 = arg0:GetRandam_Int(1, 100)
    local f19_local1 = 0
    local f19_local2 = -1
    if f19_local0 <= f19_local1 then
        f19_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, f19_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act20(arg0, arg1, arg2)
    local f20_local0 = 3008
    local f20_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local4 = 0
    local f20_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local0, TARGET_ENE_0, f20_local3, f20_local4, f20_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act21(arg0, arg1, arg2)
    local f21_local0 = 3009
    local f21_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local4 = 0
    local f21_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f21_local0, TARGET_ENE_0, f21_local3, f21_local4, f21_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act30(arg0, arg1, arg2)
    local f22_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act31(arg0, arg1, arg2)
    local f23_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    if f23_local0 > 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_Act32(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f24_local0 = arg0:GetRandam_Int(1, 100)
    local f24_local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6011, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierLargeAxe302000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_UncoverTombNobleManRapier430011_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f28_local0 = arg1:GetRandam_Int(1, 100)
    local f28_local1 = arg1:GetRandam_Int(1, 100)
    local f28_local2 = arg1:GetDist(TARGET_ENE_0)
    local f28_local3 = arg1:GetHpRate(TARGET_SELF)
    local f28_local4 = arg1:GetNumber(0)
    local f28_local5 = arg1:GetNumber(1)
    local f28_local6 = arg1:GetRandam_Int(0, 10)
    local f28_local7 = arg1:GetRandam_Int(0, 5)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and f28_local2 < 2.5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 6) and 3 + f28_local7 <= arg1:GetAttackPassedTime(3004) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1.5, 3004, TARGET_ENE_0, 0, 0, 0)
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5029) == true and arg1:HasSpecialEffectId(TARGET_ENE_0, 10859) == false then
        local f28_local8 = arg1:GetDist(TARGET_ENE_0)
        local f28_local9 = arg1:GetRandam_Int(1, 100)
        selectFate_ToB = 1
        selectFate_ToBL = 1
        selectFate_ToBR = 1
        selectFate_ToL = 1
        selectFate_ToR = 1
        warpDist_x = arg1:GetRandam_Int(3, 5)
        if arg1:GetNumber(15) == 1 then
            selectFate_ToBL = 0
            selectFate_ToBR = 0
            selectFate_ToL = 0
            selectFate_ToR = 0
        elseif arg1:GetNumber(15) == 2 then
            selectFate_ToB = 0
            warpDist_x = arg1:GetRandam_Int(7, 10)
        elseif arg1:GetNumber(15) == 3 then
            selectFate_ToB = 0
            selectFate_ToBR = 0
            selectFate_ToR = 0
        elseif arg1:GetNumber(15) == 4 then
            selectFate_ToB = 0
            selectFate_ToBL = 0
            selectFate_ToL = 0
        end
        local f28_local10 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
        local f28_local11 = 0
        local f28_local12 = 0
        local f28_local13 = arg1:GetMapHitRadius(TARGET_SELF)
        local f28_local14 = arg1:GetDist(TARGET_ENE_0)
        local f28_local15 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToB, warpDist_x + f28_local13, f28_local13, 0) <= warpDist_x then
            selectFate_ToB = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_x + f28_local13, f28_local13, 0) <= warpDist_x then
            selectFate_ToBL = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_x + f28_local13, f28_local13, 0) <= warpDist_x then
            selectFate_ToBR = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, warpDist_x + f28_local13, f28_local13, 0) <= warpDist_x then
            selectFate_ToL = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, warpDist_x + f28_local13, f28_local13, 0) <= warpDist_x then
            selectFate_ToR = 0
        end
        local f28_local16 = arg1:GetRandam_Int(0, selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR)
        local f28_local17 = AI_DIR_TYPE_ToB
        local f28_local18 = 0
        local f28_local19 = TARGET_ENE_0
        if 0 == selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
            arg1:SetNumber(15, 5)
        elseif 0 ~= AI_DIR_TYPE_ToB and f28_local16 <= selectFate_ToB then
            f28_local17 = AI_DIR_TYPE_ToB
            f28_local18 = warpDist_x
            f28_local19 = TARGET_ENE_0
        elseif 0 ~= selectFate_2 and f28_local16 <= selectFate_ToB + selectFate_ToBL then
            f28_local17 = AI_DIR_TYPE_ToBL
            f28_local18 = warpDist_x
            f28_local19 = TARGET_ENE_0
        elseif 0 ~= selectFate_3 and f28_local16 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR then
            f28_local17 = AI_DIR_TYPE_ToBR
            f28_local18 = warpDist_x
            f28_local19 = TARGET_ENE_0
        elseif 0 ~= selectFate_4 and f28_local16 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL then
            f28_local17 = AI_DIR_TYPE_ToL
            f28_local18 = warpDist_x
            f28_local19 = TARGET_ENE_0
        elseif 0 ~= selectFate_4 and f28_local16 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
            f28_local17 = AI_DIR_TYPE_ToR
            f28_local18 = warpDist_x
            f28_local19 = TARGET_ENE_0
        end
        if arg1:GetNumber(15) == 5 then
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f28_local17, f28_local18, f28_local19, 5, -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        else
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f28_local17, f28_local18, f28_local19, 5, -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false and f28_local2 <= 3 and f28_local0 <= 20 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 0, 0, 0, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 5, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 10192) and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false and f28_local2 < 1.5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 260, 5, 1.5) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptType(0) == 83 and f28_local2 <= 8 and arg1:GetNumber(2) == 0 then
        arg2:ClearSubGoal()
        if f28_local2 >= 2 then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
        arg1:SetNumber(2, 1)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_LossRaceSoldierLargeAxe302001_AfterAttackAct, "LossRaceSoldierLargeAxe302001_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LossRaceSoldierLargeAxe302001_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


