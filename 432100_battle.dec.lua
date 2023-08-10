RegisterTableGoal(GOAL_RoamLowSoldierChildHatchet432100_Battle, "RoamLowSoldierChildHatchet432100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamLowSoldierChildHatchet432100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 0)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 83)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 11971)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 11975)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 11980)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 11981)
    if f2_local10 == true and arg1:GetNumber(1) ~= 1 then
        f2_local0[4] = 100
    elseif f2_local11 == true and arg1:GetNumber(1) ~= 1 then
        f2_local0[4] = 100
    elseif f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 7 then
            f2_local0[4] = 60
            f2_local0[8] = 40
            f2_local0[9] = 40
            f2_local0[31] = 100
        else
            f2_local0[4] = 30
            f2_local0[8] = 40
            f2_local0[9] = 40
            f2_local0[30] = 60
        end
    elseif f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 7 then
            f2_local0[4] = 60
            f2_local0[8] = 40
            f2_local0[9] = 40
            f2_local0[10] = 20
            f2_local0[31] = 100
        else
            f2_local0[4] = 30
            f2_local0[8] = 40
            f2_local0[9] = 40
            f2_local0[10] = 20
            f2_local0[30] = 60
        end
    elseif f2_local8 == true or arg1:GetLatestSoundBehaviorID() == 432101 or arg1:GetLatestSoundBehaviorID() == 432102 then
        if f2_local3 >= 7 then
            f2_local0[4] = 60
            f2_local0[8] = 40
            f2_local0[9] = 40
            f2_local0[10] = 40
            f2_local0[15] = 60
            f2_local0[31] = 100
        else
            f2_local0[4] = 30
            f2_local0[8] = 40
            f2_local0[9] = 40
            f2_local0[10] = 40
            f2_local0[15] = 30
            f2_local0[30] = 60
        end
    elseif f2_local3 >= 5 then
        f2_local0[1] = 3
        f2_local0[4] = 5
        f2_local0[5] = 6
        f2_local0[10] = 6
        f2_local0[15] = 5
    elseif InsideRange(arg1, arg2, 0, 90, 0, 99) then
        f2_local0[1] = 3
        f2_local0[2] = 1
        f2_local0[3] = 2
        f2_local0[4] = 3
        f2_local0[5] = 4
        f2_local0[6] = 1
        f2_local0[10] = 6
        f2_local0[15] = 3
    elseif InsideRange(arg1, arg2, 90, 90, 0, 99) then
        f2_local0[2] = 4
        f2_local0[3] = 2
        f2_local0[5] = 2
        f2_local0[10] = 6
    elseif InsideRange(arg1, arg2, 270, 90, 0, 99) then
        f2_local0[3] = 2
        f2_local0[5] = 2
        f2_local0[6] = 4
        f2_local0[10] = 6
    else
        f2_local0[7] = 100
    end
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3020, 15, f2_local0[4], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3021, 15, f2_local0[4], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3035, 8, f2_local0[10], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3030, 15, f2_local0[15], 1)
    if f2_local3 > 3 then
        f2_local0[3] = 0
    end
    if f2_local8 == true or arg1:GetLatestSoundBehaviorID() == 432101 or arg1:GetLatestSoundBehaviorID() == 432102 then
        f2_local0[4] = 0
        f2_local0[15] = 0
        f2_local0[30] = 0
        f2_local0[31] = 0
    else
        f2_local0[8] = 0
        f2_local0[9] = 0
        arg1:SetNumber(4, 0)
    end
    if arg1:GetNumber(4) == 1 then
        f2_local0[8] = 0
    elseif arg1:GetNumber(4) == 0 then
        f2_local0[9] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        f2_local0[4] = 0
    else
        f2_local0[15] = 0
    end
    if f2_local9 == true then
        f2_local0[4] = 0
    else
        f2_local0[10] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildHatchet432100_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildHatchet432100_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildHatchet432100_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildHatchet432100_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildHatchet432100_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildHatchet432100_Act6)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildHatchet432100_Act7)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildHatchet432100_Act8)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildHatchet432100_Act9)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildHatchet432100_Act10)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildHatchet432100_Act15)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildHatchet432100_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildHatchet432100_Act31)
    local f2_local12 = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildHatchet432100_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local12, f2_local2)
    
end

