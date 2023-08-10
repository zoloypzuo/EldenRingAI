RegisterTableGoal(GOAL_AncestorBelieverAx336000_Battle, "AncestorBelieverAx336000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_AncestorBelieverAx336000_Battle, true)
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
    arg1:SetStringIndexedNumber("ContinuityAtk_Cnt", 0)
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13150)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13151)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13152)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    if arg1:HasSpecialEffectId(TARGET_SELF, 13155) then
        if f2_local3 < 10 then
            f2_local0[23] = 100
        else
            if f2_local3 > 20 then
                f2_local0[20] = 80
            else
                f2_local0[21] = 80
            end
            f2_local0[22] = 20
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) and arg1:HasSpecialEffectId(TARGET_SELF, 13151) then
        if f2_local3 < 5 then
            f2_local0[7] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            f2_local0[11] = 100
        else
            f2_local0[42] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) and arg1:HasSpecialEffectId(TARGET_SELF, 13150) and f2_local3 > 5 then
        f2_local0[7] = 100
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13151) then
            f2_local0[11] = 5
            f2_local0[49] = 95
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13152) then
            f2_local0[49] = 95
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13152) == false and arg1:HasSpecialEffectId(TARGET_SELF, 13170) and arg1:GetHpRate(TARGET_SELF) < 1 then
            f2_local0[3] = 100
        else
            f2_local0[49] = 100
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13151) then
            f2_local0[11] = 15
            f2_local0[49] = 85
        elseif arg1:GetLatestSoundBehaviorID() == 337001 then
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
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[6] = 10
            f2_local0[9] = 20
            f2_local0[49] = 70
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13150) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13152) then
            if f2_local3 > 40 then
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
                    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                        f2_local0[40] = 20
                        f2_local0[41] = 80
                    else
                        f2_local0[42] = 100
                    end
                elseif f2_local3 > 10 then
                    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                        if arg1:GetStringIndexedNumber("AfterPossession_Flg") == 1 then
                            f2_local0[5] = 100
                        else
                            f2_local0[4] = 20
                            f2_local0[5] = 70
                            f2_local0[9] = 50
                            f2_local0[40] = 0
                            f2_local0[41] = 10
                        end
                    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
                        f2_local0[42] = 100
                    end
                elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                    if arg1:GetStringIndexedNumber("AfterPossession_Flg") == 1 then
                        f2_local0[4] = 100
                    else
                        f2_local0[1] = 15
                        f2_local0[2] = 10
                        f2_local0[4] = 55
                        f2_local0[5] = 0
                        f2_local0[6] = 15
                        f2_local0[8] = 5
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and f2_local3 > 2.5 then
                            f2_local0[9] = 30
                        end
                    end
                else
                    f2_local0[42] = 100
                end
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
                if arg1:GetHpRate(TARGET_SELF) < 1 then
                    f2_local0[3] = 100
                elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                    f2_local0[40] = 20
                    f2_local0[41] = 80
                else
                    f2_local0[42] = 100
                end
            elseif f2_local3 > 10 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13170) and arg1:GetHpRate(TARGET_SELF) < 1 then
                    f2_local0[3] = 100
                elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[40] = 20
                    f2_local0[41] = 80
                    f2_local0[9] = 50
                else
                    f2_local0[42] = 100
                end
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                if arg1:GetHpRate(TARGET_SELF) < 1 and arg1:HasSpecialEffectId(TARGET_SELF, 13170) and f2_local3 > 5 then
                    f2_local0[3] = 100
                else
                    f2_local0[1] = 30
                    f2_local0[2] = 10
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 40
                    f2_local0[8] = 20
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and f2_local3 > 2.5 then
                        f2_local0[9] = 40
                    end
                end
            else
                f2_local0[42] = 100
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13151) then
        if f2_local3 > 40 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, -1) then
                f2_local0[40] = 100
                f2_local0[41] = 0
            else
                f2_local0[41] = 20
                f2_local0[42] = 80
            end
        elseif f2_local3 <= 40 then
            if f2_local3 > 18 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                    f2_local0[11] = 60
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[49] = 40
                else
                    f2_local0[42] = 100
                end
            elseif f2_local3 > 10 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                    f2_local0[11] = 70
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[49] = 30
                else
                    f2_local0[42] = 100
                end
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[7] = 100
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[43] = 0
                if arg1:HasSpecialEffectId(TARGET_SELF, 13195) and f2_local3 > 5 then
                    f2_local0[7] = 0
                    f2_local0[11] = 70
                    f2_local0[49] = 30
                end
            else
                f2_local0[42] = 100
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13150) and arg1:HasSpecialEffectId(TARGET_SELF, 13170) and arg1:HasSpecialEffectId(TARGET_SELF, 13152) == false and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and f2_local3 > 5 then
        f2_local0[3] = 100000000000000
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13165) == false then
        f2_local0[9] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 15, f2_local0[2], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3011, 15, f2_local0[6], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3009, 15, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3039, 15, f2_local0[9], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[11], 10)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3003, 3, f2_local0[20], 0)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[21], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act09)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act11)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act23)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act46)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_Act49)
    local f2_local7 = REGIST_FUNC(arg1, arg2, AncestorBelieverAx336000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function AncestorBelieverAx336000_Act01(arg0, arg1, arg2)
    local f3_local0 = 3
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f3_local7 = 4
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act02(arg0, arg1, arg2)
    local f4_local0 = 3.5
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f4_local7 = 4
    local f4_local8 = 3001
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local7, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act03(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13152)
    local f5_local0 = 5.1
    local f5_local1 = 3004
    local f5_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 0
    local f5_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local0, f5_local1, TARGET_ENE_0, f5_local2, f5_local3, f5_local4, 0, 0)
    arg0:SetStringIndexedNumber("AfterPossession_Flg", 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act04(arg0, arg1, arg2)
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
    local f6_local7 = 4
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

function AncestorBelieverAx336000_Act05(arg0, arg1, arg2)
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

function AncestorBelieverAx336000_Act06(arg0, arg1, arg2)
    local f8_local0 = 4
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f8_local7 = 4
    local f8_local8 = 3011
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 0
    local f8_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local7, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act07(arg0, arg1, arg2)
    local f9_local0 = 4
    local f9_local1 = 3012
    local f9_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 0
    local f9_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local0, f9_local1, TARGET_ENE_0, f9_local2, f9_local3, f9_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act08(arg0, arg1, arg2)
    local f10_local0 = 2.6
    local f10_local1 = 0
    local f10_local2 = 0
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 2
    local f10_local6 = 2
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    arg0:SetStringIndexedNumber("ContinuityAtk_Cnt", 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f10_local7 = 4
    local f10_local8 = 3009
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 0
    local f10_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local7, f10_local8, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act09(arg0, arg1, arg2)
    local f11_local0 = 6
    local f11_local1 = 0
    local f11_local2 = 0
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 2
    local f11_local6 = 2
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 4
    local f11_local8 = 3039
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local10 = 0
    local f11_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local7, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act11(arg0, arg1, arg2)
    local f12_local0 = arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE)
    if f12_local0 then
        f12_local0 = 4
        local f12_local1 = 3000
        local f12_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f12_local3 = 0
        local f12_local4 = 120
        local f12_local5 = arg0:GetDist(TARGET_ENE_0)
        f12_local1 = 3001
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local0, f12_local1, TARGET_ENE_0, f12_local2, f12_local3, f12_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    f12_local0 = 30
    local f12_local1 = 0
    local f12_local2 = 999
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 2
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f12_local7 = 4
    local f12_local8 = 3000
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local10 = 0
    local f12_local11 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local7, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act20(arg0, arg1, arg2)
    local f13_local0 = 6
    local f13_local1 = 3003
    local f13_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = 0
    local f13_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f13_local0, f13_local1, TARGET_ENE_0, f13_local2, f13_local3, f13_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act21(arg0, arg1, arg2)
    local f14_local0 = 6
    local f14_local1 = 3002
    local f14_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local3 = 0
    local f14_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f14_local0, f14_local1, TARGET_ENE_0, f14_local2, f14_local3, f14_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1.5, TARGET_NONE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act40(arg0, arg1, arg2)
    local f17_local0 = 2
    local f17_local1 = 8
    local f17_local2 = true
    local f17_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local0, TARGET_ENE_0, f17_local1, TARGET_SELF, f17_local2, f17_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act41(arg0, arg1, arg2)
    local f18_local0 = 2
    local f18_local1 = 8
    local f18_local2 = false
    local f18_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f18_local0, TARGET_ENE_0, f18_local1, TARGET_SELF, f18_local2, f18_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 40, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act43(arg0, arg1, arg2)
    local f20_local0 = 1
    local f20_local1 = 0
    local f20_local2 = 100
    local f20_local3 = 0
    local f20_local4 = 0
    local f20_local5 = TARGET_ENE_0
    local f20_local6 = 1
    local f20_local7 = -1
    local f20_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7, f20_local8)
    local f20_local9 = arg0:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act44(arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Int(0, 1)
    local f21_local1 = 2
    local f21_local2 = TARGET_ENE_0
    local f21_local3 = f21_local0
    local f21_local4 = 15
    local f21_local5 = true
    local f21_local6 = -1
    local f21_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f21_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, isLifeSuccess, f21_local6, f21_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act45(arg0, arg1, arg2)
    local f22_local0 = 6
    local f22_local1 = 15
    local f22_local2 = true
    local f22_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f22_local0, TARGET_ENE_0, f22_local1, TARGET_SELF, f22_local2, f22_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act46(arg0, arg1, arg2)
    local f23_local0 = 3
    local f23_local1 = TARGET_ENE_0
    local f23_local2 = 8
    local f23_local3 = TARGET_ENE_0
    local f23_local4 = true
    local f23_local5 = -1
    local f23_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f23_local7 = false
    local f23_local8 = 1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6, f23_local7, f23_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_Act49(arg0, arg1, arg2)
    local f24_local0 = 5
    local f24_local1 = 10
    local f24_local2 = arg0:HasSpecialEffectId(TARGET_SELF, 13151)
    if f24_local2 then
        f24_local0 = f24_local0 + 10
        f24_local1 = f24_local1 + 10
    end
    f24_local2 = -1
    local f24_local3 = true
    local f24_local4 = 1
    local f24_local5 = 10
    local f24_local6 = 1.5
    local f24_local7 = 0.5
    local f24_local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, f24_local4)
    local f24_local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, f24_local4)
    local f24_local10 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, f24_local4)
    local f24_local11 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, f24_local4)
    local f24_local12 = arg0:GetDist(TARGET_ENE_0)
    local f24_local13 = arg0:GetRandam_Int(0, 1)
    if f24_local9 == true and f24_local8 == true then

    elseif f24_local9 == true and f24_local8 == false then
        f24_local13 = 0
    elseif f24_local9 == false and f24_local8 == true then
        f24_local13 = 1
    elseif f24_local9 == false and f24_local8 == false then
        f24_local13 = 2
    end
    if f24_local1 < f24_local12 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f24_local5, TARGET_ENE_0, arg0:GetRandam_Float(f24_local0, f24_local1), TARGET_SELF, false, f24_local2)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f24_local12 <= f24_local1 and f24_local0 <= f24_local12 then
        if f24_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local6, TARGET_ENE_0, f24_local13, 100, f24_local3, false, f24_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f24_local12 < f24_local0 then
        if f24_local11 == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f24_local7, TARGET_ENE_0, arg0:GetRandam_Float(f24_local0, f24_local1), TARGET_ENE_0, f24_local3, f24_local2, GUARD_GOAL_DESIRE_RET_Success)
        elseif f24_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local6, TARGET_ENE_0, f24_local13, 100, f24_local3, false, f24_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverAx336000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_AncestorBelieverAx336000_AfterAttackAct, 10)
    
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
    local f28_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f28_local1 = 0
    local f28_local2 = 20
    local f28_local3 = arg1:GetDist(TARGET_ENE_0)
    local f28_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_Damaged) then
        if arg1:GetTimer(2) > 0 or f28_local3 > 3.5 or arg1:HasSpecialEffectId(TARGET_SELF, 13151) then
            return false
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13152) and f28_local4 < 40 then
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 2, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
            if arg1:GetStringIndexedNumber("AfterPossession_Flg") == 1 then
                arg1:SetStringIndexedNumber("AfterPossession_Flg", 0)
            end
            arg1:SetTimer(2, 8)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13152) == false and arg1:GetHpRate(TARGET_SELF) < 1 and arg1:HasSpecialEffectId(TARGET_SELF, 13170) then
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13152)
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
            arg1:SetStringIndexedNumber("AfterPossession_Flg", 1)
            return true
        elseif not arg1:HasSpecialEffectId(TARGET_SELF, 13152) and f28_local4 < 40 then
            arg1:SetTimer(2, 8)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6) then
                arg2:ClearSubGoal()
                local f28_local5 = 3002
                if f28_local4 < 50 then
                    f28_local5 = 3014
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 1.6, f28_local5, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 8 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 1.6, 3014, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13152) and f28_local3 > 4 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 1.9, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 2.5 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetTimer(0) <= 0 then
                arg2:ClearSubGoal()
                arg1:SetTimer(0, 10)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 3.5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 4.5) and arg1:GetTimer(1) <= 0 then
                arg2:ClearSubGoal()
                arg1:SetTimer(1, 15)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            arg1:SetStringIndexedNumber("ContinuityAtk_Cnt", arg1:GetStringIndexedNumber("ContinuityAtk_Cnt") + 1)
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 1.9, 3000, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:HasSpecialEffectId(TARGET_SELF, 13152) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) and arg1:HasSpecialEffectId(TARGET_SELF, 13165) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, -1, 8 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetAttackPassedTime(3039) > 10 and f28_local3 > 1 then
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

RegisterTableGoal(GOAL_AncestorBelieverAx336000_AfterAttackAct, "AncestorBelieverAx336000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_AncestorBelieverAx336000_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


