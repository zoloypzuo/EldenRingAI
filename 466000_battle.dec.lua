RegisterTableGoal(GOAL_Guardian_466000_Battle, "Guardian_466000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Guardian_466000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3026)
    arg1:EnableUnfavorableAttackCheck(0, 3027)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3029)
    arg1:EnableUnfavorableAttackCheck(0, 3030)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    arg1:EnableUnfavorableAttackCheck(0, 3033)
    arg1:EnableUnfavorableAttackCheck(0, 3034)
    arg1:EnableUnfavorableAttackCheck(0, 3035)
    arg1:EnableUnfavorableAttackCheck(0, 3036)
    arg1:EnableUnfavorableAttackCheck(0, 3037)
    arg1:EnableUnfavorableAttackCheck(0, 3038)
    arg1:EnableUnfavorableAttackCheck(0, 3039)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetEventRequest()
    local f2_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 12160)
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 12161)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 12155)
    local f2_local9 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 45, -1, 70)
    local f2_local10 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 45, -1, 70)
    local f2_local11 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 45, -1, 70)
    local f2_local12 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 45, -1, 70)
    local f2_local13 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 45, -1, 70)
    local f2_local14 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 135, -1, 70)
    local f2_local15 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 220, -1, 70)
    local f2_local16 = arg1:GetDistYSigned(TARGET_ENE_0)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0) == false and arg1:HasSpecialEffectId(TARGET_SELF, 12177) then
        f2_local0[26] = 100
    elseif f2_local8 == true then
        if f2_local3 > 5 then
            if f2_local15 == true then
                f2_local0[21] = 100
            else
                f2_local0[19] = 100
            end
        else
            f2_local0[13] = 20
            f2_local0[14] = 60
            f2_local0[23] = 20
            if f2_local16 > 3 then
                f2_local0[19] = 100
            end
        end
    elseif f2_local14 == true then
        if f2_local3 >= 4 then
            f2_local0[21] = 100
        elseif arg1:GetHpRate(TARGET_SELF) < 0.7 then
            f2_local0[2] = 10
            f2_local0[6] = 30
            f2_local0[8] = 20
            f2_local0[13] = 40
        else
            f2_local0[2] = 20
            f2_local0[6] = 50
            f2_local0[8] = 20
            f2_local0[10] = 10
        end
    elseif f2_local9 == true then
        if f2_local3 >= 20 then
            f2_local0[4] = 70
            f2_local0[5] = 30
        elseif f2_local3 >= 15 then
            f2_local0[4] = 10
            f2_local0[5] = 60
            f2_local0[9] = 30
        elseif f2_local3 >= 5 then
            f2_local0[3] = 60
            f2_local0[9] = 40
        else
            f2_local0[1] = 50
            f2_local0[10] = 50
        end
    elseif not not f2_local11 or f2_local13 == true then
        if f2_local3 >= 20 then
            f2_local0[4] = 70
            f2_local0[5] = 30
        elseif f2_local3 >= 15 then
            f2_local0[4] = 10
            f2_local0[5] = 60
            f2_local0[9] = 30
        elseif f2_local3 >= 8 then
            f2_local0[3] = 60
            f2_local0[9] = 40
        else
            f2_local0[1] = 30
            f2_local0[2] = 30
            f2_local0[8] = 20
            f2_local0[10] = 20
        end
    elseif not not f2_local10 or f2_local12 == true then
        if f2_local3 >= 20 then
            f2_local0[25] = 100
        elseif f2_local3 >= 8 then
            f2_local0[5] = 60
            f2_local0[9] = 40
        else
            f2_local0[1] = 30
            f2_local0[2] = 10
            f2_local0[6] = 30
            f2_local0[8] = 20
            f2_local0[10] = 20
        end
    else
        f2_local0[25] = 100
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 12177) and arg1:GetDist(POINT_INITIAL) > 35 then
        f2_local0[10] = 0
    end
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 12159) or arg1:HasSpecialEffectId(TARGET_SELF, 12184) then
        f2_local0[13] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 12184) then
        f2_local0[10] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 12185) and f2_local3 < 15 then
        f2_local0[15] = 600000
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 15, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 15, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[6], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3026, 15, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3017, 15, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3013, 15, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3010, 20, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3022, 15, f2_local0[11], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3021, 30, f2_local0[13], 0)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3032, 5, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3025, 40, f2_local0[15], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act06)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act11)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act15)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act19)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act26)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act31)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, Guardian_466000_Act47)
    local f2_local17 = REGIST_FUNC(arg1, arg2, Guardian_466000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local17, f2_local2)
    
