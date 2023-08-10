RegisterTableGoal(GOAL_GHOST_920090_Battle, "MoujaSoldier_Sword_110005_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GHOST_920090_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 2.7 + 1)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2.5 + 1)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetEventRequest()
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetRandam_Int(1, 100)
    f2_local0[1] = 50
    f2_local0[4] = 0
    f2_local0[7] = 50
    f2_local0[8] = 0
    f2_local0[14] = 0
    f2_local1[1] = REGIST_FUNC(arg1, arg2, MoujaSoldier110005_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, MoujaSoldier110005_Act02)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, MoujaSoldier110005_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, MoujaSoldier110005_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, MoujaSoldier110005_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, MoujaSoldier110005_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, MoujaSoldier110005_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, MoujaSoldier110005_Act09)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, MoujaSoldier110005_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, MoujaSoldier110005_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, MoujaSoldier110005_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, MoujaSoldier110005_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, MoujaSoldier110005_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, MoujaSoldier110005_Act16)
    local f2_local8 = REGIST_FUNC(arg1, arg2, MoujaSoldier110005_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function MoujaSoldier110005_Act01(arg0, arg1, arg2)
    local f3_local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local2 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f3_local3 = 50
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3001
    local f3_local9 = 3002
    local f3_local10 = 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local11 = 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local13 = 0
    local f3_local14 = 0
    local f3_local15 = arg0:GetRandam_Int(1, 100)
    if f3_local15 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local12, f3_local13, f3_local14, 0, 0)
    elseif f3_local15 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local13, f3_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, f3_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local13, f3_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, f3_local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local9, TARGET_ENE_0, f3_local12, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function MoujaSoldier110005_Act02(arg0, arg1, arg2)
    local f4_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local2 = 7 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f4_local3 = 50
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3003
    local f4_local8 = 3001
    local f4_local9 = 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local11 = 0
    local f4_local12 = 0
    local f4_local13 = arg0:GetRandam_Int(1, 100)
    if f4_local13 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local10, f4_local11, f4_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local9, f4_local11, f4_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local8, TARGET_ENE_0, f4_local10, 0, 0)
    end
    
end

function MoujaSoldier110005_Act04(arg0, arg1, arg2)
    local f5_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f5_local3 = 50
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3005
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    local f5_local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function MoujaSoldier110005_Act05(arg0, arg1, arg2)
    local f6_local0 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local2 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f6_local3 = 50
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3006
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    local f6_local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function MoujaSoldier110005_Act06(arg0, arg1, arg2)
    local f7_local0 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local2 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f7_local3 = 50
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3007
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = -1
    local f7_local10 = 45
    local f7_local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoujaSoldier110005_Act07(arg0, arg1, arg2)
    local f8_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f8_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f8_local3 = 50
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3008
    local f8_local8 = 3005
    local f8_local9 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f8_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local11 = 0
    local f8_local12 = 0
    local f8_local13 = arg0:GetRandam_Int(1, 100)
    if f8_local13 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local10, f8_local11, f8_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local9, f8_local11, f8_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local8, TARGET_ENE_0, f8_local10, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function MoujaSoldier110005_Act08(arg0, arg1, arg2)
    local f9_local0 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local2 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f9_local3 = 50
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3009
    local f9_local8 = 3005
    local f9_local9 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local11 = 0
    local f9_local12 = 0
    local f9_local13 = arg0:GetRandam_Int(1, 100)
    if f9_local13 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local10, f9_local11, f9_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local9, f9_local11, f9_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f9_local8, TARGET_ENE_0, f9_local10, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function MoujaSoldier110005_Act09(arg0, arg1, arg2)
    local f10_local0 = 13.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 13.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local2 = 13.4 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f10_local3 = 50
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3011
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = -1
    local f10_local10 = 45
    local f10_local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoujaSoldier110005_Act11(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 10
    local f11_local2 = 12
    local f11_local3 = 0
    local f11_local4 = arg0:GetDist(TARGET_ENE_0)
    if f11_local1 <= f11_local4 then
        Approach_Act(arg0, arg1, f11_local1, f11_local2, f11_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoujaSoldier110005_Act12(arg0, arg1, arg2)
    local f12_local0 = 0
    local f12_local1 = arg0:GetRandam_Int(1, 100)
    local f12_local2 = -1
    if f12_local1 <= f12_local0 then
        f12_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f12_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoujaSoldier110005_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoujaSoldier110005_Act14(arg0, arg1, arg2)
    local f14_local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f14_local2 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f14_local3 = 50
    local f14_local4 = 0
    local f14_local5 = 4
    local f14_local6 = 8
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3000
    local f14_local8 = 3009
    local f14_local9 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f14_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local11 = 0
    local f14_local12 = 0
    local f14_local13 = arg0:GetRandam_Int(1, 100)
    if f14_local13 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local10, f14_local11, f14_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local9, f14_local11, f14_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f14_local8, TARGET_ENE_0, f14_local10, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function MoujaSoldier110000_Act15(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local f15_local2 = math.abs(f15_local1)
    local f15_local3 = arg0:GetRandam_Int(1, 100)
    if f15_local0 >= 12 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.7, 1.3), TARGET_ENE_0, 0, 0, 0)
    else
        local f15_local4 = 3011
        local f15_local5 = 999
        local f15_local6 = -1
        local f15_local7 = 45
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.7, 1.3), TARGET_ENE_0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local4, TARGET_ENE_0, f15_local5, f15_local6, f15_local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.7, 1.3), TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoujaSoldier110005_Act16(arg0, arg1, arg2)
    local f16_local0 = 999
    local f16_local1 = 13.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f16_local2 = 13.4 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f16_local3 = 50
    local f16_local4 = 0
    local f16_local5 = 4
    local f16_local6 = 8
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 3011
    local f16_local8 = 999
    local f16_local9 = -1
    local f16_local10 = 45
    local f16_local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local7, TARGET_ENE_0, f16_local8, f16_local9, f16_local10, 0, 0)
    local f16_local12 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.3, 2.2), TARGET_ENE_0)
    f16_local12:SetTargetRange(0, 7, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MoujaSoldier110005_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MoujaSoldier_Sword_110005_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
    
end


