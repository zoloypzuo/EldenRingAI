RegisterTableGoal(GOAL_RottenDead_366100_Battle, "RottenDead_366100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RottenDead_366100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
    arg1:SetNumber(5, 0)
    arg1:SetNumber(6, 0)
    arg1:SetStringIndexedNumber("TestNumber", 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:GetStringIndexedNumber("Loop_Cnt")
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
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 17001)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 17002)
    local f2_local12 = arg1:HasSpecialEffectId(TARGET_SELF, 17005)
    local f2_local13 = arg1:HasSpecialEffectId(TARGET_SELF, 17006)
    local f2_local14 = arg1:HasSpecialEffectId(TARGET_SELF, 17009)
    local f2_local15 = arg1:HasSpecialEffectId(TARGET_SELF, 17040)
    local f2_local16 = arg1:HasSpecialEffectId(TARGET_SELF, 17041)
    local f2_local17 = arg1:HasSpecialEffectId(TARGET_SELF, 17014)
    local f2_local18 = arg1:HasSpecialEffectId(TARGET_SELF, 17043)
    local f2_local19 = arg1:HasSpecialEffectId(TARGET_SELF, 17044)
    local f2_local20 = arg1:HasSpecialEffectId(TARGET_SELF, 17045)
    local f2_local21 = arg1:HasSpecialEffectId(TARGET_SELF, 13471)
    local f2_local22 = arg1:HasSpecialEffectId(TARGET_SELF, 17049)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13477)
    arg1:SetNumber(5, 0)
    if f2_local16 == true then
        if f2_local19 == true then
            f2_local0[19] = 15
        else
            f2_local0[8] = 100
        end
    elseif f2_local15 == true then
        if f2_local19 == true then
            f2_local0[19] = 15
        else
            f2_local0[7] = 100
        end
    elseif f2_local11 == true then
        if f2_local19 == true then
            f2_local0[19] = 15
        else
            f2_local0[7] = 100
        end
    elseif f2_local12 == true then
        if f2_local21 == true then
            f2_local0[15] = 15
        elseif f2_local5 > 5 then
            f2_local0[22] = 1
        else
            f2_local0[22] = 30
            f2_local0[6] = 10
        end
    elseif f2_local19 == true and arg1:GetNumber(6) == 0 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        f2_local0[10] = 9999
        f2_local0[22] = 1
    elseif f2_local20 == true and arg1:GetNumber(6) == 0 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        f2_local0[9] = 9999
        f2_local0[22] = 1
    elseif f2_local10 == true and f2_local17 == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            f2_local0[22] = 15
        else
            f2_local0[5] = 45
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 140) then
        f2_local0[22] = 30
        f2_local0[23] = 30
    elseif f2_local5 >= 9 then
        f2_local0[4] = 20
        f2_local0[6] = 10
        f2_local0[22] = 40
        f2_local0[23] = 40
    elseif f2_local5 >= 6 then
        f2_local0[1] = 10
        f2_local0[2] = 15
        f2_local0[4] = 20
        f2_local0[5] = 40
        f2_local0[6] = 10
        f2_local0[9] = 20
        f2_local0[10] = 15
        f2_local0[22] = 30
        f2_local0[23] = 25
    else
        f2_local0[1] = 25
        f2_local0[2] = 25
        f2_local0[4] = 15
        f2_local0[5] = 45
        f2_local0[6] = 5
        f2_local0[9] = 20
        f2_local0[10] = 15
        f2_local0[22] = 35
    end
    f2_local0[4] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[4], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3019, 10, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[5], 5)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3007, 15, f2_local0[6], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3037, 15, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3038, 15, f2_local0[10], 1)
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 90, 12) == false then
        f2_local0[4] = 0
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) == false then
        f2_local0[9] = 0
        f2_local0[4] = 0
    end
    if f2_local5 < 2 then
        f2_local0[4] = 0
    end
    if f2_local10 == false and f2_local22 == false then
        f2_local0[5] = 0
    end
    if f2_local18 == false then
        f2_local0[10] = 0
    end
    if arg1:GetLatestSoundBehaviorID() == 366100 and f2_local5 <= 6 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        f2_local0[1] = 0
        f2_local0[9] = 0
        f2_local0[6] = f2_local0[6] * 3
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, RottenDead_366100_Act30)
    local f2_local23 = REGIST_FUNC(arg1, arg2, RottenDead_366100_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local23, f2_local2)
    