function RoamLowSoldierChildHatchet432100_Act1(arg0, arg1, arg2)
    local f3_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 0
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 4
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildHatchet432100_Act2(arg0, arg1, arg2)
    local f4_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 0
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 4
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3002
    local f4_local8 = 3003
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 7
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f4_local7, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f4_local8, TARGET_ENE_0, f4_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildHatchet432100_Act3(arg0, arg1, arg2)
    local f5_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 0
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 4
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3004
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildHatchet432100_Act4(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f6_local0 = 10
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 0
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 4
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = arg0:GetDist(TARGET_ENE_0)
    local f6_local8 = 3020
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 0
    local f6_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildHatchet432100_Act5(arg0, arg1, arg2)
    local f7_local0 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 0
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 4
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = arg0:HasSpecialEffectId(TARGET_SELF, 11975)
    local f7_local8 = 3001
    local f7_local9 = 3005
    local f7_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local11 = 0
    local f7_local12 = 0
    local f7_local13 = arg0:GetDist(TARGET_ENE_0)
    if f7_local13 <= 1.3 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    if f7_local7 == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f7_local9, TARGET_ENE_0, f7_local10, f7_local11, f7_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f7_local8, TARGET_ENE_0, f7_local10, f7_local11, f7_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildHatchet432100_Act6(arg0, arg1, arg2)
    local f8_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 0
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 4
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3003
    local f8_local8 = 3002
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 7
    local f8_local10 = 0
    local f8_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f8_local7, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f8_local8, TARGET_ENE_0, f8_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildHatchet432100_Act7(arg0, arg1, arg2)
    local f9_local0 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 0
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 4
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = arg0:HasSpecialEffectId(TARGET_SELF, 11975)
    local f9_local8 = 3001
    local f9_local9 = 3005
    local f9_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local11 = 0
    local f9_local12 = 0
    if f9_local7 == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f9_local9, TARGET_ENE_0, f9_local10, f9_local11, f9_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f9_local8, TARGET_ENE_0, f9_local10, f9_local11, f9_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildHatchet432100_Act8(arg0, arg1, arg2)
    local f10_local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(4, 1)
    if f10_local0 > 85 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, arg0:GetRandam_Int(1, 4), TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBL, arg0:GetRandam_Int(6, 10))
    elseif f10_local0 > 70 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, arg0:GetRandam_Int(1, 4), TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBR, arg0:GetRandam_Int(6, 10))
    elseif f10_local0 > 35 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, arg0:GetRandam_Int(1, 4), TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, arg0:GetRandam_Int(8, 12))
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, arg0:GetRandam_Int(1, 4), TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, arg0:GetRandam_Int(8, 12))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildHatchet432100_Act9(arg0, arg1, arg2)
    arg0:SetNumber(4, 0)
    local f11_local0 = arg0:GetRandam_Int(1, 100)
    if f11_local0 > 65 then
        local f11_local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local2 = f11_local1 + 0
        local f11_local3 = f11_local1 + 0
        local f11_local4 = 100
        local f11_local5 = 0
        local f11_local6 = 2
        local f11_local7 = 4
        Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
        local f11_local8 = 3000
        local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local10 = 0
        local f11_local11 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    elseif f11_local0 > 35 then
        local f11_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local2 = f11_local1 + 0
        local f11_local3 = f11_local1 + 0
        local f11_local4 = 100
        local f11_local5 = 0
        local f11_local6 = 2
        local f11_local7 = 4
        Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
        local f11_local8 = 3002
        local f11_local9 = 3003
        local f11_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 7
        local f11_local11 = 0
        local f11_local12 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f11_local8, TARGET_ENE_0, f11_local10, f11_local11, f11_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f11_local9, TARGET_ENE_0, f11_local10, 0, 0, 0, 0)
    else
        local f11_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 11975)
        local f11_local2 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local3 = f11_local2 + 0
        local f11_local4 = f11_local2 + 0
        local f11_local5 = 100
        local f11_local6 = 0
        local f11_local7 = 2
        local f11_local8 = 4
        Approach_Act_Flex(arg0, arg1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7, f11_local8)
        local f11_local9 = 3001
        local f11_local10 = 3005
        local f11_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local12 = 0
        local f11_local13 = 0
        local f11_local14 = arg0:GetDist(TARGET_ENE_0)
        if f11_local14 <= 1.3 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
        if f11_local1 == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f11_local10, TARGET_ENE_0, f11_local11, f11_local12, f11_local13, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f11_local9, TARGET_ENE_0, f11_local11, f11_local12, f11_local13, 0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildHatchet432100_Act10(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = f12_local1 + 0
    local f12_local3 = f12_local1 + 0
    local f12_local4 = 100
    local f12_local5 = 0
    local f12_local6 = 2
    local f12_local7 = 4
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    if f12_local0 <= 2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    local f12_local8 = arg0:GetDist(TARGET_ENE_0)
    local f12_local9 = 3035
    local f12_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local11 = 2
    local f12_local12 = 60
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f12_local9, TARGET_ENE_0, f12_local10, f12_local11, f12_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildHatchet432100_Act15(arg0, arg1, arg2)
    local f13_local0 = 10
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 0
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 4
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = arg0:GetDist(TARGET_ENE_0)
    local f13_local8 = 3030
    local f13_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local10 = 0
    local f13_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f13_local8, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildHatchet432100_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildHatchet432100_Act31(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = arg0:GetRandam_Float(2, 4)
    local f15_local2 = arg0:GetRandam_Float(5, 6)
    local f15_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_local1, TARGET_ENE_0, f15_local2, TARGET_SELF, false, f15_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildHatchet432100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RoamLowSoldierChildHatchet432100_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f19_local0 = arg1:GetDist(TARGET_ENE_0)
    local f19_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f19_local2 = arg1:GetRandam_Int(1, 100)
    local f19_local3 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and (not not arg1:GetSpecialEffectActivateInterruptId(83) or not not arg1:GetSpecialEffectActivateInterruptId(90) or arg1:GetSpecialEffectActivateInterruptId(6992)) then
        if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
            arg2:ClearSubGoal()
            RoamLowSoldierChildHatchet432100_Act4(arg1, arg2)
            return true
        elseif f19_local0 >= 5 then
            arg2:ClearSubGoal()
            RoamLowSoldierChildHatchet432100_Act5(arg1, arg2)
            return true
        else
            arg2:ClearSubGoal()
            RoamLowSoldierChildHatchet432100_Act1(arg1, arg2)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(83) then
        arg2:ClearSubGoal()
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_RoamLowSoldierChildHatchet432100_AfterAttackAct, "RoamLowSoldierChildHatchet432100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamLowSoldierChildHatchet432100_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


