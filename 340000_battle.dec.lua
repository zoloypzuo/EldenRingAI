RegisterTableGoal(GOAL_GladiatorLargeAxe340000_Battle, "GladiatorLargeAxe340000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GladiatorLargeAxe340000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3030)
    
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
                f2_local0[1] = 30
                f2_local0[2] = 5
                f2_local0[7] = 15
                f2_local0[20] = 25
                f2_local0[21] = 25
            else
                f2_local0[1] = 45
                f2_local0[2] = 5
                f2_local0[20] = 25
                f2_local0[21] = 25
            end
        elseif f2_local3 < 3 then
            f2_local0[1] = 5
            f2_local0[2] = 35
            f2_local0[3] = 25
            f2_local0[9] = 30
            f2_local0[22] = 50
        elseif f2_local3 < 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5022) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false then
                if arg1:GetHpRate(TARGET_SELF) <= 0.9 then
                    f2_local0[3] = 15
                    f2_local0[5] = 25
                    f2_local0[6] = 10
                    f2_local0[8] = 15
                    f2_local0[9] = 30
                    f2_local0[42] = 5
                    if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                        f2_local0[10] = 100
                    end
                else
                    f2_local0[3] = 15
                    f2_local0[5] = 25
                    f2_local0[6] = 10
                    f2_local0[8] = 15
                    f2_local0[42] = 5
                    if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                        f2_local0[10] = 100
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 11610) then
                        f2_local0[11] = 100
                    end
                end
            elseif arg1:GetHpRate(TARGET_SELF) <= 0.9 then
                f2_local0[3] = 15
                f2_local0[6] = 15
                f2_local0[8] = 20
                f2_local0[9] = 30
                f2_local0[40] = 5
                f2_local0[42] = 15
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[10] = 100
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 11610) then
                    f2_local0[11] = 100
                end
            else
                f2_local0[3] = 15
                f2_local0[6] = 15
                f2_local0[8] = 20
                f2_local0[40] = 5
                f2_local0[42] = 15
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[10] = 100
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 11610) then
                    f2_local0[11] = 100
                end
            end
        elseif f2_local3 < 8 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5022) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false then
                if arg1:GetHpRate(TARGET_SELF) <= 0.9 then
                    f2_local0[5] = 30
                    f2_local0[8] = 25
                    f2_local0[9] = 30
                    f2_local0[40] = 5
                    f2_local0[42] = 10
                    if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                        f2_local0[10] = 100
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 11610) then
                        f2_local0[11] = 100
                    end
                else
                    f2_local0[5] = 30
                    f2_local0[8] = 25
                    f2_local0[40] = 5
                    f2_local0[42] = 10
                    if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                        f2_local0[10] = 100
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 11610) then
                        f2_local0[11] = 100
                    end
                end
            elseif arg1:GetHpRate(TARGET_SELF) <= 0.9 then
                f2_local0[8] = 20
                f2_local0[9] = 30
                f2_local0[40] = 10
                f2_local0[42] = 40
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[10] = 100
                end
            else
                f2_local0[8] = 20
                f2_local0[40] = 10
                f2_local0[42] = 40
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[10] = 100
                end
            end
        elseif f2_local3 < 15 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5022) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false then
                if arg1:GetHpRate(TARGET_SELF) <= 0.9 then
                    f2_local0[5] = 20
                    f2_local0[8] = 20
                    f2_local0[9] = 30
                    f2_local0[40] = 5
                    f2_local0[42] = 25
                    if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                        f2_local0[10] = 100
                    end
                else
                    f2_local0[5] = 20
                    f2_local0[8] = 20
                    f2_local0[40] = 5
                    f2_local0[42] = 25
                    if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                        f2_local0[10] = 100
                    end
                end
            elseif arg1:GetHpRate(TARGET_SELF) <= 0.9 then
                f2_local0[8] = 20
                f2_local0[9] = 30
                f2_local0[40] = 5
                f2_local0[42] = 45
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[10] = 100
                end
            else
                f2_local0[8] = 20
                f2_local0[40] = 5
                f2_local0[42] = 45
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[10] = 100
                end
            end
        else
            f2_local0[40] = 5
            f2_local0[41] = 10
            f2_local0[42] = 70
            f2_local0[48] = 15
        end
        if arg1:HasSpecialEffectId(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) then
            f2_local0[7] = 0
        end
        if arg1:HasSpecialEffectId(TARGET_ENE_0, SP_EFFECT_TYPE_ILLNESS) then
            f2_local0[7] = 0
            f2_local0[11] = 0
        end
    end
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 25 + arg1:GetRandam_Int(0, 5), f2_local0[4], 5)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 20, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3007, 30 + arg1:GetRandam_Int(0, 5), f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3014, 20, f2_local0[7], 5)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3030, 20, f2_local0[7], 5)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3024, 20, f2_local0[9], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3025, 10, f2_local0[11], 0)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3010, 20, f2_local0[22], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act11)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act22)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act43)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act48)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_Act49)
    local f2_local7 = REGIST_FUNC(arg1, arg2, GladiatorLargeAxe340000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function GladiatorLargeAxe340000_Act01(arg0, arg1, arg2)
    local f3_local0 = 2
    local f3_local1 = 0
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 1
    local f3_local6 = 1
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3002
    local f3_local9 = 3003
    local f3_local10 = 3004
    local f3_local11 = 2
    local f3_local12 = 3
    local f3_local13 = 3.5
    local f3_local14 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local15 = 0
    local f3_local16 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, f3_local12, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_Act02(arg0, arg1, arg2)
    local f4_local0 = 3
    local f4_local1 = 0
    local f4_local2 = 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 1
    local f4_local6 = 1
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 3002
    local f4_local9 = 3003
    local f4_local10 = 3004
    local f4_local11 = 2
    local f4_local12 = 3
    local f4_local13 = 3.5
    local f4_local14 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local15 = 0
    local f4_local16 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f4_local8, TARGET_ENE_0, f4_local12, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_Act03(arg0, arg1, arg2)
    local f5_local0 = 4
    local f5_local1 = 0
    local f5_local2 = 999
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 1
    local f5_local6 = 1
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3011
    local f5_local8 = 3003
    local f5_local9 = 3004
    local f5_local10 = 3
    local f5_local11 = 3.5
    local f5_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local13 = 0
    local f5_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_Act04(arg0, arg1, arg2)
    local f6_local0 = 10
    local f6_local1 = 0
    local f6_local2 = 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 1
    local f6_local6 = 1
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3005
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_Act05(arg0, arg1, arg2)
    local f7_local0 = 8
    local f7_local1 = 0
    local f7_local2 = 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 1
    local f7_local6 = 1
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3006
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_Act06(arg0, arg1, arg2)
    local f8_local0 = 3000
    local f8_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 0
    local f8_local3 = 0
    local f8_local4 = 3007
    local f8_local5 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local6 = 0
    local f8_local7 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local4, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_Act07(arg0, arg1, arg2)
    local f9_local0 = 3014
    local f9_local1 = 3030
    local f9_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 0
    local f9_local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    if arg0:HasSpecialEffectId(TARGET_SELF, 11610) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local1, TARGET_ENE_0, 0, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local0, TARGET_ENE_0, 0, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_Act08(arg0, arg1, arg2)
    local f10_local0 = 6
    local f10_local1 = 999
    local f10_local2 = 0
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 0.5
    local f10_local6 = 0.5
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3016
    local f10_local8 = 3002
    local f10_local9 = 3003
    local f10_local10 = 3004
    local f10_local11 = 2
    local f10_local12 = 3
    local f10_local13 = 3.5
    local f10_local14 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local15 = 0
    local f10_local16 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f10_local8, TARGET_ENE_0, f10_local12, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_Act09(arg0, arg1, arg2)
    local f11_local0 = 3022
    local f11_local1 = 2
    local f11_local2 = 3
    local f11_local3 = 3.5
    local f11_local4 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local5 = 0
    local f11_local6 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_Act10(arg0, arg1, arg2)
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

function GladiatorLargeAxe340000_Act11(arg0, arg1, arg2)
    local f13_local0 = 5
    local f13_local1 = 3025
    local f13_local2 = TARGET_ENE_0
    local f13_local3 = 10
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local0, f13_local1, f13_local2, f13_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_Act20(arg0, arg1, arg2)
    local f14_local0 = 3008
    local f14_local1 = 3002
    local f14_local2 = 3003
    local f14_local3 = 3004
    local f14_local4 = 2.5
    local f14_local5 = 3
    local f14_local6 = 3.5
    local f14_local7 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local8 = 0
    local f14_local9 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f14_local0, TARGET_ENE_0, f14_local4, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f14_local1, TARGET_ENE_0, f14_local5, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_Act21(arg0, arg1, arg2)
    local f15_local0 = 3009
    local f15_local1 = 3003
    local f15_local2 = 3004
    local f15_local3 = 3
    local f15_local4 = 3.5
    local f15_local5 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local6 = 0
    local f15_local7 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_Act22(arg0, arg1, arg2)
    local f16_local0 = 3010
    local f16_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local0, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_Act41(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2.5, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, LeaveDist, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_Act49(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GladiatorLargeAxe340000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_GladiatorLargeAxe340000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f25_local0 = arg1:GetRandam_Int(1, 100)
    local f25_local1 = arg1:GetDist(TARGET_ENE_0)
    local f25_local2 = arg1:GetHpRate(TARGET_SELF)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:HasSpecialEffectId(TARGET_SELF, 4320) then
        local f25_local3 = arg1:GetRandam_Int(1, 100)
        local f25_local4 = arg1:GetDist(TARGET_ENE_0)
        if f25_local3 <= 60 and f25_local4 <= 5 and arg1:IsFinishTimer(0) then
            arg2:ClearSubGoal()
            local f25_local5 = 5
            local f25_local6 = TARGET_ENE_0
            local f25_local7 = 10
            local f25_local8 = TARGET_ENE_0
            local f25_local9 = true
            local f25_local10 = arg1:GetDist(TARGET_ENE_0)
            local f25_local11 = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 13055) then
                f25_local11 = 0
            end
            local f25_local12 = arg1:GetRandam_Int(1, 100)
            local f25_local13 = -1
            if f25_local12 <= f25_local11 then
                f25_local13 = 9910
            end
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f25_local5, f25_local6, f25_local7, f25_local8, f25_local9, f25_local13, resultTypeIfGuardSuccess, isLifeSuccessGuard)
            arg1:SetTimer(0, 6)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_ENE_0, 90) and f25_local2 < 0.7 and arg1:GetAttackPassedTime(3006) >= 15 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5021) == true then
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 11611) == false then
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3019, TARGET_ENE_0, 10, 0, 0, 0, 0)
            end
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 10, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 10, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_TargetIsGuard) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) and f25_local2 < 0.7 and arg1:GetAttackPassedTime(3006) >= 15 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5021) == true then
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 11611) == false then
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3019, TARGET_ENE_0, 10, 0, 0, 0, 0)
            end
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 10, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 10, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5026) and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false and f25_local1 > 4.5 and arg1:GetRemainingAttackCoolTime(3006) == 0 and arg1:HasSpecialEffectId(TARGET_SELF, 5022) == true then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 10, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
        if f25_local1 < 3.5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 180, 6) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 4, 0, 0, 0, 0)
            return true
        elseif f25_local1 > 3 and f25_local1 < 5 and arg1:GetAttackPassedTime(3017) >= 15 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 4, 0, 0, 0, 0)
            return true
        elseif f25_local0 <= 50 and arg1:GetAttackPassedTime(3017) >= 10 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 4, 0, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 4, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5028) and f25_local1 < 4.5 then
        if f25_local0 <= 50 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 4, 0, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 4, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
        if f25_local1 < 3.5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 4, 0, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 4, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
        if f25_local1 < 3.5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 4, 0, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 4, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5031) and f25_local1 < 3.5 and arg1:GetAttackPassedTime(3017) >= 15 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 4, 0, 0, 0, 0)
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        if f25_local1 < 2.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 120, 50, 6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 120, 50, 6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 0, 0, 0)
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
        elseif f25_local1 > 4.5 and f25_local1 < 6 then
            if arg1:GetAttackPassedTime(3007) >= 15 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 0, 0, 0)
                return true
            elseif arg1:GetAttackPassedTime(3005) >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 10, 0, 0)
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
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        if f25_local1 < 5.5 and arg1:GetRemainingAttackCoolTime(3005) == 0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 0, 0, 0)
            return true
        elseif f25_local1 > 10 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2.5, TARGET_SELF, false, -1)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_GladiatorLargeAxe340000_AfterAttackAct, "GladiatorLargeAxe340000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GladiatorLargeAxe340000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f26_local0 = arg1:GetDist(TARGET_ENE_0)
    local f26_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