end

function RottenDead_366100_Act01(arg0, arg1, arg2)
    Loop_Cnt = 0
    local f3_local0 = 10
    local f3_local1 = 3023
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 120
    local f3_local5 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17020)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17022)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17024)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local0, f3_local1, TARGET_ENE_0, f3_local2, f3_local3, f3_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = -1.4
    local f4_local2 = 999
    local f4_local3 = 999
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 3
    Loop_Cnt = 0
    local f4_local8 = 10
    local f4_local9 = 3000
    local f4_local10 = 3010
    local f4_local11 = 3000
    local f4_local12 = 3010
    local f4_local13 = 3000
    local f4_local14 = 3010
    local f4_local15 = 999
    local f4_local16 = 0
    local f4_local17 = 120
    local f4_local18 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17020)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17022)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17024)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
    if f4_local18 > 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local8, f4_local9, TARGET_ENE_0, f4_local15, f4_local16, f4_local17, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local8, f4_local10, TARGET_ENE_0, f4_local15, f4_local16, f4_local17, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = -1.4
    local f5_local2 = 999
    local f5_local3 = 999
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 3
    arg1:AddSubGoal(GOAL_COMMON_Wait, GetRandam_Float(0.1, 1), TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act04(arg0, arg1, arg2)
    Loop_Cnt = 0
    local f6_local0 = 10
    local f6_local1 = 3017
    local f6_local2 = 3019
    local f6_local3 = 999
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17020)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17022)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17024)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        if f6_local6 > 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local1, TARGET_NONE, f6_local3, f6_local4, f6_local5, 0, 0)
            local f6_local7 = arg0:GetRandam_Int(1, 100)
            if f6_local7 > 60 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, DistToAtt3, 0, 0)
            elseif f6_local7 > 20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DistToAtt3, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local2, TARGET_NONE, f6_local3, f6_local4, f6_local5, 0, 0)
            local f6_local7 = arg0:GetRandam_Int(1, 100)
            if f6_local7 > 60 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, DistToAtt3, 0, 0)
            elseif f6_local7 > 20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DistToAtt3, 0, 0)
            end
        end
    elseif f6_local6 > 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local1, TARGET_NONE, f6_local3, f6_local4, f6_local5, 0, 0)
        local f6_local7 = arg0:GetRandam_Int(1, 100)
        if f6_local7 > 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif f6_local7 > 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif f6_local7 > 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif f6_local7 > 20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, DistToAtt3, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local2, TARGET_NONE, f6_local3, f6_local4, f6_local5, 0, 0)
        local f6_local7 = arg0:GetRandam_Int(1, 100)
        if f6_local7 > 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif f6_local7 > 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif f6_local7 > 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif f6_local7 > 20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, DistToAtt3, 0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act05(arg0, arg1, arg2)
    local f7_local0 = 5
    local f7_local1 = 3016
    local f7_local2 = 6
    local f7_local3 = 0
    local f7_local4 = 180
    local f7_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, TARGET_ENE_0, f7_local2, f7_local3, f7_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act06(arg0, arg1, arg2)
    local f8_local0 = 5
    local f8_local1 = 3007
    local f8_local2 = 6
    local f8_local3 = 0
    local f8_local4 = 180
    local f8_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local0, f8_local1, TARGET_SELF, f8_local2, f8_local3, f8_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act07(arg0, arg1, arg2)
    Loop_Cnt = 0
    local f9_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 17009)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17031)
    local f9_local1 = 5
    local f9_local2 = 3030
    local f9_local3 = 3031
    local f9_local4 = 999
    local f9_local5 = 1.5
    local f9_local6 = 120
    local f9_local7 = arg0:GetRandam_Int(1, 100)
    local f9_local8 = arg0:GetRandam_Int(8, 11)
    local f9_local9 = 999
    local f9_local10 = 999
    local f9_local11 = 0
    local f9_local12 = 0
    local f9_local13 = 4
    local f9_local14 = 8
    Approach_Act_Flex(arg0, arg1, f9_local8, f9_local9, f9_local10, f9_local11, f9_local12, f9_local13, f9_local14)
    if f9_local0 == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local1, f9_local3, TARGET_ENE_0, f9_local4, f9_local5, f9_local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local1, f9_local2, TARGET_ENE_0, f9_local4, f9_local5, f9_local6, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 17009)
    local f10_local1 = 5
    local f10_local2 = 3034
    local f10_local3 = 3033
    local f10_local4 = 999
    local f10_local5 = 1.5
    local f10_local6 = 120
    local f10_local7 = arg0:GetRandam_Int(1, 100)
    if f10_local0 == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local1, f10_local3, TARGET_ENE_0, f10_local4, f10_local5, f10_local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local1, f10_local2, TARGET_ENE_0, f10_local4, f10_local5, f10_local6, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(6, 1)
    Loop_Cnt = 0
    local f11_local2 = 10
    local f11_local3 = 3035
    local f11_local4 = 3036
    local f11_local5 = 3017
    local f11_local6 = 999
    local f11_local7 = 0
    local f11_local8 = 120
    local f11_local9 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17020)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17022)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17024)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
    local f11_local10 = 7
    local f11_local11 = 999
    local f11_local12 = 999
    local f11_local13 = 0
    local f11_local14 = 0
    local f11_local15 = 3
    local f11_local16 = 0
    Approach_Act_Flex(arg0, arg1, f11_local10, f11_local11, f11_local12, f11_local13, f11_local14, f11_local15, f11_local16)
    if f11_local0 > 6 then
        if f11_local9 > 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local2, f11_local5, TARGET_ENE_0, f11_local6, f11_local7, f11_local8, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f11_local3, TARGET_ENE_0, 0, 0, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f11_local3, TARGET_ENE_0, 0, 0, 0, 0, 0)
        end
    elseif f11_local0 > 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local2, f11_local3, TARGET_ENE_0, f11_local6, f11_local7, f11_local8, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local2, f11_local4, TARGET_ENE_0, f11_local6, f11_local7, f11_local8, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(6, 1)
    Loop_Cnt = 0
    local f12_local2 = 10
    local f12_local3 = 3037
    local f12_local4 = 3038
    local f12_local5 = 999
    local f12_local6 = 0
    local f12_local7 = 120
    local f12_local8 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17020)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17022)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17024)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local2, f12_local4, TARGET_ENE_0, f12_local5, f12_local6, f12_local7, 0, 0)
    
