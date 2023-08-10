RegisterTableGoal(GOAL_GladiatorDoubleHammer340010_Battle, "GladiatorDoubleHammer340010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GladiatorDoubleHammer340010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(1, 3000)
    arg1:EnableUnfavorableAttackCheck(1, 3001)
    arg1:EnableUnfavorableAttackCheck(1, 3002)
    arg1:EnableUnfavorableAttackCheck(1, 3003)
    arg1:EnableUnfavorableAttackCheck(1, 3004)
    arg1:EnableUnfavorableAttackCheck(1, 3005)
    arg1:EnableUnfavorableAttackCheck(1, 3006)
    arg1:EnableUnfavorableAttackCheck(1, 3007)
    arg1:EnableUnfavorableAttackCheck(1, 3008)
    arg1:EnableUnfavorableAttackCheck(1, 3009)
    arg1:EnableUnfavorableAttackCheck(1, 3010)
    arg1:EnableUnfavorableAttackCheck(1, 3011)
    arg1:EnableUnfavorableAttackCheck(1, 3012)
    arg1:EnableUnfavorableAttackCheck(1, 3013)
    arg1:EnableUnfavorableAttackCheck(1, 3014)
    arg1:EnableUnfavorableAttackCheck(1, 3015)
    arg1:EnableUnfavorableAttackCheck(1, 3030)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        f2_local0[49] = 100
    else
        if f2_local3 < 1.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 50, 2.5) then
                f2_local0[20] = 100
                f2_local0[43] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 50, 2.5) then
                f2_local0[21] = 100
                f2_local0[43] = 100
            elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 11605) == false and arg1:HasSpecialEffectId(TARGET_ENE_0, 11607) == false then
                f2_local0[1] = 20
                f2_local0[2] = 10
                f2_local0[3] = 45
                f2_local0[5] = 15
                f2_local0[20] = 5
                f2_local0[21] = 5
            else
                f2_local0[1] = 25
                f2_local0[2] = 15
                f2_local0[3] = 50
                f2_local0[20] = 5
                f2_local0[21] = 5
            end
        elseif f2_local3 < 3 then
            f2_local0[1] = 15
            f2_local0[2] = 25
            f2_local0[3] = 35
            f2_local0[6] = 25
        elseif f2_local3 < 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5022) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false then
                f2_local0[2] = 40
                f2_local0[6] = 30
                f2_local0[40] = 10
                f2_local0[42] = 20
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[10] = 100
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 11610) then
                    f2_local0[9] = 100
                end
            else
                f2_local0[2] = 20
                f2_local0[6] = 50
                f2_local0[40] = 10
                f2_local0[42] = 20
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[10] = 100
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 11610) then
                    f2_local0[9] = 100
                end
            end
        elseif f2_local3 < 8 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5022) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false then
                f2_local0[4] = 50
                f2_local0[6] = 30
                f2_local0[42] = 20
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[10] = 100
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 11610) then
                    f2_local0[9] = 100
                end
            else
                f2_local0[6] = 30
                f2_local0[42] = 70
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[10] = 100
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 11610) then
                    f2_local0[9] = 100
                end
            end
        elseif f2_local3 < 15 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5022) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false then
                f2_local0[4] = 20
                f2_local0[40] = 10
                f2_local0[42] = 70
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[10] = 100
                end
            else
                f2_local0[40] = 10
                f2_local0[42] = 70
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[10] = 100
                end
            end
        else
            f2_local0[40] = 5
            f2_local0[42] = 70
            f2_local0[48] = 15
        end
        if arg1:HasSpecialEffectId(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) then
            f2_local0[5] = 0
        end
        if arg1:HasSpecialEffectId(TARGET_ENE_0, SP_EFFECT_TYPE_ILLNESS) then
            f2_local0[5] = 0
            f2_local0[9] = 0
        end
    end
    f2_local0[4] = SetCoolTime(arg1, arg2, 3011, 20, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3014, 20, f2_local0[5], 5)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3030, 20, f2_local0[5], 5)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3025, 15, f2_local0[9], 0)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3009, 5, f2_local0[20], 0)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3010, 5, f2_local0[21], 0)
    f2_local0[48] = SetCoolTime(arg1, arg2, 3008, 20 + arg1:GetRandam_Int(0, 5), f2_local0[48], 0)
    f2_local0[48] = SetCoolTime(arg1, arg2, 3007, 20 + arg1:GetRandam_Int(0, 5), f2_local0[48], 0)
    f2_local0[48] = SetCoolTime(arg1, arg2, 3013, 10 + arg1:GetRandam_Int(0, 5), f2_local0[48], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act06)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act18)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act23)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act43)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act48)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_Act49)
    local f2_local7 = REGIST_FUNC(arg1, arg2, GladiatorDoubleHammer340010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function GladiatorDoubleHammer340010_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 2.5
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 1
    local f3_local7 = 1
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local8, TARGET_ENE_0, f3_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 4.5
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 1
    local f4_local7 = 1
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 3001
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 0
    local f4_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local8, TARGET_ENE_0, f4_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 3.5
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 1
    local f5_local7 = 1
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 3002
    local f5_local9 = 3003
    local f5_local10 = 1.5
    local f5_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local12 = 0
    local f5_local13 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local8, TARGET_ENE_0, f5_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 3011
    local f6_local2 = 3012
    local f6_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local4 = 0
    local f6_local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local1, TARGET_ENE_0, f6_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act05(arg0, arg1, arg2)
    local f7_local0 = 3014
    local f7_local1 = 3030
    local f7_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 0
    local f7_local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11610) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local1, TARGET_ENE_0, 0, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local0, TARGET_ENE_0, 0, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 6
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 1
    local f8_local7 = 1
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local8 = 3008
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 0
    local f8_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local8, TARGET_ENE_0, f8_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act07(arg0, arg1, arg2)
    local f9_local0 = 3000
    local f9_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 0
    local f9_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2.5, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, f9_local1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, f9_local1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, f9_local1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act08(arg0, arg1, arg2)
    local f10_local0 = 3000
    local f10_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 0
    local f10_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2.5, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, f10_local1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, f10_local1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, f10_local1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act09(arg0, arg1, arg2)
    local f11_local0 = 5
    local f11_local1 = 3025
    local f11_local2 = TARGET_ENE_0
    local f11_local3 = 10
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local0, f11_local1, f11_local2, f11_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act10(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11611) == false then
        local f12_local0 = 5
        local f12_local1 = 3019
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

