RegisterTableGoal(GOAL_RoamLowSoldierChildShotel432110_Battle, "RoamLowSoldierChildShotel432110_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamLowSoldierChildShotel432110_Battle, true)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 83)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = 0
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 11971)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 11975)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 11980)
    local f2_local12 = arg1:HasSpecialEffectId(TARGET_SELF, 11981)
    if f2_local11 == true and arg1:GetNumber(1) ~= 1 then
        f2_local0[4] = 100
    elseif f2_local12 == true and arg1:GetNumber(1) ~= 1 then
        f2_local0[4] = 100
    elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 7 then
            f2_local0[6] = 60
            f2_local0[8] = 40
            f2_local0[9] = 40
            f2_local0[33] = 100
        else
            f2_local0[6] = 30
            f2_local0[8] = 40
            f2_local0[9] = 40
            f2_local0[30] = 60
        end
    elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 7 then
            f2_local0[6] = 60
            f2_local0[8] = 40
            f2_local0[9] = 40
            f2_local0[10] = 20
            f2_local0[33] = 100
        else
            f2_local0[6] = 30
            f2_local0[8] = 40
            f2_local0[9] = 40
            f2_local0[10] = 20
            f2_local0[30] = 60
        end
    elseif f2_local9 == true or arg1:GetLatestSoundBehaviorID() == 432101 or arg1:GetLatestSoundBehaviorID() == 432102 then
        if f2_local3 >= 7 then
            f2_local0[6] = 60
            f2_local0[8] = 40
            f2_local0[9] = 40
            f2_local0[10] = 40
            f2_local0[15] = 60
            f2_local0[33] = 100
        else
            f2_local0[6] = 30
            f2_local0[8] = 40
            f2_local0[9] = 40
            f2_local0[10] = 40
            f2_local0[15] = 30
            f2_local0[30] = 60
        end
    elseif f2_local3 >= 5 then
        f2_local0[1] = 5
        f2_local0[2] = 3
        f2_local0[3] = 1
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 5
        f2_local0[10] = 5
        f2_local0[15] = 5
    elseif InsideRange(arg1, arg2, 0, 120, 0, 99) then
        f2_local0[1] = 20
        f2_local0[3] = 25
        f2_local0[4] = 15
        f2_local0[6] = 40
        f2_local0[7] = 40
        f2_local0[10] = 30
        f2_local0[15] = 40
    elseif InsideRange(arg1, arg2, 0, 240, 0, 99) then
        f2_local0[1] = 15
        f2_local0[3] = 10
        f2_local0[4] = 60
        f2_local0[7] = 15
        f2_local0[10] = 50
    else
        f2_local0[1] = 30
        f2_local0[3] = 30
        f2_local0[7] = 40
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3010, 5, f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3017, 5, f2_local0[1], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3014, 5, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3020, 15, f2_local0[6], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3021, 15, f2_local0[6], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3035, 8, f2_local0[10], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3030, 15, f2_local0[15], 1)
    if f2_local3 > 3 then
        f2_local0[5] = 0
    end
    if f2_local9 == true or arg1:GetLatestSoundBehaviorID() == 432101 or arg1:GetLatestSoundBehaviorID() == 432102 then
        f2_local0[6] = 0
        f2_local0[15] = 0
        f2_local0[30] = 0
        f2_local0[33] = 0
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
        f2_local0[6] = 0
    else
        f2_local0[15] = 0
    end
    if f2_local10 == true then
        f2_local0[6] = 0
    else
        f2_local0[10] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildShotel432110_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildShotel432110_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildShotel432110_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildShotel432110_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildShotel432110_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildShotel432110_Act6)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildShotel432110_Act7)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildShotel432110_Act8)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildShotel432110_Act9)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildHatchet432110_Act10)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildHatchet432110_Act15)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildShotel432110_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildShotel432110_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildShotel432110_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildShotel432110_Act33)
    local f2_local13 = REGIST_FUNC(arg1, arg2, RoamLowSoldierChildShotel432110_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local13, f2_local2)
    
end

