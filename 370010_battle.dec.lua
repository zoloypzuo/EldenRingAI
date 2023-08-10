RegisterTableGoal(GOAL_PerfumerDepravity_370010_Battle, "PerfumerDepravity_370010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PerfumerDepravity_370010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14423)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = 0
    local f2_local8 = arg1:GetNumber(0)
    if f2_local8 >= 1 then
        f2_local7 = 1
    end
    f2_local8 = 0
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE)
    if f2_local9 == true then
        f2_local8 = 50
    end
    f2_local9 = 0
    if arg1:HasSpecialEffectId(TARGET_SELF, 14400) == true then
        f2_local9 = 1
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 170) then
        if f2_local3 >= 5 then
            f2_local0[24] = 100
        else
            f2_local0[24] = 30
            f2_local0[25] = 70
        end
    elseif f2_local5 <= 0.4 and arg1:GetNumber(0) <= 1 then
        if f2_local3 >= 7 then
            f2_local0[10] = 100
        elseif f2_local3 >= 2 then
            f2_local0[1] = 20
            f2_local0[5] = 20
            f2_local0[6] = 0
            f2_local0[14] = 0
            f2_local0[8] = 0
            f2_local0[10] = 20
            f2_local0[13] = 10
            f2_local0[25] = 30
        else
            f2_local0[1] = 20
            f2_local0[5] = 20
            f2_local0[6] = 0
            f2_local0[14] = 20
            f2_local0[8] = 0
            f2_local0[13] = 20
            f2_local0[25] = 40
        end
    else
        if f2_local3 >= 7 then
            f2_local0[1] = 0
            f2_local0[2] = 20
            f2_local0[3] = 0
            f2_local0[4] = 30
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[14] = 0
            f2_local0[8] = 10
            f2_local0[10] = 0
            f2_local0[11] = 30 * f2_local7 + f2_local8
            f2_local0[12] = 10 * f2_local9
            f2_local0[13] = 0
            f2_local0[23] = 10
            f2_local0[15] = 0
        elseif f2_local3 >= 3 then
            f2_local0[1] = 0
            f2_local0[2] = 20
            f2_local0[3] = 30
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[14] = 30
            f2_local0[8] = 10
            f2_local0[10] = 0
            f2_local0[11] = 0 * f2_local7 + f2_local8
            f2_local0[12] = 20 * f2_local9
            f2_local0[13] = 10
            f2_local0[15] = 0
            f2_local0[23] = 40
            f2_local0[26] = 10
        else
            f2_local0[1] = 20
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[14] = 40
            f2_local0[8] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0 * f2_local7 + f2_local8
            f2_local0[12] = 0 * f2_local9
            f2_local0[13] = 20
            f2_local0[15] = 20
            f2_local0[25] = 10
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5021) == true then
            f2_local0[6] = 0
            f2_local0[14] = 0
            f2_local0[8] = 0
        end
    end
    f2_local0[15] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[15], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act08)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act15)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, PerfumerDepravity_370010_Act26)
    local f2_local10 = REGIST_FUNC(arg1, arg2, HoundOfBorus_419000_Act02_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function PerfumerDepravity_370010_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 4.5
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 2.5
    local f3_local7 = 2
    local f3_local8 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f3_local8 = 100
    end
    local f3_local9 = arg0:GetRandam_Int(1, 100)
    local f3_local10 = -1
    if f3_local9 <= f3_local8 then
        f3_local10 = 9910
    end
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local8, f3_local6, f3_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14420)
    local f3_local11 = 5
    local f3_local12 = 3030
    local f3_local13 = TARGET_ENE_0
    local f3_local14 = 10
    local f3_local15 = 0
    local f3_local16 = 0
    local f3_local17 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local11, f3_local12, f3_local13, f3_local14, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 7.6
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 2.5
    local f4_local7 = 2
    local f4_local8 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f4_local8 = 100
    end
    local f4_local9 = arg0:GetRandam_Int(1, 100)
    local f4_local10 = -1
    if f4_local9 <= f4_local8 then
        f4_local10 = 9910
    end
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local8, f4_local6, f4_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14422)
    local f4_local11 = 5
    local f4_local12 = 3035
    local f4_local13 = TARGET_ENE_0
    local f4_local14 = 10
    local f4_local15 = 0
    local f4_local16 = 0
    local f4_local17 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local11, f4_local12, f4_local13, f4_local14, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 6.5
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 2.5
    local f5_local7 = 2
    local f5_local8 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f5_local8 = 100
    end
    local f5_local9 = arg0:GetRandam_Int(1, 100)
    local f5_local10 = -1
    if f5_local9 <= f5_local8 then
        f5_local10 = 9910
    end
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local8, f5_local6, f5_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14424)
    local f5_local11 = 5
    local f5_local12 = 3036
    local f5_local13 = TARGET_ENE_0
    local f5_local14 = 10
    local f5_local15 = 0
    local f5_local16 = 0
    local f5_local17 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local11, f5_local12, f5_local13, f5_local14, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 15.5
    local f6_local2 = 999
    local f6_local3 = 999
    local f6_local4 = 30
    local f6_local5 = 0
    local f6_local6 = 2.5
    local f6_local7 = 2
    local f6_local8 = arg0:HasSpecialEffectId(TARGET_SELF, 14400)
    if f6_local8 == true then
        f6_local4 = 100
    end
    f6_local8 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f6_local8 = 100
    end
    local f6_local9 = arg0:GetRandam_Int(1, 100)
    local f6_local10 = -1
    if f6_local9 <= f6_local8 then
        f6_local10 = 9910
    end
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local8, f6_local6, f6_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14421)
    local f6_local11 = 5
    local f6_local12 = 3032
    local f6_local13 = TARGET_ENE_0
    local f6_local14 = 10
    local f6_local15 = 0
    local f6_local16 = 0
    local f6_local17 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local11, f6_local12, f6_local13, f6_local14, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act05(arg0, arg1, arg2)
    local f7_local0 = 5
    local f7_local1 = 3033
    local f7_local2 = TARGET_ENE_0
    local f7_local3 = 10
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, f7_local2, f7_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 2
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 100
    local f8_local5 = 0
    local f8_local6 = 2.5
    local f8_local7 = 2
    local f8_local8 = arg0:HasSpecialEffectId(TARGET_SELF, 14400)
    if f8_local8 == true then
        f8_local4 = 100
    end
    f8_local8 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f8_local8 = 100
    end
    local f8_local9 = arg0:GetRandam_Int(1, 100)
    local f8_local10 = -1
    if f8_local9 <= f8_local8 then
        f8_local10 = 9910
    end
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local8, f8_local6, f8_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14420)
    local f8_local11 = 5
    local f8_local12 = 3022
    local f8_local13 = TARGET_ENE_0
    local f8_local14 = 10
    local f8_local15 = 0
    local f8_local16 = 0
    local f8_local17 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local11, f8_local12, f8_local13, f8_local14, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 2
    local f9_local2 = 0
    local f9_local3 = 999
    local f9_local4 = 100
    local f9_local5 = 0
    local f9_local6 = 2.5
    local f9_local7 = 2
    local f9_local8 = arg0:HasSpecialEffectId(TARGET_SELF, 14400)
    if f9_local8 == true then
        f9_local4 = 100
    end
    f9_local8 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f9_local8 = 100
    end
    local f9_local9 = arg0:GetRandam_Int(1, 100)
    local f9_local10 = -1
    if f9_local9 <= f9_local8 then
        f9_local10 = 9910
    end
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local8, f9_local6, f9_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14420)
    local f9_local11 = 5
    local f9_local12 = 3010
    local f9_local13 = TARGET_ENE_0
    local f9_local14 = 10
    local f9_local15 = 0
    local f9_local16 = 0
    local f9_local17 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local11, f9_local12, f9_local13, f9_local14, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 5.5
    local f10_local2 = 999
    local f10_local3 = 999
    local f10_local4 = 30
    local f10_local5 = 0
    local f10_local6 = 2.5
    local f10_local7 = 2
    local f10_local8 = arg0:HasSpecialEffectId(TARGET_SELF, 14400)
    if f10_local8 == true then
        f10_local4 = 100
    end
    f10_local8 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f10_local8 = 100
    end
    local f10_local9 = arg0:GetRandam_Int(1, 100)
    local f10_local10 = -1
    if f10_local9 <= f10_local8 then
        f10_local10 = 9910
    end
    Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local8, f10_local6, f10_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14426)
    local f10_local11 = 5
    local f10_local12 = 3012
    local f10_local13 = TARGET_ENE_0
    local f10_local14 = 10
    local f10_local15 = 0
    local f10_local16 = 0
    local f10_local17 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local11, f10_local12, f10_local13, f10_local14, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 8.5
    local f11_local2 = 999
    local f11_local3 = 999
    local f11_local4 = 30
    local f11_local5 = 0
    local f11_local6 = 2.5
    local f11_local7 = 2
    local f11_local8 = arg0:HasSpecialEffectId(TARGET_SELF, 14400)
    if f11_local8 == true then
        f11_local4 = 100
    end
    f11_local8 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f11_local8 = 100
    end
    local f11_local9 = arg0:GetRandam_Int(1, 100)
    local f11_local10 = -1
    if f11_local9 <= f11_local8 then
        f11_local10 = 9910
    end
    Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local8, f11_local6, f11_local7)
    local f11_local11 = 5
    local f11_local12 = 3020
    local f11_local13 = TARGET_ENE_0
    local f11_local14 = 10
    local f11_local15 = 0
    local f11_local16 = 0
    local f11_local17 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local11, f11_local12, f11_local13, f11_local14, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act10(arg0, arg1, arg2)
    if arg0:GetNumber(0) <= 1 then
        if arg0:GetNumber(0) == 0 then
            arg0:SetNumber(0, 1)
        elseif arg0:GetNumber(0) == 1 then
            arg0:SetNumber(0, 2)
        end
        local f12_local0 = 5
        local f12_local1 = 3009
        local f12_local2 = TARGET_ENE_0
        local f12_local3 = 10
        local f12_local4 = 0
        local f12_local5 = 0
        local f12_local6 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local0, f12_local1, f12_local2, f12_local3, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act11(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14400) == false then
        local f13_local0 = 5
        local f13_local1 = 3005
        local f13_local2 = TARGET_ENE_0
        local f13_local3 = 10
        local f13_local4 = 0
        local f13_local5 = 0
        local f13_local6 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local0, f13_local1, f13_local2, f13_local3, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act12(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14400) == true then
        local f14_local0 = 5
        local f14_local1 = 3006
        local f14_local2 = TARGET_ENE_0
        local f14_local3 = 10
        local f14_local4 = 0
        local f14_local5 = 0
        local f14_local6 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local0, f14_local1, f14_local2, f14_local3, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act13(arg0, arg1, arg2)
    local f15_local0 = 5
    local f15_local1 = 3038
    local f15_local2 = TARGET_ENE_0
    local f15_local3 = 10
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 0
    if arg0:IsFinishTimer(0) == false then
        PerfumerDepravity_370010_Act25(arg0, arg1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local0, f15_local1, f15_local2, f15_local3, 0, 0, 0)
    end
    arg0:SetTimer(0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act14(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 3.5
    local f16_local2 = 0
    local f16_local3 = 999
    local f16_local4 = 100
    local f16_local5 = 0
    local f16_local6 = 2.5
    local f16_local7 = 2
    local f16_local8 = arg0:HasSpecialEffectId(TARGET_SELF, 14400)
    if f16_local8 == true then
        f16_local4 = 100
    end
    f16_local8 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f16_local8 = 100
    end
    local f16_local9 = arg0:GetRandam_Int(1, 100)
    local f16_local10 = -1
    if f16_local9 <= f16_local8 then
        f16_local10 = 9910
    end
    Approach_Act_Flex(arg0, arg1, f16_local1, f16_local2, f16_local3, f16_local4, f16_local8, f16_local6, f16_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14427)
    local f16_local11 = 5
    local f16_local12 = 3015
    local f16_local13 = TARGET_ENE_0
    local f16_local14 = 10
    local f16_local15 = 0
    local f16_local16 = 0
    local f16_local17 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local11, f16_local12, f16_local13, f16_local14, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act15(arg0, arg1, arg2)
    local f17_local0 = 5
    local f17_local1 = 3017
    local f17_local2 = TARGET_ENE_0
    local f17_local3 = 10
    local f17_local4 = 0
    local f17_local5 = 0
    local f17_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f17_local0, f17_local1, f17_local2, f17_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act20(arg0, arg1, arg2)
    local f18_local0 = 10
    local f18_local1 = TARGET_ENE_0
    local f18_local2 = 2
    local f18_local3 = TARGET_SELF
    local f18_local4 = false
    local f18_local5 = arg0:GetDist(TARGET_ENE_0)
    local f18_local6 = 100
    local f18_local7 = arg0:GetRandam_Int(1, 100)
    local f18_local8 = -1
    if f18_local7 <= f18_local6 then
        f18_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act21(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetRandam_Int(1, 2)
    local f19_local2 = TARGET_ENE_0
    local f19_local3 = 3
    local f19_local4 = TARGET_SELF
    local f19_local5 = false
    local f19_local6 = arg0:GetRandam_Int(5, 20)
    local f19_local7 = 0
    local f19_local8 = arg0:GetRandam_Int(1, 100)
    local f19_local9 = -1
    if f19_local8 <= f19_local7 then
        f19_local9 = 9910
    end
    local f19_local10 = 50
    local f19_local11 = arg0:GetRandam_Int(0, 100)
    local f19_local12 = AI_DIR_TYPE_ToR
    if f19_local11 <= f19_local10 then
        f19_local12 = AI_DIR_TYPE_ToL
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local9, f19_local12, f19_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act22(arg0, arg1, arg2)
    local f20_local0 = arg0:GetRandam_Int(1, 3)
    local f20_local1 = TARGET_ENE_0
    local f20_local2 = 10
    local f20_local3 = TARGET_ENE_0
    local f20_local4 = true
    local f20_local5 = arg0:GetDist(TARGET_ENE_0)
    local f20_local6 = 100
    local f20_local7 = arg0:GetRandam_Int(1, 100)
    local f20_local8 = -1
    if f20_local7 <= f20_local6 then
        f20_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act23(arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Float(1, 4.5)
    local f21_local1 = TARGET_ENE_0
    local f21_local2 = arg0:GetRandam_Int(0, 1)
    local f21_local3 = arg0:GetRandam_Int(40, 65)
    local f21_local4 = arg0:GetRandam_Float(2, 4.5)
    local f21_local5 = TARGET_SELF
    local f21_local6 = true
    local f21_local7 = false
    local f21_local8 = arg0:GetDist(TARGET_ENE_0)
    local f21_local9 = 0
    local f21_local10 = arg0:GetRandam_Int(1, 100)
    local f21_local11 = -1
    if f21_local10 <= f21_local9 then
        f21_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f21_local0, f21_local1, f21_local2, f21_local3, f21_local6, f21_local7, f21_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act24(arg0, arg1, arg2)
    local f22_local0 = 2
    local f22_local1 = TARGET_ENE_0
    local f22_local2 = 45
    local f22_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f22_local4 = true
    local f22_local5 = 0
    local f22_local6 = arg0:GetRandam_Int(1, 100)
    local f22_local7 = -1
    if f22_local6 <= f22_local5 then
        f22_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f22_local0, f22_local1, f22_local2, f22_local7, f22_local3, f22_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act25(arg0, arg1, arg2)
    local f23_local0 = 5
    local f23_local1 = -1
    local f23_local2 = -1
    local f23_local3 = 1
    local f23_local4 = 1
    local f23_local5 = TARGET_ENE_0
    local f23_local6 = 3
    local f23_local7 = 0
    local f23_local8 = true
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f23_local0, f23_local1, 2, f23_local3, f23_local4, f23_local5, f23_local6, f23_local7, f23_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f23_local0, f23_local1, f23_local2, 1, -1, f23_local5, f23_local6, f23_local7, f23_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f23_local0, f23_local1, f23_local2, -1, 1, f23_local5, f23_local6, f23_local7, f23_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_Act26(arg0, arg1, arg2)
    local f24_local0 = 5
    local f24_local1 = -1
    local f24_local2 = -1
    local f24_local3 = 1
    local f24_local4 = 1
    local f24_local5 = TARGET_ENE_0
    local f24_local6 = 3
    local f24_local7 = 0
    local f24_local8 = true
    local f24_local9 = arg0:GetRandam_Int(1, 2)
    if f24_local9 == 1 then
        f24_local4 = 1
        f24_local3 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6, f24_local7, f24_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerDepravity_370010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_PerfumerDepravity_370010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14420) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14420)
            arg2:ClearSubGoal()
            local f28_local0 = arg1:GetDist(TARGET_ENE_0)
            local f28_local1 = arg1:GetRandam_Int(1, 100)
            if f28_local0 <= 1.5 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 5021) == true then
                    f28_local1 = arg1:GetRandam_Int(1, 50)
                end
                if f28_local1 <= 80 then
                    local f28_local2 = 5
                    local f28_local3 = 3038
                    local f28_local4 = TARGET_ENE_0
                    local f28_local5 = 10
                    local f28_local6 = 0
                    local f28_local7 = 0
                    local f28_local8 = 0
                    if arg1:IsFinishTimer(0) == false then
                        PerfumerDepravity_370010_Act25(arg1, arg2)
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, successDist2, 0, 0, 0)
                    end
                    arg1:SetTimer(0, 4)
                else
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14427)
                    local f28_local2 = 5
                    local f28_local3 = 3015
                    local f28_local4 = TARGET_ENE_0
                    local f28_local5 = 10
                    local f28_local6 = 0
                    local f28_local7 = 0
                    local f28_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, f28_local5, 0, 0, 0)
                end
            elseif f28_local0 <= 3 then
                if f28_local1 <= 30 then
                    local f28_local2 = 5
                    local f28_local3 = -1
                    local f28_local4 = -1
                    local f28_local5 = 1
                    local f28_local6 = 1
                    local f28_local7 = TARGET_ENE_0
                    local f28_local8 = 3
                    local f28_local9 = 0
                    local f28_local10 = true
                    local f28_local11 = arg1:GetRandam_Int(1, 2)
                    if f28_local11 == 1 then
                        f28_local6 = 1
                        f28_local5 = -1
                    end
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6, f28_local7, f28_local8, f28_local9, f28_local10)
                else
                    local f28_local2 = 5
                    local f28_local3 = 3033
                    local f28_local4 = TARGET_ENE_0
                    local f28_local5 = 10
                    local f28_local6 = 0
                    local f28_local7 = 0
                    local f28_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, successDist2, 0, 0, 0)
                end
            elseif f28_local0 <= 4.5 then
                if f28_local1 <= 70 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14422)
                    local f28_local2 = 5
                    local f28_local3 = 3025
                    local f28_local4 = TARGET_ENE_0
                    local f28_local5 = 10
                    local f28_local6 = 0
                    local f28_local7 = 0
                    local f28_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, successDist2, 0, 0, 0)
                else
                    local f28_local2 = arg1:GetRandam_Float(0.8, 1.7)
                    local f28_local3 = TARGET_ENE_0
                    local f28_local4 = arg1:GetRandam_Int(0, 1)
                    local f28_local5 = arg1:GetRandam_Int(30, 45)
                    local f28_local6 = 1
                    local f28_local7 = TARGET_SELF
                    local f28_local8 = true
                    local f28_local9 = true
                    local f28_local10 = arg1:GetDist(TARGET_ENE_0)
                    local f28_local11 = 0
                    local f28_local12 = arg1:GetRandam_Int(1, 100)
                    local f28_local13 = -1
                    if f28_local12 <= f28_local11 then
                        f28_local13 = 9910
                    end
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f28_local2, f28_local3, f28_local4, f28_local5, f28_local8, f28_local9, f28_local13)
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14422) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14422)
            arg2:ClearSubGoal()
            local f28_local0 = arg1:GetDist(TARGET_ENE_0)
            local f28_local1 = arg1:GetRandam_Int(1, 100)
            if f28_local0 <= 2 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 5021) == true then
                    f28_local1 = arg1:GetRandam_Int(1, 50)
                end
                if f28_local1 <= 60 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14420)
                    local f28_local2 = 5
                    local f28_local3 = 3030
                    local f28_local4 = TARGET_ENE_0
                    local f28_local5 = 10
                    local f28_local6 = 0
                    local f28_local7 = 0
                    local f28_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, successDist2, 0, 0, 0)
                else
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14427)
                    local f28_local2 = 5
                    local f28_local3 = 3015
                    local f28_local4 = TARGET_ENE_0
                    local f28_local5 = 10
                    local f28_local6 = 0
                    local f28_local7 = 0
                    local f28_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, f28_local5, 0, 0, 0)
                end
            elseif f28_local0 <= 4 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 5021) == true then
                    f28_local1 = arg1:GetRandam_Int(1, 30)
                end
                if f28_local1 <= 50 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14424)
                    local f28_local2 = 5
                    local f28_local3 = 3036
                    local f28_local4 = TARGET_ENE_0
                    local f28_local5 = 10
                    local f28_local6 = 0
                    local f28_local7 = 0
                    local f28_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, f28_local5, 0, 0, 0)
                elseif f28_local1 <= 80 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14426)
                    local f28_local2 = 5
                    local f28_local3 = 3012
                    local f28_local4 = TARGET_ENE_0
                    local f28_local5 = 10
                    local f28_local6 = 0
                    local f28_local7 = 0
                    local f28_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, f28_local5, 0, 0, 0)
                else
                    local f28_local2 = 5
                    local f28_local3 = 3034
                    local f28_local4 = TARGET_ENE_0
                    local f28_local5 = 10
                    local f28_local6 = 0
                    local f28_local7 = 0
                    local f28_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, successDist2, 0, 0, 0)
                end
            elseif f28_local0 <= 8 then
                if f28_local1 <= 60 then
                    local f28_local2 = arg1:GetRandam_Float(0.8, 1.7)
                    local f28_local3 = TARGET_ENE_0
                    local f28_local4 = arg1:GetRandam_Int(0, 1)
                    local f28_local5 = arg1:GetRandam_Int(30, 45)
                    local f28_local6 = 1
                    local f28_local7 = TARGET_SELF
                    local f28_local8 = true
                    local f28_local9 = true
                    local f28_local10 = arg1:GetDist(TARGET_ENE_0)
                    local f28_local11 = 0
                    local f28_local12 = arg1:GetRandam_Int(1, 100)
                    local f28_local13 = -1
                    if f28_local12 <= f28_local11 then
                        f28_local13 = 9910
                    end
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f28_local2, f28_local3, f28_local4, f28_local5, f28_local8, f28_local9, f28_local13)
                else
                    local f28_local2 = 5
                    local f28_local3 = 3034
                    local f28_local4 = TARGET_ENE_0
                    local f28_local5 = 10
                    local f28_local6 = 0
                    local f28_local7 = 0
                    local f28_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, successDist2, 0, 0, 0)
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14424) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14424)
            arg2:ClearSubGoal()
            local f28_local0 = arg1:GetDist(TARGET_ENE_0)
            local f28_local1 = arg1:GetRandam_Int(1, 100)
            if f28_local0 <= 2 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 5021) == true then
                    f28_local1 = arg1:GetRandam_Int(1, 30)
                end
                if f28_local1 <= 70 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14420)
                    local f28_local2 = 5
                    local f28_local3 = 3030
                    local f28_local4 = TARGET_ENE_0
                    local f28_local5 = 10
                    local f28_local6 = 0
                    local f28_local7 = 0
                    local f28_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, successDist2, 0, 0, 0)
                else
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14427)
                    local f28_local2 = 5
                    local f28_local3 = 3015
                    local f28_local4 = TARGET_ENE_0
                    local f28_local5 = 10
                    local f28_local6 = 0
                    local f28_local7 = 0
                    local f28_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, f28_local5, 0, 0, 0)
                end
            elseif f28_local0 <= 4.5 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 5021) == true then
                    f28_local1 = arg1:GetRandam_Int(1, 30)
                end
                if f28_local1 <= 30 then
                    local f28_local2 = 5
                    local f28_local3 = 3036
                    local f28_local4 = TARGET_ENE_0
                    local f28_local5 = 10
                    local f28_local6 = 0
                    local f28_local7 = 0
                    local f28_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, successDist2, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, successDist2, 0, 0, 0)
                else
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14426)
                    local f28_local2 = 5
                    local f28_local3 = 3012
                    local f28_local4 = TARGET_ENE_0
                    local f28_local5 = 10
                    local f28_local6 = 0
                    local f28_local7 = 0
                    local f28_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, f28_local5, 0, 0, 0)
                end
            elseif f28_local0 <= 8 then
                if f28_local1 <= 30 then
                    local f28_local2 = arg1:GetRandam_Float(0.8, 1.7)
                    local f28_local3 = TARGET_ENE_0
                    local f28_local4 = arg1:GetRandam_Int(0, 1)
                    local f28_local5 = arg1:GetRandam_Int(30, 45)
                    local f28_local6 = 1
                    local f28_local7 = TARGET_SELF
                    local f28_local8 = true
                    local f28_local9 = true
                    local f28_local10 = arg1:GetDist(TARGET_ENE_0)
                    local f28_local11 = 0
                    local f28_local12 = arg1:GetRandam_Int(1, 100)
                    local f28_local13 = -1
                    if f28_local12 <= f28_local11 then
                        f28_local13 = 9910
                    end
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f28_local2, f28_local3, f28_local4, f28_local5, f28_local8, f28_local9, f28_local13)
                else
                    local f28_local2 = 5
                    local f28_local3 = 3031
                    local f28_local4 = TARGET_ENE_0
                    local f28_local5 = 10
                    local f28_local6 = 0
                    local f28_local7 = 0
                    local f28_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, successDist2, 0, 0, 0)
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14421) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14421)
            arg2:ClearSubGoal()
            local f28_local0 = arg1:GetDist(TARGET_ENE_0)
            local f28_local1 = arg1:GetRandam_Int(1, 100)
            if f28_local0 <= 3 then
                local f28_local2 = 5
                local f28_local3 = 3038
                local f28_local4 = TARGET_ENE_0
                local f28_local5 = 10
                local f28_local6 = 0
                local f28_local7 = 0
                local f28_local8 = 0
                if arg1:IsFinishTimer(0) == false then
                    PerfumerDepravity_370010_Act25(arg1, arg2)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, successDist2, 0, 0, 0)
                end
                arg1:SetTimer(0, 4)
            elseif f28_local0 <= 5 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14424)
                local f28_local2 = 5
                local f28_local3 = 3036
                local f28_local4 = TARGET_ENE_0
                local f28_local5 = 10
                local f28_local6 = 0
                local f28_local7 = 0
                local f28_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, successDist2, 0, 0, 0)
            elseif f28_local1 <= 80 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14422)
                local f28_local2 = 5
                local f28_local3 = 3031
                local f28_local4 = TARGET_ENE_0
                local f28_local5 = 10
                local f28_local6 = 0
                local f28_local7 = 0
                local f28_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, successDist2, 0, 0, 0)
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14427) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14427)
            arg2:ClearSubGoal()
            local f28_local0 = arg1:GetDist(TARGET_ENE_0)
            local f28_local1 = arg1:GetRandam_Int(1, 100)
            local f28_local2 = arg1:GetRandam_Int(1, 100)
            if f28_local0 <= 4 then
                if f28_local1 <= 25 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14422)
                    local f28_local3 = 5
                    local f28_local4 = TARGET_ENE_0
                    local f28_local5 = 10
                    local f28_local6 = 0
                    local f28_local7 = 0
                    local f28_local8 = 0
                    local f28_local9 = 3011
                    if f28_local2 <= 50 then
                        f28_local9 = 3011
                    else
                        f28_local9 = 3022
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local3, f28_local9, f28_local4, successDist2, 0, 0, 0)
                elseif f28_local1 <= 75 then
                    local f28_local3 = 5
                    local f28_local4 = 3016
                    local f28_local5 = TARGET_ENE_0
                    local f28_local6 = 10
                    local f28_local7 = 0
                    local f28_local8 = 0
                    local f28_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local3, f28_local4, f28_local5, successDist2, 0, 0, 0)
                    if f28_local1 <= 50 then
                        if f28_local2 <= 70 then
                            f28_local4 = 3016
                        else
                            f28_local4 = 3022
                        end
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local3, f28_local4, f28_local5, successDist2, 0, 0, 0)
                    end
                    if f28_local2 <= 80 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14420)
                        local f28_local10 = 5
                        local f28_local11 = 3030
                        local f28_local12 = TARGET_ENE_0
                        local f28_local13 = 10
                        local f28_local14 = 0
                        local f28_local15 = 0
                        local f28_local16 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local10, f28_local11, f28_local12, successDist2, 0, 0, 0)
                    end
                else
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14420)
                    local f28_local3 = 5
                    local f28_local4 = 3030
                    local f28_local5 = TARGET_ENE_0
                    local f28_local6 = 10
                    local f28_local7 = 0
                    local f28_local8 = 0
                    local f28_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local3, f28_local4, f28_local5, successDist2, 0, 0, 0)
                end
            elseif f28_local0 <= 8 then
                if f28_local1 <= 60 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14424)
                    local f28_local3 = 5
                    local f28_local4 = 3036
                    local f28_local5 = 3031
                    local f28_local6 = TARGET_ENE_0
                    local f28_local7 = 10
                    local f28_local8 = 0
                    local f28_local9 = 0
                    local f28_local10 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local3, f28_local4, f28_local6, f28_local7, 0, 0, 0)
                else
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14426)
                    local f28_local3 = 5
                    local f28_local4 = 3012
                    local f28_local5 = TARGET_ENE_0
                    local f28_local6 = 10
                    local f28_local7 = 0
                    local f28_local8 = 0
                    local f28_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local3, f28_local4, f28_local5, f28_local6, 0, 0, 0)
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14426) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14426)
            arg2:ClearSubGoal()
            local f28_local0 = arg1:GetDist(TARGET_ENE_0)
            local f28_local1 = arg1:GetRandam_Int(1, 100)
            if f28_local0 <= 4 then
                if f28_local1 <= 80 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14420)
                    local f28_local2 = 5
                    local f28_local3 = 3030
                    local f28_local4 = TARGET_ENE_0
                    local f28_local5 = 10
                    local f28_local6 = 0
                    local f28_local7 = 0
                    local f28_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, successDist2, 0, 0, 0)
                else
                    PerfumerDepravity_370010_Act25(arg1, arg2)
                end
            elseif f28_local1 <= 30 then
                local f28_local2 = 5
                local f28_local3 = 3034
                local f28_local4 = TARGET_ENE_0
                local f28_local5 = 10
                local f28_local6 = 0
                local f28_local7 = 0
                local f28_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local4, successDist2, 0, 0, 0)
            else
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14424)
                local f28_local2 = 5
                local f28_local3 = 3036
                local f28_local4 = 3031
                local f28_local5 = TARGET_ENE_0
                local f28_local6 = 10
                local f28_local7 = 0
                local f28_local8 = 0
                local f28_local9 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f28_local2, f28_local3, f28_local5, f28_local6, 0, 0, 0)
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14423) then
            local f28_local0 = arg1:GetDist(TARGET_ENE_0)
            local f28_local1 = arg1:GetRandam_Int(1, 100)
            local f28_local2 = nil
            if arg1:IsFinishTimer(0) then
                arg1:SetTimer(0, arg1:GetRandam_Float(7.5, 18.5))
                if arg1:GetNumber(2) == 0 then
                    arg1:SetNumber(2, 1)
                elseif arg1:GetNumber(2) == 1 then
                    arg1:SetNumber(2, 2)
                elseif arg1:GetNumber(2) == 2 then
                    arg1:SetNumber(2, 3)
                elseif arg1:GetNumber(2) == 3 then
                    arg1:SetNumber(2, 0)
                end
            elseif arg1:IsFinishTimer(0) == false then
                if arg1:GetNumber(2) == 0 then
                    f28_local2 = 5.5
                elseif arg1:GetNumber(2) == 1 then
                    f28_local2 = 7.3
                elseif arg1:GetNumber(2) == 2 then
                    f28_local2 = 3.5
                elseif arg1:GetNumber(2) == 3 then
                    f28_local2 = 5.9
                end
            end
            if f28_local0 <= f28_local2 then
                arg2:ClearSubGoal()
                arg1:Replaning()
            end
            return true
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local f28_local0 = arg1:GetDist(TARGET_ENE_0)
        local f28_local1 = arg1:GetRandam_Int(1, 100)
        local f28_local2 = arg1:GetHpRate(TARGET_SELF)
        local f28_local3 = (1 - f28_local2) * 100
        if f28_local0 <= 5 then
            arg2:ClearSubGoal()
            if f28_local1 <= f28_local3 and arg1:IsFinishTimer(1) then
                arg1:SetTimer(1, 4)
                if f28_local1 <= 70 then
                    PerfumerDepravity_370010_Act13(arg1, arg2)
                else
                    PerfumerDepravity_370010_Act25(arg1, arg2)
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        local f28_local0 = arg1:GetDist(TARGET_ENE_0)
        local f28_local1 = arg1:GetRandam_Int(1, 100)
        if f28_local1 <= 30 then
            arg2:ClearSubGoal()
            PerfumerDepravity_370010_Act21(arg1, arg2)
        else
            PerfumerDepravity_370010_Act25(arg1, arg2)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_GuardBreak) then
        arg2:ClearSubGoal()
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_PerfumerDepravity_370010_AfterAttackAct, "PerfumerDepravity_370010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PerfumerDepravity_370010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


