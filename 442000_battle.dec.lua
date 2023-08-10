RegisterTableGoal(GOAL_Zarigani_442000_Battle, "Zarigani_442000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Zarigani_442000_Battle, true)
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
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
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
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = 0
    if arg1:IsFinishTimer(2) == false and arg1:HasSpecialEffectId(TARGET_SELF, 13956) == false then
        f2_local6 = 1
    end
    local f2_local7 = 1
    if arg1:HasSpecialEffectId(TARGET_SELF, 13954) then
        f2_local7 = 10
    end
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 40, 60) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            if f2_local3 <= 7 then
                f2_local0[4] = 30
                f2_local0[11] = 20
                f2_local0[15] = 0 * f2_local6
                f2_local0[16] = 0 * f2_local6
                f2_local0[17] = 70
            else
                f2_local0[17] = 100
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            if f2_local3 <= 7 then
                f2_local0[5] = 30
                f2_local0[11] = 20
                f2_local0[15] = 0 * f2_local6
                f2_local0[16] = 0 * f2_local6
                f2_local0[17] = 70
            else
                f2_local0[17] = 100
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            if f2_local3 >= 6 then
                f2_local0[17] = 100
            else
                f2_local0[3] = 20
                f2_local0[11] = 20
                f2_local0[17] = 60
            end
        elseif f2_local3 >= 12 then
            f2_local0[1] = 0
            f2_local0[2] = 40
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 10
            f2_local0[7] = 0
            f2_local0[8] = 20
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 30 * f2_local7
            f2_local0[15] = 0 * f2_local6
            f2_local0[16] = 30 * f2_local6
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[19] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
        elseif f2_local3 >= 9 then
            f2_local0[1] = 30
            f2_local0[2] = 20
            f2_local0[3] = 10
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 20
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = (0 + f2_local7) * f2_local7
            f2_local0[15] = 0 * f2_local6
            f2_local0[16] = 100 * f2_local6
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[19] = 20
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
        elseif f2_local3 >= 5 then
            f2_local0[1] = 20
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 20
            f2_local0[8] = 10
            f2_local0[9] = 20
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0 * f2_local6
            f2_local0[16] = 100 * f2_local6
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[19] = 20
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
        elseif f2_local3 >= 3 then
            f2_local0[1] = 30
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 10
            f2_local0[9] = 10
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 20 * f2_local6
            f2_local0[16] = 80 * f2_local6
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[19] = 20
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
        elseif f2_local3 >= 1 then
            f2_local0[1] = 10
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 25
            f2_local0[8] = 15
            f2_local0[9] = 10
            f2_local0[10] = 10
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 10
            f2_local0[14] = 0
            f2_local0[15] = 50 * f2_local6
            f2_local0[16] = 50 * f2_local6
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[19] = 20
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 10
            f2_local0[11] = 10
            f2_local0[12] = 0
            f2_local0[13] = 20
            f2_local0[14] = 0
            f2_local0[15] = 50 * f2_local6
            f2_local0[16] = 0 * f2_local6
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[19] = 0
            f2_local0[20] = 30
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[26] = 30
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 60) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            if f2_local3 >= 6 then
                f2_local0[17] = 100
            else
                f2_local0[3] = 20
                f2_local0[11] = 20
                f2_local0[17] = 60
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            if f2_local3 >= 6 then
                f2_local0[17] = 100
            else
                f2_local0[3] = 20
                f2_local0[11] = 20
                f2_local0[17] = 60
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            if f2_local3 >= 6 then
                f2_local0[17] = 100
            else
                f2_local0[3] = 20
                f2_local0[11] = 20
                f2_local0[17] = 60
            end
        else
            if f2_local3 >= 15 then
                if arg1:IsFinishTimer(1) then
                    f2_local0[24] = 100
                    f2_local0[23] = 0
                else
                    f2_local0[24] = 20
                    f2_local0[23] = 80
                end
            else
                f2_local0[3] = 30
                f2_local0[10] = 30
                f2_local0[25] = 40
            end
            arg1:SetTimer(1, 10)
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3007, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3008, 5, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3009, 5, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3004, 5, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3005, 15, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3006, 5, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 6011, 5, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 6001, 5, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3015, 5, f2_local0[13], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3025, 5, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3026, 5, f2_local0[19], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3027, 5, f2_local0[20], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3028, 5, f2_local0[21], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3029, 5, f2_local0[22], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, Zarigani_442000_Act28)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, atkAfterFunc, f2_local2)
    
