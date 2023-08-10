RegisterTableGoal(GOAL_PodAnt428000_Battle, "PodAnt428000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PodAnt428000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
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
    arg1:EnableUnfavorableAttackCheck(2, 3000)
    arg1:EnableUnfavorableAttackCheck(2, 3008)
    arg1:EnableUnfavorableAttackCheck(2, 3016)
    arg1:EnableUnfavorableAttackCheck(2, 3017)
    arg1:EnableUnfavorableAttackCheck(2, 3018)
    arg1:EnableUnfavorableAttackCheck(2, 3019)
    arg1:EnableUnfavorableAttackCheck(2, 3027)
    arg1:EnableUnfavorableAttackCheck(2, 3028)
    arg1:EnableUnfavorableAttackCheck(2, 3032)
    arg1:EnableUnfavorableAttackCheck(2, 3034)
    arg1:EnableUnfavorableAttackCheck(2, 3035)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = 0
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 11696) == true then
        f2_local6 = 1000
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 15352) == true then
        f2_local0[1] = 30
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 310) then

        elseif f2_local3 >= 2.3 then
            f2_local0[1] = 30
            f2_local0[21] = 70
        else
            f2_local0[1] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15353) == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 310) then

        elseif f2_local3 >= 2.3 then
            f2_local0[1] = 30
            f2_local0[21] = 70
        else
            f2_local0[1] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15350) == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
            f2_local0[20] = 65
            f2_local0[19] = 35
        elseif f2_local3 >= 6 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 60
            f2_local0[4] = 0
            f2_local0[5] = 40
        elseif f2_local3 >= 4 then
            f2_local0[1] = 0
            f2_local0[2] = 20
            f2_local0[3] = 60
            f2_local0[4] = 0
            f2_local0[5] = 20
        else
            f2_local0[1] = 40
            f2_local0[2] = 20
            f2_local0[3] = 0
            f2_local0[4] = 30
            f2_local0[5] = 0
            f2_local0[6] = 20 + f2_local6
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15351) == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
            f2_local0[20] = 65
            f2_local0[19] = 35
        elseif f2_local3 >= 6 then
            f2_local0[1] = 0
            f2_local0[2] = 30
            f2_local0[3] = 70
            f2_local0[4] = 0
        elseif f2_local3 >= 4 then
            f2_local0[1] = 0
            f2_local0[2] = 20
            f2_local0[3] = 60
            f2_local0[4] = 0
            f2_local0[20] = 20
        else
            f2_local0[1] = 40
            f2_local0[2] = 20
            f2_local0[3] = 0
            f2_local0[4] = 30
            f2_local0[20] = 30
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15355) == true then
        local f2_local7 = arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270)
        if f2_local7 then
            f2_local0[20] = 65
            f2_local0[19] = 35
        else
            f2_local7 = 1
            if arg1:HasSpecialEffectId(TARGET_SELF, 15369) == true then
                f2_local7 = 0
            end
            if f2_local3 >= 6 then
                f2_local0[7] = 10
                f2_local0[8] = 20
                f2_local0[9] = 20
                f2_local0[10] = 0
                f2_local0[11] = 50 * f2_local7
                f2_local0[12] = 0
            elseif f2_local3 >= 4 then
                f2_local0[7] = 10
                f2_local0[8] = 40
                f2_local0[9] = 0
                f2_local0[10] = 20
                f2_local0[11] = 0
                f2_local0[12] = 10
            else
                f2_local0[7] = 35
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 25
                f2_local0[11] = 0
                f2_local0[12] = 40
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15356) == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5402) == true then
                f2_local0[19] = 100
            else
                f2_local0[20] = 65
                f2_local0[19] = 35
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5402) == true then
            if f2_local3 >= 8 then
                f2_local0[1] = 30
                f2_local0[25] = 10
                f2_local0[26] = 30
                f2_local0[16] = 0
                f2_local0[27] = 20
            elseif f2_local3 >= 4 then
                f2_local0[1] = 50
                f2_local0[25] = 40
                f2_local0[26] = 0
                f2_local0[16] = 0
                f2_local0[27] = 10
            else
                f2_local0[1] = 70
                f2_local0[25] = 30
                f2_local0[26] = 0
                f2_local0[16] = 0
                f2_local0[27] = 0
            end
        elseif f2_local3 >= 12 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[14] = 0
            f2_local0[22] = 100
            f2_local0[23] = 0
        elseif f2_local3 >= 9 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[14] = 60
            f2_local0[22] = 40
            f2_local0[23] = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 15357) == true then
                f2_local0[21] = 1000
            end
        elseif f2_local3 >= 4 then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 40
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0 + f2_local6
            f2_local0[14] = 0
            f2_local0[22] = 10
            f2_local0[23] = 30
        else
            f2_local0[1] = 20
            f2_local0[2] = 20
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 10 + f2_local6
            f2_local0[14] = 0
            f2_local0[22] = 0
            f2_local0[23] = 40
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 7, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 7, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3006, 15, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3020, 5, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3021, 7, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3022, 7, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3023, 5, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3009, 15, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3007, 8, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3016, 7, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3017, 7, f2_local0[14], 1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5402) == true then
        f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 0, f2_local0[1], 30)
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act12)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act23)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, PodAnt428000_Act33)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, atkAfterFunc, f2_local2)
    
