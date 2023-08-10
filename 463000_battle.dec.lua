RegisterTableGoal(GOAL_RuneBear463000_Battle, "RuneBear463000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneBear463000_Battle, true)
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
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3026)
    arg1:EnableUnfavorableAttackCheck(0, 3027)
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
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 13041) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13042)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13043)
    end
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = 1000
    local f2_local8 = arg1:GetNumber(0)
    if f2_local8 >= 1 then
        f2_local7 = 1
    end
    f2_local8 = 0
    if arg1:HasSpecialEffectId(TARGET_SELF, 13040) then
        f2_local8 = 10
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13041) then
        if f2_local5 <= 0.7 then
            if arg1:GetNumber(1) <= 0 then
                f2_local0[17] = 100
            end
        elseif f2_local5 <= 0.3 and arg1:GetNumber(1) <= 1 then
            f2_local0[17] = 100
        end
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            if f2_local3 >= 8 then
                f2_local0[24] = 40
            elseif f2_local3 >= 3 then
                f2_local0[3] = 0
                f2_local0[5] = 40
                f2_local0[9] = 20
                f2_local0[24] = 30
                f2_local0[25] = 10
            else
                f2_local0[3] = 30
                f2_local0[5] = 0
                f2_local0[9] = 30
                f2_local0[24] = 20
                f2_local0[25] = 20
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if f2_local3 >= 8 then
                f2_local0[24] = 40
            elseif f2_local3 >= 3 then
                f2_local0[3] = 0
                f2_local0[6] = 40
                f2_local0[9] = 20
                f2_local0[24] = 30
                f2_local0[25] = 10
            else
                f2_local0[3] = 30
                f2_local0[6] = 0
                f2_local0[9] = 30
                f2_local0[24] = 20
                f2_local0[25] = 20
            end
        end
    elseif f2_local3 >= 15 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13041) then
            f2_local0[1] = 30
            f2_local0[2] = 10
            f2_local0[4] = 10
            f2_local0[10] = 10
            f2_local0[18] = 50 * f2_local7
        else
            f2_local0[1] = 50 * f2_local7
            f2_local0[2] = 30
            f2_local0[4] = 10
            f2_local0[10] = 10
        end
    elseif f2_local3 >= 7 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13041) then
            f2_local0[1] = 10
            f2_local0[2] = 40
            f2_local0[10] = 20
            f2_local0[11] = 20
            f2_local0[12] = 10
            f2_local0[13] = 0
            f2_local0[14] = 10
        else
            f2_local0[1] = 10 * f2_local7
            f2_local0[2] = 40
            f2_local0[10] = 10
            f2_local0[11] = 30
            f2_local0[12] = 10
            f2_local0[13] = 0
            f2_local0[14] = 10
        end
    elseif f2_local3 >= 0.5 then
        f2_local0[1] = 0
        f2_local0[2] = 40
        f2_local0[3] = 0 + f2_local8
        f2_local0[4] = 10
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 10
        f2_local0[8] = 10
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 30
        f2_local0[12] = 10
        f2_local0[13] = 0
        f2_local0[14] = 10
    else
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 10 + f2_local8
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 10
        f2_local0[8] = 30
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 20
        f2_local0[14] = 0
        f2_local0[16] = 0
        f2_local0[17] = 0
        f2_local0[18] = 0
        f2_local0[24] = 0
        f2_local0[25] = 30
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3016, 10, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3021, 10, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3022, 10, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3023, 10, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3024, 10, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3027, 10, f2_local0[14], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3038, 20, f2_local0[18], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act14)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act18)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act25)
    local f2_local9 = REGIST_FUNC(arg1, arg2, HoundOfBorus_419000_Act02_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function RuneBear463000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 14
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 3
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = TARGET_ENE_0
    local f3_local11 = 10
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local8, f3_local9, f3_local10, f3_local11, 0, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = arg0:GetRandam_Int(1, 100)
    local f4_local2 = 0
    if f4_local0 >= 8 then
        f4_local2 = 80
    end
    if f4_local1 <= 20 + f4_local2 then
        local f4_local3 = arg0:GetDist(TARGET_ENE_0)
        local f4_local4 = 6
        local f4_local5 = 0
        local f4_local6 = 999
        local f4_local7 = 100
        local f4_local8 = 0
        local f4_local9 = 3
        local f4_local10 = 3
        Approach_Act_Flex(arg0, arg1, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8, f4_local9, f4_local10)
    else
        local f4_local3 = arg0:GetDist(TARGET_ENE_0)
        local f4_local4 = 3
        local f4_local5 = 0
        local f4_local6 = 999
        local f4_local7 = 0
        local f4_local8 = 0
        local f4_local9 = 0.5
        local f4_local10 = 0.5
        Approach_Act_Flex(arg0, arg1, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8, f4_local9, f4_local10)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f4_local3 = 3
    local f4_local4 = 3001
    local f4_local5 = TARGET_ENE_0
    local f4_local6 = 10
    local f4_local7 = 0
    local f4_local8 = 0
    local f4_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local3, f4_local4, f4_local5, f4_local6, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 5.5
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 3
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13041) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    end
    local f5_local8 = 5
    local f5_local9 = 3002
    local f5_local10 = 3036
    local f5_local11 = TARGET_ENE_0
    local f5_local12 = 2
    local f5_local13 = 0
    local f5_local14 = 0
    local f5_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f5_local8, f5_local9, f5_local11, f5_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 5.5
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 3
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13041) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    end
    local f6_local8 = 5
    local f6_local9 = 3003
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 10
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act05(arg0, arg1, arg2)
    local f7_local0 = 5
    local f7_local1 = 3004
    local f7_local2 = 3020
    local f7_local3 = TARGET_ENE_0
    local f7_local4 = TARGET_SELF
    local f7_local5 = 4
    local f7_local6 = 0
    local f7_local7 = 0
    local f7_local8 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 13041) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    end
    local f7_local9 = arg0:GetDist(TARGET_ENE_0)
    if f7_local9 >= 2.7 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f7_local0, f7_local1, f7_local3, f7_local5, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f7_local0, f7_local2, f7_local3, successDist2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act06(arg0, arg1, arg2)
    local f8_local0 = 5
    local f8_local1 = 3005
    local f8_local2 = 3022
    local f8_local3 = TARGET_ENE_0
    local f8_local4 = TARGET_SELF
    local f8_local5 = 4
    local f8_local6 = 0
    local f8_local7 = 0
    local f8_local8 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 13041) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    end
    local f8_local9 = arg0:GetDist(TARGET_ENE_0)
    if f8_local9 >= 2.7 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f8_local0, f8_local1, f8_local3, f8_local5, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f8_local0, f8_local2, f8_local3, successDist2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 4.5
    local f9_local2 = 0
    local f9_local3 = 999
    local f9_local4 = 100
    local f9_local5 = 0
    local f9_local6 = 3
    local f9_local7 = 3
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    local f9_local8 = 5
    local f9_local9 = 3006
    local f9_local10 = TARGET_ENE_0
    local f9_local11 = 10
    local f9_local12 = 0
    local f9_local13 = 0
    local f9_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local8, f9_local9, f9_local10, f9_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 8.5
    local f10_local2 = 0
    local f10_local3 = 999
    local f10_local4 = 100
    local f10_local5 = 0
    local f10_local6 = 3
    local f10_local7 = 3
    Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f10_local8 = 5
    local f10_local9 = 3010
    local f10_local10 = TARGET_ENE_0
    local f10_local11 = 10
    local f10_local12 = 0
    local f10_local13 = 0
    local f10_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local8, f10_local9, f10_local10, f10_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act09(arg0, arg1, arg2)
    local f11_local0 = 5
    local f11_local1 = 3016
    local f11_local2 = TARGET_ENE_0
    local f11_local3 = TARGET_SELF
    local f11_local4 = 10
    local f11_local5 = 0
    local f11_local6 = 0
    local f11_local7 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        f11_local1 = 3018
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f11_local0, f11_local1, f11_local2, f11_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 5
    local f12_local2 = 0
    local f12_local3 = 999
    local f12_local4 = 100
    local f12_local5 = 0
    local f12_local6 = 3
    local f12_local7 = 3
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f12_local8 = 5
    local f12_local9 = 3021
    local f12_local10 = 3001
    local f12_local11 = TARGET_ENE_0
    local f12_local12 = 10
    local f12_local13 = 0
    local f12_local14 = 0
    local f12_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local8, f12_local9, f12_local11, f12_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetRandam_Int(1, 100)
    local f13_local2 = 0
    if f13_local0 >= 8 then
        f13_local2 = 80
    end
    if f13_local1 <= 20 + f13_local2 then
        local f13_local3 = arg0:GetDist(TARGET_ENE_0)
        local f13_local4 = 6
        local f13_local5 = 0
        local f13_local6 = 999
        local f13_local7 = 100
        local f13_local8 = 0
        local f13_local9 = 3
        local f13_local10 = 3
        Approach_Act_Flex(arg0, arg1, f13_local4, f13_local5, f13_local6, f13_local7, f13_local8, f13_local9, f13_local10)
    else
        local f13_local3 = arg0:GetDist(TARGET_ENE_0)
        local f13_local4 = 3
        local f13_local5 = 0
        local f13_local6 = 999
        local f13_local7 = 0
        local f13_local8 = 0
        local f13_local9 = 0.5
        local f13_local10 = 0.5
        Approach_Act_Flex(arg0, arg1, f13_local4, f13_local5, f13_local6, f13_local7, f13_local8, f13_local9, f13_local10)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 13041) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    end
    local f13_local3 = 5
    local f13_local4 = 3032
    local f13_local5 = 3026
    local f13_local6 = TARGET_ENE_0
    local f13_local7 = 4
    local f13_local8 = 0
    local f13_local9 = 0
    local f13_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local3, f13_local4, f13_local6, f13_local7, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f13_local3, f13_local5, f13_local6, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    local f14_local2 = 0
    if f14_local0 >= 8 then
        f14_local2 = 80
    end
    if f14_local1 <= 20 + f14_local2 then
        local f14_local3 = arg0:GetDist(TARGET_ENE_0)
        local f14_local4 = 6
        local f14_local5 = 0
        local f14_local6 = 999
        local f14_local7 = 100
        local f14_local8 = 0
        local f14_local9 = 3
        local f14_local10 = 3
        Approach_Act_Flex(arg0, arg1, f14_local4, f14_local5, f14_local6, f14_local7, f14_local8, f14_local9, f14_local10)
    else
        local f14_local3 = arg0:GetDist(TARGET_ENE_0)
        local f14_local4 = 3
        local f14_local5 = 0
        local f14_local6 = 999
        local f14_local7 = 0
        local f14_local8 = 0
        local f14_local9 = 0.5
        local f14_local10 = 0.5
        Approach_Act_Flex(arg0, arg1, f14_local4, f14_local5, f14_local6, f14_local7, f14_local8, f14_local9, f14_local10)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f14_local3 = 5
    local f14_local4 = 3033
    local f14_local5 = TARGET_ENE_0
    local f14_local6 = 10
    local f14_local7 = 0
    local f14_local8 = 0
    local f14_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local3, f14_local4, f14_local5, f14_local6, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act13(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13041) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    end
    local f15_local0 = 5
    local f15_local1 = 3034
    local f15_local2 = TARGET_ENE_0
    local f15_local3 = 10
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local0, f15_local1, f15_local2, f15_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act14(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 5.5
    local f16_local2 = 0
    local f16_local3 = 999
    local f16_local4 = 100
    local f16_local5 = 0
    local f16_local6 = 3
    local f16_local7 = 3
    Approach_Act_Flex(arg0, arg1, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7)
    local f16_local8 = 5
    local f16_local9 = 3035
    local f16_local10 = TARGET_ENE_0
    local f16_local11 = 10
    local f16_local12 = 0
    local f16_local13 = 0
    local f16_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local8, f16_local9, f16_local10, f16_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act16(arg0, arg1, arg2)
    local f17_local0 = 5
    local f17_local1 = 3030
    local f17_local2 = TARGET_ENE_0
    local f17_local3 = TARGET_SELF
    local f17_local4 = 10
    local f17_local5 = 0
    local f17_local6 = 0
    local f17_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f17_local0, f17_local1, f17_local2, f17_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act17(arg0, arg1, arg2)
    local f18_local0 = 2
    local f18_local1 = TARGET_ENE_0
    local f18_local2 = 60
    local f18_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f18_local4 = true
    local f18_local5 = 0
    local f18_local6 = arg0:GetRandam_Int(1, 100)
    local f18_local7 = -1
    if f18_local6 <= f18_local5 then
        f18_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f18_local0, f18_local1, f18_local2, f18_local7, f18_local3, f18_local4)
    local f18_local8 = 5
    local f18_local9 = 3031
    local f18_local10 = TARGET_ENE_0
    local f18_local11 = TARGET_SELF
    local f18_local12 = 10
    local f18_local13 = 0
    local f18_local14 = 0
    local f18_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local8, f18_local9, f18_local10, f18_local12, 0, 0, 0)
    if arg0:GetNumber(1) <= 0 then
        arg0:SetNumber(1, 1)
    elseif arg0:GetNumber(1) <= 1 then
        arg0:SetNumber(1, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act18(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 23
    local f19_local2 = 0
    local f19_local3 = 999
    local f19_local4 = 100
    local f19_local5 = 0
    local f19_local6 = 3
    local f19_local7 = 3
    Approach_Act_Flex(arg0, arg1, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6, f19_local7)
    local f19_local8 = 5
    local f19_local9 = 3038
    local f19_local10 = TARGET_ENE_0
    local f19_local11 = 10
    local f19_local12 = 0
    local f19_local13 = 0
    local f19_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local8, f19_local9, f19_local10, f19_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act24(arg0, arg1, arg2)
    local f20_local0 = 2
    local f20_local1 = TARGET_ENE_0
    local f20_local2 = 60
    local f20_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f20_local4 = true
    local f20_local5 = 0
    local f20_local6 = arg0:GetRandam_Int(1, 100)
    local f20_local7 = -1
    if f20_local6 <= f20_local5 then
        f20_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f20_local0, f20_local1, f20_local2, f20_local7, f20_local3, f20_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_Act25(arg0, arg1, arg2)
    local f21_local0 = 5
    local f21_local1 = -1
    local f21_local2 = -1
    local f21_local3 = 1
    local f21_local4 = 2
    local f21_local5 = TARGET_ENE_0
    local f21_local6 = 3
    local f21_local7 = 0
    local f21_local8 = true
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f21_local0, f21_local1, f21_local2, 1, -1, f21_local5, f21_local6, f21_local7, f21_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f21_local0, f21_local1, f21_local2, -1, 1, f21_local5, f21_local6, f21_local7, f21_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneBear463000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RuneBear463000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            arg2:ClearSubGoal()
            local f25_local0 = arg1:GetDist(TARGET_ENE_0)
            local f25_local1 = arg1:GetRandam_Int(1, 100)
            if f25_local0 <= 0.1 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13041) then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                end
                local f25_local2 = 5
                local f25_local3 = 3024
                local f25_local4 = TARGET_ENE_0
                local f25_local5 = 10
                local f25_local6 = 0
                local f25_local7 = 0
                local f25_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local2, f25_local3, f25_local4, f25_local5, 0, 0, 0)
            elseif f25_local0 <= 5 then
                local f25_local2 = 5
                local f25_local3 = 3027
                local f25_local4 = TARGET_ENE_0
                local f25_local5 = 10
                local f25_local6 = 0
                local f25_local7 = 0
                local f25_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local2, f25_local3, f25_local4, f25_local5, 0, 0, 0)
            else
                local f25_local2 = 5
                local f25_local3 = 3022
                local f25_local4 = 3026
                local f25_local5 = TARGET_ENE_0
                local f25_local6 = 10
                local f25_local7 = 0
                local f25_local8 = 0
                local f25_local9 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local2, f25_local3, f25_local5, f25_local6, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local2, f25_local4, f25_local5, f25_local6, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            arg2:ClearSubGoal()
            local f25_local0 = arg1:GetDist(TARGET_ENE_0)
            local f25_local1 = arg1:GetRandam_Int(1, 100)
            if f25_local0 <= 8 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                local f25_local2 = 5
                local f25_local3 = 3023
                local f25_local4 = TARGET_ENE_0
                local f25_local5 = 10
                local f25_local6 = 0
                local f25_local7 = 0
                local f25_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local2, f25_local3, f25_local4, f25_local5, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
            arg2:ClearSubGoal()
            local f25_local0 = arg1:GetDist(TARGET_ENE_0)
            local f25_local1 = arg1:GetRandam_Int(1, 100)
            if f25_local0 <= 0.1 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13041) then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                end
                local f25_local2 = 5
                local f25_local3 = 3024
                local f25_local4 = TARGET_ENE_0
                local f25_local5 = 10
                local f25_local6 = 0
                local f25_local7 = 0
                local f25_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local2, f25_local3, f25_local4, f25_local5, 0, 0, 0)
            elseif f25_local0 <= 5 then
                if f25_local1 <= 70 then
                    local f25_local2 = 5
                    local f25_local3 = 3027
                    local f25_local4 = TARGET_ENE_0
                    local f25_local5 = 10
                    local f25_local6 = 0
                    local f25_local7 = 0
                    local f25_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local2, f25_local3, f25_local4, f25_local5, 0, 0, 0)
                else
                    local f25_local2 = 5
                    local f25_local3 = 3022
                    local f25_local4 = 3026
                    local f25_local5 = TARGET_ENE_0
                    local f25_local6 = 10
                    local f25_local7 = 0
                    local f25_local8 = 0
                    local f25_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local2, f25_local3, f25_local5, f25_local6, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local2, f25_local4, f25_local5, f25_local6, 0, 0, 0)
                end
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
            arg2:ClearSubGoal()
            local f25_local0 = arg1:GetDist(TARGET_ENE_0)
            local f25_local1 = arg1:GetRandam_Int(1, 100)
            if f25_local0 <= 3 then
                local f25_local2 = 5
                local f25_local3 = 3036
                local f25_local4 = TARGET_ENE_0
                local f25_local5 = 10
                local f25_local6 = 0
                local f25_local7 = 0
                local f25_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local2, f25_local3, f25_local4, f25_local5, 0, 0, 0)
            elseif f25_local0 <= 5.5 then
                if arg1:IsFinishTimer(0) then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                    arg1:SetTimer(0, 5)
                end
                local f25_local2 = 5
                local f25_local3 = 3023
                local f25_local4 = TARGET_ENE_0
                local f25_local5 = 10
                local f25_local6 = 0
                local f25_local7 = 0
                local f25_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local2, f25_local3, f25_local4, f25_local5, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13042) then
            arg2:ClearSubGoal()
            local f25_local0 = arg1:GetDist(TARGET_ENE_0)
            local f25_local1 = arg1:GetRandam_Int(1, 100)
            if f25_local0 >= 5 then
                local f25_local2 = 5
                local f25_local3 = 3039
                local f25_local4 = TARGET_ENE_0
                local f25_local5 = 10
                local f25_local6 = 0
                local f25_local7 = 0
                local f25_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local2, f25_local3, f25_local4, f25_local5, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13043) then
            arg2:ClearSubGoal()
            local f25_local0 = arg1:GetDist(TARGET_ENE_0)
            local f25_local1 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 170) and f25_local0 >= 2 then
                local f25_local2 = 5
                local f25_local3 = 3037
                local f25_local4 = TARGET_ENE_0
                local f25_local5 = 10
                local f25_local6 = 0
                local f25_local7 = 0
                local f25_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local2, f25_local3, f25_local4, f25_local5, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_RuneBear463000_AfterAttackAct, "RuneBear463000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneBear463000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