end

function Zarigani_442000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 5.5
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 0
    local f3_local7 = 3
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 5.5
    local f3_local9 = 3000
    local f3_local10 = 3002
    local f3_local11 = TARGET_ENE_0
    local f3_local12 = 5.5
    local f3_local13 = 0
    local f3_local14 = 0
    local f3_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local8, f3_local9, f3_local11, f3_local12, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 10
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 3
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 5.5
    local f4_local9 = 3001
    local f4_local10 = 3002
    local f4_local11 = TARGET_ENE_0
    local f4_local12 = 10
    local f4_local13 = 0
    local f4_local14 = 0
    local f4_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local8, f4_local9, f4_local11, f4_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f4_local8, f4_local10, f4_local11, f4_local12)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 5
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 0
    local f5_local7 = 3
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 5
    local f5_local9 = 3007
    local f5_local10 = TARGET_ENE_0
    local f5_local11 = 1
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local8, f5_local9, f5_local10, f5_local11, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 10
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 0
    local f6_local7 = 3
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 5
    local f6_local9 = 3008
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 5
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 10
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 0
    local f7_local7 = 3
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 5
    local f7_local9 = 3009
    local f7_local10 = TARGET_ENE_0
    local f7_local11 = 5
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local8, f7_local9, f7_local10, f7_local11, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 9
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 100
    local f8_local5 = 0
    local f8_local6 = 0
    local f8_local7 = 3
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local8 = 5.5
    local f8_local9 = 3003
    local f8_local10 = TARGET_ENE_0
    local f8_local11 = 10
    local f8_local12 = 0
    local f8_local13 = 0
    local f8_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local8, f8_local9, f8_local10, f8_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 3
    local f9_local2 = 0
    local f9_local3 = 999
    local f9_local4 = 100
    local f9_local5 = 0
    local f9_local6 = 0
    local f9_local7 = 3
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    local f9_local8 = 5
    local f9_local9 = 3004
    local f9_local10 = TARGET_ENE_0
    local f9_local11 = 3
    local f9_local12 = 0
    local f9_local13 = 0
    local f9_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local8, f9_local9, f9_local10, f9_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 6
    local f10_local2 = 0
    local f10_local3 = 999
    local f10_local4 = 100
    local f10_local5 = 0
    local f10_local6 = 0
    local f10_local7 = 3
    Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    local f10_local8 = 5
    local f10_local9 = 3002
    local f10_local10 = TARGET_ENE_0
    local f10_local11 = 8
    local f10_local12 = 0
    local f10_local13 = 0
    local f10_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local8, f10_local9, f10_local10, f10_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 7
    local f11_local2 = 0
    local f11_local3 = 999
    local f11_local4 = 100
    local f11_local5 = 0
    local f11_local6 = 0
    local f11_local7 = 3
    Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    local f11_local8 = 5
    local f11_local9 = 3005
    local f11_local10 = 3014
    local f11_local11 = TARGET_ENE_0
    local f11_local12 = 7
    local f11_local13 = 0
    local f11_local14 = 0
    local f11_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local8, f11_local9, f11_local11, f11_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 2.5
    local f12_local2 = 0
    local f12_local3 = 999
    local f12_local4 = 100
    local f12_local5 = 0
    local f12_local6 = 0
    local f12_local7 = 3
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    local f12_local8 = 5
    local f12_local9 = 3006
    local f12_local10 = TARGET_ENE_0
    local f12_local11 = 2.5
    local f12_local12 = 0
    local f12_local13 = 0
    local f12_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local8, f12_local9, f12_local10, f12_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 5
    local f13_local2 = 6011
    local f13_local3 = TARGET_ENE_0
    local f13_local4 = 3
    local f13_local5 = 0
    local f13_local6 = 0
    local f13_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local1, f13_local2, f13_local3, f13_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act12(arg0, arg1, arg2)
    local f14_local0 = 5
    local f14_local1 = 6001
    local f14_local2 = TARGET_ENE_0
    local f14_local3 = 70
    local f14_local4 = 0
    local f14_local5 = 0
    local f14_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local0, f14_local1, f14_local2, f14_local3, 0, 0, 0)
    local f14_local7 = arg0:GetRandam_Int(2, 4)
    local f14_local8 = TARGET_ENE_0
    local f14_local9 = 6
    local f14_local10 = TARGET_SELF
    local f14_local11 = true
    local f14_local12 = arg0:GetDist(TARGET_ENE_0)
    local f14_local13 = 0
    local f14_local14 = arg0:GetRandam_Int(1, 100)
    local f14_local15 = -1
    if f14_local14 <= f14_local13 then
        f14_local15 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f14_local7, f14_local8, f14_local9, f14_local10, f14_local11, f14_local15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act13(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 3
    local f15_local2 = 0
    local f15_local3 = 999
    local f15_local4 = 100
    local f15_local5 = 0
    local f15_local6 = 0
    local f15_local7 = 3
    Approach_Act_Flex(arg0, arg1, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7)
    local f15_local8 = 5
    local f15_local9 = 3015
    local f15_local10 = TARGET_ENE_0
    local f15_local11 = 3
    local f15_local12 = 0
    local f15_local13 = 0
    local f15_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local8, f15_local9, f15_local10, f15_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act14(arg0, arg1, arg2)
    local f16_local0 = 5
    local f16_local1 = 3010
    local f16_local2 = TARGET_ENE_0
    local f16_local3 = 50
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 13954) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local0, f16_local1, f16_local2, f16_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act15(arg0, arg1, arg2)
    arg0:SetTimer(2, 0)
    local f17_local0 = arg0:GetRandam_Float(0.8, 2.2)
    local f17_local1 = TARGET_ENE_0
    local f17_local2 = 6.5
    local f17_local3 = TARGET_ENE_0
    local f17_local4 = true
    local f17_local5 = arg0:GetDist(TARGET_ENE_0)
    local f17_local6 = 0
    local f17_local7 = arg0:GetRandam_Int(1, 100)
    local f17_local8 = -1
    if f17_local7 <= f17_local6 then
        f17_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act16(arg0, arg1, arg2)
    arg0:SetTimer(2, 0)
    local f18_local0 = arg0:GetRandam_Float(1.8, 2.5)
    local f18_local1 = TARGET_ENE_0
    local f18_local2 = arg0:GetRandam_Int(0, 1)
    local f18_local3 = arg0:GetRandam_Int(30, 45)
    local f18_local4 = -10
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
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act17(arg0, arg1, arg2)
    local f19_local0 = 1.2
    local f19_local1 = TARGET_ENE_0
    local f19_local2 = 90
    local f19_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f19_local4 = true
    local f19_local5 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 13055) then
        f19_local5 = 0
    end
    local f19_local6 = arg0:GetRandam_Int(1, 100)
    local f19_local7 = -1
    if f19_local6 <= f19_local5 then
        f19_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f19_local0, f19_local1, f19_local2, f19_local7, f19_local3, f19_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act18(arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = 3
    local f20_local2 = 0
    local f20_local3 = 999
    local f20_local4 = 100
    local f20_local5 = 0
    local f20_local6 = 0
    local f20_local7 = 3
    Approach_Act_Flex(arg0, arg1, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7)
    local f20_local8 = 5
    local f20_local9 = 3025
    local f20_local10 = TARGET_ENE_0
    local f20_local11 = 3
    local f20_local12 = 0
    local f20_local13 = 0
    local f20_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local8, f20_local9, f20_local10, f20_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act19(arg0, arg1, arg2)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = 6
    local f21_local2 = 0
    local f21_local3 = 999
    local f21_local4 = 100
    local f21_local5 = 0
    local f21_local6 = 0
    local f21_local7 = 3
    Approach_Act_Flex(arg0, arg1, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6, f21_local7)
    local f21_local8 = 5
    local f21_local9 = 3026
    local f21_local10 = TARGET_ENE_0
    local f21_local11 = 6
    local f21_local12 = 0
    local f21_local13 = 0
    local f21_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f21_local8, f21_local9, f21_local10, f21_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act20(arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = 2
    local f22_local2 = 0
    local f22_local3 = 999
    local f22_local4 = 100
    local f22_local5 = 0
    local f22_local6 = 0
    local f22_local7 = 3
    Approach_Act_Flex(arg0, arg1, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6, f22_local7)
    local f22_local8 = 5
    local f22_local9 = 3027
    local f22_local10 = TARGET_ENE_0
    local f22_local11 = 3
    local f22_local12 = 0
    local f22_local13 = 0
    local f22_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local8, f22_local9, f22_local10, f22_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act21(arg0, arg1, arg2)
    local f23_local0 = arg0:GetDist(TARGET_ENE_0)
    local f23_local1 = 1
    local f23_local2 = 0
    local f23_local3 = 999
    local f23_local4 = 100
    local f23_local5 = 0
    local f23_local6 = 0
    local f23_local7 = 3
    Approach_Act_Flex(arg0, arg1, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6, f23_local7)
    local f23_local8 = 5
    local f23_local9 = 3028
    local f23_local10 = TARGET_ENE_0
    local f23_local11 = 3
    local f23_local12 = 0
    local f23_local13 = 0
    local f23_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f23_local8, f23_local9, f23_local10, f23_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act22(arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = 1
    local f24_local2 = 0
    local f24_local3 = 999
    local f24_local4 = 100
    local f24_local5 = 0
    local f24_local6 = 0
    local f24_local7 = 3
    Approach_Act_Flex(arg0, arg1, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6, f24_local7)
    local f24_local8 = 5
    local f24_local9 = 3029
    local f24_local10 = TARGET_ENE_0
    local f24_local11 = 3
    local f24_local12 = 0
    local f24_local13 = 0
    local f24_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f24_local8, f24_local9, f24_local10, f24_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act23(arg0, arg1, arg2)
    local f25_local0 = 5
    local f25_local1 = 3010
    local f25_local2 = TARGET_ENE_0
    local f25_local3 = 60
    local f25_local4 = 0
    local f25_local5 = 0
    local f25_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f25_local0, f25_local1, f25_local2, f25_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act24(arg0, arg1, arg2)
    local f26_local0 = arg0:GetRandam_Int(1, 2)
    local f26_local1 = TARGET_ENE_0
    local f26_local2 = arg0:GetRandam_Int(0, 1)
    local f26_local3 = arg0:GetRandam_Int(30, 45)
    local f26_local4 = 3
    local f26_local5 = TARGET_SELF
    local f26_local6 = true
    local f26_local7 = true
    local f26_local8 = arg0:GetDist(TARGET_ENE_0)
    local f26_local9 = 0
    local f26_local10 = arg0:GetRandam_Int(1, 100)
    local f26_local11 = -1
    if f26_local10 <= f26_local9 then
        f26_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f26_local0, f26_local1, f26_local2, f26_local3, f26_local6, f26_local7, f26_local11)
    arg0:SetTimer(1, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act25(arg0, arg1, arg2)
    local f27_local0 = arg0:GetRandam_Int(1, 3)
    local f27_local1 = TARGET_ENE_0
    local f27_local2 = 10
    local f27_local3 = TARGET_ENE_0
    local f27_local4 = true
    local f27_local5 = arg0:GetDist(TARGET_ENE_0)
    local f27_local6 = 0
    local f27_local7 = arg0:GetRandam_Int(1, 100)
    local f27_local8 = -1
    if f27_local7 <= f27_local6 then
        f27_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f27_local0, f27_local1, f27_local2, f27_local3, f27_local4, f27_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_Act26(arg0, arg1, arg2)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    local f28_local1 = 0.1
    local f28_local2 = 0
    local f28_local3 = 999
    local f28_local4 = 100
    local f28_local5 = 0
    local f28_local6 = 3
    local f28_local7 = 3
    Approach_Act_Flex(arg0, arg1, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6, f28_local7)
    local f28_local8 = 5
    local f28_local9 = 3016
    local f28_local10 = TARGET_ENE_0
    local f28_local11 = 10
    local f28_local12 = 0
    local f28_local13 = 0
    local f28_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f28_local8, f28_local9, f28_local10, f28_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Zarigani_442000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Zarigani_442000_AfterAttackAct, 10)
    
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
            local f32_local0 = arg1:GetDist(TARGET_ENE_0)
            local f32_local1 = arg1:GetRandam_Int(1, 100)
            arg1:SetTimer(2, 8)
            if f32_local0 <= 1 then
                arg2:ClearSubGoal()
                local f32_local2 = 5
                local f32_local3 = nil
                if f32_local1 <= 40 then
                    f32_local3 = 3024
                elseif f32_local1 <= 60 then
                    f32_local3 = 3015
                elseif f32_local1 <= 70 then
                    f32_local3 = 3028
                else
                    f32_local3 = 3027
                end
                local f32_local4 = 5
                local f32_local5 = TARGET_ENE_0
                local f32_local6 = 0
                local f32_local7 = 0
                local f32_local8 = 0
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f32_local2, f32_local3, f32_local5, successDist)
            elseif f32_local0 <= 3 then
                arg2:ClearSubGoal()
                local f32_local2 = 5
                local f32_local3 = nil
                if f32_local1 < 40 then
                    f32_local3 = 3024
                elseif f32_local1 <= 60 then
                    f32_local3 = 3020
                elseif f32_local1 <= 90 then
                    f32_local3 = 3002
                else
                    f32_local3 = 3027
                end
                local f32_local4 = 5
                local f32_local5 = TARGET_ENE_0
                local f32_local6 = 0
                local f32_local7 = 0
                local f32_local8 = 0
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f32_local2, f32_local3, f32_local5, successDist)
            elseif f32_local0 <= 6 then
                arg2:ClearSubGoal()
                local f32_local2 = 5
                local f32_local3 = nil
                if f32_local1 <= 30 then
                    f32_local3 = 3020
                elseif f32_local1 <= 50 then
                    f32_local3 = 3005
                elseif f32_local1 <= 70 then
                    f32_local3 = 3021
                else
                    f32_local3 = 3002
                end
                local f32_local4 = 8
                local f32_local5 = TARGET_ENE_0
                local f32_local6 = 0
                local f32_local7 = 0
                local f32_local8 = 0
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f32_local2, f32_local3, f32_local5, successDist)
            elseif f32_local0 <= 10 then
                arg2:ClearSubGoal()
                local f32_local2 = 5
                local f32_local3 = nil
                if f32_local1 <= 40 then
                    f32_local3 = 3021
                elseif f32_local1 <= 60 then
                    f32_local3 = 3022
                else
                    f32_local3 = 3023
                end
                local f32_local4 = 10
                local f32_local5 = TARGET_ENE_0
                local f32_local6 = 0
                local f32_local7 = 0
                local f32_local8 = 0
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f32_local2, f32_local3, f32_local5, successDist)
            else
                arg2:ClearSubGoal()
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            local f32_local0 = arg1:GetDist(TARGET_ENE_0)
            local f32_local1 = arg1:GetRandam_Int(1, 100)
            arg1:SetTimer(2, 8)
            if arg1:HasSpecialEffectId(TARGET_SELF, 13956) == true then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
            end
            if f32_local0 <= 1 then
                arg2:ClearSubGoal()
                local f32_local2 = 5
                local f32_local3 = nil
                if f32_local1 <= 60 then
                    f32_local3 = 3025
                elseif f32_local1 <= 80 then
                    f32_local3 = 3002
                else
                    f32_local3 = 3006
                end
                local f32_local4 = 5
                local f32_local5 = TARGET_ENE_0
                local f32_local6 = 0
                local f32_local7 = 0
                local f32_local8 = 0
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f32_local2, f32_local3, f32_local5, successDist)
            elseif f32_local0 <= 6 then
                arg2:ClearSubGoal()
                local f32_local2 = 5
                local f32_local3 = nil
                if f32_local1 <= 20 then
                    f32_local3 = 3024
                elseif f32_local1 <= 50 then
                    f32_local3 = 3005
                else
                    f32_local3 = 3002
                end
                local f32_local4 = 8
                local f32_local5 = TARGET_ENE_0
                local f32_local6 = 0
                local f32_local7 = 0
                local f32_local8 = 0
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f32_local2, f32_local3, f32_local5, successDist)
            elseif f32_local0 <= 10 then
                arg2:ClearSubGoal()
                local f32_local2 = 5
                local f32_local3 = nil
                if f32_local1 <= 20 then
                    f32_local3 = 3021
                elseif f32_local1 <= 40 then
                    f32_local3 = 3022
                else
                    f32_local3 = 3003
                end
                local f32_local4 = 10
                local f32_local5 = TARGET_ENE_0
                local f32_local6 = 0
                local f32_local7 = 0
                local f32_local8 = 0
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f32_local2, f32_local3, f32_local5, successDist)
            else
                arg2:ClearSubGoal()
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
            local f32_local0 = arg1:GetDist(TARGET_ENE_0)
            local f32_local1 = arg1:GetRandam_Int(1, 100)
            if f32_local0 <= 1 then
                arg2:ClearSubGoal()
                local f32_local2 = 5
                local f32_local3 = nil
                if f32_local1 <= 60 then
                    f32_local3 = 3025
                elseif f32_local1 <= 80 then
                    f32_local3 = 3002
                else
                    f32_local3 = 3006
                end
                local f32_local4 = 5
                local f32_local5 = TARGET_ENE_0
                local f32_local6 = 0
                local f32_local7 = 0
                local f32_local8 = 0
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f32_local2, f32_local3, f32_local5, successDist)
            elseif f32_local0 <= 6 then
                arg2:ClearSubGoal()
                local f32_local2 = 5
                local f32_local3 = nil
                if f32_local1 <= 20 then
                    f32_local3 = 3024
                elseif f32_local1 <= 50 then
                    f32_local3 = 3005
                else
                    f32_local3 = 3002
                end
                local f32_local4 = 8
                local f32_local5 = TARGET_ENE_0
                local f32_local6 = 0
                local f32_local7 = 0
                local f32_local8 = 0
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f32_local2, f32_local3, f32_local5, successDist)
            elseif f32_local0 <= 10 then
                arg2:ClearSubGoal()
                local f32_local2 = 5
                local f32_local3 = nil
                if f32_local1 <= 20 then
                    f32_local3 = 3021
                elseif f32_local1 <= 40 then
                    f32_local3 = 3022
                else
                    f32_local3 = 3003
                end
                local f32_local4 = 10
                local f32_local5 = TARGET_ENE_0
                local f32_local6 = 0
                local f32_local7 = 0
                local f32_local8 = 0
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f32_local2, f32_local3, f32_local5, successDist)
            else
                arg2:ClearSubGoal()
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            local f32_local0 = arg1:GetDist(TARGET_ENE_0)
            local f32_local1 = arg1:GetRandam_Int(1, 100)
            if f32_local0 <= 5 then
                arg2:ClearSubGoal()
                local f32_local2 = 5
                local f32_local3 = nil
                if f32_local1 <= 30 then
                    f32_local3 = 3024
                elseif f32_local1 <= 70 then
                    f32_local3 = 3025
                else
                    f32_local3 = 3020
                end
                local f32_local4 = 5
                local f32_local5 = TARGET_ENE_0
                local f32_local6 = 0
                local f32_local7 = 0
                local f32_local8 = 0
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f32_local2, f32_local3, f32_local5, successDist)
            elseif f32_local0 <= 1 then
                arg2:ClearSubGoal()
                local f32_local2 = 5
                local f32_local3 = nil
                if f32_local1 <= 30 then
                    f32_local3 = 3025
                elseif f32_local1 <= 70 then
                    f32_local3 = 3028
                else
                    f32_local3 = 3027
                end
                local f32_local4 = 5
                local f32_local5 = TARGET_ENE_0
                local f32_local6 = 0
                local f32_local7 = 0
                local f32_local8 = 0
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f32_local2, f32_local3, f32_local5, successDist)
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            local f32_local0 = arg1:GetDist(TARGET_ENE_0)
            local f32_local1 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FL, 60) and f32_local0 <= 5 then
                arg2:ClearSubGoal()
                local f32_local2 = 5
                local f32_local3 = 3013
                local f32_local4 = 6
                local f32_local5 = TARGET_ENE_0
                local f32_local6 = 0
                local f32_local7 = 0
                local f32_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f32_local2, f32_local3, f32_local5, successDist)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            local f32_local0 = arg1:GetDist(TARGET_ENE_0)
            local f32_local1 = arg1:GetRandam_Int(1, 100)
            arg2:ClearSubGoal()
            if f32_local0 <= 1 then
                local f32_local2 = 5
                local f32_local3 = 3014
                local f32_local4 = TARGET_ENE_0
                local f32_local5 = 7
                local f32_local6 = 0
                local f32_local7 = 0
                local f32_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f32_local2, f32_local3, f32_local4, successDist)
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            arg2:ClearSubGoal()
            local f32_local0 = arg1:GetDist(TARGET_ENE_0)
            local f32_local1 = arg1:GetRandam_Int(1, 100)
            if f32_local1 <= 70 then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
            end
            if f32_local0 >= 10 and f32_local1 >= 30 then
                local f32_local2 = 5
                local f32_local3 = 3011
                local f32_local4 = TARGET_ENE_0
                local f32_local5 = 10
                local f32_local6 = 0
                local f32_local7 = 0
                local f32_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f32_local2, f32_local3, f32_local4, successDist2, 0, 0, 0)
            end
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local f32_local0 = arg1:GetDist(TARGET_ENE_0)
        local f32_local1 = arg1:GetRandam_Int(1, 100)
        if f32_local0 <= 3 and f32_local1 <= 5 then
            arg2:ClearSubGoal()
            Zarigani_442000_Act12(arg1, arg2)
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_Zarigani_442000_AfterAttackAct, "Zarigani_442000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Zarigani_442000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


