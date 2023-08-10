RegisterTableGoal(GOAL_AncestorBelieverHammer336010_Battle, "AncestorBelieverHammer336010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_AncestorBelieverHammer336010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
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
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:SetStringIndexedNumber("AfterPossession_Flg", 0)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13152)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13152) then
            f2_local0[49] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13152) == false and arg1:HasSpecialEffectId(TARGET_SELF, 13170) and arg1:GetHpRate(TARGET_SELF) < 1 then
            f2_local0[3] = 100
        else
            f2_local0[49] = 100
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:GetLatestSoundBehaviorID() == 337001 then
            f2_local0[41] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13152) then
            f2_local0[4] = 10
            f2_local0[5] = 10
            f2_local0[9] = 20
            f2_local0[49] = 80
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13152) == false and arg1:HasSpecialEffectId(TARGET_SELF, 13170) and arg1:GetHpRate(TARGET_SELF) < 1 then
            f2_local0[3] = 100
        elseif f2_local3 > 10 or f2_local3 < 5 then
            f2_local0[49] = 100
        else
            f2_local0[1] = 15
            f2_local0[2] = 15
            f2_local0[6] = 20
            f2_local0[9] = 20
            f2_local0[49] = 50
        end
    elseif f2_local3 > 40 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, -1) then
            f2_local0[40] = 100
            f2_local0[41] = 0
            f2_local0[42] = 0
        else
            f2_local0[40] = 20
            f2_local0[41] = 0
            f2_local0[42] = 80
        end
    elseif f2_local3 <= 40 then
        if f2_local3 > 18 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13170) and not arg1:HasSpecialEffectId(TARGET_SELF, 13152) and arg1:GetHpRate(TARGET_SELF) < 1 then
                f2_local0[3] = 100
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                f2_local0[40] = 20
                f2_local0[41] = 80
            else
                f2_local0[42] = 100
            end
        elseif f2_local3 > 10 then
            if arg1:GetStringIndexedNumber("AfterPossession_Flg") == 1 then
                f2_local0[5] = 100
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13170) and not arg1:HasSpecialEffectId(TARGET_SELF, 13152) and arg1:GetHpRate(TARGET_SELF) < 1 then
                f2_local0[3] = 100
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                f2_local0[1] = 30
                f2_local0[2] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[7] = 20
                f2_local0[9] = 50
                if arg1:HasSpecialEffectId(TARGET_SELF, 13152) then
                    f2_local0[4] = 60
                    f2_local0[5] = 150
                end
            else
                f2_local0[42] = 100
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
            if arg1:GetStringIndexedNumber("AfterPossession_Flg") == 1 then
                f2_local0[4] = 100
            elseif arg1:GetHpRate(TARGET_SELF) < 1 and not arg1:HasSpecialEffectId(TARGET_SELF, 13152) and arg1:HasSpecialEffectId(TARGET_SELF, 13170) and f2_local3 > 5 then
                f2_local0[3] = 100
            else
                if arg1:IsTargetGuard(TARGET_ENE_0) then
                    f2_local0[1] = 40
                    f2_local0[2] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 50
                    f2_local0[7] = 30
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                else
                    f2_local0[1] = 40
                    f2_local0[2] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 15
                    f2_local0[7] = 30
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and f2_local3 > 2.5 then
                        f2_local0[9] = 30
                    end
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 13152) then
                    f2_local0[4] = 150
                    f2_local0[5] = 0
                end
            end
        else
            f2_local0[42] = 100
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13170) and arg1:HasSpecialEffectId(TARGET_SELF, 13152) == false and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and f2_local3 > 5 then
        f2_local0[3] = 100000000000000
    end
    if f2_local3 <= 2 then
        f2_local0[7] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13165) == false then
        f2_local0[9] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3025, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3026, 5, f2_local0[2], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 5, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3016, 5, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3028, 5, f2_local0[7], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3039, 15, f2_local0[9], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, AncestorBelieverHammer336010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, AncestorBelieverHammer336010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, AncestorBelieverHammer336010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, AncestorBelieverHammer336010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, AncestorBelieverHammer336010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, AncestorBelieverHammer336010_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, AncestorBelieverHammer336010_Act07)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, AncestorBelieverHammer336010_Act09)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, AncestorBelieverHammer336010_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, AncestorBelieverHammer336010_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, AncestorBelieverHammer336010_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, AncestorBelieverHammer336010_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, AncestorBelieverHammer336010_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, AncestorBelieverHammer336010_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, AncestorBelieverHammer336010_Act46)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, AncestorBelieverHammer336010_Act49)
    local f2_local7 = REGIST_FUNC(arg1, arg2, AncestorBelieverHammer336010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function AncestorBelieverHammer336010_Act01(arg0, arg1, arg2)
    local f3_local0 = 4
    local f3_local1 = 0
    local f3_local2 = 0
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f3_local7 = 1.9
    local f3_local8 = 3025
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverHammer336010_Act02(arg0, arg1, arg2)
    local f4_local0 = 4.5
    local f4_local1 = 0
    local f4_local2 = 0
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 2
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f4_local7 = 2.2
    local f4_local8 = 3026
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local7, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverHammer336010_Act03(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13152)
    local f5_local0 = 2.1
    local f5_local1 = 3004
    local f5_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 0
    local f5_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local0, f5_local1, TARGET_ENE_0, f5_local2, f5_local3, f5_local4, 0, 0)
    arg0:SetStringIndexedNumber("AfterPossession_Flg", 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverHammer336010_Act04(arg0, arg1, arg2)
    local f6_local0 = 2.6 + arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 0
    local f6_local2 = 0
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 2
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f6_local7 = 2
    local f6_local8 = 3005
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 0
    local f6_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local7, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    if arg0:GetStringIndexedNumber("AfterPossession_Flg") == 1 then
        arg0:SetStringIndexedNumber("AfterPossession_Flg", 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverHammer336010_Act05(arg0, arg1, arg2)
    local f7_local0 = 9 + arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 0
    local f7_local2 = 0
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 2
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f7_local7 = 4.3
    local f7_local8 = 3006
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 0
    local f7_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local7, f7_local8, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    if arg0:GetStringIndexedNumber("AfterPossession_Flg") == 1 then
        arg0:SetStringIndexedNumber("AfterPossession_Flg", 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverHammer336010_Act06(arg0, arg1, arg2)
    local f8_local0 = 3
    local f8_local1 = 0
    local f8_local2 = 0
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 2
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f8_local7 = 2
    local f8_local8 = 3016
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 0
    local f8_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local7, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverHammer336010_Act07(arg0, arg1, arg2)
    local f9_local0 = 4
    local f9_local1 = 0
    local f9_local2 = 0
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 2
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f9_local7 = 3
    local f9_local8 = 3028
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local7, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverHammer336010_Act09(arg0, arg1, arg2)
    local f10_local0 = 6
    local f10_local1 = 0
    local f10_local2 = 0
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 2
    local f10_local6 = 2
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 4
    local f10_local8 = 3039
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 0
    local f10_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local7, f10_local8, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverHammer336010_Act40(arg0, arg1, arg2)
    local f11_local0 = 2
    local f11_local1 = 8
    local f11_local2 = true
    local f11_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f11_local0, TARGET_ENE_0, f11_local1, TARGET_SELF, f11_local2, f11_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverHammer336010_Act41(arg0, arg1, arg2)
    local f12_local0 = 2
    local f12_local1 = 8
    local f12_local2 = false
    local f12_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f12_local0, TARGET_ENE_0, f12_local1, TARGET_SELF, f12_local2, f12_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverHammer336010_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 40, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverHammer336010_Act43(arg0, arg1, arg2)
    local f14_local0 = 1
    local f14_local1 = 0
    local f14_local2 = 100
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = TARGET_ENE_0
    local f14_local6 = 1
    local f14_local7 = -1
    local f14_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7, f14_local8)
    local f14_local9 = arg0:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverHammer336010_Act44(arg0, arg1, arg2)
    local f15_local0 = arg0:GetRandam_Int(0, 1)
    local f15_local1 = 1.5
    local f15_local2 = TARGET_ENE_0
    local f15_local3 = f15_local0
    local f15_local4 = 15
    local f15_local5 = true
    local f15_local6 = -1
    local f15_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f15_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, isLifeSuccess, f15_local6, f15_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverHammer336010_Act45(arg0, arg1, arg2)
    local f16_local0 = 6
    local f16_local1 = 15
    local f16_local2 = true
    local f16_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f16_local0, TARGET_ENE_0, f16_local1, TARGET_SELF, f16_local2, f16_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverHammer336010_Act46(arg0, arg1, arg2)
    local f17_local0 = 3
    local f17_local1 = TARGET_ENE_0
    local f17_local2 = 8
    local f17_local3 = TARGET_ENE_0
    local f17_local4 = true
    local f17_local5 = -1
    local f17_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f17_local7 = false
    local f17_local8 = 1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6, f17_local7, f17_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverHammer336010_Act49(arg0, arg1, arg2)
    local f18_local0 = 5
    local f18_local1 = 10
    local f18_local2 = -1
    local f18_local3 = true
    local f18_local4 = 1
    local f18_local5 = 10
    local f18_local6 = 1.5
    local f18_local7 = 0.5
    local f18_local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, f18_local4)
    local f18_local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, f18_local4)
    local f18_local10 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, f18_local4)
    local f18_local11 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, f18_local4)
    local f18_local12 = arg0:GetDist(TARGET_ENE_0)
    local f18_local13 = arg0:GetRandam_Int(0, 1)
    if f18_local9 == true and f18_local8 == true then

    elseif f18_local9 == true and f18_local8 == false then
        f18_local13 = 0
    elseif f18_local9 == false and f18_local8 == true then
        f18_local13 = 1
    elseif f18_local9 == false and f18_local8 == false then
        f18_local13 = 2
    end
    if f18_local1 < f18_local12 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f18_local5, TARGET_ENE_0, arg0:GetRandam_Float(f18_local0, f18_local1), TARGET_SELF, false, f18_local2)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f18_local12 <= f18_local1 and f18_local0 <= f18_local12 then
        if f18_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f18_local6, TARGET_ENE_0, f18_local13, 100, f18_local3, false, f18_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f18_local12 < f18_local0 then
        if f18_local11 == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f18_local7, TARGET_ENE_0, arg0:GetRandam_Float(f18_local0, f18_local1), TARGET_ENE_0, f18_local3, f18_local2, GUARD_GOAL_DESIRE_RET_Success)
        elseif f18_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f18_local6, TARGET_ENE_0, f18_local13, 100, f18_local3, false, f18_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverHammer336010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_AncestorBelieverHammer336010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    local f22_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = 0
    local f22_local2 = 20
    local f22_local3 = arg1:GetDist(TARGET_ENE_0)
    local f22_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_Damaged) then
        if f22_local3 > 3.5 or arg1:GetTimer(2) > 0 then
            return false
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13152) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) and f22_local4 < 80 then
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 2, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
            if arg1:GetStringIndexedNumber("AfterPossession_Flg") == 1 then
                arg1:SetStringIndexedNumber("AfterPossession_Flg", 0)
            end
            arg1:SetTimer(2, 4)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13152) == false and arg1:GetHpRate(TARGET_SELF) < 1 and arg1:HasSpecialEffectId(TARGET_SELF, 13170) then
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13152)
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
            arg1:SetStringIndexedNumber("AfterPossession_Flg", 1)
            return true
        elseif not arg1:HasSpecialEffectId(TARGET_SELF, 13152) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) and f22_local4 < 80 then
            arg1:SetTimer(2, 2)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 2, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if arg1:IsTargetGuard(TARGET_ENE_0) and arg1:GetTimer(0) <= 0 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg1:SetTimer(0, 8)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 2.6, 3015, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if arg1:GetTimer(0) <= 0 then
                    arg2:ClearSubGoal()
                    arg1:SetTimer(0, 8)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 2.6, 3015, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 1.6, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif not not arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 220, -1, 5 + arg1:GetMapHitRadius(TARGET_SELF)) or arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 80, -1, 5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 1.6, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13152) and f22_local3 > 4 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 1.9, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 280, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) and f22_local3 > 1.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 2.7, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:HasSpecialEffectId(TARGET_ENE_0, 30) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3.2, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13152) and f22_local3 > 4 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 1.9, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:HasSpecialEffectId(TARGET_SELF, 13152) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) and arg1:HasSpecialEffectId(TARGET_SELF, 13165) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, -1, 8 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetAttackPassedTime(3039) > 10 and f22_local3 > 1 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3039, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13152) then
            arg2:ClearSubGoal()
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_AncestorBelieverHammer336010_AfterAttackAct, "AncestorBelieverHammer336010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_AncestorBelieverHammer336010_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


