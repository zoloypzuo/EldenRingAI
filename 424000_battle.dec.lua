RegisterTableGoal(GOAL_FingerSpider424000_Battle, "FingerSpider424000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FingerSpider424000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(1, 3012)
    arg1:EnableUnfavorableAttackCheck(1, 3013)
    arg1:EnableUnfavorableAttackCheck(1, 3014)
    arg1:EnableUnfavorableAttackCheck(1, 3015)
    arg1:EnableUnfavorableAttackCheck(2, 3016)
    arg1:EnableUnfavorableAttackCheck(2, 3017)
    arg1:EnableUnfavorableAttackCheck(2, 3018)
    arg1:EnableUnfavorableAttackCheck(2, 3019)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetEventRequest()
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 12000)
    local f2_local6 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 30)
    local f2_local7 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 60, 180, 30)
    local f2_local8 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 60, 180, 30)
    local f2_local9 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 30)
    local f2_local10 = arg1:GetDist(TARGET_ENE_0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 12003) then
        local f2_local11 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 270, 90, 30)
        if f2_local11 then
            if f2_local10 <= 5 then
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 50
                f2_local0[9] = 0
                f2_local0[25] = 30
                f2_local0[26] = 10
            else
                f2_local0[21] = 70
                f2_local0[25] = 30
            end
        else
            f2_local11 = 1
            if arg1:HasSpecialEffectId(TARGET_SELF, 12017) then
                f2_local11 = 0
            end
            if f2_local10 >= 18 then
                f2_local0[6] = 20
                f2_local0[7] = 20
                f2_local0[8] = 0
                f2_local0[9] = 20
                f2_local0[17] = 20 * f2_local11
                f2_local0[25] = 30
                f2_local0[26] = 0
            elseif f2_local10 >= 10.5 then
                f2_local0[6] = 30
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 30
                f2_local0[25] = 30
                f2_local0[26] = 0
            elseif f2_local10 >= 6 then
                f2_local0[6] = 0
                f2_local0[7] = 20
                f2_local0[8] = 30
                f2_local0[9] = 0
                f2_local0[25] = 0
                f2_local0[26] = 40
            else
                f2_local0[7] = 20
                f2_local0[8] = 40
                f2_local0[25] = 20
                f2_local0[26] = 20
            end
        end
    elseif f2_local9 == true then
        if f2_local10 <= 5 then
            f2_local0[21] = 40
            f2_local0[25] = 60
        else
            f2_local0[21] = 70
            f2_local0[25] = 30
        end
    elseif f2_local6 == true then
        if f2_local10 >= 18 then
            local f2_local11 = 1
            if arg1:HasSpecialEffectId(TARGET_SELF, 12017) then
                f2_local11 = 0
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 12015) then
                f2_local0[17] = 100
            else
                f2_local0[2] = 60
                f2_local0[17] = 20 * f2_local11
                f2_local0[24] = 20
            end
        elseif f2_local10 >= 10.5 then
            local f2_local11 = 1
            if arg1:HasSpecialEffectId(TARGET_SELF, 12017) then
                f2_local11 = 0
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 12015) then
                f2_local0[17] = 100
            else
                f2_local0[2] = 70
                f2_local0[17] = 30 * f2_local11
            end
        elseif f2_local10 >= 6 then
            local f2_local11 = 1
            if arg1:HasSpecialEffectId(TARGET_SELF, 12017) then
                f2_local11 = 0
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 12015) then
                f2_local0[17] = 100
            else
                f2_local0[1] = 20
                f2_local0[2] = 20
                f2_local0[5] = 30
                f2_local0[15] = 10
                f2_local0[25] = 20
            end
        else
            f2_local0[1] = 20
            f2_local0[3] = 20
            f2_local0[5] = 40
            f2_local0[26] = 20
        end
    elseif f2_local10 >= 18 then
        f2_local0[2] = 10
        f2_local0[21] = 60
        f2_local0[24] = 30
    elseif f2_local10 >= 10.5 then
        f2_local0[2] = 20
        f2_local0[24] = 40
        f2_local0[21] = 40
    elseif f2_local10 >= 6 then
        f2_local0[1] = 10
        f2_local0[3] = 20
        f2_local0[5] = 10
        f2_local0[25] = 60
    else
        f2_local0[1] = 10
        f2_local0[3] = 20
        f2_local0[25] = 70
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[3], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[9], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3011, 15, f2_local0[15], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3013, 20, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3013, 60, f2_local0[18], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[25], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[25], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6001, 5, f2_local0[25], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6001, 5, f2_local0[26], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[26], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[26], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act03)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act09)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act19)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act26)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act31)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, FingerSpider424000_Act47)
    local f2_local11 = REGIST_FUNC(arg1, arg2, FingerSpider424000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local11, f2_local2)
    
