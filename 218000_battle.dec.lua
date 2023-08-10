RegisterTableGoal(GOAL_MaricaOfDaughter_218000_Battle, "MaricaOfDaughter_218000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MaricaOfDaughter_218000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
    arg1:SetNumber(7, 0)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:GetStringIndexedNumber("Rolling_Cnt")
    arg1:GetStringIndexedNumber("Warcry_Cnt")
    arg1:GetStringIndexedNumber("Beam_Cnt")
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetDist(TARGET_ENE_0)
    local f2_local6 = arg1:GetDist(TARGET_FRI_0)
    local f2_local7 = arg1:GetDist(TARGET_SOUND)
    local f2_local8 = arg1:GetRandam_Int(1, 100)
    local f2_local9 = arg1:GetEventRequest()
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:SetNumber(4, 0)
    arg1:SetNumber(6, 0)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 18710)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 18711)
    local f2_local12 = arg1:HasSpecialEffectId(TARGET_SELF, 18715)
    local f2_local13 = arg1:HasSpecialEffectId(TARGET_ENE_0, 18740)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18720)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18721)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18722)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18723)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18724)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18725)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18726)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 18740)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16461)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16462)
    if f2_local13 == true and arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 90, 99) then
        if f2_local5 > 9 then
            f2_local0[24] = 1
        elseif f2_local5 > 5 then
            f2_local0[16] = 5
            f2_local0[23] = 1
            f2_local0[26] = 3
            f2_local0[27] = 3
        else
            f2_local0[13] = 3
        end
    elseif f2_local5 > 10 then
        f2_local0[5] = 20
        f2_local0[6] = 20
        f2_local0[11] = 20
        f2_local0[12] = 10
        f2_local0[23] = 10
        f2_local0[24] = 20
    elseif f2_local5 > 5 then
        f2_local0[1] = 5
        f2_local0[4] = 5
        f2_local0[6] = 5
        f2_local0[8] = 5
        f2_local0[9] = 5
        f2_local0[10] = 5
        f2_local0[24] = 15
        f2_local0[26] = 5
        f2_local0[27] = 5
        f2_local0[7] = 5
        f2_local0[11] = 5
        f2_local0[12] = 5
        f2_local0[13] = 5
        f2_local0[5] = 20
        f2_local0[6] = 20
    elseif f2_local5 > 3 then
        f2_local0[1] = 5
        f2_local0[3] = 5
        f2_local0[4] = 5
        f2_local0[6] = 20
        f2_local0[10] = 5
        f2_local0[26] = 5
        f2_local0[27] = 5
        f2_local0[7] = 5
        f2_local0[11] = 5
        f2_local0[13] = 10
    else
        f2_local0[1] = 5
        f2_local0[3] = 5
        f2_local0[10] = 5
        f2_local0[13] = 5
    end
    if arg1:GetTimer(2) > 15 then
        f2_local0[26] = f2_local0[26] / 3
        f2_local0[27] = f2_local0[27] / 3
        f2_local0[28] = f2_local0[28] / 3
    end
    if arg1:GetHpRate(TARGET_SELF) > 0.8 and arg1:GetHpRate(TARGET_ENE_0) > 0.8 then
        f2_local0[5] = 0
    elseif arg1:GetHpRate(TARGET_SELF) < 0.4 or arg1:GetHpRate(TARGET_ENE_0) < 0.4 then
        f2_local0[5] = f2_local0[5] * 2
    end
    if arg1:GetHpRate(TARGET_SELF) > 0.8 and arg1:GetHpRate(TARGET_LowHp_Friend) > 0.8 then
        f2_local0[6] = 0
    elseif arg1:GetHpRate(TARGET_SELF) < 0.5 or arg1:GetHpRate(TARGET_LowHp_Friend) > 0.5 then
        f2_local0[6] = f2_local0[6] * 2
    end
    if f2_local5 > 15 then
        f2_local0[11] = 0
        f2_local0[12] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 30, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3000, 40, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3001, 60, f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3022, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3031, 10, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3011, 20, f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3015, 10, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3005, 40, f2_local0[13], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3001, 20, f2_local0[15], 0)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3013, 20, f2_local0[16], 0)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3014, 20, f2_local0[16], 0)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[17], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_Act30)
    local f2_local14 = REGIST_FUNC(arg1, arg2, MaricaOfDaughter_218000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local14, f2_local2)
    
