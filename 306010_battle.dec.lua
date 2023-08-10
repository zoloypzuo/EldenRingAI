RegisterTableGoal(GOAL_DosouSkeleton_PoleSword_306010_Battle, "DosouSkeleton_PoleSword_306010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DosouSkeleton_PoleSword_306010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
    arg1:EnableUnfavorableAttackCheck(1000000, 3003)
    arg1:EnableUnfavorableAttackCheck(1000000, 3004)
    arg1:EnableUnfavorableAttackCheck(1000000, 3005)
    arg1:EnableUnfavorableAttackCheck(1000000, 3006)
    arg1:EnableUnfavorableAttackCheck(1000000, 3007)
    arg1:EnableUnfavorableAttackCheck(1000000, 3008)
    arg1:EnableUnfavorableAttackCheck(1000000, 3009)
    arg1:EnableUnfavorableAttackCheck(1000000, 3011)
    arg1:EnableUnfavorableAttackCheck(1000000, 3012)
    arg1:EnableUnfavorableAttackCheck(1000000, 3013)
    arg1:EnableUnfavorableAttackCheck(1000000, 3020)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 2.7 + 1)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2.5 + 1)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetEventRequest()
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetRandam_Int(1, 100)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 12540)
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[11] = 60
        f2_local0[12] = 40
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[1] = 5
        f2_local0[2] = 5
        f2_local0[3] = 3
        f2_local0[4] = 2
        f2_local0[11] = 50
        f2_local0[12] = 35
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and f2_local3 >= 2 and f2_local3 <= 10 then
        f2_local0[13] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and f2_local3 <= 2 then
        f2_local0[13] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f2_local3 <= 2 then
        f2_local0[1] = 20
        f2_local0[7] = 20
        f2_local0[5] = 20
        f2_local0[10] = 80
        f2_local0[13] = 45
        f2_local0[14] = 15
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and f2_local3 <= 2 then
        f2_local0[1] = 20
        f2_local0[8] = 20
        f2_local0[5] = 20
        f2_local0[10] = 80
        f2_local0[13] = 45
        f2_local0[14] = 15
    elseif arg1:IsTargetGuard(TARGET_ENE_0) and f2_local3 > 1.7 and f2_local3 <= 5 and f2_local7 <= 40 then
        f2_local0[5] = 100
        f2_local0[9] = 20
        f2_local0[10] = 100
    elseif arg1:IsTargetGuard(TARGET_ENE_0) and f2_local3 <= 1.7 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and f2_local7 <= 50 then
        f2_local0[5] = 100
        f2_local0[9] = 20
        f2_local0[10] = 100
    elseif f2_local3 >= 10 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and f2_local7 <= 70 then
        f2_local0[4] = 100
    elseif f2_local3 >= 8 then
        f2_local0[1] = 60
        f2_local0[2] = 30
        f2_local0[6] = 10
        f2_local0[10] = 100
    elseif f2_local3 >= 6 then
        f2_local0[1] = 60
        f2_local0[2] = 30
        f2_local0[6] = 20
        f2_local0[10] = 100
    elseif f2_local3 >= 4 then
        f2_local0[1] = 55
        f2_local0[2] = 35
        f2_local0[6] = 20
        f2_local0[14] = 0
        f2_local0[10] = 100
    elseif f2_local3 >= 3 then
        f2_local0[1] = 20
        f2_local0[2] = 35
        f2_local0[3] = 5
        f2_local0[14] = 70
        f2_local0[10] = 100
    elseif f2_local3 >= 2 then
        f2_local0[1] = 20
        f2_local0[2] = 20
        f2_local0[3] = 5
        f2_local0[14] = 70
        f2_local0[10] = 100
    else
        f2_local0[3] = 5
        f2_local0[5] = 75
        f2_local0[9] = 20
        f2_local0[14] = 20
        f2_local0[10] = 100
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 8, f2_local0[2], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3005, 8, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3006, 8, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3011, 8, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3012, 8, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3013, 8, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3035, arg1:GetRandam_Int(10, 18), f2_local0[10], 1)
    if arg1:IsFinishTimer(0) == false and f2_local0[13] > 0 then
        f2_local0[13] = 1
    end
    if arg1:IsFinishTimer(1) == false and f2_local0[14] > 0 then
        f2_local0[14] = 1
    end
    if f2_local8 == false then
        f2_local0[10] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, DosouSkeleton_PoleSword_306010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, DosouSkeleton_PoleSword_306010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, DosouSkeleton_PoleSword_306010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, DosouSkeleton_PoleSword_306010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, DosouSkeleton_PoleSword_306010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, DosouSkeleton_PoleSword_306010_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, DosouSkeleton_PoleSword_306010_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, DosouSkeleton_PoleSword_306010_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, DosouSkeleton_PoleSword_306010_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, DosouSkeleton_PoleSword_306010_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, DosouSkeleton_PoleSword_306010_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, DosouSkeleton_PoleSword_306010_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, DosouSkeleton_PoleSword_306010_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, DosouSkeleton_PoleSword_306010_Act14)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, DosouSkeleton_PoleSword_306010_Act20)
    local f2_local9 = REGIST_FUNC(arg1, arg2, DosouSkeleton_PoleSword_306010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function DosouSkeleton_PoleSword_306010_Act01(arg0, arg1, arg2)
    local f3_local0 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local2 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local3 = 75
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3001
    local f3_local9 = 3002
    local f3_local10 = 3009
    local f3_local11 = 3007
    local f3_local12 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local13 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local14 = 6.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local15 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local16 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local17 = 0
    local f3_local18 = 0
    local f3_local19 = arg0:GetRandam_Int(1, 100)
    local f3_local20 = arg0:GetRandam_Int(1, 100)
    if f3_local19 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local12, f3_local17, f3_local18, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, f3_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local10, TARGET_ENE_0, f3_local16, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local13, f3_local17, f3_local18, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local9, TARGET_ENE_0, f3_local15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local11, TARGET_ENE_0, f3_local16, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DosouSkeleton_PoleSword_306010_Act02(arg0, arg1, arg2)
    local f4_local0 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local2 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local3 = 75
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3002
    local f4_local8 = 3008
    local f4_local9 = 3007
    local f4_local10 = 6.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local11 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local13 = 0
    local f4_local14 = 0
    local f4_local15 = arg0:GetRandam_Int(1, 100)
    if f4_local15 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local10, f4_local13, f4_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local8, TARGET_ENE_0, f4_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local11, f4_local13, f4_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local9, TARGET_ENE_0, f4_local12, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DosouSkeleton_PoleSword_306010_Act03(arg0, arg1, arg2)
    local f5_local0 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local2 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local3 = 75
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3003
    local f5_local8 = 3002
    local f5_local9 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local11 = 0
    local f5_local12 = 0
    local f5_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local9, f5_local11, f5_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local8, TARGET_ENE_0, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DosouSkeleton_PoleSword_306010_Act04(arg0, arg1, arg2)
    local f6_local0 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local2 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3004
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    local f6_local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DosouSkeleton_PoleSword_306010_Act05(arg0, arg1, arg2)
    local f7_local0 = 1.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 1.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local2 = 1.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local3 = 75
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3005
    local f7_local8 = 3003
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 0
    local f7_local11 = 0
    local f7_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local7, TARGET_ENE_0, 0, f7_local10, f7_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local8, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DosouSkeleton_PoleSword_306010_Act06(arg0, arg1, arg2)
    local f8_local0 = 6.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 6.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f8_local2 = 6.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local3 = 75
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3006
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    local f8_local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DosouSkeleton_PoleSword_306010_Act07(arg0, arg1, arg2)
    local f9_local0 = 3011
    local f9_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 0
    local f9_local3 = 0
    local f9_local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DosouSkeleton_PoleSword_306010_Act08(arg0, arg1, arg2)
    local f10_local0 = 3012
    local f10_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 0
    local f10_local3 = 0
    local f10_local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local1, f10_local2, f10_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DosouSkeleton_PoleSword_306010_Act09(arg0, arg1, arg2)
    local f11_local0 = 3013
    local f11_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 0
    local f11_local3 = 0
    local f11_local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local1, f11_local2, f11_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DosouSkeleton_PoleSword_306010_Act10(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f12_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f12_local2 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 3
    local f12_local6 = 8
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3035
    local f12_local8 = 3036
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local10 = 2
    local f12_local11 = 150
    local f12_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DosouSkeleton_PoleSword_306010_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 10
    local f13_local2 = 12
    local f13_local3 = 0
    local f13_local4 = arg0:GetDist(TARGET_ENE_0)
    if f13_local1 <= f13_local4 then
        Approach_Act(arg0, arg1, f13_local1, f13_local2, f13_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeleton_PoleSword_306010_Act12(arg0, arg1, arg2)
    local f14_local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    f14_local0:SetTargetRange(1, 0.5, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeleton_PoleSword_306010_Act13(arg0, arg1, arg2)
    arg0:SetTimer(0, 5)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1.5, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeleton_PoleSword_306010_Act14(arg0, arg1, arg2)
    arg0:SetTimer(1, 6)
    local f16_local0 = arg0:GetRandam_Float(1, 1.5)
    local f16_local1 = -1
    local f16_local2 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f16_local0, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, f16_local1)
    f16_local2:SetTargetRange(1, 1, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeleton_PoleSword_306010_Act20(arg0, arg1, arg2)
    local f17_local0 = 3000
    local f17_local1 = 3001
    local f17_local2 = 3004
    local f17_local3 = 0
    local f17_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local0, TARGET_ENE_0, 999, f17_local3, f17_local4)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f17_local1, TARGET_ENE_0, 999)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f17_local2, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DosouSkeleton_PoleSword_306010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DosouSkeleton_PoleSword_306010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
        arg2:ClearSubGoal()
        return true
    end
    local f21_local0 = 3.5
    local f21_local1 = 40
    if Damaged_Act(arg1, arg2, f21_local0, f21_local1) then
        arg2:ClearSubGoal()
        return true
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and targetDist <= 8 and TypeBeast == true then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_DosouSkeleton_PoleSword_306010_AfterAttackAct, "DosouSkeleton_PoleSword_306010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DosouSkeleton_PoleSword_306010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f22_local0 = arg1:GetDist(TARGET_ENE_0)
    local f22_local1 = arg1:GetRandam_Int(1, 100)
    local f22_local2 = arg1:GetRandam_Int(1, 100)
    local f22_local3 = 0
    local f22_local4 = arg1:GetRandam_Float(2.5, 4.5)
    local f22_local5 = arg1:GetRandam_Int(0, 1)
    local f22_local6 = arg1:GetRandam_Int(30, 45)
    local f22_local7 = arg1:GetRandam_Float(2.5, 4.5)
    local f22_local8 = f22_local0 + arg1:GetRandam_Float(2.5, 4.5)
    local f22_local9 = -1
    if arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f22_local0 <= 6 then
            local f22_local10 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f22_local7, TARGET_ENE_0, 8, TARGET_ENE_0, true, f22_local9)
            f22_local10:SetTargetRange(1, 1, 999)
        else
            local f22_local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f22_local4, TARGET_ENE_0, f22_local5, f22_local6, true, true, f22_local9)
            f22_local10:SetTargetRange(1, 1, 999)
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f22_local0 <= 6 then
            local f22_local10 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f22_local7, TARGET_ENE_0, 8, TARGET_ENE_0, true, f22_local9)
            f22_local10:SetTargetRange(1, 1, 999)
        else
            local f22_local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f22_local4, TARGET_ENE_0, f22_local5, f22_local6, true, true, f22_local9)
            f22_local10:SetTargetRange(1, 1, 999)
        end
    elseif f22_local0 >= 6 then
        if f22_local2 <= 50 then
            local f22_local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f22_local4, TARGET_ENE_0, f22_local5, f22_local6, true, true, f22_local9)
            f22_local10:SetTargetRange(1, 1, 999)
        end
    elseif f22_local0 >= 4 then
        if f22_local2 <= 35 then
            local f22_local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f22_local4, TARGET_ENE_0, f22_local5, f22_local6, true, true, f22_local9)
            f22_local10:SetTargetRange(1, 1, 999)
        end
    elseif f22_local0 >= 2 then
        if f22_local2 <= 10 then
            local f22_local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f22_local4, TARGET_ENE_0, f22_local5, f22_local6, true, true, f22_local9)
            f22_local10:SetTargetRange(1, 1, 999)
        elseif f22_local2 <= 15 then
            local f22_local10 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f22_local7, TARGET_ENE_0, f22_local8, TARGET_ENE_0, true, f22_local9)
            f22_local10:SetTargetRange(1, 1, 999)
        end
    elseif f22_local0 >= 0.5 then
        if f22_local2 <= 0 then
            local f22_local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f22_local4, TARGET_ENE_0, f22_local5, f22_local6, true, true, f22_local9)
            f22_local10:SetTargetRange(1, 1, 999)
        elseif f22_local2 <= 15 then
            local f22_local10 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f22_local7, TARGET_ENE_0, f22_local8, TARGET_ENE_0, true, f22_local9)
            f22_local10:SetTargetRange(1, 1, 999)
        end
    elseif f22_local2 <= 0 then
        local f22_local10 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f22_local4, TARGET_ENE_0, f22_local5, f22_local6, true, true, f22_local9)
        f22_local10:SetTargetRange(1, 1, 999)
    elseif f22_local2 <= 15 then
        local f22_local10 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f22_local7, TARGET_ENE_0, f22_local8, TARGET_ENE_0, true, f22_local9)
        f22_local10:SetTargetRange(1, 1, 999)
    else

    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
        arg2:ClearSubGoal()
        return true
    end
    return false
    
end


