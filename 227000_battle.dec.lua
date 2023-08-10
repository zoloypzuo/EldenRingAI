RegisterTableGoal(GOAL_CrabBig227000_Battle, "GOAL_CrabBig227000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrabBig227000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 0)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    arg1:SetStringIndexedNumber("Dist_BackStep", 0)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    local f2_local7 = arg1:GetNpcThinkParamID()
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 12030)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 12031)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 12032)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 12560)
    if f2_local11 == true and arg1:GetNumber(1) ~= 1 then
        f2_local0[11] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if f2_local3 >= 8 then
            if InsideRange(arg1, arg2, 157.5, 45, -999, 999) then
                f2_local0[22] = 70
                f2_local0[20] = 30
            else
                f2_local0[23] = 70
                f2_local0[20] = 30
            end
        else
            f2_local0[20] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        if f2_local3 >= 23 then
            f2_local0[22] = 85
            f2_local0[28] = 15
        elseif f2_local3 >= 8 then
            f2_local0[24] = 85
            f2_local0[28] = 15
        elseif f2_local3 >= 3 then
            f2_local0[13] = 80
            f2_local0[28] = 10
            f2_local0[11] = 10
        else
            f2_local0[12] = 40
            f2_local0[16] = 40
            f2_local0[11] = 10
            f2_local0[10] = 10
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        if f2_local3 >= 23 then
            f2_local0[23] = 85
            f2_local0[28] = 15
        elseif f2_local3 >= 8 then
            f2_local0[25] = 85
            f2_local0[28] = 15
        elseif f2_local3 >= 3 then
            f2_local0[15] = 80
            f2_local0[28] = 10
            f2_local0[11] = 10
        else
            f2_local0[14] = 25
            f2_local0[17] = 55
            f2_local0[11] = 10
            f2_local0[10] = 10
        end
    elseif f2_local3 >= 8 then
        if InsideRange(arg1, arg2, 22.5, 45, -999, 999) then
            f2_local0[22] = 70
            f2_local0[28] = 30
        else
            f2_local0[23] = 70
            f2_local0[20] = 30
        end
    elseif f2_local3 >= 3 then
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[5] = 0
        f2_local0[7] = 0
        f2_local0[8] = 10
        f2_local0[9] = 35
        f2_local0[11] = 35
    else
        f2_local0[1] = 15
        f2_local0[4] = 5
        f2_local0[6] = 0
        f2_local0[7] = 20
        f2_local0[9] = 0
        f2_local0[10] = 40
        f2_local0[11] = 20
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3006, 20, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3010, 3, f2_local0[11], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3025, 3, f2_local0[11], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3026, 3, f2_local0[11], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act17)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act28)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, CrabBig227000_Act32)
    local f2_local12 = REGIST_FUNC(arg1, arg2, CrabBig227000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local12, f2_local2)
    
end

