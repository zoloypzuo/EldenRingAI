RegisterTableGoal(GOAL_WorldTreeDemon481000_Battle, "WorldTreeDemon481000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WorldTreeDemon481000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:SetNumber(0, 0)
    arg1:SetNumber(5, 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17302)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17303)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17304)
    local f2_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 17300)
    local f2_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 17320)
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 17321)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 17322)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 17331)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 17301)
    if f2_local10 == true then
        f2_local0[6] = 100
    elseif f2_local6 == true and arg1:GetHpRate(TARGET_SELF) <= 0.7 and arg1:GetNumber(5) == 0 then
        f2_local0[15] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 100) then
        f2_local0[17] = 100
    elseif f2_local3 >= 10 then
        f2_local0[1] = 20
        f2_local0[2] = 20
        f2_local0[3] = 20
        f2_local0[6] = 40
        f2_local0[7] = 20
    elseif f2_local3 >= 6 then
        f2_local0[1] = 20
        f2_local0[2] = 20
        f2_local0[3] = 20
        f2_local0[6] = 40
        f2_local0[7] = 20
    elseif f2_local3 >= 3 then
        f2_local0[1] = 20
        f2_local0[2] = 20
        f2_local0[3] = 20
        f2_local0[6] = 40
        f2_local0[8] = 40
    else
        f2_local0[4] = 20
        f2_local0[5] = 30
        f2_local0[6] = 30
        f2_local0[8] = 30
        f2_local0[12] = 30
    end
    if f2_local10 == false and arg1:GetHpRate(TARGET_SELF) >= 0.7 then
        f2_local0[6] = 0
    end
    if f2_local9 == true then
        f2_local0[8] = f2_local0[8] * 2
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 8, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 8, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 5, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3005, 5, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3006, 20, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3007, 8, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3016, 5, f2_local0[8], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3015, 5, f2_local0[12], 0)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 170) then
        f2_local0[4] = 0
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 170) then
        f2_local0[5] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_Act17)
    local f2_local11 = REGIST_FUNC(arg1, arg2, WorldTreeDemon481000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local11, f2_local2)
    
end