end

function RottenDead_366100_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetRandam_Int(3, 11)
    local f13_local2 = 999
    local f13_local3 = 999
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 3
    local f13_local7 = 3
    Approach_Act_Flex(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    local f13_local8 = 10
    local f13_local9 = 20010
    local f13_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local11 = 0
    local f13_local12 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local8, f13_local9, TARGET_ENE_0, f13_local10, f13_local11, f13_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetRandam_Int(3, 11)
    local f14_local2 = 999
    local f14_local3 = 999
    local f14_local4 = 0
    local f14_local5 = 0
    local f14_local6 = 3
    local f14_local7 = 3
    Approach_Act_Flex(arg0, arg1, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7)
    local f14_local8 = 10
    local f14_local9 = 20011
    local f14_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local11 = 0
    local f14_local12 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local8, f14_local9, TARGET_ENE_0, f14_local10, f14_local11, f14_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act13(arg0, arg1, arg2)
    local f15_local0 = 10
    local f15_local1 = 20011
    local f15_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local3 = 0
    local f15_local4 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local0, f15_local1, TARGET_ENE_0, f15_local2, f15_local3, f15_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act14(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17035)
    local f16_local0 = 10
    local f16_local1 = 20012
    local f16_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local3 = 0
    local f16_local4 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local0, f16_local1, TARGET_ENE_0, f16_local2, f16_local3, f16_local4, 0, 0)
    