function RoamLowSoldierChildShotel432110_Act1(arg0, arg1, arg2)
    local f3_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 0
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 4
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = arg0:HasSpecialEffectId(TARGET_SELF, 11975)
    local f3_local8 = 3010
    local f3_local9 = 3017
    local f3_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 0
    local f3_local12 = 0
    if f3_local7 == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f3_local9, TARGET_ENE_0, f3_local10, f3_local11, f3_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f3_local8, TARGET_ENE_0, f3_local10, f3_local11, f3_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildShotel432110_Act2(arg0, arg1, arg2)
    local f4_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 0
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 4
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3011
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    local f4_local11 = arg0:GetRandam_Int(1, 100)
    if f4_local11 <= 60 then
        if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 99) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildShotel432110_Act3(arg0, arg1, arg2)
    local f5_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 0
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 4
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3012
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    local f5_local11 = arg0:GetRandam_Int(1, 100)
    if f5_local11 <= 60 then
        if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 99) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildShotel432110_Act4(arg0, arg1, arg2)
    local f6_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 0
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 4
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3013
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildShotel432110_Act5(arg0, arg1, arg2)
    local f7_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 0
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 4
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3014
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildShotel432110_Act6(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f8_local0 = 10
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 0
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 4
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = arg0:GetDist(TARGET_ENE_0)
    local f8_local8 = 3020
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 0
    local f8_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildShotel432110_Act7(arg0, arg1, arg2)
    local f9_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 0
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 4
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = arg0:HasSpecialEffectId(TARGET_SELF, 11975)
    local f9_local8 = 3016
    local f9_local9 = 3018
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

function RoamLowSoldierChildShotel432110_Act8(arg0, arg1, arg2)
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

function RoamLowSoldierChildShotel432110_Act9(arg0, arg1, arg2)
    local f11_local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(4, 0)
    if f11_local0 > 65 then
        local f11_local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local2 = f11_local1 + 0
        local f11_local3 = f11_local1 + 0
        local f11_local4 = 100
        local f11_local5 = 0
        local f11_local6 = 2
        local f11_local7 = 4
        Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
        local f11_local8 = arg0:HasSpecialEffectId(TARGET_SELF, 11975)
        local f11_local9 = 3010
        local f11_local10 = 3017
        local f11_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local12 = 0
        local f11_local13 = 0
        if f11_local8 == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f11_local10, TARGET_ENE_0, f11_local11, f11_local12, f11_local13, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f11_local9, TARGET_ENE_0, f11_local11, f11_local12, f11_local13, 0, 0)
        end
    elseif f11_local0 > 35 then
        local f11_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local2 = f11_local1 + 0
        local f11_local3 = f11_local1 + 0
        local f11_local4 = 100
        local f11_local5 = 0
        local f11_local6 = 2
        local f11_local7 = 4
        Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
        local f11_local8 = 3011
        local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local10 = 0
        local f11_local11 = 0
        local f11_local12 = arg0:GetRandam_Int(1, 100)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    else
        local f11_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local2 = f11_local1 + 0
        local f11_local3 = f11_local1 + 0
        local f11_local4 = 100
        local f11_local5 = 0
        local f11_local6 = 2
        local f11_local7 = 4
        Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
        local f11_local8 = arg0:HasSpecialEffectId(TARGET_SELF, 11975)
        local f11_local9 = 3016
        local f11_local10 = 3018
        local f11_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local12 = 0
        local f11_local13 = 0
        if f11_local8 == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f11_local10, TARGET_ENE_0, f11_local11, f11_local12, f11_local13, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f11_local9, TARGET_ENE_0, f11_local11, f11_local12, f11_local13, 0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildHatchet432110_Act10(arg0, arg1, arg2)
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

function RoamLowSoldierChildHatchet432110_Act15(arg0, arg1, arg2)
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

function RoamLowSoldierChildShotel432110_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildShotel432110_Act31(arg0, arg1, arg2)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 99) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildShotel432110_Act32(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildShotel432110_Act33(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = arg0:GetRandam_Float(2, 4)
    local f17_local2 = arg0:GetRandam_Float(5, 6)
    local f17_local3 = -1
    if f17_local0 >= 7 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local1, TARGET_ENE_0, f17_local2, TARGET_SELF, false, f17_local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local1, TARGET_ENE_0, f17_local2, TARGET_SELF, true, f17_local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamLowSoldierChildShotel432110_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RoamLowSoldierChildShotel432110_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f21_local0 = arg1:GetDist(TARGET_ENE_0)
    local f21_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f21_local2 = arg1:GetRandam_Int(1, 100)
    local f21_local3 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and (not not arg1:GetSpecialEffectActivateInterruptId(83) or not not arg1:GetSpecialEffectActivateInterruptId(90) or arg1:GetSpecialEffectActivateInterruptId(6992)) then
        if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
            arg2:ClearSubGoal()
            RoamLowSoldierChildShotel432110_Act6(arg1, arg2)
            return true
        else
            arg2:ClearSubGoal()
            RoamLowSoldierChildShotel432110_Act7(arg1, arg2)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(83) then
        arg2:ClearSubGoal()
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_RoamLowSoldierChildShotel432110_AfterAttackAct, "RoamLowSoldierChildShotel432110_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamLowSoldierChildShotel432110_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