function CrabBig227000_Act01(arg0, arg1, arg2)
    local f3_local0 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f3_local2 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f3_local3 = 50
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 4
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act02(arg0, arg1, arg2)
    local f4_local0 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f4_local2 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f4_local3 = 50
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 4
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act03(arg0, arg1, arg2)
    local f5_local0 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f5_local2 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f5_local3 = 50
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 4
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3002
    local f5_local8 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act04(arg0, arg1, arg2)
    local f6_local0 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f6_local2 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f6_local3 = 50
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 4
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3003
    local f6_local8 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act05(arg0, arg1, arg2)
    local f7_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f7_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f7_local3 = 50
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 4
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3004
    local f7_local8 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act06(arg0, arg1, arg2)
    local f8_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f8_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f8_local3 = 50
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 4
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3005
    local f8_local8 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act07(arg0, arg1, arg2)
    local f9_local0 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f9_local2 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f9_local3 = 50
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 4
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3006
    local f9_local8 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act08(arg0, arg1, arg2)
    local f10_local0 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f10_local2 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f10_local3 = 50
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 4
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3007
    local f10_local8 = 3011
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f10_local10 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local11 = 0
    local f10_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local9, f10_local11, f10_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f10_local8, TARGET_ENE_0, f10_local10, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act09(arg0, arg1, arg2)
    local f11_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f11_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f11_local3 = 50
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 4
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3008
    local f11_local8 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local9 = 0
    local f11_local10 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 85
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act10(arg0, arg1, arg2)
    local f12_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f12_local2 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f12_local3 = 50
    local f12_local4 = 0
    local f12_local5 = 4
    local f12_local6 = 4
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3009
    local f12_local8 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = -1
    local f12_local10 = 35
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 85
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act11(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f13_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 12030)
    local f13_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 12031)
    local f13_local2 = arg0:HasSpecialEffectId(TARGET_SELF, 12032)
    local f13_local3 = 11.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local4 = 11.1 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f13_local5 = 11.1 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f13_local6 = 50
    local f13_local7 = 0
    local f13_local8 = 4
    local f13_local9 = 4
    Approach_Act_Flex(arg0, arg1, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7, f13_local8, f13_local9)
    if f13_local0 == true then
        local f13_local10 = 3010
        local f13_local11 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
        local f13_local12 = -1
        local f13_local13 = 30
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local10, TARGET_ENE_0, f13_local11, f13_local12, f13_local13, 0, 0)
    elseif f13_local1 == true then
        local f13_local10 = 3025
        local f13_local11 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
        local f13_local12 = -1
        local f13_local13 = 30
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local10, TARGET_ENE_0, f13_local11, f13_local12, f13_local13, 0, 0)
    elseif f13_local2 == true then
        local f13_local10 = 3026
        local f13_local11 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
        local f13_local12 = -1
        local f13_local13 = 30
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local10, TARGET_ENE_0, f13_local11, f13_local12, f13_local13, 0, 0)
    else
        local f13_local10 = 3010
        local f13_local11 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
        local f13_local12 = -1
        local f13_local13 = 30
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local10, TARGET_ENE_0, f13_local11, f13_local12, f13_local13, 0, 0)
    end
    GetWellSpace_Odds = 85
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act12(arg0, arg1, arg2)
    local f14_local0 = 3011
    local f14_local1 = 3016
    local f14_local2 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f14_local3 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local4 = 0
    local f14_local5 = 0
    local f14_local6 = arg0:GetRandam_Int(1, 100)
    if f14_local6 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local3, f14_local4, f14_local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local2, f14_local4, f14_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f14_local1, TARGET_ENE_0, f14_local3, 0, 0)
    end
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act13(arg0, arg1, arg2)
    local f15_local0 = 3012
    local f15_local1 = 3016
    local f15_local2 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f15_local3 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = arg0:GetRandam_Int(1, 100)
    if f15_local6 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local3, f15_local4, f15_local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local2, f15_local4, f15_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f15_local1, TARGET_ENE_0, f15_local3, 0, 0)
    end
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act14(arg0, arg1, arg2)
    local f16_local0 = 3013
    local f16_local1 = 3018
    local f16_local2 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f16_local3 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local0, TARGET_ENE_0, f16_local3, f16_local4, f16_local5, 0, 0)
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act15(arg0, arg1, arg2)
    local f17_local0 = 3014
    local f17_local1 = 3017
    local f17_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f17_local3 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local4 = 0
    local f17_local5 = 0
    local f17_local6 = arg0:GetRandam_Int(1, 100)
    if f17_local6 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local0, TARGET_ENE_0, f17_local3, f17_local4, f17_local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local0, TARGET_ENE_0, f17_local2, f17_local4, f17_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f17_local1, TARGET_ENE_0, f17_local3, 0, 0)
    end
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act16(arg0, arg1, arg2)
    local f18_local0 = 3015
    local f18_local1 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = 0
    local f18_local3 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local0, TARGET_ENE_0, f18_local1, f18_local2, f18_local3, 0, 0)
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act17(arg0, arg1, arg2)
    local f19_local0 = 3017
    local f19_local1 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local2 = 0
    local f19_local3 = 0
    local f19_local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local0, TARGET_ENE_0, f19_local1, f19_local2, f19_local3, 0, 0)
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act22(arg0, arg1, arg2)
    local f22_local0 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = 0
    local f22_local2 = 0
    local f22_local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 6, 6003, TARGET_ENE_0, 10, 7)
    if f22_local3 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, f22_local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, f22_local0, 0, 0)
    end
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act23(arg0, arg1, arg2)
    local f23_local0 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local1 = 0
    local f23_local2 = 0
    local f23_local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 6, 6002, TARGET_ENE_0, 10, 7)
    if f23_local3 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, f23_local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, f23_local0, 0, 0)
    end
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act24(arg0, arg1, arg2)
    local f24_local0 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local1 = 0
    local f24_local2 = 0
    local f24_local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 3, 6003, TARGET_ENE_0, 10, 7)
    if f24_local3 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, f24_local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, f24_local0, 0, 0)
    end
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act25(arg0, arg1, arg2)
    local f25_local0 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local1 = 0
    local f25_local2 = 0
    local f25_local3 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 3, 6002, TARGET_ENE_0, 10, 7)
    if f25_local3 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, f25_local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, f25_local0, 0, 0)
    end
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act26(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act27(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3, 4.5), TARGET_NONE, 0, 0, 0)
    local f27_local0 = 3021
    local f27_local1 = 3020
    local f27_local2 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local3 = 0
    local f27_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f27_local0, TARGET_ENE_0, 999, f27_local3, f27_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f27_local1, TARGET_ENE_0, 6, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrabBig227000_Act28(arg0, arg1, arg2)
    local f28_local0 = 3
    local f28_local1 = 999
    local f28_local2 = 999
    local f28_local3 = 0
    local f28_local4 = 0
    local f28_local5 = 10
    local f28_local6 = 10
    Approach_Act_Flex(arg0, arg1, f28_local0, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrabBig227000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end


