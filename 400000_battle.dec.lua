RegisterTableGoal(GOAL_HorriblenessVarlet400000_Battle, "HorriblenessVarlet400000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HorriblenessVarlet400000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    arg1:GetStringIndexedNumber("Dash_Cnt")
    arg1:GetStringIndexedNumber("smoke_Cnt")
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDist(TARGET_FRI_0)
    local f2_local5 = arg1:GetDist(TARGET_SOUND)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetRandam_Int(1, 100)
    local f2_local8 = arg1:GetEventRequest()
    arg1:SetStringIndexedNumber("c4000_leaveDist", 19)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 10700)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 10702)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 10711)
    local f2_local12 = arg1:HasSpecialEffectId(TARGET_SELF, 10730)
    local f2_local13 = arg1:HasSpecialEffectId(TARGET_SELF, 10807)
    local f2_local14 = arg1:HasSpecialEffectId(TARGET_ENE_0, 10712)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10750)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10701)
    local f2_local15 = arg1:HasSpecialEffectId(TARGET_SELF, 10702)
    if f2_local9 == true then
        if arg1:GetNumber(5) ~= 1 and f2_local3 <= 12 then
            f2_local0[11] = 80
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            f2_local0[21] = 100
        elseif f2_local3 >= 15 then
            f2_local0[10] = 30
            f2_local0[14] = 20
            f2_local0[15] = 40
            f2_local0[16] = 15
        elseif f2_local3 >= 5 then
            f2_local0[11] = 20
            f2_local0[15] = 20
            f2_local0[16] = 20
            f2_local0[25] = 30
        else
            f2_local0[6] = 30
            f2_local0[7] = 20
            f2_local0[9] = 15
            f2_local0[11] = 20
            f2_local0[15] = 10
            f2_local0[25] = 40
        end
    elseif f2_local15 == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            f2_local0[21] = 100
        elseif f2_local3 >= 15 then
            f2_local0[5] = 30
            f2_local0[22] = 70
        elseif f2_local3 >= 8 then
            f2_local0[5] = 30
            f2_local0[22] = 30
        elseif f2_local3 >= 2.5 then
            f2_local0[5] = 30
            f2_local0[22] = 20
        else
            f2_local0[1] = 20
            f2_local0[2] = 10
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local0[21] = 100
    elseif f2_local3 >= 15 then
        f2_local0[4] = 50
        f2_local0[24] = 70
    elseif f2_local3 >= 8 then
        f2_local0[4] = 50
        f2_local0[24] = 30
    elseif f2_local3 >= 4 then
        f2_local0[4] = 50
        f2_local0[24] = 20
    else
        f2_local0[1] = 20
        f2_local0[2] = 20
        f2_local0[23] = 20
    end
    if f2_local15 == true then
        f2_local0[4] = 0
    end
    if f2_local13 == false then
        f2_local0[25] = 0
    end
    f2_local0[4] = SetCoolTime(arg1, arg2, 3022, 5, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3037, 8, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[7], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3006, 8, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3032, 8, f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3010, 15, f2_local0[11], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3024, 5, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3036, 15, f2_local0[14], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3026, 10, f2_local0[15], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3028, 15, f2_local0[15], 0)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3033, 8, f2_local0[16], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act16)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act26)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act33)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act36)
    f2_local1[37] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act37)
    f2_local1[38] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act38)
    f2_local1[39] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act39)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_Act47)
    local f2_local16 = REGIST_FUNC(arg1, arg2, HorriblenessVarlet400000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local16, f2_local2)
    
end