function GladiatorDoubleHammer340010_Act11(arg0, arg1, arg2)
    local f13_local0 = 3000
    local f13_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 0
    local f13_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2.5, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, f13_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act12(arg0, arg1, arg2)
    local f14_local0 = 3000
    local f14_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 0
    local f14_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2.5, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, f14_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act13(arg0, arg1, arg2)
    local f15_local0 = 3000
    local f15_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 0
    local f15_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2.5, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, f15_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act14(arg0, arg1, arg2)
    local f16_local0 = 3000
    local f16_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, f16_local1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, f16_local1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, f16_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act15(arg0, arg1, arg2)
    local f17_local0 = 3000
    local f17_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 0
    local f17_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3002, TARGET_ENE_0, f17_local1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, f17_local1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, f17_local1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, f17_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act16(arg0, arg1, arg2)
    local f18_local0 = 3000
    local f18_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = 0
    local f18_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3011, TARGET_ENE_0, f18_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act17(arg0, arg1, arg2)
    local f19_local0 = 3000
    local f19_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local2 = 0
    local f19_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2.5, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, f19_local1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, f19_local1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, f19_local1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act18(arg0, arg1, arg2)
    local f20_local0 = 3000
    local f20_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local2 = 0
    local f20_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2.5, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, f20_local1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, f20_local1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, f20_local1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act20(arg0, arg1, arg2)
    local f21_local0 = 3000
    local f21_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local2 = 0
    local f21_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act21(arg0, arg1, arg2)
    local f22_local0 = 3000
    local f22_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local2 = 0
    local f22_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act22(arg0, arg1, arg2)
    local f23_local0 = 3000
    local f23_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local2 = 0
    local f23_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_ENE_0, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_R, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act23(arg0, arg1, arg2)
    local f24_local0 = 3000
    local f24_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local2 = 0
    local f24_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_ENE_0, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_L, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act41(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2.5, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, LeaveDist, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_Act49(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorDoubleHammer340010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_GladiatorDoubleHammer340010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f34_local0 = arg1:GetRandam_Int(1, 100)
    local f34_local1 = arg1:GetRandam_Int(1, 100)
    local f34_local2 = arg1:GetDist(TARGET_ENE_0)
    local f34_local3 = arg1:GetHpRate(TARGET_SELF)
    local f34_local4 = arg1:GetNumber(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:HasSpecialEffectId(TARGET_SELF, 4320) then
        local f34_local5 = arg1:GetRandam_Int(1, 100)
        local f34_local6 = arg1:GetDist(TARGET_ENE_0)
        if f34_local5 <= 60 and f34_local6 <= 5 and arg1:IsFinishTimer(0) then
            arg2:ClearSubGoal()
            local f34_local7 = 5
            local f34_local8 = TARGET_ENE_0
            local f34_local9 = 10
            local f34_local10 = TARGET_ENE_0
            local f34_local11 = true
            local f34_local12 = arg1:GetDist(TARGET_ENE_0)
            local f34_local13 = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 13055) then
                f34_local13 = 0
            end
            local f34_local14 = arg1:GetRandam_Int(1, 100)
            local f34_local15 = -1
            if f34_local14 <= f34_local13 then
                f34_local15 = 9910
            end
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f34_local7, f34_local8, f34_local9, f34_local10, f34_local11, f34_local15, resultTypeIfGuardSuccess, isLifeSuccessGuard)
            arg1:SetTimer(0, 6)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
        if f34_local2 < 1 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5029) and arg1:IsHitAttack() == true and f34_local2 < 1 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 60, 4) and f34_local1 <= 30 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 10, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_GuardBreak) and arg1:HasSpecialEffectId(TARGET_SELF, 5035) and f34_local2 < 1 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 60, 4) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 10, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and (not not arg1:HasSpecialEffectId(TARGET_SELF, 5027) or arg1:HasSpecialEffectId(TARGET_SELF, 5028)) then
        if arg1:GetNumber(0) < 2 then
            if f34_local2 < 2.5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 60, 4) and arg1:GetNumber(0) < 1 and f34_local1 <= 40 then
                arg2:ClearSubGoal()
                arg1:SetNumber(0, f34_local4 + 1)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif f34_local2 < 2.5 then
                if f34_local0 <= 20 then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(0, f34_local4 + 2)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                elseif f34_local0 <= 30 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 60, 4) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                elseif f34_local0 <= 50 and arg1:GetAttackPassedTime(3007) >= 15 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                end
            elseif f34_local2 < 4.5 then
                arg2:ClearSubGoal()
                arg1:SetNumber(0, f34_local4 + 2)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif f34_local2 < 3 then
            if f34_local0 <= 50 and arg1:GetAttackPassedTime(3007) >= 15 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif f34_local2 < 5 then
            if f34_local0 <= 50 and arg1:GetAttackPassedTime(3007) >= 15 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5030) and f34_local2 < 2.5 and arg1:GetAttackPassedTime(3000) >= 5 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
        if f34_local2 < 2.5 and arg1:GetAttackPassedTime(3002) >= 5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f34_local2 < 6 and arg1:GetAttackPassedTime(3007) >= 10 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5032) and f34_local2 < 2.5 and arg1:GetAttackPassedTime(3010) >= 5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 60, 6) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5033) and f34_local2 < 3 and arg1:GetAttackPassedTime(3003) >= 10 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 60, 6) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 10, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5034) and f34_local2 < 3 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 60, 6) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 10, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_ENE_0, 90) and arg1:HasSpecialEffectId(TARGET_SELF, 5038) == false and f34_local3 < 0.7 and arg1:GetAttackPassedTime(3011) >= 15 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5021) == true then
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 11611) == false then
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3019, TARGET_ENE_0, 10, 0, 0, 0, 0)
            end
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 10, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 10, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_TargetIsGuard) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) and f34_local3 < 0.7 and arg1:GetAttackPassedTime(3011) >= 15 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5021) == true then
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 11611) == false then
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3019, TARGET_ENE_0, 10, 0, 0, 0, 0)
            end
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 10, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 10, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        if f34_local2 < 2.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 50, 6) and arg1:GetAttackPassedTime(3009) >= 5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 50, 6) and arg1:GetAttackPassedTime(3009) >= 5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 0, 0, 0)
                return true
            elseif arg1:GetAttackPassedTime(3014) >= 10 and arg1:GetAttackPassedTime(3030) >= 10 and arg1:HasSpecialEffectId(TARGET_ENE_0, 11605) == false and arg1:HasSpecialEffectId(TARGET_ENE_0, 11607) == false then
                if arg1:HasSpecialEffectId(TARGET_SELF, 11610) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 0, 0, 0)
                    return true
                end
            end
        elseif f34_local2 > 4.5 and f34_local2 < 6 then
            if arg1:GetAttackPassedTime(3007) >= 20 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 0, 0, 0)
                return true
            elseif arg1:GetAttackPassedTime(3008) >= 20 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 10, 0, 0)
                return true
            elseif arg1:GetAttackPassedTime(3014) >= 5 and arg1:GetAttackPassedTime(3030) >= 5 and arg1:HasSpecialEffectId(TARGET_ENE_0, 11605) == false and arg1:HasSpecialEffectId(TARGET_ENE_0, 11607) == false then
                if arg1:HasSpecialEffectId(TARGET_SELF, 11610) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 0, 0, 0)
                    return true
                end
            end
        elseif arg1:GetRemainingAttackCoolTime(3011) == 0 and arg1:HasSpecialEffectId(TARGET_SELF, 5022) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 10, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and f34_local2 > 4 then
        if f34_local2 < 6 and arg1:GetRemainingAttackCoolTime(3013) == 0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 0, 0, 0)
            return true
        elseif f34_local2 < 9 and arg1:GetRemainingAttackCoolTime(3007) == 0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 0, 0, 0)
            return true
        elseif f34_local2 > 10 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2.5, TARGET_SELF, false, -1)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_GladiatorDoubleHammer340010_AfterAttackAct, "GladiatorDoubleHammer340010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GladiatorDoubleHammer340010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f35_local0 = arg1:GetDist(TARGET_ENE_0)
    local f35_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f35_local0 >= 5 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif f35_local0 >= 2 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 5)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 15)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