end

function MaricaOfDaughter_218000_Act01(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = arg0:GetRandam_Int(1, 100)
    local f3_local2 = 10
    local f3_local3 = 0
    local f3_local4 = 999
    local f3_local5 = 100
    local f3_local6 = 0
    local f3_local7 = 1
    local f3_local8 = 1
    Approach_Act_Flex(arg0, arg1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8)
    local f3_local9 = 10
    local f3_local10 = 3003
    local f3_local11 = 999
    local f3_local12 = 2
    local f3_local13 = 120
    local f3_local14 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18720)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18721)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18722)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18723)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18724)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18725)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 18740)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local9, f3_local10, TARGET_ENE_0, f3_local11, f3_local12, f3_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act02(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f4_local0 = 10
    local f4_local1 = 3007
    local f4_local2 = 999
    local f4_local3 = 0
    local f4_local4 = 120
    local f4_local5 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 18740)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local0, f4_local1, TARGET_ENE_0, f4_local2, f4_local3, f4_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act03(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = arg0:GetRandam_Int(1, 100)
    local f5_local2 = 6
    local f5_local3 = 0
    local f5_local4 = 999
    local f5_local5 = 100
    local f5_local6 = 0
    local f5_local7 = 3
    local f5_local8 = 6
    Approach_Act_Flex(arg0, arg1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7, f5_local8)
    local f5_local9 = 10
    local f5_local10 = 3004
    local f5_local11 = 999
    local f5_local12 = 2
    local f5_local13 = 90
    local f5_local14 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18720)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18721)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18722)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18723)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18724)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18725)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 18740)
    if arg0:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 90, 99) and f5_local0 > 3 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 1)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local9, f5_local10, TARGET_ENE_0, f5_local11, f5_local12, f5_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act04(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = arg0:GetRandam_Int(1, 100)
    local f6_local2 = 10
    local f6_local3 = 0
    local f6_local4 = 999
    local f6_local5 = 100
    local f6_local6 = 0
    local f6_local7 = 3
    local f6_local8 = 6
    Approach_Act_Flex(arg0, arg1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7, f6_local8)
    local f6_local9 = 10
    local f6_local10 = 3006
    local f6_local11 = 999
    local f6_local12 = 0
    local f6_local13 = 120
    local f6_local14 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 18740)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local9, f6_local10, TARGET_ENE_0, f6_local11, f6_local12, f6_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act05(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f7_local0 = 10
    local f7_local1 = 3000
    local f7_local2 = 999
    local f7_local3 = 0
    local f7_local4 = 120
    local f7_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, TARGET_ENE_0, f7_local2, f7_local3, f7_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act06(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f8_local0 = 10
    local f8_local1 = 3001
    local f8_local2 = 999
    local f8_local3 = 0
    local f8_local4 = 120
    local f8_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Int(5, 8), TARGET_FRI_0, 4, TARGET_SELF, false, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local0, f8_local1, TARGET_FRI_0, f8_local2, f8_local3, f8_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act07(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f9_local0 = 10
    local f9_local1 = 3008
    local f9_local2 = 3022
    local f9_local3 = 999
    local f9_local4 = 0
    local f9_local5 = 120
    local f9_local6 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 18740)
    local f9_local7 = arg0:GetDist(TARGET_ENE_0)
    if f9_local7 < 6 then
        local f9_local8 = 5
        local f9_local9 = -1
        local f9_local10 = 1
        local f9_local11 = -1
        local f9_local12 = -1
        local f9_local13 = TARGET_ENE_0
        local f9_local14 = 3
        local f9_local15 = 0
        local f9_local16 = true
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 1)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6011, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 1)
    end
    if f9_local6 > 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local0, f9_local1, TARGET_ENE_0, f9_local3, f9_local4, f9_local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local0, f9_local2, TARGET_ENE_0, f9_local3, f9_local4, f9_local5, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act08(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = arg0:GetRandam_Int(1, 100)
    local f10_local2 = 10
    local f10_local3 = 0
    local f10_local4 = 999
    local f10_local5 = 100
    local f10_local6 = 0
    local f10_local7 = 3
    local f10_local8 = 6
    Approach_Act_Flex(arg0, arg1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7, f10_local8)
    local f10_local9 = 10
    local f10_local10 = 3012
    local f10_local11 = 999
    local f10_local12 = 0
    local f10_local13 = 120
    local f10_local14 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 18740)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local9, f10_local10, TARGET_ENE_0, f10_local11, f10_local12, f10_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act09(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetRandam_Int(1, 100)
    local f11_local2 = 8
    local f11_local3 = 0
    local f11_local4 = 999
    local f11_local5 = 100
    local f11_local6 = 0
    local f11_local7 = 3
    local f11_local8 = 6
    Approach_Act_Flex(arg0, arg1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7, f11_local8)
    local f11_local9 = 10
    local f11_local10 = 3005
    local f11_local11 = 999
    local f11_local12 = 0
    local f11_local13 = 120
    local f11_local14 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 18740)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local9, f11_local10, TARGET_ENE_0, f11_local11, f11_local12, f11_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act10(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18725)
    local f12_local0 = 10
    local f12_local1 = 3010
    local f12_local2 = 999
    local f12_local3 = 0
    local f12_local4 = 120
    local f12_local5 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 18740)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local0, f12_local1, TARGET_ENE_0, f12_local2, f12_local3, f12_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act11(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f13_local0 = 10
    local f13_local1 = 3011
    local f13_local2 = 3023
    local f13_local3 = 999
    local f13_local4 = 0
    local f13_local5 = 120
    local f13_local6 = arg0:GetRandam_Int(1, 100)
    local f13_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 18740)
    local f13_local8 = arg0:GetDist(TARGET_ENE_0)
    if f13_local8 < 6 then
        local f13_local9 = 5
        local f13_local10 = -1
        local f13_local11 = 1
        local f13_local12 = -1
        local f13_local13 = -1
        local f13_local14 = TARGET_ENE_0
        local f13_local15 = 3
        local f13_local16 = 0
        local f13_local17 = true
        arg0:SetTimer(2, 20)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 1)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6011, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 1)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local0, f13_local1, TARGET_ENE_0, f13_local3, f13_local4, f13_local5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f13_local2, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act12(arg0, arg1, arg2)
    local f14_local0 = 10
    local f14_local1 = 3015
    local f14_local2 = 999
    local f14_local3 = 0
    local f14_local4 = 120
    local f14_local5 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 18740)
    local f14_local6 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 90, 99) then
        if f14_local6 < 6 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6011, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 1)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f14_local1, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act13(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f15_local0 = 10
    local f15_local1 = 3016
    local f15_local2 = 999
    local f15_local3 = 0
    local f15_local4 = 120
    local f15_local5 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 18740)
    local f15_local6 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local0, f15_local1, TARGET_ENE_0, f15_local2, f15_local3, f15_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act14(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17601)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17607)
    local f16_local0 = 10
    local f16_local1 = 3020
    local f16_local2 = 999
    local f16_local3 = 0
    local f16_local4 = 120
    local f16_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local0, f16_local1, TARGET_ENE_0, f16_local2, f16_local3, f16_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act15(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17601)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17607)
    local f17_local0 = 10
    local f17_local1 = 3022
    local f17_local2 = 999
    local f17_local3 = 0
    local f17_local4 = 120
    local f17_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f17_local0, f17_local1, TARGET_ENE_0, f17_local2, f17_local3, f17_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act16(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f18_local0 = 10
    local f18_local1 = 3013
    local f18_local2 = 3014
    local f18_local3 = 999
    local f18_local4 = 0
    local f18_local5 = 120
    local f18_local6 = arg0:GetRandam_Int(1, 100)
    if f18_local6 > 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local0, f18_local1, TARGET_ENE_0, f18_local3, f18_local4, f18_local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local0, f18_local2, TARGET_ENE_0, f18_local3, f18_local4, f18_local5, 0, 0)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17604)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act17(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act18(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act19(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act20(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, AppDist, TARGET_ENE_0, RunSwitch, IsGuard)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Int(3, 5), TARGET_ENE_0, 10, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act23(arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = arg0:GetRandam_Int(1, 100)
    if f25_local0 > 6 then
        if arg0:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 90, 99) then
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(6, 9), TARGET_ENE_0, 5, TARGET_SELF, false, -1, AI_DIR_TYPE_FR, arg0:GetRandam_Int(7, 8))
        elseif arg0:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_L, 180, 90, 99) then
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(6, 9), TARGET_ENE_0, 5, TARGET_SELF, false, -1, AI_DIR_TYPE_FL, arg0:GetRandam_Int(7, 8))
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act24(arg0, arg1, arg2)
    local f26_local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNumber(3) == 1 then
        arg0:SetNumber(3, 1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif arg0:GetNumber(3) == 2 then
        arg0:SetNumber(3, 2)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif f26_local0 > 50 then
        arg0:SetNumber(3, 1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg0:SetNumber(3, 2)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act25(arg0, arg1, arg2)
    local f27_local0 = 5
    local f27_local1 = 1
    local f27_local2 = -1
    local f27_local3 = -1
    local f27_local4 = -1
    local f27_local5 = TARGET_ENE_0
    local f27_local6 = 0
    local f27_local7 = 2
    local f27_local8 = true
    arg0:SetTimer(2, 20)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17600)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_FRI_0, -1, AI_DIR_TYPE_F, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act26(arg0, arg1, arg2)
    arg0:SetNumber(2, arg0:GetNumber(2) + 4)
    local f28_local0 = 5
    local f28_local1 = -1
    local f28_local2 = -1
    local f28_local3 = 1
    local f28_local4 = -1
    local f28_local5 = TARGET_ENE_0
    local f28_local6 = 3
    local f28_local7 = 0
    local f28_local8 = true
    arg0:SetTimer(2, 20)
    arg0:SetNumber(3, 1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17600)
    local f28_local9 = 5
    local f28_local10 = -1
    local f28_local11 = 1
    local f28_local12 = -1
    local f28_local13 = -1
    local f28_local14 = TARGET_ENE_0
    local f28_local15 = 3
    local f28_local16 = 0
    local f28_local17 = true
    arg0:SetTimer(2, 20)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act27(arg0, arg1, arg2)
    arg0:SetNumber(2, arg0:GetNumber(2) + 4)
    local f29_local0 = 5
    local f29_local1 = -1
    local f29_local2 = -1
    local f29_local3 = -1
    local f29_local4 = 1
    local f29_local5 = TARGET_ENE_0
    local f29_local6 = 3
    local f29_local7 = 0
    local f29_local8 = true
    arg0:SetTimer(2, 20)
    arg0:SetNumber(3, 2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17600)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act28(arg0, arg1, arg2)
    local f30_local0 = 5
    local f30_local1 = -1
    local f30_local2 = 1
    local f30_local3 = -1
    local f30_local4 = -1
    local f30_local5 = TARGET_ENE_0
    local f30_local6 = 3
    local f30_local7 = 0
    local f30_local8 = true
    arg0:SetTimer(2, 20)
    local f30_local9 = arg0:GetDist(TARGET_ENE_0)
    if f30_local9 < 6 then
        local f30_local10 = 5
        local f30_local11 = -1
        local f30_local12 = 1
        local f30_local13 = -1
        local f30_local14 = -1
        local f30_local15 = TARGET_ENE_0
        local f30_local16 = 3
        local f30_local17 = 0
        local f30_local18 = true
        arg0:SetTimer(2, 20)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 1)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6011, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 1)
    else
        local f30_local10 = 5
        local f30_local11 = -1
        local f30_local12 = 1
        local f30_local13 = -1
        local f30_local14 = -1
        local f30_local15 = TARGET_ENE_0
        local f30_local16 = 3
        local f30_local17 = 0
        local f30_local18 = true
        arg0:SetTimer(2, 20)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_Act29(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDaughter_218000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MaricaOfDaughter_218000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f35_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f35_local1 = 0
    local f35_local2 = 20
    local f35_local3 = arg1:GetDist(TARGET_ENE_0)
    local f35_local4 = arg1:GetRandam_Int(1, 100)
    local f35_local5 = arg1:GetRandam_Int(1, 100)
    local f35_local6 = STEP_CANCELDIST
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 18740)
    local f35_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 5401)
    local f35_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 17644)
    local f35_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 17636)
    local f35_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 18710)
    local f35_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 18711)
    local f35_local12 = arg1:HasSpecialEffectId(TARGET_SELF, 18715)
    local f35_local13 = arg1:HasSpecialEffectId(TARGET_ENE_0, 18740)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18725)
    if f35_local11 == true and f35_local3 < 6 then
        if f35_local4 > 50 then
            if f35_local5 > 60 and arg1:GetAttackPassedTime(3007) >= 10 then
                arg2:ClearSubGoal()
                MaricaOfDaughter_218000_Act02(arg1, arg2)
                return true
            elseif arg1:GetAttackPassedTime(3016) >= 2 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif f35_local4 > 70 and arg1:GetAttackPassedTime(6001) >= 3 then
            arg2:ClearSubGoal()
            MaricaOfDaughter_218000_Act28(arg1, arg2)
            return true
        elseif f35_local4 > 35 then
            arg2:ClearSubGoal()
            MaricaOfDaughter_218000_Act26(arg1, arg2)
            return true
        else
            arg2:ClearSubGoal()
            MaricaOfDaughter_218000_Act27(arg1, arg2)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 18740) and f35_local12 == true and arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 160, 90, 99) then
        if f35_local3 < 3 then
            if f35_local4 > 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                MaricaOfDaughter_218000_Act28(arg1, arg2)
                return true
            end
        elseif f35_local3 < 15 then
            if f35_local4 > 50 then
                arg2:ClearSubGoal()
                MaricaOfDaughter_218000_Act26(arg1, arg2)
                return true
            else
                arg2:ClearSubGoal()
                MaricaOfDaughter_218000_Act27(arg1, arg2)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(18720) then
            if f35_local3 < 4 then
                if f35_local4 > 40 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif f35_local3 < 10 and f35_local4 > 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(18721) then
            if f35_local3 < 4 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif f35_local3 < 10 and f35_local4 > 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(18722) then
            local f35_local14 = arg1:GetDist(TARGET_ENE_0)
            local f35_local15 = arg1:GetRandam_Int(1, 100)
            local f35_local16 = 5
            local f35_local17 = -1
            local f35_local18 = 1
            local f35_local19 = -1
            local f35_local20 = -1
            local f35_local21 = TARGET_ENE_0
            local f35_local22 = 3
            local f35_local23 = 0
            local f35_local24 = true
            arg1:SetTimer(2, 20)
            arg1:SetNumber(3, 1)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17600)
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, f35_local16, f35_local17, f35_local18, f35_local19, f35_local20, f35_local21, f35_local22, f35_local23, f35_local24)
        end
        if arg1:GetSpecialEffectActivateInterruptId(18725) then
            local f35_local14 = arg1:GetDist(TARGET_ENE_0)
            local f35_local15 = arg1:GetRandam_Int(1, 100)
            if f35_local14 < 5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(18726) then
            local f35_local14 = arg1:GetDist(TARGET_ENE_0)
            local f35_local15 = arg1:GetRandam_Int(1, 100)
            if f35_local14 < 5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif f35_local15 > 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 18740) then
        if f35_local3 < 6 then
            if f35_local4 > 60 and arg1:GetAttackPassedTime(3007) > 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif f35_local4 > 20 and arg1:GetAttackPassedTime(6001) >= 3 then
                arg2:ClearSubGoal()
                MaricaOfDaughter_218000_Act28(arg1, arg2)
                return true
            elseif arg1:GetAttackPassedTime(3016) >= 2 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif f35_local3 < 8 then
            if f35_local4 > 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif f35_local4 > 20 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                MaricaOfDaughter_218000_Act26(arg1, arg2)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_MaricaOfDaughter_218000_AfterAttackAct, "MaricaOfDaughter_218000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MaricaOfDaughter_218000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