function HorriblenessVarlet400000_Act01(arg0, arg1, arg2)
    local f3_local0 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 2
    local f3_local10 = 100
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act02(arg0, arg1, arg2)
    local f4_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    local f4_local7 = 3001
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetRandam_Int(1, 100)
    local f5_local1 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 4
    local f5_local7 = 8
    local f5_local8 = 3002
    local f5_local9 = 3002
    local f5_local10 = 3003
    local f5_local11 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local12 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local14 = 0
    local f5_local15 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f5_local8, TARGET_ENE_0, f5_local11, f5_local14, f5_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f5_local9, TARGET_ENE_0, f5_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f5_local10, TARGET_ENE_0, f5_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act04(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        HorriblenessVarlet400000_Act21(arg0, arg1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act05(arg0, arg1, arg2)
    local f7_local0 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3037
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 3
    local f7_local10 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act06(arg0, arg1, arg2)
    local f8_local0 = 5.5
    local f8_local1 = 5.5
    local f8_local2 = 5.5 + 3
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3000
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 2
    local f8_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetRandam_Int(1, 100)
    local f9_local1 = 4.5
    local f9_local2 = 4.5
    local f9_local3 = 6 + 3
    local f9_local4 = 100
    local f9_local5 = 0
    local f9_local6 = 4
    local f9_local7 = 8
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    local f9_local8 = 3004
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 3
    local f9_local11 = 100
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act08(arg0, arg1, arg2)
    local f10_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3005
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 0
    local f10_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act09(arg0, arg1, arg2)
    local f11_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 8
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3006
    local f11_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local9 = 2
    local f11_local10 = 150
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act10(arg0, arg1, arg2)
    local f12_local0 = 7.5
    local f12_local1 = 0
    local f12_local2 = 999
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 4
    local f12_local6 = 8
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    arg0:SetStringIndexedNumber("Dash_Cnt", 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10800)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10801)
    local f12_local7 = 3032
    local f12_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 0
    local f12_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act11(arg0, arg1, arg2)
    local f13_local0 = 3009
    local f13_local1 = 3010
    local f13_local2 = ATT3009_DIST_MAX
    local f13_local3 = ATT3010_DIST_MAX
    local f13_local4 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local5 = 0
    local f13_local6 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10804)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10805)
    smoke_Cnt = 0
    arg0:SetNumber(5, 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local0, TARGET_ENE_0, 999, f13_local5, f13_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, TARGET_ENE_0, 10)
    arg0:SetNumber(5, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act13(arg0, arg1, arg2)
    local f15_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 10711)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        HorriblenessVarlet400000_Act21(arg0, arg1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act14(arg0, arg1, arg2)
    local f16_local0 = 25 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 25 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 25 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 4
    local f16_local6 = 8
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act15(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10750)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    if f17_local0 > 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, DIST_None, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act16(arg0, arg1, arg2)
    local f18_local0 = 7
    local f18_local1 = 0
    local f18_local2 = 999
    local f18_local3 = 100
    local f18_local4 = 0
    local f18_local5 = 4
    local f18_local6 = 8
    Approach_Act_Flex(arg0, arg1, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    arg0:SetStringIndexedNumber("Dash_Cnt", 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10800)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10801)
    local f18_local7 = 3033
    local f18_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local9 = 0
    local f18_local10 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, Life, f18_local7, TARGET_ENE_0, f18_local8, f18_local9, f18_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_ActCP1(arg0, arg1, arg2)
    local f19_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f19_local3 = 100
    local f19_local4 = 0
    local f19_local5 = 4
    local f19_local6 = 8
    Approach_Act_Flex(arg0, arg1, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6)
    local f19_local7 = 3000
    local f19_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local9 = 0
    local f19_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, f19_local7, TARGET_ENE_0, f19_local8, f19_local9, f19_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_ActCP2(arg0, arg1, arg2)
    local f20_local0 = arg0:GetRandam_Int(1, 100)
    local f20_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local3 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f20_local4 = 100
    local f20_local5 = 0
    local f20_local6 = 4
    local f20_local7 = 8
    Approach_Act_Flex(arg0, arg1, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7)
    local f20_local8 = 3001
    local f20_local9 = 3002
    local f20_local10 = 3003
    local f20_local11 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local12 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local14 = 0
    local f20_local15 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f20_local8, TARGET_ENE_0, f20_local11, f20_local14, f20_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f20_local9, TARGET_ENE_0, f20_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f20_local10, TARGET_ENE_0, f20_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act21(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10802)
    if arg0:HasSpecialEffectId(TARGET_SELF, 10802) then
        local f21_local0 = 3035
        local f21_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f21_local2 = 0
        local f21_local3 = 180
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f21_local0, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act22(arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = 2
    local f22_local2 = 999
    local f22_local3 = arg0:GetRandam_Int(1, 100)
    local f22_local4 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f22_local1, TARGET_ENE_0, false, f22_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act23(arg0, arg1, arg2)
    local f23_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 10700)
    local f23_local1 = arg0:GetRandam_Int(1, 100)
    local f23_local2 = arg0:GetDist(TARGET_ENE_0)
    local f23_local3 = arg0:GetRandam_Int(3, 6)
    local f23_local4 = AI_DIR_TYPE_ToB
    local f23_local5 = arg0:GetRandam_Int(AI_DIR_TYPE_FL, AI_DIR_TYPE_FR)
    local f23_local6 = arg0:GetRandam_Int(3, 7)
    if f23_local0 == false then
        f23_local3 = f23_local3 * 3.5
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f23_local6, TARGET_ENE_0, f23_local3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act24(arg0, arg1, arg2)
    local f24_local0 = arg0:GetRandam_Int(1, 100)
    local f24_local1 = -1
    local f24_local2 = arg0:GetRandam_Int(20, 30)
    local f24_local3 = arg0:GetRandam_Int(0, 1)
    local f24_local4 = arg0:GetRandam_Int(15, 45)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, f24_local3, f24_local4, true, true, f24_local1)
    if ridingCheck == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 3, TARGET_SELF, true, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act25(arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local f25_local2 = arg0:GetRandam_Int(14, 19)
    local f25_local3 = AI_DIR_TYPE_ToFL
    local f25_local4 = AI_DIR_TYPE_ToL
    local f25_local5 = arg0:GetRandam_Int(4, 7)
    local f25_local6 = arg0:GetRandam_Int(3, 6)
    local f25_local7 = arg0:GetRandam_Int(1, 100)
    if arg0:IsRiding(TARGET_ENE_0) then
        f25_local2 = f25_local2 + 15
    end
    if f25_local7 <= 50 then
        f25_local3 = AI_DIR_TYPE_ToFR
        f25_local4 = AI_DIR_TYPE_ToR
    end
    if f25_local0 <= 6.5 and f25_local7 <= 50 then
        local f25_local8 = arg0:GetRandam_Int(6002, 6003)
        local f25_local9 = AI_DIR_TYPE_FL
        if f25_local8 == 6003 then
            f25_local9 = AI_DIR_TYPE_FR
        end
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f25_local8, TARGET_ENE_0, 0, f25_local9, f25_local0 + arg0:GetMapHitRadius(TARGET_SELF))
        if f25_local9 == AI_DIR_TYPE_FL then
            f25_local3 = AI_DIR_TYPE_ToFL
            f25_local4 = AI_DIR_TYPE_ToL
        else
            f25_local3 = AI_DIR_TYPE_ToFR
            f25_local4 = AI_DIR_TYPE_ToR
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act26(arg0, arg1, arg2)
    local f26_local0 = arg0:GetDist(TARGET_FRI_0)
    local f26_local1 = arg0:GetDist(TARGET_SOUND)
    local f26_local2 = arg0:GetDist(TARGET_ENE_0)
    local f26_local3 = 4
    local f26_local4 = 15
    local f26_local5 = arg0:GetRandam_Int(1, 100)
    local f26_local6 = -1
    if f26_local0 > 0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_FRI_0, f26_local3, TARGET_SELF, false, f26_local6)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_SOUND, f26_local3, TARGET_SELF, false, f26_local6)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act32(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act33(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act35(arg0, arg1, arg2)
    local f30_local0 = 3021
    local f30_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f30_local2 = 2
    local f30_local3 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, Life, f30_local0, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act36(arg0, arg1, arg2)
    if arg0:GetNumber(5) == 0 then
        arg0:SetNumber(5, 1)
    elseif arg0:GetNumber(5) == 1 then
        arg0:SetNumber(5, 2)
    elseif arg0:GetNumber(5) == 2 then
        arg0:SetNumber(5, 3)
    elseif arg0:GetNumber(5) == 3 then
        arg0:SetNumber(5, 4)
    elseif arg0:GetNumber(5) == 4 then
        arg0:SetNumber(5, 5)
    end
    local f31_local0 = 3018
    local f31_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f31_local2 = 0
    local f31_local3 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, Life, f31_local0, TARGET_NONE, f31_local1, f31_local2, f31_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act37(arg0, arg1, arg2)
    local f32_local0 = 3016
    local f32_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f32_local2 = 0
    local f32_local3 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, Life, f32_local0, TARGET_ENE_0, f32_local1, f32_local2, f32_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act38(arg0, arg1, arg2)
    arg0:SetNumber(5, 0)
    local f33_local0 = 3015
    local f33_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f33_local2 = 0
    local f33_local3 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, Life, f33_local0, TARGET_EVENT, f33_local1, f33_local2, f33_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act39(arg0, arg1, arg2)
    local f34_local0 = arg0:GetDist(TARGET_ENE_0)
    local f34_local1 = 2
    local f34_local2 = 999
    local f34_local3 = arg0:GetRandam_Int(1, 100)
    local f34_local4 = -1
    if arg0:GetNumber(5) == 0 then
        arg0:SetNumber(5, 1)
    elseif arg0:GetNumber(5) == 1 then
        arg0:SetNumber(5, 2)
    elseif arg0:GetNumber(5) == 2 then
        arg0:SetNumber(5, 3)
    elseif arg0:GetNumber(5) == 3 then
        arg0:SetNumber(5, 4)
    elseif arg0:GetNumber(5) == 4 then
        arg0:SetNumber(5, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_EVENT, f34_local1, POINT_EVENT, false, f34_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_ActCP3(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessVarlet400000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_HorriblenessVarlet400000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f42_local0 = arg1:GetDist(TARGET_ENE_0)
    local f42_local1 = arg1:GetDist(TARGET_FRI_0)
    local f42_local2 = arg1:GetRandam_Int(1, 100)
    local f42_local3 = arg1:GetPrevTargetState()
    local f42_local4 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    local f42_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 10700)
    local f42_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 10730)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:GetSpecialEffectActivateInterruptId(10701) then
        arg2:ClearSubGoal()
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10750) then
        local f42_local7 = arg1:GetDist(TARGET_ENE_0)
        local f42_local8 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 260, 120, 5) then
            if f42_local8 > 50 then
                local f42_local9 = arg1:GetRandam_Int(1, 100)
                if f42_local9 > 60 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3000, TARGET_ENE_0, 4, 0, 90)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            elseif f42_local8 > 20 then
                arg2:ClearSubGoal()
                local f42_local9 = arg1:GetRandam_Int(6002, 6003)
                local f42_local10 = AI_DIR_TYPE_FL
                if f42_local9 == 6003 then
                    f42_local10 = AI_DIR_TYPE_FR
                end
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, f42_local9, TARGET_ENE_0, 0, f42_local10, f42_local7 + arg1:GetMapHitRadius(TARGET_SELF))
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10800) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10801)
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3034, TARGET_ENE_0, 4, 0, 90)
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10801) then
        local f42_local7 = arg1:GetDist(TARGET_ENE_0)
        local f42_local8 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) then
            if f42_local7 <= 3 then
                if f42_local8 > 30 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10801)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3034, TARGET_ENE_0, 4, 0, 90)
                    return true
                else
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10801)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3028, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            elseif f42_local8 > 70 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10801)
                arg2:ClearSubGoal()
                local f42_local9 = 5
                local f42_local10 = -1
                local f42_local11 = -1
                local f42_local12 = 1
                local f42_local13 = 1
                local f42_local14 = TARGET_ENE_0
                local f42_local15 = 3
                local f42_local16 = 0
                local f42_local17 = true
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, f42_local9, f42_local10, f42_local11, f42_local12, f42_local13, f42_local14, f42_local15, f42_local16, f42_local17)
                return true
            else
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10801)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3028, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        elseif f42_local7 <= 4 then
            if f42_local8 > 50 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10801)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3028, TARGET_ENE_0, 4, 0, 90)
                return true
            else
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10801)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        elseif f42_local8 > 40 then
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10801)
            arg2:ClearSubGoal()
            local f42_local9 = 5
            local f42_local10 = -1
            local f42_local11 = -1
            local f42_local12 = 1
            local f42_local13 = 1
            local f42_local14 = TARGET_ENE_0
            local f42_local15 = 3
            local f42_local16 = 0
            local f42_local17 = true
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, f42_local9, f42_local10, f42_local11, f42_local12, f42_local13, f42_local14, f42_local15, f42_local16, f42_local17)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10804) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10805)
        local f42_local7 = arg1:GetDist(TARGET_ENE_0)
        local f42_local8 = arg1:GetRandam_Int(1, 100)
        arg2:ClearSubGoal()
        smoke_Cnt = smoke_Cnt + 1
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3010, TARGET_ENE_0, 4, 0, 90)
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10805) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10805)
        local f42_local7 = arg1:GetDist(TARGET_ENE_0)
        local f42_local8 = arg1:GetRandam_Int(1, 100)
        if 4 < smoke_Cnt then
            if f42_local8 > 65 then
                arg2:ClearSubGoal()
                local f42_local9 = 7.5
                local f42_local10 = 0
                local f42_local11 = 999
                local f42_local12 = 100
                local f42_local13 = 0
                local f42_local14 = 4
                local f42_local15 = 8
                Approach_Act_Flex(arg1, arg2, f42_local9, f42_local10, f42_local11, f42_local12, f42_local13, f42_local14, f42_local15)
                arg1:SetStringIndexedNumber("Dash_Cnt", 0)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10800)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10801)
                local f42_local16 = 3032
                local f42_local17 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
                local f42_local18 = 0
                local f42_local19 = 180
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 4, 0, 90)
                return true
            elseif f42_local8 > 35 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3028, TARGET_ENE_0, 4, 0, 90)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        elseif 3 < smoke_Cnt then
            arg2:ClearSubGoal()
            smoke_Cnt = smoke_Cnt + 1
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3012, TARGET_ENE_0, 4, 0, 90)
            return true
        elseif smoke_Cnt > 2 then
            arg2:ClearSubGoal()
            smoke_Cnt = smoke_Cnt + 1
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3011, TARGET_ENE_0, 4, 0, 90)
            return true
        else
            arg2:ClearSubGoal()
            smoke_Cnt = smoke_Cnt + 1
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3010, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_HorriblenessVarlet400000_AfterAttackAct, "HorriblenessVarlet400000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HorriblenessVarlet400000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