function WorldTreeDemon481000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = arg0:GetRandam_Int(1, 100)
    local f3_local2 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = 0
    local f3_local4 = 999
    local f3_local5 = 100
    local f3_local6 = 0
    local f3_local7 = 2
    local f3_local8 = 2
    Approach_Act_Flex(arg0, arg1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8)
    local f3_local9 = 3000
    local f3_local10 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 1.5
    local f3_local12 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local9, TARGET_ENE_0, f3_local10, f3_local11, f3_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WorldTreeDemon481000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = arg0:GetRandam_Int(1, 100)
    local f4_local2 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 0
    local f4_local4 = 999
    local f4_local5 = 100
    local f4_local6 = 0
    local f4_local7 = 2
    local f4_local8 = 2
    Approach_Act_Flex(arg0, arg1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8)
    local f4_local9 = 3001
    local f4_local10 = 3010
    local f4_local11 = 20
    local f4_local12 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local13 = 1.5
    local f4_local14 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local9, TARGET_ENE_0, f4_local11, f4_local13, f4_local14, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WorldTreeDemon481000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = arg0:GetRandam_Int(1, 100)
    local f5_local2 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 0
    local f5_local4 = 999
    local f5_local5 = 100
    local f5_local6 = 0
    local f5_local7 = 2
    local f5_local8 = 2
    Approach_Act_Flex(arg0, arg1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7, f5_local8)
    local f5_local9 = 3002
    local f5_local10 = 3011
    local f5_local11 = 3012
    local f5_local12 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local13 = 1.5
    local f5_local14 = 130
    local f5_local15 = 20
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local9, TARGET_ENE_0, f5_local15, f5_local13, f5_local14, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WorldTreeDemon481000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = arg0:GetRandam_Int(1, 100)
    local f6_local2 = 20
    local f6_local3 = 3003
    local f6_local4 = 3012
    local f6_local5 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local6 = 0
    local f6_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local3, TARGET_ENE_0, f6_local2, f6_local6, f6_local7, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WorldTreeDemon481000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = arg0:GetRandam_Int(1, 100)
    local f7_local2 = 3005
    local f7_local3 = 3011
    local f7_local4 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local5 = 1.5
    local f7_local6 = 130
    local f7_local7 = 20
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local2, TARGET_ENE_0, f7_local7, f7_local5, f7_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WorldTreeDemon481000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = arg0:GetRandam_Int(1, 100)
    local f8_local2 = 3006
    local f8_local3 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local4 = 0
    local f8_local5 = 180
    local f8_local6 = 20
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local2, TARGET_ENE_0, f8_local6, f8_local4, f8_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WorldTreeDemon481000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = arg0:GetRandam_Int(1, 100)
    local f9_local2 = 11.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 0
    local f9_local4 = 999
    local f9_local5 = 100
    local f9_local6 = 0
    local f9_local7 = 2
    local f9_local8 = 2
    Approach_Act_Flex(arg0, arg1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7, f9_local8)
    local f9_local9 = 3007
    local f9_local10 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local11 = 1.5
    local f9_local12 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local9, TARGET_ENE_0, f9_local10, f9_local11, f9_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WorldTreeDemon481000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = arg0:GetRandam_Int(1, 100)
    local f10_local2 = 3008
    local f10_local3 = 3016
    local f10_local4 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local5 = 0
    local f10_local6 = 0
    local f10_local7 = arg0:HasSpecialEffectId(TARGET_SELF, 17331)
    if f10_local7 == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local2, TARGET_ENE_0, f10_local4, f10_local5, f10_local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local3, TARGET_ENE_0, f10_local4, f10_local5, f10_local6, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WorldTreeDemon481000_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetRandam_Int(1, 100)
    local f11_local2 = 1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 1 - arg0:GetMapHitRadius(TARGET_SELF) + 6
    local f11_local4 = 0
    local f11_local5 = 3005
    local f11_local6 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local7 = 0
    local f11_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local5, TARGET_ENE_0, f11_local6, f11_local7, f11_local8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WorldTreeDemon481000_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WorldTreeDemon481000_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetRandam_Int(1, 100)
    local f13_local2 = 3005
    local f13_local3 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local4 = 0
    local f13_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local2, TARGET_ENE_0, f13_local3, f13_local4, f13_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WorldTreeDemon481000_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    local f14_local2 = 3015
    local f14_local3 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local4 = 0
    local f14_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local2, TARGET_ENE_0, f14_local3, f14_local4, f14_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WorldTreeDemon481000_Act15(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(5, 1)
    local f15_local2 = 3009
    local f15_local3 = 999
    local f15_local4 = 0
    local f15_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local2, TARGET_ENE_0, f15_local3, f15_local4, f15_local5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 999, 180, 180)
    
end

function WorldTreeDemon481000_Act16(arg0, arg1, arg2)
    local f16_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 17327)
    arg0:SetNumber(0, 1)
    local f16_local1 = 3021
    local f16_local2 = 999
    local f16_local3 = 0
    local f16_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, f16_local2, f16_local3, f16_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WorldTreeDemon481000_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WorldTreeDemon481000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_WorldTreeDemon481000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f21_local0 = arg1:GetDist(TARGET_ENE_0)
    local f21_local1 = arg1:GetRandam_Int(1, 100)
    local f21_local2 = arg1:GetRandam_Int(1, 100)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17302)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17303)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17304)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(17302) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and f21_local0 <= 15 and f21_local0 > 2 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 20, 0, 90)
            return true
        end
        if arg1:GetSpecialEffectActivateInterruptId(17303) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and f21_local0 <= 15 and f21_local0 > 2 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 20, 0, 90)
            return true
        end
        if arg1:GetSpecialEffectActivateInterruptId(17304) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and f21_local0 <= 15 and f21_local0 > 2 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 20, 0, 90)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_WorldTreeDemon481000_AfterAttackAct, "WorldTreeDemon481000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WorldTreeDemon481000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


