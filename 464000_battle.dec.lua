RegisterTableGoal(GOAL_SnakeSoul464000_Battle, "SnakeSoulBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeSoul464000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 0)
    arg1:SetNumber(4, 0)
    arg1:SetNumber(9, 0)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3026)
    arg1:EnableUnfavorableAttackCheck(0, 3027)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3029)
    arg1:EnableUnfavorableAttackCheck(0, 3030)
    arg1:EnableUnfavorableAttackCheck(0, 3031)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    arg1:EnableUnfavorableAttackCheck(0, 3033)
    arg1:EnableUnfavorableAttackCheck(0, 3034)
    arg1:EnableUnfavorableAttackCheck(0, 3035)
    arg1:EnableUnfavorableAttackCheck(0, 3036)
    arg1:EnableUnfavorableAttackCheck(0, 3037)
    arg1:EnableUnfavorableAttackCheck(0, 3038)
    arg1:EnableUnfavorableAttackCheck(0, 3039)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
    arg1:EnableUnfavorableAttackCheck(1000000, 3006)
    arg1:EnableUnfavorableAttackCheck(1000000, 3010)
    arg1:EnableUnfavorableAttackCheck(1000000, 3015)
    arg1:EnableUnfavorableAttackCheck(1000000, 3016)
    arg1:EnableUnfavorableAttackCheck(1000000, 3017)
    arg1:EnableUnfavorableAttackCheck(1000000, 3019)
    arg1:EnableUnfavorableAttackCheck(1000000, 3020)
    arg1:EnableUnfavorableAttackCheck(1000000, 3021)
    arg1:EnableUnfavorableAttackCheck(1000000, 3022)
    arg1:EnableUnfavorableAttackCheck(1000000, 3023)
    arg1:EnableUnfavorableAttackCheck(1000000, 3024)
    arg1:EnableUnfavorableAttackCheck(1000000, 3025)
    arg1:EnableUnfavorableAttackCheck(1000000, 3026)
    arg1:EnableUnfavorableAttackCheck(1000000, 3027)
    arg1:EnableUnfavorableAttackCheck(1000000, 3028)
    arg1:EnableUnfavorableAttackCheck(1000000, 3029)
    arg1:EnableUnfavorableAttackCheck(1000000, 3030)
    arg1:EnableUnfavorableAttackCheck(1000000, 3031)
    arg1:EnableUnfavorableAttackCheck(1000000, 3032)
    arg1:EnableUnfavorableAttackCheck(1000000, 3033)
    arg1:EnableUnfavorableAttackCheck(1000000, 3034)
    arg1:EnableUnfavorableAttackCheck(1000000, 3035)
    arg1:EnableUnfavorableAttackCheck(1000000, 3036)
    arg1:EnableUnfavorableAttackCheck(1000000, 3037)
    arg1:EnableUnfavorableAttackCheck(1000000, 3038)
    arg1:EnableUnfavorableAttackCheck(1000000, 3039)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    arg1:SetStringIndexedNumber("Dist_BackStep", 0)
    arg1:SetNumber(9, 0)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetEventRequest()
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 18872)
    local f2_local7 = 1
    local f2_local8 = 0.3
    if arg1:GetNumber(4) >= 3 then
        f2_local8 = 2.5
    end
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 18872)
    local f2_local10 = 1
    if f2_local9 == true then
        f2_local10 = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18874) and arg1:GetNumber(1) == 0 then
        f2_local0[16] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 18873) and arg1:GetNumber(1) == 0 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) then
            f2_local0[20] = 85
        else
            f2_local0[6] = 20
        end
    elseif arg1:GetHpRate(TARGET_SELF) <= 0.6 and not arg1:HasSpecialEffectId(TARGET_SELF, 18870) then
        f2_local0[15] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) and f2_local3 > 15 then
        f2_local0[20] = 85
    elseif f2_local3 >= 15 then
        f2_local0[2] = 30
        f2_local0[7] = 30
        f2_local0[6] = 30
        f2_local0[23] = 30
    elseif f2_local3 >= 5 then
        f2_local0[2] = 40
        f2_local0[4] = 10
        f2_local0[5] = 10 * f2_local8
        f2_local0[6] = 10 * f2_local8
        f2_local0[7] = 50
        f2_local0[9] = 25
        f2_local0[12] = 20 * f2_local10
        f2_local0[15] = 40
        f2_local0[17] = 20
        f2_local0[18] = 50
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        f2_local0[11] = 35
        f2_local0[12] = 20 * f2_local10
        f2_local0[15] = 40
        f2_local0[17] = 20
        f2_local0[18] = 40
        f2_local0[19] = 40
        f2_local0[25] = 20
        f2_local0[26] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
        f2_local0[6] = 20 * f2_local8
        f2_local0[9] = 45
        f2_local0[11] = 30
        f2_local0[12] = 20 * f2_local10
        f2_local0[15] = 10
        f2_local0[17] = 20
        f2_local0[18] = 40
        f2_local0[26] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
        f2_local0[5] = 20
        f2_local0[6] = 20 * f2_local8
        f2_local0[12] = 30 * f2_local10
        f2_local0[15] = 10
        f2_local0[17] = 20
        f2_local0[25] = 20
    else
        f2_local0[6] = 20 * f2_local8
        f2_local0[9] = 45
        f2_local0[12] = 20 * f2_local10
        f2_local0[15] = 10
        f2_local0[25] = 10
        f2_local0[26] = 10
    end
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 7, f2_local0[2], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 60, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3005, 30, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3006, 50, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3016, 10, f2_local0[7], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3010, 30, f2_local0[9], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3028, 8, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3024, 30, f2_local0[12], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3029, 30, f2_local0[12], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3030, 30, f2_local0[12], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3018, 50, f2_local0[15], 0)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3019, 20, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3019, 25, f2_local0[17], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3020, 25, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3027, 8, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3032, 8, f2_local0[19], 1)
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 20) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 200, 90, 7) == false then
        f2_local0[5] = 0
    end
    if f2_local3 < 4 then
        f2_local0[9] = 0
    end
    if f2_local3 >= 2.5 then
        f2_local0[11] = 0
    end
    if f2_local3 >= 2 then
        f2_local0[18] = 0
    end
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 90, 30) then
        f2_local0[19] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18870) and arg1:HasSpecialEffectId(TARGET_SELF, 18859) then
        f2_local0[15] = 0
    end
    if arg1:GetHpRate(TARGET_SELF) >= 0.7 then
        f2_local0[15] = 0
    end
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 90, 30) == false then
        f2_local0[7] = 0
    end
    if f2_local3 <= 3.5 then
        f2_local0[7] = 0
    end
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 90, 30) == false then
        f2_local0[2] = 0
    end
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 7) == false then
        f2_local0[2] = 0
    end
    if arg1:GetNumber(3) == 1 then
        arg1:SetNumber(3, 0)
        if f2_local3 > 12 then
            f2_local0[2] = 0
            f2_local0[7] = 0
            f2_local0[9] = 0
            f2_local0[12] = 0
            f2_local0[17] = 0
        elseif f2_local3 > 7 then
            f2_local0[2] = 0
            f2_local0[9] = 0
            f2_local0[17] = 0
        elseif f2_local3 > 5 then
            f2_local0[2] = 0
            f2_local0[17] = 0
        elseif f2_local3 > 4 then
            f2_local0[17] = 0
        end
    end
    f2_local1[2] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act02)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act07)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act09)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act12)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act23)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, SnakeSoulBattle_Act26)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, 0, f2_local2)
    