end

function Guardian_466000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetRandam_Int(1, 100)
    local f3_local1 = arg0:GetDist(TARGET_ENE_0)
    local f3_local2 = 5.1
    local f3_local3 = 6
    local f3_local4 = 6 + 15
    local f3_local5 = 100
    local f3_local6 = 0
    local f3_local7 = 4
    local f3_local8 = 8
    if f3_local1 > 6 + 1 then
        Approach_Act_Flex(arg0, arg1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8)
    end
    local f3_local9 = 3000
    local f3_local10 = 6
    local f3_local11 = 7
    local f3_local12 = 0
    local f3_local13 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local9, TARGET_ENE_0, f3_local10, f3_local12, f3_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act02(arg0, arg1, arg2)
    local f4_local0 = 0.9
    local f4_local1 = 0.9
    local f4_local2 = 0.9 + 3
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    local f4_local7 = 3003
    local f4_local8 = 7
    local f4_local9 = 0
    local f4_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act03(arg0, arg1, arg2)
    local f5_local0 = 10.5
    local f5_local1 = 10.5
    local f5_local2 = 10.5 + 3
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    local f5_local7 = 3004
    local f5_local8 = 7
    local f5_local9 = 0
    local f5_local10 = 80
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetRandam_Int(1, 100)
    local f6_local1 = 26
    local f6_local2 = 26
    local f6_local3 = 26 + 3
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 4
    local f6_local7 = 8
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 3005
    local f6_local9 = 26
    local f6_local10 = 7
    local f6_local11 = 0
    local f6_local12 = 60
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local8, TARGET_ENE_0, f6_local9, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetRandam_Int(1, 100)
    local f7_local1 = 24
    local f7_local2 = 24
    local f7_local3 = 24 + 3
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 4
    local f7_local7 = 8
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 3006
    local f7_local9 = 3008
    local f7_local10 = 7
    local f7_local11 = 0
    local f7_local12 = 160
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local8, TARGET_ENE_0, DistToAtt2, f7_local11, f7_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act06(arg0, arg1, arg2)
    local f8_local0 = 5.5
    local f8_local1 = 5.5
    local f8_local2 = 5.5 + 3
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    local f8_local7 = 3011
    local f8_local8 = 7
    local f8_local9 = 0
    local f8_local10 = 180
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 60, 90, 70) then
        f8_local7 = 3022
    end
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 70) then
        f8_local7 = 3012
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act07(arg0, arg1, arg2)
    local f9_local0 = 4
    local f9_local1 = 4
    local f9_local2 = 4 + 3
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    local f9_local7 = 3026
    local f9_local8 = 7
    local f9_local9 = 0
    local f9_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act08(arg0, arg1, arg2)
    local f10_local0 = 5.8
    local f10_local1 = 5.8
    local f10_local2 = 5.8 + 3
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3016
    local f10_local8 = 5.8
    local f10_local9 = 0
    local f10_local10 = 180
    local f10_local11 = arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 90, 70)
    local f10_local12 = arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 90, 70)
    if f10_local12 == true then
        f10_local7 = 3017
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetRandam_Int(1, 100)
    local f11_local1 = 11.5
    local f11_local2 = 11.5
    local f11_local3 = 11.5 + 3
    local f11_local4 = 100
    local f11_local5 = 0
    local f11_local6 = 4
    local f11_local7 = 8
    local f11_local8 = 3013
    local f11_local9 = 7
    local f11_local10 = 0
    local f11_local11 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act10(arg0, arg1, arg2)
    local f12_local0 = 45
    local f12_local1 = 45
    local f12_local2 = 45 + 3
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 4
    local f12_local6 = 8
    local f12_local7 = 3010
    local f12_local8 = 7
    local f12_local9 = 0
    local f12_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act11(arg0, arg1, arg2)
    local f13_local0 = 5.5
    local f13_local1 = 5.5
    local f13_local2 = 5.5 + 3
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 4
    local f13_local6 = 8
    local f13_local7 = 3022
    local f13_local8 = 7
    local f13_local9 = 0
    local f13_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act13(arg0, arg1, arg2)
    local f14_local0 = 12
    local f14_local1 = 12
    local f14_local2 = 12 + 3
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 4
    local f14_local6 = 8
    local f14_local7 = 3021
    local f14_local8 = 7
    local f14_local9 = 0
    local f14_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act14(arg0, arg1, arg2)
    local f15_local0 = 0.5
    local f15_local1 = 999
    local f15_local2 = 0
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 1
    local f15_local6 = 1
    local f15_local7 = 3032
    local f15_local8 = 5
    local f15_local9 = 0
    local f15_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act15(arg0, arg1, arg2)
    local f16_local0 = 3025
    local f16_local1 = 5
    local f16_local2 = 0
    local f16_local3 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act19(arg0, arg1, arg2)
    local f17_local0 = 90
    local f17_local1 = 90
    local f17_local2 = 90 + 3
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = 4
    local f17_local6 = 8
    local f17_local7 = 3031
    local f17_local8 = 7
    local f17_local9 = 0
    local f17_local10 = 180
    local f17_local11 = arg0:GetDist(TARGET_ENE_0)
    if not (f17_local11 >= 120 and (f17_local11 >= 160 or not arg0:HasSpecialEffectId(TARGET_SELF, 12183))) or f17_local11 < 190 and arg0:HasSpecialEffectId(TARGET_SELF, 12184) then
        f17_local7 = 3030
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local7, TARGET_ENE_0, f17_local8, f17_local9, f17_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_ActCP1(arg0, arg1, arg2)
    local f18_local0 = 3
    local f18_local1 = 3
    local f18_local2 = 3 + 3
    local f18_local3 = 100
    local f18_local4 = 0
    local f18_local5 = 4
    local f18_local6 = 8
    Approach_Act_Flex(arg0, arg1, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    local f18_local7 = 3000
    local f18_local8 = 7
    local f18_local9 = 0
    local f18_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f18_local7, TARGET_ENE_0, f18_local8, f18_local9, f18_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_ActCP2(arg0, arg1, arg2)
    local f19_local0 = arg0:GetRandam_Int(1, 100)
    local f19_local1 = 3
    local f19_local2 = 3
    local f19_local3 = 3 + 3
    local f19_local4 = 100
    local f19_local5 = 0
    local f19_local6 = 4
    local f19_local7 = 8
    Approach_Act_Flex(arg0, arg1, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6, f19_local7)
    local f19_local8 = 3001
    local f19_local9 = 3002
    local f19_local10 = 3003
    local f19_local11 = 4
    local f19_local12 = 0.9
    local f19_local13 = 7
    local f19_local14 = 0
    local f19_local15 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f19_local8, TARGET_ENE_0, f19_local11, f19_local14, f19_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f19_local9, TARGET_ENE_0, f19_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f19_local10, TARGET_ENE_0, f19_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act22(arg0, arg1, arg2)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = 20
    local f21_local2 = 40
    local f21_local3 = arg0:GetRandam_Int(1, 100)
    local f21_local4 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f21_local1, TARGET_ENE_0, false, f21_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act23(arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = 5
    local f22_local2 = 0
    local f22_local3 = 0
    local f22_local4 = arg0:GetRandam_Int(1, 100)
    local f22_local5 = -1
    if f22_local1 <= f22_local0 then
        Approach_Act(arg0, arg1, f22_local1, f22_local2, f22_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f22_local1, TARGET_ENE_0, false, f22_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act24(arg0, arg1, arg2)
    local f23_local0 = 0
    local f23_local1 = arg0:GetRandam_Int(1, 100)
    local f23_local2 = -1
    if f23_local1 <= f23_local0 then
        f23_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f23_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act25(arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = 1
    local f24_local2 = 40
    local f24_local3 = arg0:GetRandam_Int(1, 100)
    local f24_local4 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, f24_local1, TARGET_ENE_0, false, f24_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act26(arg0, arg1, arg2)
    local f25_local0 = 10
    local f25_local1 = 50
    local f25_local2 = -1
    local f25_local3 = true
    local f25_local4 = 4
    local f25_local5 = 10
    local f25_local6 = arg0:GetRandam_Int(3.5, 5.5)
    local f25_local7 = 1.5
    local f25_local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, f25_local4)
    local f25_local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, f25_local4)
    local f25_local10 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, f25_local4)
    local f25_local11 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, f25_local4)
    local f25_local12 = arg0:GetDist(TARGET_ENE_0)
    local f25_local13 = arg0:GetRandam_Int(0, 1)
    if f25_local9 == true and f25_local8 == true then

    elseif f25_local9 == true and f25_local8 == false then
        f25_local13 = 0
    elseif f25_local9 == false and f25_local8 == true then
        f25_local13 = 1
    elseif f25_local9 == false and f25_local8 == false then
        f25_local13 = 2
    end
    if f25_local1 < f25_local12 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f25_local12 <= f25_local1 and f25_local0 <= f25_local12 then
        if f25_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f25_local6, TARGET_ENE_0, f25_local13, 100, f25_local3, false, f25_local2, resultTypeIfGuardSuccess)
        elseif f25_local10 == true then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, TARGET_ENE_0, 0.1, TARGET_SELF, true, f25_local2)
        elseif f25_local11 == true then
            if arg0:GetDist(POINT_INITIAL) > 5 then
                arg1:AddSubGoal(GOAL_COMMON_BackToHome, 5, 0, false, 0, 0, TARGET_ENE_0)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f25_local7, TARGET_ENE_0, f25_local1, TARGET_ENE_0, f25_local3, f25_local2, GUARD_GOAL_DESIRE_RET_Success)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f25_local12 < f25_local0 then
        if f25_local11 == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f25_local7, TARGET_ENE_0, arg0:GetRandam_Float(f25_local0, f25_local1), TARGET_ENE_0, f25_local3, f25_local2, GUARD_GOAL_DESIRE_RET_Success)
        elseif f25_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f25_local6, TARGET_ENE_0, f25_local13, 100, f25_local3, false, f25_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_ActCP3(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Guardian_466000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Guardian_466000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f33_local0 = arg1:GetDist(TARGET_ENE_0)
    local f33_local1 = arg1:GetDist(TARGET_FRI_0)
    local f33_local2 = arg1:GetRandam_Int(1, 100)
    local f33_local3 = arg1:GetPrevTargetState()
    local f33_local4 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    local f33_local5 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 90, 70)
    local f33_local6 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 90, 70)
    local f33_local7 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 90, 90, 70)
    local f33_local8 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 90, 70)
    local f33_local9 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 90, 90, 70)
    local f33_local10 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 90, 70)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12177) and arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0) == false then
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            if not not f33_local7 or f33_local6 == true and f33_local0 <= 5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3001, TARGET_ENE_0, 5, 0, 0)
                return true
            elseif not not f33_local9 or f33_local8 == true and f33_local0 <= 5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 5, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 180, 90, 20) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 5, 0, 0)
                return true
            elseif f33_local0 <= 2.5 and arg1:HasSpecialEffectId(TARGET_SELF, 12184) == false then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3007, TARGET_ENE_0, 5, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            if f33_local5 == true and f33_local0 >= 10 and f33_local0 <= 25 and arg1:HasSpecialEffectId(TARGET_SELF, 12184) == false then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 20, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            if not not f33_local7 or f33_local6 == true and f33_local0 <= 3 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3018, TARGET_ENE_0, 5, 0, 0)
                return true
            elseif not not f33_local9 or f33_local8 == true and f33_local0 <= 3 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3019, TARGET_ENE_0, 5, 0, 0)
                return true
            elseif f33_local10 == true and f33_local0 <= 5 and f33_local0 >= 3 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 5, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then

    else

    end
    return false
    
end

RegisterTableGoal(GOAL_Guardian_466000_AfterAttackAct, "Guardian_466000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Guardian_466000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