end

function FingerSpider424000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 3.6
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 0
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = TARGET_ENE_0
    local f3_local11 = 3
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local8, f3_local9, f3_local10, f3_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerSpider424000_Act02(arg0, arg1, arg2)
    local f4_local0 = 25
    local f4_local1 = 0
    local f4_local2 = 999
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 2
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 3
    local f4_local9 = 0
    local f4_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerSpider424000_Act03(arg0, arg1, arg2)
    local f5_local0 = 7.2
    local f5_local1 = 0
    local f5_local2 = 999
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3002
    local f5_local8 = 3
    local f5_local9 = 0
    local f5_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerSpider424000_Act05(arg0, arg1, arg2)
    local f6_local0 = arg0:GetRandam_Int(1, 100)
    local f6_local1 = 3.6 + 1
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 4
    local f6_local7 = 8
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 3000
    local f6_local9 = 3004
    local f6_local10 = 3.6 + 0.8
    local f6_local11 = 3
    local f6_local12 = 0
    local f6_local13 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f6_local8, TARGET_ENE_0, f6_local10, f6_local12, f6_local13, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f6_local9, TARGET_ENE_0, f6_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f6_local8, TARGET_ENE_0, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerSpider424000_Act06(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 16.5
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 3
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 5
    local f7_local9 = 3000
    local f7_local10 = TARGET_ENE_0
    local f7_local11 = 10
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local8, f7_local9, f7_local10, f7_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerSpider424000_Act07(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 30
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 100
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 3
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local8 = 5
    local f8_local9 = 3001
    local f8_local10 = TARGET_ENE_0
    local f8_local11 = 10
    local f8_local12 = 0
    local f8_local13 = 0
    local f8_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local8, f8_local9, f8_local10, f8_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerSpider424000_Act08(arg0, arg1, arg2)
    local f9_local0 = 5
    local f9_local1 = 3002
    local f9_local2 = TARGET_ENE_0
    local f9_local3 = 10
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f9_local0, f9_local1, f9_local2, f9_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerSpider424000_Act09(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 16.5
    local f10_local2 = 0
    local f10_local3 = 999
    local f10_local4 = 100
    local f10_local5 = 0
    local f10_local6 = 3
    local f10_local7 = 3
    Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    local f10_local8 = 5
    local f10_local9 = 3000
    local f10_local10 = 3004
    local f10_local11 = TARGET_ENE_0
    local f10_local12 = 10
    local f10_local13 = 0
    local f10_local14 = 0
    local f10_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local8, f10_local10, f10_local11, f10_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerSpider424000_Act15(arg0, arg1, arg2)
    local f11_local0 = 10
    local f11_local1 = 0
    local f11_local2 = 999
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 8
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3011
    local f11_local8 = 3
    local f11_local9 = 0
    local f11_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerSpider424000_Act17(arg0, arg1, arg2)
    local f12_local0 = 20
    local f12_local1 = 0
    local f12_local2 = 999
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 4
    local f12_local6 = 8
    local f12_local7 = 3013
    local f12_local8 = 3
    local f12_local9 = 0
    local f12_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerSpider424000_Act18(arg0, arg1, arg2)
    local f13_local0 = 20
    local f13_local1 = 0
    local f13_local2 = 999
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 4
    local f13_local6 = 8
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 1, -1, 100, -1, -1, TARGET_ENE_0, 10, 0, true)
    local f13_local7 = 3013
    local f13_local8 = 3
    local f13_local9 = 0
    local f13_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerSpider424000_Act21(arg0, arg1, arg2)
    local f14_local0 = 2
    local f14_local1 = TARGET_ENE_0
    local f14_local2 = 45
    local f14_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f14_local4 = true
    local f14_local5 = 0
    local f14_local6 = arg0:GetRandam_Int(1, 100)
    local f14_local7 = -1
    if f14_local6 <= f14_local5 then
        f14_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f14_local0, f14_local1, f14_local2, f14_local7, f14_local3, f14_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerSpider424000_Act22(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 6
    local f15_local2 = 20
    local f15_local3 = 80
    local f15_local4 = arg0:GetRandam_Int(1, 100)
    local f15_local5 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f15_local1, TARGET_ENE_0, false, f15_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerSpider424000_Act23(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 10
    local f16_local2 = 20
    local f16_local3 = 100
    local f16_local4 = arg0:GetRandam_Int(1, 100)
    local f16_local5 = -1
    if f16_local4 <= f16_local3 then
        f16_local5 = 9910
    end
    if f16_local1 <= f16_local0 then
        Approach_Act(arg0, arg1, f16_local1, f16_local2, f16_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f16_local1, TARGET_ENE_0, false, f16_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerSpider424000_Act24(arg0, arg1, arg2)
    local f17_local0 = arg0:GetRandam_Int(1, 3)
    local f17_local1 = TARGET_ENE_0
    local f17_local2 = arg0:GetRandam_Int(0, 1)
    local f17_local3 = 180
    local f17_local4 = 0
    local f17_local5 = TARGET_SELF
    local f17_local6 = true
    local f17_local7 = false
    local f17_local8 = arg0:GetDist(TARGET_ENE_0)
    local f17_local9 = 0
    local f17_local10 = arg0:GetRandam_Int(1, 100)
    local f17_local11 = -1
    if f17_local10 <= f17_local9 then
        f17_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local0, f17_local1, f17_local2, f17_local3, f17_local6, f17_local7, f17_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerSpider424000_Act25(arg0, arg1, arg2)
    local f18_local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 50, 50, TARGET_ENE_0, 5, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerSpider424000_Act26(arg0, arg1, arg2)
    local f19_local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 2, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FingerSpider424000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_FingerSpider424000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f23_local0 = arg1:GetDist(TARGET_ENE_0)
    local f23_local1 = arg1:GetDist(TARGET_FRI_0)
    local f23_local2 = arg1:GetRandam_Int(1, 100)
    local f23_local3 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 90, 30)
    local f23_local4 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 90, 30)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(12000) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12003) then
                return false
            end
            arg2:ClearSubGoal()
            FingerSpider424000_Act15(arg1, arg2)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptId(5030) and f23_local0 >= 5 then
            if arg1:GetHpRate(TARGET_SELF) <= 0.6 and f23_local2 <= 60 and arg1:GetAttackPassedTime(3013) >= 12 and arg1:HasSpecialEffectId(TARGET_SELF, 12017) == false then
                arg2:ClearSubGoal()
                FingerSpider424000_Act17(arg1, arg2)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                if arg1:GetAttackPassedTime(3001) >= 10 and f23_local0 >= 2 then
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3001, TARGET_ENE_0, 25, 0, 180, 0, 0)
                    return true
                end
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(5025) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12003) then
            arg2:ClearSubGoal()
            if f23_local0 >= 20 then
                local f23_local5 = 5
                local f23_local6 = 3001
                local f23_local7 = TARGET_ENE_0
                local f23_local8 = 10
                local f23_local9 = 0
                local f23_local10 = 0
                local f23_local11 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f23_local5, f23_local6, f23_local7, f23_local8, 0, 0, 0)
            elseif f23_local0 >= 6 then
                local f23_local5 = 5
                local f23_local6 = 3000
                local f23_local7 = TARGET_ENE_0
                local f23_local8 = 10
                local f23_local9 = 0
                local f23_local10 = 0
                local f23_local11 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f23_local5, f23_local6, f23_local7, f23_local8, 0, 0, 0)
            end
            return true
        else
            arg2:ClearSubGoal()
            if f23_local0 >= 5 and arg1:GetAttackPassedTime(3001) >= 8 then
                FingerSpider424000_Act02(arg1, arg2)
            else
                FingerSpider424000_Act25(arg1, arg2, paramTbl)
            end
            return true
        end
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12003) then
            return false
        end
        if f23_local3 == true then
            if f23_local2 <= 20 and arg1:GetAttackPassedTime(6001) >= 10 then
                arg2:ClearSubGoal()
                FingerSpider424000_Act26(arg1, arg2)
                return true
            elseif f23_local2 <= 30 then
                arg2:ClearSubGoal()
                FingerSpider424000_Act25(arg1, arg2)
                return true
            elseif f23_local0 <= 10 and f23_local2 <= 40 and arg1:GetAttackPassedTime(3002) >= 10 then
                arg2:ClearSubGoal()
                FingerSpider424000_Act03(arg1, arg2)
                return true
            end
        elseif f23_local4 == true then
            if f23_local2 <= 30 then
                arg2:ClearSubGoal()
                FingerSpider424000_Act19(arg1, arg2)
                return true
            elseif f23_local0 <= 10 and f23_local2 <= 60 and arg1:GetAttackPassedTime(3002) >= 10 then
                arg2:ClearSubGoal()
                FingerSpider424000_Act03(arg1, arg2)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_FingerSpider424000_AfterAttackAct, "FingerSpider424000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FingerSpider424000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