end

function SnakeSoulBattle_Act01(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act02(arg0, arg1, arg2)
    if arg0:GetNumber(4) == 0 then
        arg0:SetNumber(4, 1)
    elseif arg0:GetNumber(4) == 1 then
        arg0:SetNumber(4, 2)
    elseif arg0:GetNumber(4) == 2 then
        arg0:SetNumber(4, 3)
    elseif arg0:GetNumber(4) == 3 then
        arg0:SetNumber(4, 4)
    elseif arg0:GetNumber(4) == 4 then
        arg0:SetNumber(4, 5)
    elseif arg0:GetNumber(4) == 5 then
        arg0:SetNumber(4, 6)
    end
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = arg0:GetRandam_Int(1, 100)
    local f4_local2 = 7
    local f4_local3 = 999
    local f4_local4 = 999
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 3
    local f4_local8 = 6
    Approach_Act_Flex(arg0, arg1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18850)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18851)
    local f4_local9 = 3001
    local f4_local10 = 100
    local f4_local11 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local12 = 0
    local f4_local13 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f4_local9, TARGET_ENE_0, f4_local10, f4_local12, f4_local13, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act03(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act04(arg0, arg1, arg2)
    local f6_local0 = 3004
    local f6_local1 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 0
    local f6_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f6_local0, TARGET_ENE_0, f6_local1, f6_local2, f6_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act05(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18858)
    arg0:SetNumber(4, 0)
    local f7_local0 = 3005
    local f7_local1 = 100
    local f7_local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 0
    local f7_local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18857)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f7_local0, TARGET_ENE_0, f7_local1, f7_local3, f7_local4, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act06(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18852)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18853)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18854)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18858)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = arg0:GetRandam_Int(1, 100)
    local f8_local2 = 40
    local f8_local3 = 999
    local f8_local4 = 999
    local f8_local5 = 0
    local f8_local6 = 0
    local f8_local7 = 3
    local f8_local8 = 6
    Approach_Act_Flex(arg0, arg1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7, f8_local8)
    local f8_local9 = 3006
    local f8_local10 = 100
    local f8_local11 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local12 = 0
    local f8_local13 = 0
    arg0:SetNumber(4, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f8_local9, TARGET_ENE_0, f8_local10, f8_local12, f8_local13, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act07(arg0, arg1, arg2)
    if arg0:GetNumber(4) == 0 then
        arg0:SetNumber(4, 1)
    elseif arg0:GetNumber(4) == 1 then
        arg0:SetNumber(4, 2)
    elseif arg0:GetNumber(4) == 2 then
        arg0:SetNumber(4, 3)
    elseif arg0:GetNumber(4) == 3 then
        arg0:SetNumber(4, 4)
    elseif arg0:GetNumber(4) == 4 then
        arg0:SetNumber(4, 5)
    elseif arg0:GetNumber(4) == 5 then
        arg0:SetNumber(4, 6)
    end
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = arg0:GetRandam_Int(1, 100)
    local f9_local2 = 14
    local f9_local3 = 999
    local f9_local4 = 999
    local f9_local5 = 0
    local f9_local6 = 0
    local f9_local7 = 3
    local f9_local8 = 6
    Approach_Act_Flex(arg0, arg1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7, f9_local8)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18851)
    local f9_local9 = 3016
    local f9_local10 = 100
    local f9_local11 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local12 = 0
    local f9_local13 = 0
    local f9_local14 = arg0:GetDist(TARGET_ENE_0)
    local f9_local15 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f9_local9, TARGET_ENE_0, f9_local10, f9_local12, f9_local13, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act08(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetRandam_Int(1, 100)
    local f11_local2 = 10
    local f11_local3 = 999
    local f11_local4 = 999
    local f11_local5 = 0
    local f11_local6 = 0
    local f11_local7 = 3
    local f11_local8 = 6
    Approach_Act_Flex(arg0, arg1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7, f11_local8)
    local f11_local9 = 3010
    local f11_local10 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local11 = 0
    local f11_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f11_local9, TARGET_ENE_0, f11_local10, f11_local11, f11_local12, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act10(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act11(arg0, arg1, arg2)
    if arg0:GetNumber(4) == 0 then
        arg0:SetNumber(4, 1)
    elseif arg0:GetNumber(4) == 1 then
        arg0:SetNumber(4, 2)
    elseif arg0:GetNumber(4) == 2 then
        arg0:SetNumber(4, 3)
    elseif arg0:GetNumber(4) == 3 then
        arg0:SetNumber(4, 4)
    elseif arg0:GetNumber(4) == 4 then
        arg0:SetNumber(4, 5)
    elseif arg0:GetNumber(4) == 5 then
        arg0:SetNumber(4, 6)
    end
    local f13_local0 = 3031
    local f13_local1 = 100
    local f13_local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = 0
    local f13_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, 3031, TARGET_ENE_0, f13_local1, f13_local3, f13_local4, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act12(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18858)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    local f14_local2 = 14
    local f14_local3 = 999
    local f14_local4 = 999
    local f14_local5 = 0
    local f14_local6 = 0
    local f14_local7 = 3
    local f14_local8 = 6
    Approach_Act_Flex(arg0, arg1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7, f14_local8)
    local f14_local9 = 3024
    local f14_local10 = 3029
    local f14_local11 = 3030
    local f14_local12 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local13 = 0
    local f14_local14 = 120
    if f14_local0 > 9 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f14_local9, TARGET_ENE_0, f14_local12, f14_local13, f14_local14, 0, 0)
    elseif f14_local0 > 5.5 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f14_local11, TARGET_ENE_0, f14_local12, f14_local13, f14_local14, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f14_local10, TARGET_ENE_0, f14_local12, f14_local13, f14_local14, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act13(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act14(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act15(arg0, arg1, arg2)
    local f17_local0 = 3018
    local f17_local1 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 0
    local f17_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local0, TARGET_ENE_0, f17_local1, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act16(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f18_local0 = 3018
    local f18_local1 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = 0
    local f18_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local0, TARGET_ENE_0, f18_local1, f18_local2, f18_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act17(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetRandam_Int(1, 100)
    local f19_local2 = 3019
    local f19_local3 = 3020
    local f19_local4 = 100
    local f19_local5 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local6 = 1.5
    local f19_local7 = 90
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18855)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18856)
    local f19_local8 = arg0:GetDist(TARGET_ENE_0)
    local f19_local9 = arg0:GetRandam_Int(1, 100)
    local f19_local10 = 5.5
    local f19_local11 = 999
    local f19_local12 = 999
    local f19_local13 = 0
    local f19_local14 = 0
    local f19_local15 = 3
    local f19_local16 = 6
    Approach_Act_Flex(arg0, arg1, f19_local10, f19_local11, f19_local12, f19_local13, f19_local14, f19_local15, f19_local16)
    if f19_local8 > 9 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f19_local2, TARGET_ENE_0, f19_local4, f19_local6, f19_local7, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f19_local2, TARGET_ENE_0, f19_local4, 0, 180, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act18(arg0, arg1, arg2)
    if arg0:GetNumber(4) == 0 then
        arg0:SetNumber(4, 1)
    elseif arg0:GetNumber(4) == 1 then
        arg0:SetNumber(4, 2)
    elseif arg0:GetNumber(4) == 2 then
        arg0:SetNumber(4, 3)
    elseif arg0:GetNumber(4) == 3 then
        arg0:SetNumber(4, 4)
    elseif arg0:GetNumber(4) == 4 then
        arg0:SetNumber(4, 5)
    elseif arg0:GetNumber(4) == 5 then
        arg0:SetNumber(4, 6)
    end
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = arg0:GetRandam_Int(1, 100)
    local f20_local2 = 3027
    local f20_local3 = 3020
    local f20_local4 = 100
    local f20_local5 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local6 = 0
    local f20_local7 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f20_local2, TARGET_ENE_0, f20_local4, f20_local6, f20_local7, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act19(arg0, arg1, arg2)
    if arg0:GetNumber(4) == 0 then
        arg0:SetNumber(4, 1)
    elseif arg0:GetNumber(4) == 1 then
        arg0:SetNumber(4, 2)
    elseif arg0:GetNumber(4) == 2 then
        arg0:SetNumber(4, 3)
    elseif arg0:GetNumber(4) == 3 then
        arg0:SetNumber(4, 4)
    elseif arg0:GetNumber(4) == 4 then
        arg0:SetNumber(4, 5)
    elseif arg0:GetNumber(4) == 5 then
        arg0:SetNumber(4, 6)
    end
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = arg0:GetRandam_Int(1, 100)
    local f21_local2 = 3032
    local f21_local3 = 100
    local f21_local4 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local5 = 1.5
    local f21_local6 = 150
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18850)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18851)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f21_local2, TARGET_ENE_0, f21_local3, f21_local5, f21_local6, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(90, 180), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 7, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act23(arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = arg0:GetRandam_Int(1, 100)
    local f25_local2 = arg0:GetDist(TARGET_ENE_0)
    local f25_local3 = 10
    local f25_local4 = 30
    local f25_local5 = true
    local f25_local6 = arg0:GetRandam_Int(1, 100)
    local f25_local7 = -1
    if f25_local3 <= f25_local2 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, f25_local3, TARGET_ENE_0, false, f25_local7)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act25(arg0, arg1, arg2)
    arg0:SetNumber(2, arg0:GetNumber(2) + 4)
    arg0:SetNumber(9, 1)
    local f26_local0 = 5
    local f26_local1 = -1
    local f26_local2 = -1
    local f26_local3 = 1
    local f26_local4 = 1
    local f26_local5 = TARGET_ENE_0
    local f26_local6 = 1
    local f26_local7 = 0
    local f26_local8 = true
    arg0:SetTimer(2, 20)
    arg0:SetNumber(3, 1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18856)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 999) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSoulBattle_Act26(arg0, arg1, arg2)
    arg0:SetNumber(2, arg0:GetNumber(2) + 4)
    arg0:SetNumber(9, 1)
    local f27_local0 = 5
    local f27_local1 = -1
    local f27_local2 = -1
    local f27_local3 = 1
    local f27_local4 = 1
    local f27_local5 = TARGET_ENE_0
    local f27_local6 = 1
    local f27_local7 = 0
    local f27_local8 = true
    arg0:SetTimer(2, 20)
    arg0:SetNumber(3, 1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18856)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 999) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f30_local0 = arg1:HasSpecialEffectId(TARGET_SELF, 18872)
    if arg1:HasSpecialEffectId(TARGET_SELF, 18855) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18855)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18856)
        local f30_local1 = arg1:GetDist(TARGET_ENE_0)
        local f30_local2 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if f30_local2 > 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18856) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18855)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18856)
        local f30_local1 = arg1:GetDist(TARGET_ENE_0)
        local f30_local2 = arg1:GetRandam_Int(1, 100)
        if arg1:GetNumber(9) == 1 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and arg1:GetAttackPassedTime(3026) <= 40 == false then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if f30_local2 > 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18850) then
        local f30_local1 = arg1:GetDist(TARGET_ENE_0)
        local f30_local2 = arg1:GetRandam_Int(1, 100)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18850)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18851)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and f30_local1 < 13 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18851) then
        local f30_local1 = arg1:GetDist(TARGET_ENE_0)
        local f30_local2 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and f30_local1 < 4.5 then
            if f30_local2 > 20 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 4, 0, 90)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and f30_local1 < 16 and f30_local2 > 10 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if f30_local0 == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 18857) then
            local f30_local1 = arg1:GetDist(TARGET_ENE_0)
            if arg1:GetRandam_Int(1, 100) > 20 then
                if f30_local1 > 8.5 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 4, 0, 90)
                    return true
                elseif f30_local1 > 6 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, 4, 0, 90)
                    return true
                elseif f30_local1 > 3 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18852) then
            local f30_local1 = arg1:GetDist(TARGET_ENE_0)
            if arg1:GetRandam_Int(1, 100) > 70 then
                if f30_local1 > 8 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 4, 0, 90)
                    return true
                elseif f30_local1 > 5 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3039, TARGET_ENE_0, 4, 0, 90)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3038, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18853) then
            local f30_local1 = arg1:GetDist(TARGET_ENE_0)
            if arg1:GetRandam_Int(1, 100) > 50 then
                if f30_local1 > 8 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 4, 0, 90)
                    return true
                elseif f30_local1 > 5 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3030, TARGET_ENE_0, 4, 0, 90)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18854) then
            local f30_local1 = arg1:GetDist(TARGET_ENE_0)
            local f30_local2 = arg1:GetRandam_Int(1, 100)
            if f30_local1 > 8 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 4, 0, 90)
                return true
            elseif f30_local1 > 5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3030, TARGET_ENE_0, 4, 0, 90)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18858) then
        local f30_local1 = arg1:GetDist(TARGET_ENE_0)
        local f30_local2 = arg1:GetRandam_Int(1, 100)
        if f30_local2 > 70 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 4, 0, 90)
            return true
        elseif f30_local2 > 40 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    return false
    
end