end

function PodAnt428000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 1.5
    local f3_local2 = 999
    local f3_local3 = 999
    local f3_local4 = 80
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) == true then
        f3_local1 = 4
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 15352) == true then

    elseif arg0:HasSpecialEffectId(TARGET_SELF, 15353) == true then

    else
        Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    end
    local f3_local8 = 5
    local f3_local9 = TARGET_ENE_0
    local f3_local10 = 12
    local f3_local11 = 0
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = nil
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 15352) or arg0:HasSpecialEffectId(TARGET_SELF, 15353) == true then
        f3_local14 = 3026
    else
        f3_local14 = 3000
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 290) then

    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local8, f3_local14, f3_local9, f3_local10, 0, 0, 0)
    end
    local f3_local15 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) == true and f3_local15 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local8, f3_local14, f3_local9, f3_local10, 0, 0, 0)
        if f3_local15 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local8, f3_local14, f3_local9, f3_local10, 0, 0, 0)
        end
    end
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 15352) or arg0:HasSpecialEffectId(TARGET_SELF, 15353) == true then
        local f3_local16 = arg0:GetRandam_Int(0, 2)
        local f3_local17 = TARGET_ENE_0
        arg1:AddSubGoal(GOAL_COMMON_Wait, f3_local16, f3_local17)
    else

    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 2.2
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 3
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 5
    local f4_local9 = 3001
    local f4_local10 = TARGET_ENE_0
    local f4_local11 = 12
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local8, f4_local9, f4_local10, f4_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 5.5
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 3
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 5
    local f5_local9 = 3002
    local f5_local10 = TARGET_ENE_0
    local f5_local11 = 12
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local8, f5_local9, f5_local10, f5_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 2
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 3
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 5
    local f6_local9 = 3003
    local f6_local10 = 3004
    local f6_local11 = TARGET_ENE_0
    local f6_local12 = 12
    local f6_local13 = 0
    local f6_local14 = 0
    local f6_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local8, f6_local9, f6_local11, f6_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f6_local8, f6_local10, f6_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 9.5
    local f7_local2 = 999
    local f7_local3 = 999
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 3
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 5
    local f7_local9 = 3005
    local f7_local10 = TARGET_ENE_0
    local f7_local11 = 17
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local8, f7_local9, f7_local10, f7_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 2.5
    local f8_local2 = 999
    local f8_local3 = 999
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 3
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local8 = 5
    local f8_local9 = 3006
    local f8_local10 = TARGET_ENE_0
    local f8_local11 = 10
    local f8_local12 = 0
    local f8_local13 = 0
    local f8_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local8, f8_local9, f8_local10, f8_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 2.8
    local f9_local2 = 0
    local f9_local3 = 999
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 3
    local f9_local7 = 3
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    local f9_local8 = 5
    local f9_local9 = 3020
    local f9_local10 = TARGET_ENE_0
    local f9_local11 = 12
    local f9_local12 = 0
    local f9_local13 = 0
    local f9_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local8, f9_local9, f9_local10, f9_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 3.5
    local f10_local2 = 0
    local f10_local3 = 999
    local f10_local4 = 100
    local f10_local5 = 0
    local f10_local6 = 3
    local f10_local7 = 3
    Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    local f10_local8 = 5
    local f10_local9 = 3021
    local f10_local10 = TARGET_ENE_0
    local f10_local11 = 12
    local f10_local12 = 0
    local f10_local13 = 0
    local f10_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local8, f10_local9, f10_local10, f10_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 7.2
    local f11_local2 = 0
    local f11_local3 = 999
    local f11_local4 = 100
    local f11_local5 = 0
    local f11_local6 = 3
    local f11_local7 = 3
    Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    local f11_local8 = 5
    local f11_local9 = 3022
    local f11_local10 = TARGET_ENE_0
    local f11_local11 = 12
    local f11_local12 = 0
    local f11_local13 = 0
    local f11_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local8, f11_local9, f11_local10, f11_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 3
    local f12_local2 = 0
    local f12_local3 = 999
    local f12_local4 = 100
    local f12_local5 = 0
    local f12_local6 = 3
    local f12_local7 = 3
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    local f12_local8 = 5
    local f12_local9 = 3023
    local f12_local10 = 3024
    local f12_local11 = TARGET_ENE_0
    local f12_local12 = 12
    local f12_local13 = 0
    local f12_local14 = 0
    local f12_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local8, f12_local9, f12_local11, f12_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f12_local8, f12_local10, f12_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 8.5
    local f13_local2 = 0
    local f13_local3 = 999
    local f13_local4 = 100
    local f13_local5 = 0
    local f13_local6 = 3
    local f13_local7 = 3
    Approach_Act_Flex(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    local f13_local8 = 5
    local f13_local9 = 3009
    local f13_local10 = TARGET_ENE_0
    local f13_local11 = 12
    local f13_local12 = 0
    local f13_local13 = 0
    local f13_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local8, f13_local9, f13_local10, f13_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 4.5
    local f14_local2 = 0
    local f14_local3 = 999
    local f14_local4 = 100
    local f14_local5 = 0
    local f14_local6 = 3
    local f14_local7 = 3
    Approach_Act_Flex(arg0, arg1, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7)
    if arg0:HasSpecialEffectId(TARGET_SELF, 15369) == false then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    end
    local f14_local8 = 5
    local f14_local9 = 3007
    local f14_local10 = TARGET_ENE_0
    local f14_local11 = 12
    local f14_local12 = 0
    local f14_local13 = 0
    local f14_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local8, f14_local9, f14_local10, f14_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act13(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 11.5
    local f15_local2 = 0
    local f15_local3 = 999
    local f15_local4 = 100
    local f15_local5 = 0
    local f15_local6 = 3
    local f15_local7 = 3
    Approach_Act_Flex(arg0, arg1, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7)
    local f15_local8 = 10
    local f15_local9, f15_local10 = nil
    local f15_local11 = TARGET_ENE_0
    local f15_local12 = 20
    local f15_local13 = 0
    local f15_local14 = 0
    local f15_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f15_local16 = arg0:GetDist(TARGET_ENE_0)
    local f15_local17 = arg0:GetRandam_Int(1, 100)
    if f15_local16 >= 8 then
        if f15_local17 >= 70 then
            f15_local9 = 3016
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local8, f15_local9, f15_local11, f15_local12, 0, 0, 0)
        else
            f15_local9 = 3018
            f15_local10 = 3027
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f15_local8, f15_local9, f15_local11, f15_local12, 0, 0, 0)
            if f15_local17 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f15_local8, f15_local10, f15_local11, successDist2)
            end
        end
    elseif f15_local17 >= 30 then
        f15_local9 = 3016
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local8, f15_local9, f15_local11, f15_local12, 0, 0, 0)
    else
        f15_local9 = 3018
        f15_local10 = 3019
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f15_local8, f15_local9, f15_local11, f15_local12, 0, 0, 0)
        if f15_local17 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f15_local8, f15_local10, f15_local11, successDist2)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act14(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 10
    local f16_local2 = 0
    local f16_local3 = 999
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = 3
    local f16_local7 = 3
    Approach_Act_Flex(arg0, arg1, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7)
    local f16_local8 = 10
    local f16_local9 = 3017
    local f16_local10 = TARGET_ENE_0
    local f16_local11 = 12
    local f16_local12 = 0
    local f16_local13 = 0
    local f16_local14 = 0
    local f16_local15 = arg0:GetRandam_Int(1, 100)
    if f16_local15 >= 30 then
        f16_local9 = 3032
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local8, f16_local9, f16_local10, f16_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act15(arg0, arg1, arg2)
    local f17_local0 = 20
    local f17_local1 = TARGET_ENE_0
    local f17_local2 = arg0:GetRandam_Int(6, 10)
    local f17_local3 = TARGET_SELF
    local f17_local4 = true
    local f17_local5 = arg0:GetDist(TARGET_ENE_0)
    local f17_local6 = 0
    local f17_local7 = arg0:GetRandam_Int(1, 100)
    local f17_local8 = -1
    if f17_local7 <= f17_local6 then
        f17_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act16(arg0, arg1, arg2)
    local f18_local0 = arg0:GetRandam_Int(1, 2)
    local f18_local1 = TARGET_ENE_0
    local f18_local2 = arg0:GetRandam_Int(0, 1)
    local f18_local3 = arg0:GetRandam_Int(30, 45)
    local f18_local4 = 3
    local f18_local5 = TARGET_SELF
    local f18_local6 = true
    local f18_local7 = true
    local f18_local8 = arg0:GetDist(TARGET_ENE_0)
    local f18_local9 = 0
    local f18_local10 = arg0:GetRandam_Int(1, 100)
    local f18_local11 = -1
    if f18_local10 <= f18_local9 then
        f18_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f18_local0, f18_local1, f18_local2, f18_local3, f18_local6, f18_local7, f18_local11)
    arg0:SetTimer(0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act17(arg0, arg1, arg2)
    local f19_local0 = arg0:GetRandam_Int(1, 3)
    local f19_local1 = TARGET_ENE_0
    local f19_local2 = 10
    local f19_local3 = TARGET_ENE_0
    local f19_local4 = true
    local f19_local5 = arg0:GetDist(TARGET_ENE_0)
    local f19_local6 = 0
    local f19_local7 = arg0:GetRandam_Int(1, 100)
    local f19_local8 = -1
    if f19_local7 <= f19_local6 then
        f19_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local8)
    arg0:SetTimer(0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act18(arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = 2
    local f20_local2 = 0
    local f20_local3 = 999
    local f20_local4 = 100
    local f20_local5 = 0
    local f20_local6 = 0
    local f20_local7 = 7
    Approach_Act_Flex(arg0, arg1, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7)
    local f20_local8 = 10
    local f20_local9 = 3002
    local f20_local10 = TARGET_ENE_0
    local f20_local11 = 2.5
    local f20_local12 = 0
    local f20_local13 = 0
    local f20_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local8, f20_local9, f20_local10, f20_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act19(arg0, arg1, arg2)
    local f21_local0 = 2
    local f21_local1 = TARGET_ENE_0
    local f21_local2 = 45
    local f21_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f21_local4 = true
    local f21_local5 = 0
    local f21_local6 = arg0:GetRandam_Int(1, 100)
    local f21_local7 = -1
    if f21_local6 <= f21_local5 then
        f21_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f21_local0, f21_local1, f21_local2, f21_local7, f21_local3, f21_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act20(arg0, arg1, arg2)
    local f22_local0 = 5
    local f22_local1 = -1
    local f22_local2 = -1
    local f22_local3 = 1
    local f22_local4 = 2
    local f22_local5 = TARGET_ENE_0
    local f22_local6 = 3
    local f22_local7 = 0
    local f22_local8 = true
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6, f22_local7, f22_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f22_local0, f22_local1, f22_local2, 1, -1, f22_local5, f22_local6, f22_local7, f22_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f22_local0, f22_local1, f22_local2, -1, 1, f22_local5, f22_local6, f22_local7, f22_local8)
    end
    local f22_local9 = 2
    local f22_local10 = TARGET_ENE_0
    local f22_local11 = 45
    local f22_local12 = GUARD_GOAL_DESIRE_RET_Continue
    local f22_local13 = true
    local f22_local14 = 0
    local f22_local15 = arg0:GetRandam_Int(1, 100)
    local f22_local16 = -1
    if f22_local15 <= f22_local14 then
        f22_local16 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f22_local9, f22_local10, f22_local11, f22_local16, f22_local12, f22_local13)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act21(arg0, arg1, arg2)
    local f23_local0 = 5
    local f23_local1 = 3025
    local f23_local2 = TARGET_ENE_0
    local f23_local3 = TARGET_SELF
    local f23_local4 = 10
    local f23_local5 = 0
    local f23_local6 = 0
    local f23_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f23_local0, f23_local1, f23_local2, f23_local4, 0, 0, 0)
    local f23_local8 = 5
    local f23_local9 = 3038
    local f23_local10 = 3039
    local f23_local11 = TARGET_ENE_0
    local f23_local12 = 10
    local f23_local13 = 0
    local f23_local14 = 0
    local f23_local15 = 0
    local f23_local16 = arg0:GetRandam_Int(1, 100)
    if f23_local16 >= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f23_local8, f23_local9, f23_local11, f23_local12, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f23_local8, f23_local10, f23_local11, f23_local12, 0, 0, 0)
    elseif f23_local16 >= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f23_local8, f23_local9, f23_local11, f23_local12, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f23_local8, f23_local9, f23_local11, f23_local12, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f23_local8, f23_local10, f23_local11, f23_local12, 0, 0, 0)
    elseif f23_local16 >= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f23_local8, f23_local9, f23_local11, f23_local12, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f23_local8, f23_local9, f23_local11, f23_local12, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f23_local8, f23_local9, f23_local11, f23_local12, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f23_local8, f23_local10, f23_local11, f23_local12, 0, 0, 0)
    end
    local f23_local17 = arg0:GetRandam_Float(0, 2.5)
    local f23_local18 = TARGET_ENE_0
    arg1:AddSubGoal(GOAL_COMMON_Wait, f23_local17, f23_local18)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act22(arg0, arg1, arg2)
    local f24_local0 = 10
    local f24_local1 = 3034
    local f24_local2 = TARGET_ENE_0
    local f24_local3 = TARGET_SELF
    local f24_local4 = 10
    local f24_local5 = 0
    local f24_local6 = 0
    local f24_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f24_local0, f24_local1, f24_local2, f24_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act23(arg0, arg1, arg2)
    local f25_local0 = 10
    local f25_local1 = 3035
    local f25_local2 = TARGET_ENE_0
    local f25_local3 = TARGET_SELF
    local f25_local4 = 10
    local f25_local5 = 0
    local f25_local6 = 0
    local f25_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f25_local0, f25_local1, f25_local2, f25_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act24(arg0, arg1, arg2)
    local f26_local0 = 10
    local f26_local1 = 3028
    local f26_local2 = TARGET_ENE_0
    local f26_local3 = TARGET_SELF
    local f26_local4 = 10
    local f26_local5 = 0
    local f26_local6 = 0
    local f26_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f26_local0, f26_local1, f26_local2, f26_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act25(arg0, arg1, arg2)
    local f27_local0 = 10
    local f27_local1 = 3027
    local f27_local2 = TARGET_ENE_0
    local f27_local3 = TARGET_SELF
    local f27_local4 = 10
    local f27_local5 = 0
    local f27_local6 = 0
    local f27_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f27_local0, f27_local1, f27_local2, f27_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act26(arg0, arg1, arg2)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    local f28_local1 = 9.5
    local f28_local2 = 0
    local f28_local3 = 999
    local f28_local4 = 0
    local f28_local5 = 0
    local f28_local6 = 3
    local f28_local7 = 3
    Approach_Act_Flex(arg0, arg1, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6, f28_local7)
    local f28_local8 = 10
    local f28_local9 = 3008
    local f28_local10 = TARGET_ENE_0
    local f28_local11 = TARGET_SELF
    local f28_local12 = 20
    local f28_local13 = 0
    local f28_local14 = 0
    local f28_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f28_local8, f28_local9, f28_local10, f28_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act27(arg0, arg1, arg2)
    local f29_local0 = arg0:GetDist(TARGET_ENE_0)
    local f29_local1 = 2
    local f29_local2 = TARGET_ENE_0
    local f29_local3 = 1
    local f29_local4 = TARGET_SELF
    local f29_local5 = true
    local f29_local6 = arg0:GetRandam_Int(10, 30)
    local f29_local7 = 0
    local f29_local8 = arg0:GetRandam_Int(1, 100)
    local f29_local9 = -1
    if f29_local8 <= f29_local7 then
        f29_local9 = 9910
    end
    local f29_local10 = 50
    local f29_local11 = arg0:GetRandam_Int(0, 100)
    local f29_local12 = AI_DIR_TYPE_ToR
    if f29_local11 <= f29_local10 then
        f29_local12 = AI_DIR_TYPE_ToL
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f29_local1, f29_local2, f29_local3, f29_local4, f29_local5, f29_local9, f29_local12, f29_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act28(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act29(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act30(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act31(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act32(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_Act33(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PodAnt428000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_PodAnt428000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15357) then
            local f39_local0 = arg1:GetDist(TARGET_ENE_0)
            if f39_local0 >= 7 then
                arg2:ClearSubGoal()
                local f39_local1 = 15
                local f39_local2 = 3028
                local f39_local3 = TARGET_ENE_0
                local f39_local4 = 12
                local f39_local5 = 0
                local f39_local6 = 0
                local f39_local7 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f39_local1, f39_local2, f39_local3, f39_local4, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            arg2:ClearSubGoal()
            local f39_local0 = arg1:GetDist(TARGET_ENE_0)
            local f39_local1 = arg1:GetRandam_Int(1, 100)
            if f39_local0 >= 4 and f39_local1 <= 70 then
                local f39_local2 = 5
                local f39_local3 = 3009
                local f39_local4 = TARGET_ENE_0
                local f39_local5 = 10
                local f39_local6 = 0
                local f39_local7 = 0
                local f39_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f39_local2, f39_local3, f39_local4, f39_local5, 0, 0, 0)
            end
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_PodAnt428000_AfterAttackAct, "PodAnt428000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PodAnt428000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


