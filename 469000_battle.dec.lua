RegisterTableGoal(GOAL_GraftSpider_469000_Battle, "GraftSpider_469000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GraftSpider_469000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 0)
    arg1:SetTimer(0, 0)
    arg1:SetNumber(5, 0)
    arg1:SetNumber(6, 0)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
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
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16251)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16252)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 16290)
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 16296)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 16283)
    if f2_local8 == true and arg1:GetNumber(5) ~= 1 then
        f2_local0[46] = 100
    elseif f2_local7 == true then
        f2_local0[45] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16251) == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            f2_local0[24] = 100
        elseif f2_local3 >= 15 then
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 100
        elseif f2_local3 >= 10 then
            f2_local0[30] = 100
            f2_local0[31] = 0
            f2_local0[32] = 0
        elseif f2_local3 >= 4 then
            f2_local0[30] = 60
            f2_local0[31] = 40
            f2_local0[32] = 0
        else
            f2_local0[30] = 0
            f2_local0[31] = 100
            f2_local0[32] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16251) == false then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            if f2_local3 <= 3 then
                f2_local0[8] = 30
                f2_local0[11] = 10
                f2_local0[12] = 30
                f2_local0[13] = 25
                f2_local0[15] = 15
                f2_local0[25] = 20
            elseif f2_local3 <= 5 then
                f2_local0[3] = 10
                f2_local0[8] = 30
                f2_local0[11] = 10
                f2_local0[12] = 15
                f2_local0[13] = 20
                f2_local0[15] = 15
                f2_local0[24] = 20
                f2_local0[25] = 10
            else
                f2_local0[3] = 10
                f2_local0[4] = 20
                f2_local0[8] = 30
                f2_local0[24] = 70
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            if f2_local3 <= 3.5 then
                f2_local0[1] = 10
                f2_local0[5] = 10
                f2_local0[8] = 30
                f2_local0[9] = 30
                f2_local0[11] = 5
                f2_local0[13] = 20
                f2_local0[14] = 30
                f2_local0[17] = 10
                f2_local0[25] = 15
            elseif f2_local3 <= 7 then
                f2_local0[1] = 45
                f2_local0[2] = 20
                f2_local0[8] = 30
                f2_local0[11] = 5
                f2_local0[17] = 10
                f2_local0[40] = 20
            else
                f2_local0[2] = 10
                f2_local0[3] = 5
                f2_local0[4] = 30
                f2_local0[8] = 30
                f2_local0[14] = 15
                f2_local0[20] = 35
                f2_local0[40] = 5
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            if f2_local3 <= 3 then
                f2_local0[8] = 30
                f2_local0[9] = 30
                f2_local0[11] = 10
                f2_local0[12] = 15
                f2_local0[13] = 25
                f2_local0[16] = 30
                f2_local0[25] = 20
            elseif f2_local3 <= 6 then
                f2_local0[1] = 15
                f2_local0[8] = 30
                f2_local0[11] = 10
                f2_local0[16] = 25
                f2_local0[24] = 25
                f2_local0[40] = 25
            else
                f2_local0[3] = 20
                f2_local0[4] = 45
                f2_local0[8] = 30
                f2_local0[24] = 35
            end
        elseif f2_local3 <= 3 then
            f2_local0[6] = 20
            f2_local0[8] = 30
            f2_local0[9] = 30
            f2_local0[11] = 10
            f2_local0[12] = 15
            f2_local0[15] = 35
            f2_local0[25] = 20
        elseif f2_local3 <= 6 then
            f2_local0[6] = 25
            f2_local0[8] = 30
            f2_local0[11] = 10
            f2_local0[24] = 30
            f2_local0[40] = 15
            f2_local0[25] = 20
        else
            f2_local0[3] = 10
            f2_local0[4] = 45
            f2_local0[8] = 30
            f2_local0[24] = 35
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16291) == false and arg1:HasSpecialEffectId(TARGET_SELF, 16292) == false then
        f2_local0[8] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16265) == true then
        f2_local0[8] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16291) == true then
        if arg1:GetHpRate(TARGET_SELF) > 0.5 then
            f2_local0[8] = 0
        end
        if arg1:GetNumber(6) ~= 1 then
            if arg1:GetHpRate(TARGET_SELF) < 0.2 then
                f2_local0[8] = f2_local0[8] * 4
            elseif arg1:GetHpRate(TARGET_SELF) < 0.3 then
                f2_local0[8] = f2_local0[8] * 3
            elseif arg1:GetHpRate(TARGET_SELF) < 0.4 then
                f2_local0[8] = f2_local0[8] * 2
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16291) == true and arg1:GetNumber(6) ~= 1 then
        f2_local0[8] = f2_local0[8] * 999
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5 + arg1:GetRandam_Int(0, 5), f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3004, 10 + arg1:GetRandam_Int(0, 5), f2_local0[2], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3016, 10 + arg1:GetRandam_Int(0, 5), f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3006, 15 + arg1:GetRandam_Int(0, 5), f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3007, 10 + arg1:GetRandam_Int(0, 5), f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3008, 10 + arg1:GetRandam_Int(0, 5), f2_local0[5], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3010, 75 + arg1:GetRandam_Int(0, 15), f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3005, 15 + arg1:GetRandam_Int(0, 5), f2_local0[9], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3018, 10 + arg1:GetRandam_Int(0, 5), f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3019, 15 + arg1:GetRandam_Int(0, 5), f2_local0[12], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3021, 15 + arg1:GetRandam_Int(0, 5), f2_local0[14], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3023, 10 + arg1:GetRandam_Int(0, 5), f2_local0[17], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6001, 5 + arg1:GetRandam_Int(0, 5), f2_local0[25], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3202, 20 + arg1:GetRandam_Int(0, 5), f2_local0[30], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3203, 20 + arg1:GetRandam_Int(0, 5), f2_local0[31], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3009, 10 + arg1:GetRandam_Int(0, 5), f2_local0[6], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3017, 10 + arg1:GetRandam_Int(0, 5), f2_local0[6], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3009, 10 + arg1:GetRandam_Int(0, 5), f2_local0[16], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 30017, 10 + arg1:GetRandam_Int(0, 5), f2_local0[16], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3020, 8 + arg1:GetRandam_Int(0, 5), f2_local0[13], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3022, 8 + arg1:GetRandam_Int(0, 5), f2_local0[13], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3020, 8 + arg1:GetRandam_Int(0, 5), f2_local0[15], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3022, 8 + arg1:GetRandam_Int(0, 5), f2_local0[15], 1)
    if f2_local6 == true then
        f2_local0[3] = 0
    end
    if f2_local3 > 3 then
        f2_local0[9] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act18)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act26)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act35)
    f2_local1[39] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act39)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act40)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, GraftSpider_469000_Act46)
    local f2_local9 = REGIST_FUNC(arg1, arg2, HoundOfBorus_419000_Act02_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function GraftSpider_469000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 5.5
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 0
    local f3_local7 = 3
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = 3001
    local f3_local11 = TARGET_ENE_0
    local f3_local12 = 5
    local f3_local13 = 6
    local f3_local14 = 0
    local f3_local15 = 0
    local f3_local16 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local8, f3_local9, f3_local11, f3_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 5.5
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 3
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 5
    local f4_local9 = 3004
    local f4_local10 = TARGET_ENE_0
    local f4_local11 = 12
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local8, f4_local9, f4_local10, f4_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 20
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 0
    local f5_local7 = 5
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 5
    local f5_local9 = 3006
    local f5_local10 = TARGET_ENE_0
    local f5_local11 = 12
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local8, f5_local9, f5_local10, f5_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 8.5
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 0
    local f6_local7 = 5
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 5
    local f6_local9 = 3007
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 10
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 2
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 0
    local f7_local7 = 3
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 2
    local f7_local9 = 3008
    local f7_local10 = TARGET_ENE_0
    local f7_local11 = 10
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local8, f7_local9, f7_local10, f7_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 7
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 50
    local f8_local5 = 0
    local f8_local6 = 0
    local f8_local7 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local8 = 5
    local f8_local9 = 3017
    local f8_local10 = TARGET_ENE_0
    local f8_local11 = 10
    local f8_local12 = 0
    local f8_local13 = 0
    local f8_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local8, f8_local9, f8_local10, f8_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act07(arg0, arg1, arg2)
    local f9_local0 = 5
    local f9_local1 = 3014
    local f9_local2 = TARGET_ENE_0
    local f9_local3 = 10
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local0, f9_local1, f9_local2, f9_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act08(arg0, arg1, arg2)
    arg0:SetNumber(6, 1)
    local f10_local0 = 5
    local f10_local1 = 3010
    local f10_local2 = TARGET_ENE_0
    local f10_local3 = 10
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f10_local0, f10_local1, f10_local2, f10_local3, 0, 0, 0)
    arg0:SetTimer(0, 80)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act09(arg0, arg1, arg2)
    local f11_local0 = 2
    local f11_local1 = 3005
    local f11_local2 = TARGET_ENE_0
    local f11_local3 = 10
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f11_local0, f11_local1, f11_local2, f11_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 2
    local f12_local2 = 3015
    local f12_local3 = TARGET_ENE_0
    local f12_local4 = 10
    local f12_local5 = 0
    local f12_local6 = 0
    local f12_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local1, f12_local2, f12_local3, f12_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 5
    local f13_local2 = 0
    local f13_local3 = 999
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 0
    local f13_local7 = 3
    Approach_Act_Flex(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    local f13_local8 = 5
    local f13_local9 = 3018
    local f13_local10 = TARGET_ENE_0
    local f13_local11 = 10
    local f13_local12 = 0
    local f13_local13 = 0
    local f13_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local8, f13_local9, f13_local10, f13_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act12(arg0, arg1, arg2)
    local f14_local0 = 5
    local f14_local1 = 3019
    local f14_local2 = TARGET_ENE_0
    local f14_local3 = 10
    local f14_local4 = 0
    local f14_local5 = 0
    local f14_local6 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local0, f14_local1, f14_local2, f14_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act13(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 3.5
    local f15_local2 = 0
    local f15_local3 = 999
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 0
    local f15_local7 = 3
    Approach_Act_Flex(arg0, arg1, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7)
    local f15_local8 = 5
    local f15_local9 = 3022
    local f15_local10 = TARGET_ENE_0
    local f15_local11 = 10
    local f15_local12 = 0
    local f15_local13 = 0
    local f15_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local8, f15_local9, f15_local10, f15_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act14(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 3.5
    local f16_local2 = 0
    local f16_local3 = 999
    local f16_local4 = 100
    local f16_local5 = 0
    local f16_local6 = 0
    local f16_local7 = 3
    Approach_Act_Flex(arg0, arg1, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7)
    local f16_local8 = 5
    local f16_local9 = 3021
    local f16_local10 = TARGET_ENE_0
    local f16_local11 = 10
    local f16_local12 = 0
    local f16_local13 = 0
    local f16_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local8, f16_local9, f16_local10, f16_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act15(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 6.5
    local f17_local2 = 0
    local f17_local3 = 999
    local f17_local4 = 0
    local f17_local5 = 0
    local f17_local6 = 0
    local f17_local7 = 3
    Approach_Act_Flex(arg0, arg1, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6, f17_local7)
    local f17_local8 = 5
    local f17_local9 = 3020
    local f17_local10 = TARGET_ENE_0
    local f17_local11 = 10
    local f17_local12 = 0
    local f17_local13 = 0
    local f17_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f17_local8, f17_local9, f17_local10, f17_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act16(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 3.5
    local f18_local2 = 0
    local f18_local3 = 999
    local f18_local4 = 0
    local f18_local5 = 0
    local f18_local6 = 0
    local f18_local7 = 3
    Approach_Act_Flex(arg0, arg1, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6, f18_local7)
    local f18_local8 = 5
    local f18_local9 = 3009
    local f18_local10 = TARGET_ENE_0
    local f18_local11 = 10
    local f18_local12 = 0
    local f18_local13 = 0
    local f18_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local8, f18_local9, f18_local10, f18_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act17(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 3
    local f19_local2 = 0
    local f19_local3 = 999
    local f19_local4 = 0
    local f19_local5 = 0
    local f19_local6 = 0
    local f19_local7 = 3
    Approach_Act_Flex(arg0, arg1, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6, f19_local7)
    local f19_local8 = 5
    local f19_local9 = 3023
    local f19_local10 = TARGET_ENE_0
    local f19_local11 = 10
    local f19_local12 = 0
    local f19_local13 = 0
    local f19_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local8, f19_local9, f19_local10, f19_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act18(arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = 5.5
    local f20_local2 = 0
    local f20_local3 = 999
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 0
    local f20_local7 = 3
    Approach_Act_Flex(arg0, arg1, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7)
    local f20_local8 = 5
    local f20_local9 = 3000
    local f20_local10 = 3001
    local f20_local11 = 3002
    local f20_local12 = 3013
    local f20_local13 = 3003
    local f20_local14 = TARGET_ENE_0
    local f20_local15 = 6
    local f20_local16 = 6
    local f20_local17 = 0
    local f20_local18 = 0
    local f20_local19 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local8, f20_local9, f20_local14, f20_local15, 0, 180, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f20_local8, f20_local10, f20_local14, f20_local16, 0, 0, 180)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f20_local8, f20_local11, f20_local14, f20_local16, 0, 0, 180)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f20_local8, f20_local12, f20_local14, f20_local16, 0, 0, 180)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local8, f20_local9, f20_local14, f20_local15, 0, 180, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f20_local8, f20_local10, f20_local14, f20_local16, 0, 0, 180)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f20_local8, f20_local13, f20_local14, f20_local16, 0, 0, 180)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act20(arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Float(3, 5)
    local f21_local1 = TARGET_ENE_0
    local f21_local2 = 4
    local f21_local3 = TARGET_SELF
    local f21_local4 = true
    local f21_local5 = arg0:GetDist(TARGET_ENE_0)
    local f21_local6 = 0
    if arg0:IsFinishTimer(0) == true then
        f21_local6 = 9910
        arg0:SetTimer(0, 10)
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f21_local0, f21_local1, f21_local2, f21_local3, f21_local4, f21_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act21(arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = 3
    local f22_local2 = TARGET_ENE_0
    local f22_local3 = 1
    local f22_local4 = TARGET_SELF
    local f22_local5 = true
    local f22_local6 = arg0:GetRandam_Int(5, 20)
    local f22_local7 = 100
    local f22_local8 = arg0:GetRandam_Int(1, 100)
    local f22_local9 = -1
    if f22_local8 <= f22_local7 then
        f22_local9 = 9910
    end
    local f22_local10 = 50
    local f22_local11 = arg0:GetRandam_Int(0, 100)
    local f22_local12 = AI_DIR_TYPE_ToR
    if f22_local11 <= f22_local10 then
        f22_local12 = AI_DIR_TYPE_ToL
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, 9910, f22_local12, f22_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act22(arg0, arg1, arg2)
    local f23_local0 = 2
    local f23_local1 = TARGET_ENE_0
    local f23_local2 = 4
    local f23_local3 = TARGET_ENE_0
    local f23_local4 = true
    local f23_local5 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, 6001)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act23(arg0, arg1, arg2)
    local f24_local0 = arg0:GetRandam_Float(3, 4)
    local f24_local1 = TARGET_ENE_0
    local f24_local2 = arg0:GetRandam_Int(0, 1)
    local f24_local3 = arg0:GetRandam_Int(60, 90)
    local f24_local4 = 3
    local f24_local5 = TARGET_SELF
    local f24_local6 = true
    local f24_local7 = true
    local f24_local8 = arg0:GetDist(TARGET_ENE_0)
    local f24_local9 = 100
    local f24_local10 = arg0:GetRandam_Int(1, 100)
    local f24_local11 = -1
    if f24_local10 <= f24_local9 then
        f24_local11 = 9910
    end
    if arg0:IsFinishTimer(0) == true then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local0, f24_local1, f24_local2, f24_local3, f24_local6, f24_local7, f24_local11)
        arg0:SetTimer(0, 10)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act24(arg0, arg1, arg2)
    local f25_local0 = 2
    local f25_local1 = TARGET_ENE_0
    local f25_local2 = 45
    local f25_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f25_local4 = true
    local f25_local5 = 100
    local f25_local6 = arg0:GetRandam_Int(1, 100)
    local f25_local7 = -1
    if arg0:HasSpecialEffectId(TARGET_SELF, 16251) then
        f25_local7 = 9920
    else
        f25_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f25_local0, f25_local1, f25_local2, f25_local7, f25_local3, f25_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act25(arg0, arg1, arg2)
    local f26_local0 = 3
    local f26_local1 = -1
    local f26_local2 = 100
    local f26_local3 = -1
    local f26_local4 = -1
    local f26_local5 = TARGET_ENE_0
    local f26_local6 = 3
    local f26_local7 = 0.5
    local f26_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f26_local0, f26_local1, f26_local2, f26_local3, f26_local4, f26_local5, f26_local6, f26_local7, f26_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act26(arg0, arg1, arg2)
    local f27_local0 = 3
    local f27_local1 = -1
    local f27_local2 = -1
    local f27_local3 = 1
    local f27_local4 = 1
    local f27_local5 = TARGET_ENE_0
    local f27_local6 = 3
    local f27_local7 = 0
    local f27_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f27_local0, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5, f27_local6, f27_local7, f27_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 2), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9920)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 12, TARGET_SELF, true, 9920)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3202, TARGET_ENE_0, 10, 0, 0, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16251)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 2), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9920, true)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 8, TARGET_SELF, true, 9920)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3203, TARGET_ENE_0, 10, 0, 0, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16251)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act32(arg0, arg1, arg2)
    local f30_local0 = 5
    local f30_local1 = TARGET_ENE_0
    local f30_local2 = 10
    local f30_local3 = true
    local f30_local4 = arg0:GetDist(TARGET_ENE_0)
    local f30_local5 = 100
    local f30_local6 = arg0:GetRandam_Int(1, 100)
    local f30_local7 = -1
    if f30_local6 <= f30_local5 then
        f30_local7 = 9920
    end
    if f30_local2 <= f30_local4 then
        local f30_local8 = TARGET_SELF
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f30_local0, f30_local1, f30_local2, f30_local8, f30_local3, f30_local7)
    else
        local f30_local8 = TARGET_ENE_0
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f30_local0, f30_local1, f30_local2, f30_local8, f30_local3, f30_local7)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act39(arg0, arg1, arg2)
    if arg0:IsFinishTimer(0) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(3, 4.5), TARGET_ENE_0, 10, TARGET_ENE_0, true, 9910)
        arg0:SetTimer(0, 10)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act40(arg0, arg1, arg2)
    if arg0:IsFinishTimer(0) == true then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 4.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), 180, true, true, 9910)
        arg0:SetTimer(0, 10)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act45(arg0, arg1, arg2)
    local f33_local0 = arg0:GetRandam_Float(3, 5)
    local f33_local1 = TARGET_ENE_0
    local f33_local2 = 4
    local f33_local3 = TARGET_SELF
    local f33_local4 = true
    local f33_local5 = arg0:GetDist(TARGET_ENE_0)
    local f33_local6 = 0
    if arg0:IsFinishTimer(0) == true then
        f33_local6 = 9910
        arg0:SetTimer(0, 10)
    end
    if f33_local5 < f33_local2 then
        local f33_local7 = 2
        local f33_local8 = 3005
        local f33_local9 = TARGET_ENE_0
        local f33_local10 = 10
        local f33_local11 = 0
        local f33_local12 = 0
        local f33_local13 = 0
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f33_local7, f33_local8, f33_local9, f33_local10, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f33_local0, f33_local1, f33_local2, f33_local3, f33_local4, f33_local6)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_Act46(arg0, arg1, arg2)
    arg0:SetNumber(5, 1)
    local f34_local0 = arg0:GetDist(TARGET_ENE_0)
    local f34_local1 = 20
    local f34_local2 = 0
    local f34_local3 = 999
    local f34_local4 = 100
    local f34_local5 = 0
    local f34_local6 = 0
    local f34_local7 = 5
    local f34_local8 = 20027
    local f34_local9 = 12
    local f34_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f34_local11 = 2
    local f34_local12 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f34_local8, TARGET_ENE_0, f34_local9, f34_local11, f34_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_GraftSpider_469000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f38_local0 = arg1:GetDist(TARGET_ENE_0)
    local f38_local1 = arg1:GetRandam_Int(1, 100)
    local f38_local2 = arg1:GetRandam_Int(1, 100)
    local f38_local3 = arg1:GetRandam_Int(0, 5)
    local f38_local4 = arg1:HasSpecialEffectId(TARGET_SELF, 16290)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            local f38_local5 = arg1:GetDist(TARGET_ENE_0)
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and f38_local5 <= 7 then
                if 15 + f38_local3 <= arg1:GetAttackPassedTime(3018) then
                    GraftSpider_469000_Act11(arg1, arg2)
                else
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, 1, -1, -1, TARGET_ENE_0, 3, 0, false)
                end
            elseif f38_local5 >= 3 and f38_local1 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 6)
            elseif f38_local1 <= 60 and 8 + f38_local3 <= arg1:GetAttackPassedTime(3016) then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 6)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            local f38_local5 = arg1:GetDist(TARGET_ENE_0)
            arg2:ClearSubGoal()
            if f38_local5 >= 3.5 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 10)
                local f38_local6 = 0
                if arg1:IsTargetGuard(TARGET_ENE_0) then
                    f38_local6 = 20
                end
                if f38_local1 <= 70 + f38_local6 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3013, TARGET_ENE_0, 0)
                end
            else
                if f38_local5 < 4 then
                    local f38_local6 = arg1:GetAttackPassedTime(3014)
                    if 20 + f38_local3 <= f38_local6 then
                        f38_local6 = 0
                        if arg1:GetHpRate(TARGET_SELF) <= 0.6 then
                            if arg1:GetNumber(1) == 0 then
                                f38_local6 = 90
                                arg1:SetNumber(1, 1)
                            else
                                f38_local6 = 30
                            end
                        end
                        if f38_local1 <= 10 + f38_local6 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 0)
                        end
                    elseif f38_local5 <= 5.5 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3003, TARGET_ENE_0, 5)
                    end
                end
                elseif f38_local5 <= 5.5 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3003, TARGET_ENE_0, 5)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            local f38_local5 = arg1:GetDist(TARGET_ENE_0)
            arg2:ClearSubGoal()
            if f38_local5 <= 3.5 then
                local f38_local6 = arg1:GetAttackPassedTime(3014)
                if 30 + f38_local3 <= f38_local6 then
                    f38_local6 = 0
                    if arg1:GetHpRate(TARGET_SELF) <= 0.6 then
                        f38_local6 = 30
                    end
                    if f38_local1 <= 10 + f38_local6 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 0)
                    end
                elseif f38_local5 <= 4 then
                    if f38_local1 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, 1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    elseif f38_local1 <= 45 then
                        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, 5, TARGET_ENE_0, true, 9910)
                    elseif 15 + f38_local3 <= arg1:GetAttackPassedTime(3022) and f38_local1 <= 60 then
                        GraftSpider_469000_Act13(arg1, arg2)
                    end
                elseif f38_local5 <= 8 then
                    if 10 + f38_local3 <= arg1:GetAttackPassedTime(3009) and 10 + f38_local3 <= arg1:GetAttackPassedTime(3017) and f38_local1 <= 40 then
                        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FL, 90) then
                            GraftSpider_469000_Act06(arg1, arg2)
                        else
                            GraftSpider_469000_Act16(arg1, arg2)
                        end
                    end
                elseif f38_local5 > 8 and 15 + f38_local3 <= arg1:GetAttackPassedTime(3007) and f38_local1 <= 40 then
                    GraftSpider_469000_Act04(arg1, arg2)
                end
            elseif f38_local5 <= 4 then
                if f38_local1 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, 1, -1, -1, TARGET_ENE_0, 3, 0, true)
                elseif f38_local1 <= 45 then
                    arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, 5, TARGET_ENE_0, true, 9910)
                elseif 15 + f38_local3 <= arg1:GetAttackPassedTime(3022) and f38_local1 <= 60 then
                    GraftSpider_469000_Act13(arg1, arg2)
                end
            elseif f38_local5 <= 8 then
                if 10 + f38_local3 <= arg1:GetAttackPassedTime(3009) and 10 + f38_local3 <= arg1:GetAttackPassedTime(3017) and f38_local1 <= 40 then
                    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FL, 90) then
                        GraftSpider_469000_Act06(arg1, arg2)
                    else
                        GraftSpider_469000_Act16(arg1, arg2)
                    end
                end
            elseif f38_local5 > 8 and 15 + f38_local3 <= arg1:GetAttackPassedTime(3007) and f38_local1 <= 40 then
                GraftSpider_469000_Act04(arg1, arg2)
            end
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        local f38_local5 = arg1:GetDist(TARGET_ENE_0)
        local f38_local6 = arg1:GetRandam_Int(1, 100)
        local f38_local7 = arg1:GetRandam_Int(1, 100)
        if arg1:HasSpecialEffectId(TARGET_SELF, 16251) == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3202, TARGET_ENE_0, 15, 0, 0, 0)
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16251) == false then
            arg2:ClearSubGoal()
            if f38_local5 <= 5.5 then
                if f38_local6 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3000, TARGET_ENE_0, 6, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 0)
                elseif f38_local6 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3020, TARGET_ENE_0, 6, 0, 0, 0)
                end
            elseif f38_local5 <= 8.5 and 10 + f38_local3 <= arg1:GetAttackPassedTime(3007) then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3007, TARGET_ENE_0, 10, 0, 0, 0)
            elseif f38_local5 <= 12 and 20 + f38_local3 <= arg1:GetAttackPassedTime(3006) and f38_local4 == false then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3006, TARGET_ENE_0, 10, 0, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, false, 9910)
            end
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 16251) == false and arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
        arg2:ClearSubGoal()
        if f38_local1 < 30 and arg1:GetAttackPassedTime(6001) >= 5 then
            if f38_local0 <= 2.5 then
                GraftSpider_469000_Act25(arg1, arg2)
            elseif f38_local0 <= 5.5 then
                GraftSpider_469000_Act02(arg1, arg2)
            end
        elseif f38_local1 < 50 then
            if f38_local0 >= 4 then
                GraftSpider_469000_Act40(arg1, arg2)
            elseif arg1:GetAttackPassedTime(2031) >= 20 then
                GraftSpider_469000_Act39(arg1, arg2)
            elseif arg1:GetAttackPassedTime(3019) >= 15 and f38_local0 < 3 then
                GraftSpider_469000_Act12(arg1, arg2)
            end
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) and arg1:HasSpecialEffectId(TARGET_SELF, 16251) == false then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and f38_local0 <= 4 and 25 + f38_local3 <= arg1:GetAttackPassedTime(3015) then
            arg2:ClearSubGoal()
            local f38_local5 = 0
            if arg1:GetHpRate(TARGET_SELF) <= 0.6 then
                f38_local5 = 50
            end
            if f38_local1 <= 10 + f38_local5 then
                arg2:ClearSubGoal()
                GraftSpider_469000_Act10(arg1, arg2)
                return true
            end
        elseif f38_local1 < 50 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and f38_local0 <= 3 and 10 + f38_local3 <= arg1:GetAttackPassedTime(3023) then
            arg2:ClearSubGoal()
            GraftSpider_469000_Act17(arg1, arg2)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local f38_local5 = arg1:GetDist(TARGET_ENE_0)
        if arg1:HasSpecialEffectId(TARGET_SELF, 16251) == false then
            if arg1:GetHpRate(TARGET_SELF) <= 0.6 and arg1:GetNumber(1) == 0 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and f38_local5 <= 5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3014, TARGET_ENE_0, 5, 0, 0, 0)
                arg1:SetNumber(1, 1)
                return true
            elseif f38_local1 < 15 and f38_local5 <= 5 and 15 + f38_local3 <= arg1:GetAttackPassedTime(3018) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3018, TARGET_ENE_0, 7, 0, 0, 0)
                return true
            elseif f38_local1 < 50 and f38_local5 <= 3 and 15 + f38_local3 <= arg1:GetAttackPassedTime(3005) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3005, TARGET_ENE_0, 3, 0, 0, 0)
                return true
            elseif f38_local1 < 65 and 8 + f38_local3 <= arg1:GetAttackPassedTime(3019) and f38_local5 <= 2 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3019, TARGET_ENE_0, 3, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16251) == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3203, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_GraftSpider_469000_AfterAttackAct, "GraftSpider_469000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GraftSpider_469000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