end

function RottenDead_366100_Act15(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 18
    local f17_local2 = 0
    local f17_local3 = 999
    local f17_local4 = 100
    local f17_local5 = 0
    local f17_local6 = 0
    local f17_local7 = 5
    Approach_Act_Flex(arg0, arg1, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6, f17_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13477)
    local f17_local8 = 10
    local f17_local9 = 20013
    local f17_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local11 = 1.5
    local f17_local12 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f17_local8, f17_local9, TARGET_ENE_0, f17_local10, f17_local11, f17_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act16(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 18
    local f18_local2 = 0
    local f18_local3 = 999
    local f18_local4 = 100
    local f18_local5 = 0
    local f18_local6 = 0
    local f18_local7 = 5
    local f18_local8 = 10
    local f18_local9 = 20015
    local f18_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local11 = 1.5
    local f18_local12 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local8, f18_local9, TARGET_ENE_0, f18_local10, f18_local11, f18_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act17(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 18
    local f19_local2 = 0
    local f19_local3 = 999
    local f19_local4 = 100
    local f19_local5 = 0
    local f19_local6 = 0
    local f19_local7 = 5
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13477)
    local f19_local8 = 10
    local f19_local9 = 20016
    local f19_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local11 = 1.5
    local f19_local12 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local8, f19_local9, TARGET_ENE_0, f19_local10, f19_local11, f19_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act18(arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = 6
    local f20_local2 = 0
    local f20_local3 = 999
    local f20_local4 = 100
    local f20_local5 = 0
    local f20_local6 = 0
    local f20_local7 = 5
    Approach_Act_Flex(arg0, arg1, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13477)
    local f20_local8 = 10
    local f20_local9 = 20017
    local f20_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local11 = 1.5
    local f20_local12 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local8, f20_local9, TARGET_ENE_0, f20_local10, f20_local11, f20_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act19(arg0, arg1, arg2)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    if f21_local0 > 5 then
        local f21_local1 = 18
        local f21_local2 = 0
        local f21_local3 = 999
        local f21_local4 = 100
        local f21_local5 = 0
        local f21_local6 = 0
        local f21_local7 = 5
        Approach_Act_Flex(arg0, arg1, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6, f21_local7)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13477)
        local f21_local8 = 10
        local f21_local9 = 20018
        local f21_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f21_local11 = 1.5
        local f21_local12 = 90
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f21_local8, f21_local9, TARGET_ENE_0, f21_local10, f21_local11, f21_local12, 0, 0)
    elseif f21_local0 > 2 then
        local f21_local1 = arg0:GetDist(TARGET_ENE_0)
        local f21_local2 = 6
        local f21_local3 = 0
        local f21_local4 = 999
        local f21_local5 = 100
        local f21_local6 = 0
        local f21_local7 = 0
        local f21_local8 = 5
        Approach_Act_Flex(arg0, arg1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6, f21_local7, f21_local8)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13477)
        local f21_local9 = 10
        local f21_local10 = 20017
        local f21_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f21_local12 = 1.5
        local f21_local13 = 90
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f21_local9, f21_local10, TARGET_ENE_0, f21_local11, f21_local12, f21_local13, 0, 0)
    else
        local f21_local1 = 10
        local f21_local2 = 20015
        local f21_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f21_local4 = 1.5
        local f21_local5 = 90
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f21_local1, f21_local2, TARGET_ENE_0, f21_local3, f21_local4, f21_local5, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act20(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Int(3, 5), TARGET_ENE_0, 0.5, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act23(arg0, arg1, arg2)
    local f24_local0 = arg0:GetRandam_Int(1, 100)
    if f24_local0 > 50 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(4, 6), TARGET_ENE_0, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, arg0:GetRandam_Int(3, 5))
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(4, 6), TARGET_ENE_0, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, arg0:GetRandam_Int(3, 5))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act24(arg0, arg1, arg2)
    local f25_local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(0.1, 0.3), TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_ToF, arg0:GetRandam_Int(3, 5))
    f25_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Int(3, 5), TARGET_ENE_0, 3, TARGET_SELF, false, -1)
    f25_local0 = 10
    local f25_local1 = 3017
    local f25_local2 = 3019
    local f25_local3 = 999
    local f25_local4 = 0
    local f25_local5 = 0
    local f25_local6 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17020)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17022)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17024)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16458)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16459)
    if f25_local6 > 50 then
        local f25_local7 = arg0:GetRandam_Int(1, 100)
        if f25_local7 > 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif f25_local7 > 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif f25_local7 > 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, DistToAtt3, 0, 0)
        end
    else
        local f25_local7 = arg0:GetRandam_Int(1, 100)
        if f25_local7 > 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif f25_local7 > 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif f25_local7 > 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, DistToAtt3, 0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act26(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16468)
    local f26_local0 = 5
    local f26_local1 = -1
    local f26_local2 = -1
    local f26_local3 = -1
    local f26_local4 = 1
    local f26_local5 = TARGET_ENE_0
    local f26_local6 = 3
    local f26_local7 = 0
    local f26_local8 = true
    arg0:SetTimer(2, 20)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f26_local0, f26_local1, f26_local2, f26_local3, f26_local4, f26_local5, f26_local6, f26_local7, f26_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act27(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act28(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act29(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_Act30(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenDead_366100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RottenDead_366100_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f34_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f34_local1 = 0
    local f34_local2 = 20
    local f34_local3 = arg1:GetDist(TARGET_ENE_0)
    local f34_local4 = arg1:GetRandam_Int(1, 100)
    local f34_local5 = STEP_CANCELDIST
    local f34_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 17001)
    local f34_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 17002)
    local f34_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 17009)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(17030) then
            local f34_local9 = arg1:GetDist(TARGET_ENE_0)
            local f34_local10 = arg1:GetRandam_Int(1, 100)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17031)
            if f34_local9 > 4 and Loop_Cnt < 6 then
                arg2:ClearSubGoal()
                Loop_Cnt = Loop_Cnt + 1
                if f34_local8 == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3032, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3031, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif Loop_Cnt > 3 and f34_local10 > 70 then
                arg2:ClearSubGoal()
                if f34_local8 == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3032, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            else
                arg2:ClearSubGoal()
                if f34_local8 == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3032, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(13477) then
            local f34_local9 = arg1:GetDist(TARGET_ENE_0)
            local f34_local10 = arg1:GetRandam_Int(1, 100)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13477)
            if f34_local9 < 8 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 20013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 17031) then
        local f34_local9 = arg1:GetDist(TARGET_ENE_0)
        local f34_local10 = arg1:GetRandam_Int(1, 100)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17031)
        if f34_local9 < 4 then
            arg2:ClearSubGoal()
            if f34_local8 == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3032, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 17020) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
        local f34_local9 = arg1:GetDist(TARGET_ENE_0)
        local f34_local10 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if f34_local9 <= 3 or Loop_Cnt > 8 then
                if f34_local10 > 20 or 5 < Loop_Cnt then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            else
                arg2:ClearSubGoal()
                Loop_Cnt = Loop_Cnt + 1
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 17021) then
        local f34_local9 = arg1:GetDist(TARGET_ENE_0)
        local f34_local10 = arg1:GetRandam_Int(1, 100)
        local f34_local11 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if f34_local9 <= 3 or Loop_Cnt > 8 then
                if f34_local10 > 20 or 5 < Loop_Cnt then
                    if f34_local11 > 40 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3036, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    arg2:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif f34_local9 <= 6 and f34_local10 > 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3036, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                Loop_Cnt = Loop_Cnt + 1
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 17022) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
        local f34_local9 = arg1:GetDist(TARGET_ENE_0)
        local f34_local10 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if f34_local9 < 3 then
                if f34_local10 > 20 then
                    local f34_local11 = arg1:GetRandam_Int(1, 100)
                    if f34_local11 > 50 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    arg2:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif Loop_Cnt > 7 then
                local f34_local11 = arg1:GetRandam_Int(1, 100)
                if f34_local11 > 80 then
                    local f34_local12 = arg1:GetRandam_Int(1, 100)
                    if f34_local12 > 50 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    arg2:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            else
                arg2:ClearSubGoal()
                Loop_Cnt = Loop_Cnt + 1
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        else
            local f34_local11 = arg1:GetRandam_Int(1, 100)
            if f34_local11 > 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 17024) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
        local f34_local9 = arg1:GetDist(TARGET_ENE_0)
        local f34_local10 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if f34_local9 < 3 then
                if f34_local10 > 20 then
                    local f34_local11 = arg1:GetRandam_Int(1, 100)
                    if f34_local11 > 50 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    arg2:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif Loop_Cnt > 7 then
                local f34_local11 = arg1:GetRandam_Int(1, 100)
                if f34_local11 > 80 then
                    local f34_local12 = arg1:GetRandam_Int(1, 100)
                    if f34_local12 > 50 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    arg2:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            else
                arg2:ClearSubGoal()
                Loop_Cnt = Loop_Cnt + 1
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        else
            local f34_local11 = arg1:GetRandam_Int(1, 100)
            if f34_local11 > 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 17023) then
        local f34_local9 = arg1:GetDist(TARGET_ENE_0)
        local f34_local10 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if f34_local9 < 3 then
                if f34_local10 > 20 then
                    local f34_local11 = arg1:GetRandam_Int(1, 100)
                    if f34_local11 > 50 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    arg2:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif Loop_Cnt > 7 then
                local f34_local11 = arg1:GetRandam_Int(1, 100)
                if f34_local11 > 80 then
                    local f34_local12 = arg1:GetRandam_Int(1, 100)
                    if f34_local12 > 50 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    arg2:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            else
                arg2:ClearSubGoal()
                Loop_Cnt = Loop_Cnt + 1
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        else
            local f34_local11 = arg1:GetRandam_Int(1, 100)
            if f34_local11 > 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 17025) then
        local f34_local9 = arg1:GetDist(TARGET_ENE_0)
        local f34_local10 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if f34_local9 < 3 then
                if f34_local10 > 20 then
                    local f34_local11 = arg1:GetRandam_Int(1, 100)
                    if f34_local11 > 50 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    arg2:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif Loop_Cnt > 7 then
                local f34_local11 = arg1:GetRandam_Int(1, 100)
                if f34_local11 > 80 then
                    local f34_local12 = arg1:GetRandam_Int(1, 100)
                    if f34_local12 > 50 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    arg2:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            else
                arg2:ClearSubGoal()
                Loop_Cnt = Loop_Cnt + 1
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        else
            local f34_local11 = arg1:GetRandam_Int(1, 100)
            if f34_local11 > 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 17026) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17020)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17022)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17024)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17026)
        local f34_local9 = arg1:GetDist(TARGET_ENE_0)
        local f34_local10 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if arg1:GetNumber(5) >= 1 or f34_local10 > 60 then
                if f34_local10 > 90 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif f34_local10 > 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif f34_local10 > 65 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif f34_local10 > 50 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            else
                arg1:SetNumber(5, 1)
                if f34_local6 == true then
                    local f34_local11 = arg1:GetRandam_Int(1, 100)
                    if f34_local11 > 75 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif f34_local11 > 50 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif f34_local11 > 30 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif f34_local9 > 2 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3035, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3036, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    local f34_local11 = arg1:GetRandam_Int(1, 100)
                    if f34_local11 > 70 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif f34_local11 > 35 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif f34_local9 > 2 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3035, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3036, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 17035) then
        local f34_local9 = arg1:GetDist(TARGET_ENE_0)
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 20013, TARGET_ENE_0, 0, 0, 0, 0, 0)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_RottenDead_366100_AfterAttackAct, "RottenDead_366100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RottenDead_366100_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


