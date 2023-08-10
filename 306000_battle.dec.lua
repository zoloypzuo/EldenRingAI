RegisterTableGoal(GOAL_DosouSkeleton_Axe_306000_Battle, "DosouSkeleton_Axe_306000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DosouSkeleton_Axe_306000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 2.7 + 1)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2.5 + 1)
    local f2_local3 = arg1:HasSpecialEffectId(TARGET_SELF, 12540)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f2_local4 = arg1:GetDist(TARGET_ENE_0)
    local f2_local5 = arg1:GetEventRequest()
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = arg1:GetRandam_Int(1, 100)
    local f2_local8 = arg1:GetRandam_Int(1, 100)
    if f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[11] = 60
        f2_local0[12] = 40
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[1] = 5
        f2_local0[2] = 5
        f2_local0[4] = 0
        f2_local0[11] = 50
        f2_local0[12] = 35
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) and f2_local4 >= 2 and f2_local4 <= 10 then
        f2_local0[13] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and f2_local4 <= 2 then
        f2_local0[13] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f2_local4 <= 2 then
        f2_local0[6] = 60
        f2_local0[4] = 20
        f2_local0[10] = 80
        f2_local0[13] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f2_local4 <= 2 then
        f2_local0[7] = 60
        f2_local0[4] = 20
        f2_local0[10] = 80
        f2_local0[13] = 20
    elseif f2_local4 >= 12 then
        f2_local0[1] = 15
        f2_local0[2] = 35
        f2_local0[3] = 50
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[12] = 0
        f2_local0[10] = 100
    elseif f2_local4 >= 7.5 then
        f2_local0[1] = 20
        f2_local0[2] = 20
        f2_local0[3] = 60
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[12] = 0
        f2_local0[10] = 80
    elseif f2_local4 >= 5 then
        f2_local0[1] = 20
        f2_local0[2] = 20
        f2_local0[3] = 50
        f2_local0[4] = 0
        f2_local0[5] = 10
        f2_local0[12] = 0
        f2_local0[10] = 80
    elseif f2_local4 >= 2.5 then
        f2_local0[1] = 35
        f2_local0[2] = 30
        f2_local0[3] = 0
        f2_local0[4] = 25
        f2_local0[5] = 10
        f2_local0[12] = 0
        f2_local0[10] = 80
    else
        f2_local0[1] = 40
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 50
        f2_local0[5] = 10
        f2_local0[12] = 0
        f2_local0[10] = 100
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[1], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 15, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3007, 15, f2_local0[5], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3035, arg1:GetRandam_Int(10, 18), f2_local0[10], 1)
    if arg1:IsFinishTimer(0) == false and f2_local0[13] > 0 then
        f2_local0[13] = 1
    end
    if f2_local3 == false then
        f2_local0[10] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Axe_306000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Axe_306000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Axe_306000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Axe_306000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Axe_306000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Axe_306000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Axe_306000_Act07)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Axe_306000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Axe_306000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Axe_306000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Axe_306000_Act13)
    local f2_local9 = REGIST_FUNC(arg1, arg2, Axe_306000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function Axe_306000_Act01(arg0, arg1, arg2)
    local f3_local0 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local2 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3001
    local f3_local9 = 3005
    local f3_local10 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local11 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local12 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local13 = 0
    local f3_local14 = 0
    local f3_local15 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f3_local15 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local12, f3_local13, f3_local14, 0, 0)
    elseif f3_local15 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local13, f3_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, f3_local12, 0, 0)
    elseif f3_local15 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local13, f3_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f3_local8, TARGET_ENE_0, f3_local11, f3_local13, f3_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local9, TARGET_ENE_0, f3_local12, 0, 0)
    elseif f3_local15 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local13, f3_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f3_local8, TARGET_ENE_0, f3_local11, f3_local13, f3_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local9, TARGET_ENE_0, f3_local10, f3_local13, f3_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, f3_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local13, f3_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f3_local8, TARGET_ENE_0, f3_local11, f3_local13, f3_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local9, TARGET_ENE_0, f3_local10, f3_local13, f3_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, f3_local11, f3_local13, f3_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local9, TARGET_ENE_0, f3_local12, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Axe_306000_Act02(arg0, arg1, arg2)
    local f4_local0 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local2 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = arg0:HasSpecialEffectId(TARGET_SELF, 12540)
    local f4_local8 = 3002
    local f4_local9 = 3035
    local f4_local10 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local11 = 0
    local f4_local12 = 0
    local f4_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local8, TARGET_ENE_0, f4_local10, f4_local11, f4_local12, 0, 0)
    if arg0:GetAttackPassedTime(3035) >= 15 and f4_local7 == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local9, TARGET_ENE_0, 20, f4_local11, f4_local12, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Axe_306000_Act03(arg0, arg1, arg2)
    local f5_local0 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local2 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3003
    local f5_local8 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    local f5_local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Axe_306000_Act04(arg0, arg1, arg2)
    local f6_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3004
    local f6_local8 = 3013
    local f6_local9 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local10 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local11 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = arg0:GetRandam_Int(1, 100)
    local f6_local15 = arg0:GetRandam_Int(1, 100)
    if f6_local14 <= 40 then
        if f6_local15 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local11, f6_local12, f6_local13, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local8, TARGET_ENE_0, f6_local11, f6_local12, f6_local13, 0, 0)
        end
    elseif f6_local15 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local10, f6_local12, f6_local13, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local8, TARGET_ENE_0, f6_local11, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local8, TARGET_ENE_0, f6_local9, f6_local12, f6_local13, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local7, TARGET_ENE_0, f6_local11, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Axe_306000_Act05(arg0, arg1, arg2)
    local f7_local0 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local2 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3007
    local f7_local8 = 3001
    local f7_local9 = 3005
    local f7_local10 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local11 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local12 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local13 = 0
    local f7_local14 = 0
    local f7_local15 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f7_local15 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local12, f7_local13, f7_local14, 0, 0)
    elseif f7_local15 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local10, f7_local13, f7_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local8, TARGET_ENE_0, f7_local12, 0, 0)
    elseif f7_local15 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local10, f7_local13, f7_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f7_local8, TARGET_ENE_0, f7_local11, f7_local13, f7_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local9, TARGET_ENE_0, f7_local12, 0, 0)
    elseif f7_local15 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local10, f7_local13, f7_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f7_local8, TARGET_ENE_0, f7_local11, f7_local13, f7_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f7_local9, TARGET_ENE_0, f7_local10, f7_local13, f7_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local8, TARGET_ENE_0, f7_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local10, f7_local13, f7_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f7_local8, TARGET_ENE_0, f7_local11, f7_local13, f7_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f7_local9, TARGET_ENE_0, f7_local10, f7_local13, f7_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f7_local8, TARGET_ENE_0, f7_local11, f7_local13, f7_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local9, TARGET_ENE_0, f7_local12, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Axe_306000_Act06(arg0, arg1, arg2)
    local f8_local0 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f8_local2 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3011
    local f8_local8 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    local f8_local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Axe_306000_Act07(arg0, arg1, arg2)
    local f9_local0 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local2 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 8
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3012
    local f9_local8 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    local f9_local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Axe_306000_Act10(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f10_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local2 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 8
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3035
    local f10_local8 = 3036
    local f10_local9 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 2
    local f10_local11 = 150
    local f10_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Axe_306000_Act11(arg0, arg1, arg2)
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

function Axe_306000_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Axe_306000_Act13(arg0, arg1, arg2)
    arg0:SetTimer(0, 5)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, arg0:GetRandam_Int(90, 120))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Axe_306000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DosouSkeleton_Axe_306000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f17_local0 = arg1:HasSpecialEffectId(TARGET_SELF, 12540)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    local f17_local1 = 3.5
    local f17_local2 = 40
    if Damaged_Act(arg1, arg2, f17_local1, f17_local2) then
        arg2:ClearSubGoal()
        return true
    end
    local f17_local3 = 6 - arg1:GetMapHitRadius(TARGET_SELF)
    local f17_local4 = 0
    local f17_local5 = 20
    local f17_local6 = arg1:GetDist(TARGET_ENE_0)
    local f17_local7 = arg1:GetRandam_Int(1, 100)
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f17_local6 <= 2 and f17_local7 <= 40 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, f17_local3, f17_local4, f17_local5, 0, 0)
        return true
    elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and f17_local6 <= 2 and f17_local7 <= 40 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, f17_local3, f17_local4, f17_local5, 0, 0)
        return true
    else

    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and f17_local6 <= 8 and f17_local0 == true then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, f17_local3, f17_local4, f17_local5, 0, 0)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_DosouSkeleton_Axe_306000_AfterAttackAct, "DosouSkeleton_Axe_306000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DosouSkeleton_Axe_306000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f18_local0 = arg1:GetDist(TARGET_ENE_0)
    local f18_local1 = arg1:GetRandam_Int(1, 100)
    local f18_local2 = arg1:GetRandam_Int(1, 100)
    local f18_local3 = 0
    local f18_local4 = arg1:GetRandam_Float(2.5, 4.5)
    local f18_local5 = arg1:GetRandam_Int(0, 1)
    local f18_local6 = arg1:GetRandam_Int(30, 45)
    local f18_local7 = arg1:GetRandam_Float(2.5, 4.5)
    local f18_local8 = f18_local0 + arg1:GetRandam_Float(2.5, 4.5)
    local f18_local9 = -1
    if arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f18_local0 <= 6 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f18_local7, TARGET_ENE_0, 8, TARGET_ENE_0, true, f18_local9)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f18_local4, TARGET_ENE_0, f18_local5, f18_local6, true, true, f18_local9)
        end
    elseif arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f18_local0 <= 6 then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f18_local7, TARGET_ENE_0, 8, TARGET_ENE_0, true, f18_local9)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f18_local4, TARGET_ENE_0, f18_local5, f18_local6, true, true, f18_local9)
        end
    elseif f18_local0 >= 8 and f18_local2 <= 20 then
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f18_local4, TARGET_ENE_0, f18_local5, f18_local6, true, true, f18_local9)
    else

    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


