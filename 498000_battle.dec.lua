RegisterTableGoal(GOAL_BirdoftheDeath498000_Battle, "BirdoftheDeath498000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BirdoftheDeath498000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 17651) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
            if f2_local3 >= 7 then
                f2_local0[27] = 100
            else
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[9] = 80
                f2_local0[27] = 20
                f2_local0[28] = 0
            end
        elseif f2_local3 >= 15 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 40
            f2_local0[7] = 0
            f2_local0[8] = 40
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[19] = 0
            f2_local0[20] = 10
            f2_local0[22] = 20
            f2_local0[23] = 0
            f2_local0[25] = 10
            f2_local0[28] = 0
        elseif f2_local3 >= 10 then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 20
            f2_local0[6] = 30
            f2_local0[7] = 0
            f2_local0[8] = 30
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[19] = 20
            f2_local0[20] = 0
            f2_local0[22] = 20
            f2_local0[23] = 20
            f2_local0[25] = 0
            f2_local0[26] = 30
            f2_local0[28] = 0
        elseif f2_local3 >= 5 then
            f2_local0[1] = 30
            f2_local0[2] = 20
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 10
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 30
            f2_local0[24] = 10
            f2_local0[17] = 70
            f2_local0[18] = 70
            f2_local0[19] = 0
            f2_local0[20] = 0
            f2_local0[22] = 20
            f2_local0[23] = 20
            f2_local0[26] = 20
            f2_local0[28] = 0
        elseif f2_local3 >= 1.8 then
            f2_local0[1] = 20
            f2_local0[2] = 20
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 10
            f2_local0[11] = 10
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 10
            f2_local0[16] = 10
            f2_local0[24] = 10
            f2_local0[17] = 70
            f2_local0[18] = 70
            f2_local0[19] = 0
            f2_local0[20] = 0
            f2_local0[22] = 0
            f2_local0[23] = 20
            f2_local0[28] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 20
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 10
            f2_local0[11] = 10
            f2_local0[12] = 15
            f2_local0[13] = 30
            f2_local0[14] = 30
            f2_local0[15] = 10
            f2_local0[16] = 10
            f2_local0[17] = 100
            f2_local0[18] = 100
            f2_local0[19] = 0
            f2_local0[20] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[28] = 10
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
        if f2_local3 >= 7 then
            f2_local0[27] = 100
        else
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[9] = 80
            f2_local0[27] = 20
            f2_local0[28] = 0
        end
    elseif f2_local3 >= 15 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 40
        f2_local0[6] = 20
        f2_local0[7] = 0
        f2_local0[8] = 40
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[28] = 0
    elseif f2_local3 >= 10 then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 40
        f2_local0[6] = 10
        f2_local0[7] = 0
        f2_local0[8] = 30
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[26] = 30
        f2_local0[28] = 0
    elseif f2_local3 >= 5 then
        f2_local0[1] = 40
        f2_local0[2] = 20
        f2_local0[3] = 10
        f2_local0[4] = 10
        f2_local0[5] = 10
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 30
        f2_local0[24] = 10
        f2_local0[26] = 20
        f2_local0[28] = 0
    elseif f2_local3 >= 1.8 then
        f2_local0[1] = 20
        f2_local0[2] = 20
        f2_local0[3] = 10
        f2_local0[4] = 10
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 10
        f2_local0[11] = 10
        f2_local0[12] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 10
        f2_local0[16] = 10
        f2_local0[24] = 10
        f2_local0[28] = 0
    else
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 20
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 10
        f2_local0[11] = 10
        f2_local0[12] = 20
        f2_local0[13] = 25
        f2_local0[14] = 25
        f2_local0[15] = 10
        f2_local0[16] = 0
        f2_local0[24] = 0
        f2_local0[28] = 10
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 17657) then
        f2_local0[25] = 0
    end
    if f2_local5 >= 0.8 then
        f2_local0[17] = 0
        f2_local0[18] = 0
        f2_local0[22] = 0
    elseif f2_local5 >= 0.6 then
        f2_local0[17] = 0
        f2_local0[18] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3020, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3024, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3015, 10, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3026, 10, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3027, 10, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3018, 10, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3019, 10, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3034, 10, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3030, 60, f2_local0[17], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3030, 60, f2_local0[18], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3031, 60, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3031, 60, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3032, 10, f2_local0[19], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3025, 10, f2_local0[20], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[21], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3033, 50, f2_local0[22], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3028, 10, f2_local0[23], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 3023, 20, f2_local0[25], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act16)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act24)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act23)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act28)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_Act30)
    local f2_local6 = REGIST_FUNC(arg1, arg2, BirdoftheDeath498000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function BirdoftheDeath498000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 10
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 4
    local f3_local7 = 3
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17661)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17662)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = TARGET_ENE_0
    local f3_local11 = 10
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f3_local8, f3_local9, f3_local10, f3_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 8
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 4
    local f4_local7 = 4
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17663)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17664)
    local f4_local8 = 5
    local f4_local9 = 3010
    local f4_local10 = TARGET_ENE_0
    local f4_local11 = 10
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f4_local8, f4_local9, f4_local10, f4_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 7
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 4
    local f5_local7 = 4
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17668)
    local f5_local8 = 5
    local f5_local9 = 3002
    local f5_local10 = TARGET_ENE_0
    local f5_local11 = 10
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local8, f5_local9, f5_local10, f5_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 9
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 4
    local f6_local7 = 4
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17671)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17662)
    local f6_local8 = 5
    local f6_local9 = 3012
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 10
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 13
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 4
    local f7_local7 = 4
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17665)
    local f7_local8 = 5
    local f7_local9 = 3020
    local f7_local10 = 3022
    local f7_local11 = TARGET_ENE_0
    local f7_local12 = 12.5
    local f7_local13 = 0
    local f7_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local8, f7_local9, f7_local11, f7_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f7_local8, f7_local10, f7_local11, f7_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 8
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 100
    local f8_local5 = 0
    local f8_local6 = 4
    local f8_local7 = 4
    if f8_local0 >= 15 and arg0:HasSpecialEffectId(TARGET_SELF, 17651) == false then
        Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 17651) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17673)
    end
    local f8_local8 = 5
    local f8_local9 = 3004
    local f8_local10 = TARGET_ENE_0
    local f8_local11 = 10
    local f8_local12 = 0
    local f8_local13 = 0
    local f8_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local8, f8_local9, f8_local10, f8_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act07(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17665)
    local f9_local0 = 5
    local f9_local1 = 3005
    local f9_local2 = TARGET_ENE_0
    local f9_local3 = 10
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f9_local0, f9_local1, f9_local2, f9_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 25
    local f10_local2 = 0
    local f10_local3 = 999
    local f10_local4 = 100
    local f10_local5 = 0
    local f10_local6 = 4
    local f10_local7 = 4
    Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    local f10_local8 = 5
    local f10_local9 = 3024
    local f10_local10 = TARGET_ENE_0
    local f10_local11 = 10
    local f10_local12 = 0
    local f10_local13 = 0
    local f10_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local8, f10_local9, f10_local10, f10_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act09(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17663)
    local f11_local0 = 5
    local f11_local1 = 3015
    local f11_local2 = TARGET_ENE_0
    local f11_local3 = 10
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f11_local0, f11_local1, f11_local2, f11_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act10(arg0, arg1, arg2)
    local f12_local0 = 5
    local f12_local1 = 3026
    local f12_local2 = TARGET_ENE_0
    local f12_local3 = 10
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local0, f12_local1, f12_local2, f12_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act11(arg0, arg1, arg2)
    local f13_local0 = 5
    local f13_local1 = 3008
    local f13_local2 = TARGET_ENE_0
    local f13_local3 = 10
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f13_local0, f13_local1, f13_local2, f13_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act12(arg0, arg1, arg2)
    local f14_local0 = 5
    local f14_local1 = 3027
    local f14_local2 = TARGET_ENE_0
    local f14_local3 = 10
    local f14_local4 = 0
    local f14_local5 = 0
    local f14_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f14_local0, f14_local1, f14_local2, f14_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act13(arg0, arg1, arg2)
    local f15_local0 = 5
    local f15_local1 = 3017
    local f15_local2 = TARGET_ENE_0
    local f15_local3 = 10
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f15_local0, f15_local1, f15_local2, f15_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act14(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17675)
    local f16_local0 = 5
    local f16_local1 = 3018
    local f16_local2 = TARGET_ENE_0
    local f16_local3 = 10
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f16_local0, f16_local1, f16_local2, f16_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act15(arg0, arg1, arg2)
    local f17_local0 = 5
    local f17_local1 = 3019
    local f17_local2 = TARGET_ENE_0
    local f17_local3 = 10
    local f17_local4 = 0
    local f17_local5 = 0
    local f17_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f17_local0, f17_local1, f17_local2, f17_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act16(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 7
    local f18_local2 = 0
    local f18_local3 = 999
    local f18_local4 = 100
    local f18_local5 = 0
    local f18_local6 = 4
    local f18_local7 = 4
    Approach_Act_Flex(arg0, arg1, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6, f18_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17666)
    local f18_local8 = 5
    local f18_local9 = 3034
    local f18_local10 = TARGET_ENE_0
    local f18_local11 = 10
    local f18_local12 = 0
    local f18_local13 = 0
    local f18_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f18_local8, f18_local9, f18_local10, f18_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act17(arg0, arg1, arg2)
    local f19_local0 = 5
    local f19_local1 = 3030
    local f19_local2 = TARGET_ENE_0
    local f19_local3 = 10
    local f19_local4 = 0
    local f19_local5 = 0
    local f19_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local0, f19_local1, f19_local2, f19_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act18(arg0, arg1, arg2)
    local f20_local0 = 5
    local f20_local1 = 3031
    local f20_local2 = TARGET_ENE_0
    local f20_local3 = 10
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local0, f20_local1, f20_local2, f20_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act19(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17661)
    local f21_local0 = 5
    local f21_local1 = 3032
    local f21_local2 = TARGET_ENE_0
    local f21_local3 = 10
    local f21_local4 = 0
    local f21_local5 = 0
    local f21_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f21_local0, f21_local1, f21_local2, f21_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act20(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17663)
    local f22_local0 = 5
    local f22_local1 = 3025
    local f22_local2 = TARGET_ENE_0
    local f22_local3 = 10
    local f22_local4 = 0
    local f22_local5 = 0
    local f22_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local0, f22_local1, f22_local2, f22_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act21(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 17651) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17673)
    end
    local f23_local0 = 5
    local f23_local1 = 3007
    local f23_local2 = TARGET_ENE_0
    local f23_local3 = 10
    local f23_local4 = 0
    local f23_local5 = 0
    local f23_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f23_local0, f23_local1, f23_local2, f23_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act22(arg0, arg1, arg2)
    local f24_local0 = 5
    local f24_local1 = 3033
    local f24_local2 = TARGET_ENE_0
    local f24_local3 = 10
    local f24_local4 = 0
    local f24_local5 = 0
    local f24_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f24_local0, f24_local1, f24_local2, f24_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act23(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17674)
    local f25_local0 = 5
    local f25_local1 = 3028
    local f25_local2 = TARGET_ENE_0
    local f25_local3 = 10
    local f25_local4 = 0
    local f25_local5 = 0
    local f25_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f25_local0, f25_local1, f25_local2, f25_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act24(arg0, arg1, arg2)
    local f26_local0 = arg0:GetDist(TARGET_ENE_0)
    local f26_local1 = 7.4
    local f26_local2 = 0
    local f26_local3 = 999
    local f26_local4 = 100
    local f26_local5 = 0
    local f26_local6 = 4
    local f26_local7 = 4
    Approach_Act_Flex(arg0, arg1, f26_local1, f26_local2, f26_local3, f26_local4, f26_local5, f26_local6, f26_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17666)
    local f26_local8 = 5
    local f26_local9 = 3036
    local f26_local10 = TARGET_ENE_0
    local f26_local11 = 10
    local f26_local12 = 0
    local f26_local13 = 0
    local f26_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f26_local8, f26_local9, f26_local10, f26_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act25(arg0, arg1, arg2)
    local f27_local0 = arg0:GetDist(TARGET_ENE_0)
    local f27_local1 = 20.4
    local f27_local2 = 0
    local f27_local3 = 999
    local f27_local4 = 100
    local f27_local5 = 0
    local f27_local6 = 4
    local f27_local7 = 4
    Approach_Act_Flex(arg0, arg1, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5, f27_local6, f27_local7)
    local f27_local8 = 5
    local f27_local9 = 3023
    local f27_local10 = TARGET_ENE_0
    local f27_local11 = TARGET_SELF
    local f27_local12 = 100
    local f27_local13 = 0
    local f27_local14 = 0
    local f27_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f27_local8, f27_local9, f27_local10, f27_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act26(arg0, arg1, arg2)
    local f28_local0 = arg0:GetRandam_Int(1, 3)
    local f28_local1 = TARGET_ENE_0
    local f28_local2 = arg0:GetRandam_Int(0, 1)
    local f28_local3 = arg0:GetRandam_Int(30, 45)
    local f28_local4 = 3
    local f28_local5 = TARGET_SELF
    local f28_local6 = true
    local f28_local7 = true
    local f28_local8 = arg0:GetDist(TARGET_ENE_0)
    local f28_local9 = 0
    local f28_local10 = arg0:GetRandam_Int(1, 100)
    local f28_local11 = -1
    if f28_local10 <= f28_local9 then
        f28_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f28_local0, f28_local1, f28_local2, f28_local3, f28_local6, f28_local7, f28_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act27(arg0, arg1, arg2)
    local f29_local0 = 2
    local f29_local1 = TARGET_ENE_0
    local f29_local2 = 45
    local f29_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f29_local4 = true
    local f29_local5 = 0
    local f29_local6 = arg0:GetRandam_Int(1, 100)
    local f29_local7 = -1
    if f29_local6 <= f29_local5 then
        f29_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f29_local0, f29_local1, f29_local2, f29_local7, f29_local3, f29_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_Act28(arg0, arg1, arg2)
    local f30_local0 = 5
    local f30_local1 = -1
    local f30_local2 = -1
    local f30_local3 = 1
    local f30_local4 = 1
    local f30_local5 = TARGET_ENE_0
    local f30_local6 = 3
    local f30_local7 = 0
    local f30_local8 = true
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f30_local0, f30_local1, 2, f30_local3, f30_local4, f30_local5, f30_local6, f30_local7, f30_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f30_local0, f30_local1, f30_local2, 1, -1, f30_local5, f30_local6, f30_local7, f30_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f30_local0, f30_local1, f30_local2, -1, 1, f30_local5, f30_local6, f30_local7, f30_local8)
    end
    
end

function BirdoftheDeath498000_Act30(arg0, arg1, arg2)
    local f31_local0 = arg0:GetDist(TARGET_ENE_0)
    local f31_local1 = 20.4
    local f31_local2 = 0
    local f31_local3 = 999
    local f31_local4 = 100
    local f31_local5 = 0
    local f31_local6 = 4
    local f31_local7 = 4
    Approach_Act_Flex(arg0, arg1, f31_local1, f31_local2, f31_local3, f31_local4, f31_local5, f31_local6, f31_local7)
    local f31_local8 = 5
    local f31_local9 = 3023
    local f31_local10 = TARGET_ENE_0
    local f31_local11 = TARGET_SELF
    local f31_local12 = 100
    local f31_local13 = 0
    local f31_local14 = 0
    local f31_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f31_local8, f31_local9, f31_local10, f31_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BirdoftheDeath498000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BirdoftheDeath498000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f35_local0 = arg1:GetDist(TARGET_ENE_0)
    local f35_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f35_local2 = arg1:GetRandam_Int(1, 100)
    local f35_local3 = arg1:GetRandam_Int(1, 100)
    local f35_local4 = arg1:GetRandam_Int(1, 100)
    local f35_local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 17651) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 17661) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17661)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                local f35_local8 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 10 and f35_local6 >= 2 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17670)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17672)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17673)
                    local f35_local9 = 5
                    local f35_local10 = TARGET_ENE_0
                    local f35_local11 = 10
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 0
                    local f35_local15 = nil
                    if f35_local7 >= 40 then
                        f35_local15 = 3011
                    elseif f35_local7 >= 20 then
                        f35_local15 = 3014
                    else
                        f35_local15 = 3039
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local9, f35_local15, f35_local10, successDist2, 0, 0, 0)
                elseif f35_local6 <= 2 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17670)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17672)
                    local f35_local9 = 5
                    local f35_local10 = TARGET_ENE_0
                    local f35_local11 = 10
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 0
                    local f35_local15 = nil
                    if f35_local7 >= 60 then
                        f35_local15 = 3006
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local9, f35_local15, f35_local10, successDist2, 0, 0, 0)
                    elseif f35_local7 >= 30 then
                        f35_local15 = 3013
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local9, f35_local15, f35_local10, successDist2, 0, 0, 0)
                    else
                        f35_local15 = 3013
                        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f35_local9, f35_local15, f35_local10, f35_local11, 0, 0, 0)
                    end
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17662) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17662)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 10 then
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local6 <= 2 then
                        if f35_local7 >= 50 then
                            f35_local14 = 3017
                        else
                            f35_local14 = 3027
                        end
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                    end
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17663) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17663)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                local f35_local8 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 18 and f35_local6 >= 7 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17665)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17667)
                    local f35_local9 = 5
                    local f35_local10 = TARGET_ENE_0
                    local f35_local11 = 10
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 0
                    local f35_local15 = nil
                    if f35_local7 >= 30 then
                        f35_local15 = 3001
                    else
                        f35_local15 = 3021
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local9, f35_local15, f35_local10, successDist2, 0, 0, 0)
                elseif f35_local6 <= 7 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17667)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17669)
                    local f35_local9 = 5
                    local f35_local10 = TARGET_ENE_0
                    local f35_local11 = 10
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 0
                    local f35_local15 = nil
                    if f35_local7 >= 60 then
                        f35_local15 = 3001
                    elseif f35_local7 >= 30 then
                        f35_local15 = 3003
                    else
                        f35_local15 = 3023
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local9, f35_local15, f35_local10, successDist2, 0, 0, 0)
                elseif f35_local6 <= 3 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17669)
                    local f35_local9 = 5
                    local f35_local10 = TARGET_ENE_0
                    local f35_local11 = 10
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 0
                    local f35_local15 = nil
                    if f35_local7 >= 80 then
                        f35_local15 = 3003
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local9, f35_local15, f35_local10, successDist2, 0, 0, 0)
                    elseif f35_local7 >= 50 then
                        f35_local15 = 3009
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local9, f35_local15, f35_local10, successDist2, 0, 0, 0)
                    else
                        f35_local15 = 3009
                        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f35_local9, f35_local15, f35_local10, f35_local11, 0, 0, 0)
                    end
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17664) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17664)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 10 then
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local6 <= 2 then
                        if f35_local7 >= 50 then
                            f35_local14 = 3017
                        else
                            f35_local14 = 3027
                        end
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                    end
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17665) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17665)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 >= 7 then
                    local f35_local8 = 5
                    local f35_local9 = 3021
                    local f35_local10 = 3022
                    local f35_local11 = TARGET_ENE_0
                    local f35_local12 = 12.5
                    local f35_local13 = 0
                    local f35_local14 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local9, f35_local11, f35_local12, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local10, f35_local11, f35_local12, 0, 0, 0)
                else
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17667)
                    local f35_local8 = 5
                    local f35_local9 = 3022
                    local f35_local10 = 3014
                    local f35_local11 = TARGET_ENE_0
                    local f35_local12 = 5.5
                    local f35_local13 = 0
                    local f35_local14 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local9, f35_local11, f35_local12, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17666) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17666)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 12 and f35_local6 >= 4 then
                    local f35_local8 = 5
                    local f35_local9 = 3035
                    local f35_local10 = TARGET_ENE_0
                    local f35_local11 = 10
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local9, f35_local10, successDist2, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17667) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17667)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 10 and f35_local6 >= 2 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17673)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 <= 70 then
                        f35_local14 = 3014
                    else
                        f35_local14 = 3039
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 2 then
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 3039
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17668) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17668)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 18 and f35_local6 >= 7 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17667)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 30 then
                        f35_local14 = 3001
                    else
                        f35_local14 = 3023
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 7 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17667)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 50 then
                        f35_local14 = 3001
                    else
                        f35_local14 = 3023
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 3 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17669)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 60 then
                        f35_local14 = 3009
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                    end
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17669) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17669)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 18 and f35_local6 >= 7 then
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 30 then
                        f35_local14 = 3022
                        local f35_local15 = 3021
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local15, f35_local9, successDist2, 0, 0, 0)
                    else
                        f35_local14 = 3023
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 7 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17667)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 3023
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 3 then

                else

                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17670) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17670)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 18 and f35_local6 >= 7 then
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 30 then
                        f35_local14 = 3022
                        local f35_local15 = 3021
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local15, f35_local9, f35_local10, 0, 0, 0)
                    else
                        f35_local14 = 3023
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 7 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17667)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 3023
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, f35_local10, 0, 0, 0)
                    if f35_local7 >= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                    end
                elseif f35_local6 <= 3 then

                else

                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17671) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17671)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 10 and f35_local6 >= 2 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17670)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17673)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 50 then
                        f35_local14 = 3011
                    else
                        f35_local14 = 3039
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 2 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17670)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 <= 70 then
                        f35_local14 = 3014
                    else
                        f35_local14 = 3039
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17672) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17672)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 10 and f35_local6 >= 2 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17673)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 60 then
                        f35_local14 = 3014
                    else
                        f35_local14 = 3039
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 2 then
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 <= 70 then
                        f35_local14 = 3014
                    else
                        f35_local14 = 3039
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17673) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17673)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 >= 11 then
                    local f35_local8 = 5
                    local f35_local9 = 3011
                    local f35_local10 = TARGET_ENE_0
                    local f35_local11 = 10
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local9, f35_local10, successDist2, 0, 0, 0)
                else
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 70 then
                        f35_local14 = 3011
                    else
                        f35_local14 = 3037
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17674) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17674)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 18 then
                    local f35_local8 = 5
                    local f35_local9 = 3029
                    local f35_local10 = TARGET_ENE_0
                    local f35_local11 = 10
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local9, f35_local10, successDist2, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17675) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17675)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 1.8 then
                    local f35_local8 = 5
                    local f35_local9 = 3038
                    local f35_local10 = TARGET_ENE_0
                    local f35_local11 = 10
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local9, f35_local10, successDist2, 0, 0, 0)
                end
                return true
            end
        else
            if arg1:HasSpecialEffectId(TARGET_SELF, 17661) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17661)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 10 and f35_local6 >= 6 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17670)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17672)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 <= 60 then
                        f35_local14 = 3013
                    else
                        f35_local14 = 3039
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 6 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17670)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17672)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 40 then
                        f35_local14 = 3011
                    elseif f35_local7 >= 20 then
                        f35_local14 = 3013
                    else
                        f35_local14 = 3039
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 2 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17670)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17672)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 60 then
                        f35_local14 = 3006
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                    elseif f35_local7 >= 30 then
                        f35_local14 = 3013
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                    else
                        f35_local14 = 3013
                        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f35_local8, f35_local14, f35_local9, f35_local10, 0, 0, 0)
                    end
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17662) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17662)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 8 then
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local6 <= 2 then
                        if f35_local7 >= 50 then
                            f35_local14 = 3017
                        else
                            f35_local14 = 3027
                        end
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                    end
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17663) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17663)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 18 and f35_local6 >= 7 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17665)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17667)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 30 then
                        f35_local14 = 3001
                    else
                        f35_local14 = 3021
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 7 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17667)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17669)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 60 then
                        f35_local14 = 3001
                    elseif f35_local7 >= 30 then
                        f35_local14 = 3003
                    else
                        f35_local14 = 3023
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 3 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17669)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 80 then
                        f35_local14 = 3003
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                    elseif f35_local7 >= 50 then
                        f35_local14 = 3009
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                    else
                        f35_local14 = 3009
                        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f35_local8, f35_local14, f35_local9, f35_local10, 0, 0, 0)
                    end
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17664) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17664)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 10 then
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local6 <= 2 then
                        if f35_local7 >= 50 then
                            f35_local14 = 3017
                        else
                            f35_local14 = 3027
                        end
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                    end
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17665) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17665)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 >= 7 then
                    local f35_local8 = 5
                    local f35_local9 = 3021
                    local f35_local10 = 3022
                    local f35_local11 = TARGET_ENE_0
                    local f35_local12 = 12.5
                    local f35_local13 = 0
                    local f35_local14 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local9, f35_local11, f35_local12, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local10, f35_local11, f35_local12, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17666) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17666)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 12 and f35_local6 >= 4 then
                    local f35_local8 = 5
                    local f35_local9 = 3035
                    local f35_local10 = TARGET_ENE_0
                    local f35_local11 = 10
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local9, f35_local10, successDist2, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17667) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17667)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 10 and f35_local6 >= 2 then
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 <= 70 then
                        f35_local14 = 3039
                    else
                        f35_local14 = 3014
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 2 then
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 3039
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17668) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17668)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 18 and f35_local6 >= 10 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17667)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 30 then
                        f35_local14 = 3001
                    else
                        f35_local14 = 3023
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 6 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17667)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 50 then
                        f35_local14 = 3001
                    else
                        f35_local14 = 3023
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 3 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17669)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 60 then
                        f35_local14 = 3009
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                    end
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17669) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17669)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 18 and f35_local6 >= 7 then
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 30 then
                        f35_local14 = 3022
                        local f35_local15 = 3021
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local15, f35_local9, successDist2, 0, 0, 0)
                    else
                        f35_local14 = 3023
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 7 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17667)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 3023
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 3 then

                else

                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17670) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17670)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 18 and f35_local6 >= 7 then
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 30 then
                        f35_local14 = 3022
                        local f35_local15 = 3021
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local15, f35_local9, f35_local10, 0, 0, 0)
                    else
                        f35_local14 = 3023
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 7 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17667)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 3023
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, f35_local10, 0, 0, 0)
                    if f35_local7 >= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                    end
                elseif f35_local6 <= 3 then

                else

                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17671) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17671)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 10 and f35_local6 >= 2 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17670)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 40 then
                        f35_local14 = 3011
                    elseif f35_local7 >= 20 then
                        f35_local14 = 3039
                    else
                        f35_local14 = 3014
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 2 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17670)
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = nil
                    if f35_local7 >= 40 then
                        f35_local14 = 3006
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                    end
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17672) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17672)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 10 and f35_local6 >= 2 then
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 3014
                    local f35_local15 = nil
                    if f35_local7 <= 70 then
                        f35_local15 = 3039
                    else
                        f35_local15 = 3014
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local15, f35_local9, successDist2, 0, 0, 0)
                elseif f35_local6 <= 2 then
                    local f35_local8 = 5
                    local f35_local9 = TARGET_ENE_0
                    local f35_local10 = 10
                    local f35_local11 = 0
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 3036
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local14, f35_local9, successDist2, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 17675) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17675)
                arg2:ClearSubGoal()
                local f35_local6 = arg1:GetDist(TARGET_ENE_0)
                local f35_local7 = arg1:GetRandam_Int(1, 100)
                if f35_local6 <= 1.8 then
                    local f35_local8 = 5
                    local f35_local9 = 3038
                    local f35_local10 = TARGET_ENE_0
                    local f35_local11 = 10
                    local f35_local12 = 0
                    local f35_local13 = 0
                    local f35_local14 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local8, f35_local9, f35_local10, successDist2, 0, 0, 0)
                end
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_BirdoftheDeath498000_AfterAttackAct, "BirdoftheDeath498000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BirdoftheDeath498000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


