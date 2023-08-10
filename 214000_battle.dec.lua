RegisterTableGoal(GOAL_ShunnedChildSword214000_Battle, "ShunnedChildSword214000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ShunnedChildSword214000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetStringIndexedNumber("Breath_Flg", 0)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
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
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3029)
    arg1:EnableUnfavorableAttackCheck(0, 3030)
    arg1:EnableUnfavorableAttackCheck(0, 3031)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    arg1:EnableUnfavorableAttackCheck(0, 3033)
    arg1:EnableUnfavorableAttackCheck(0, 3034)
    arg1:EnableUnfavorableAttackCheck(0, 3035)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
    arg1:EnableUnfavorableAttackCheck(1000000, 3003)
    arg1:EnableUnfavorableAttackCheck(1000000, 3004)
    arg1:EnableUnfavorableAttackCheck(1000000, 3005)
    arg1:EnableUnfavorableAttackCheck(1000000, 3006)
    arg1:EnableUnfavorableAttackCheck(1000000, 3007)
    arg1:EnableUnfavorableAttackCheck(1000000, 3008)
    arg1:EnableUnfavorableAttackCheck(1000000, 3009)
    arg1:EnableUnfavorableAttackCheck(1000000, 3010)
    arg1:EnableUnfavorableAttackCheck(1000000, 3011)
    arg1:EnableUnfavorableAttackCheck(1000000, 3012)
    arg1:EnableUnfavorableAttackCheck(1000000, 3013)
    arg1:EnableUnfavorableAttackCheck(1000000, 3015)
    arg1:EnableUnfavorableAttackCheck(1000000, 3016)
    arg1:EnableUnfavorableAttackCheck(1000000, 3017)
    arg1:EnableUnfavorableAttackCheck(1000000, 3018)
    arg1:EnableUnfavorableAttackCheck(1000000, 3030)
    arg1:EnableUnfavorableAttackCheck(1000000, 3031)
    
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 16500) or arg1:HasSpecialEffectId(TARGET_SELF, 16505) then
        arg1:SetStringIndexedNumber("Breath_Flg", 1)
    end
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[40] = 30
        if f2_local3 > 18 then
            f2_local0[42] = 80
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[40] = 60
        f2_local0[1] = 20
        if arg1:GetStringIndexedNumber("Breath_Flg") == 1 then
            f2_local0[27] = 20
        end
        if f2_local3 > 18 then
            f2_local0[42] = 200
        end
    else
        if f2_local3 < 2 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16500) and arg1:GetHpRate(TARGET_SELF) <= 0.9 then
                f2_local0[3] = 5
                f2_local0[5] = 25
                f2_local0[20] = 5
                f2_local0[21] = 25
                f2_local0[22] = 10
                f2_local0[24] = 999
                f2_local0[26] = 5
            else
                f2_local0[3] = 5
                f2_local0[5] = 25
                f2_local0[20] = 5
                f2_local0[21] = 25
                f2_local0[22] = 10
                f2_local0[26] = 5
            end
        elseif f2_local3 < 4 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16500) and arg1:GetHpRate(TARGET_SELF) <= 0.9 then
                f2_local0[1] = 20
                f2_local0[2] = 15
                f2_local0[3] = 5
                f2_local0[6] = 20
                f2_local0[7] = 5
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[24] = 999
                f2_local0[26] = 5
            else
                f2_local0[1] = 20
                f2_local0[2] = 15
                f2_local0[3] = 5
                f2_local0[6] = 20
                f2_local0[7] = 5
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[26] = 5
            end
        elseif f2_local3 < 6 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16500) and arg1:GetHpRate(TARGET_SELF) <= 0.9 then
                f2_local0[1] = 25
                f2_local0[2] = 10
                f2_local0[3] = 5
                f2_local0[4] = 20
                f2_local0[6] = 20
                f2_local0[7] = 5
                f2_local0[20] = 10
                f2_local0[24] = 999
                f2_local0[26] = 5
            else
                f2_local0[1] = 25
                f2_local0[2] = 10
                f2_local0[3] = 5
                f2_local0[4] = 20
                f2_local0[6] = 20
                f2_local0[7] = 5
                f2_local0[20] = 10
                f2_local0[26] = 5
            end
            if arg1:GetStringIndexedNumber("Breath_Flg") == 1 then
                f2_local0[27] = 50
            end
        elseif f2_local3 < 15 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16500) and arg1:GetHpRate(TARGET_SELF) <= 0.9 then
                f2_local0[4] = 40
                f2_local0[24] = 999
                f2_local0[42] = 40
            else
                f2_local0[4] = 50
                f2_local0[42] = 50
            end
            if arg1:GetStringIndexedNumber("Breath_Flg") == 1 then
                f2_local0[27] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16500) then
            f2_local0[42] = 100
        else
            f2_local0[42] = 100
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16517) then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) and f2_local3 > 2.5 then
                f2_local0[28] = 70
                if arg1:HasSpecialEffectId(TARGET_SELF, 16515) then
                    f2_local0[28] = 99999
                end
            end
        else
            f2_local0[28] = 0
        end
    end
    if arg1:GetStringIndexedNumber("Breath_Flg") == 1 and arg1:HasSpecialEffectId(TARGET_SELF, 16506) then
        f2_local0[27] = 999999
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[27] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16518) then
        f2_local0[3] = 0
        f2_local0[26] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16519) and arg1:HasSpecialEffectId(TARGET_SELF, 16500) then
        f2_local0[24] = 9999999
    end
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 5 + arg1:GetRandam_Int(0, 10), f2_local0[2], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 20 + arg1:GetRandam_Int(0, 10), f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 10 + arg1:GetRandam_Int(0, 10), f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3007, 10 + arg1:GetRandam_Int(0, 10), f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3030, 5 + arg1:GetRandam_Int(0, 10), f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3008, 25 + arg1:GetRandam_Int(0, 10), f2_local0[7], 0)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3020, 5 + arg1:GetRandam_Int(0, 5), f2_local0[20], 0)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3021, 5 + arg1:GetRandam_Int(0, 5), f2_local0[21], 0)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3022, 5 + arg1:GetRandam_Int(0, 5), f2_local0[22], 0)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3025, 10 + arg1:GetRandam_Int(0, 5), f2_local0[23], 0)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3026, 30 + arg1:GetRandam_Int(0, 5), f2_local0[24], 0)
    f2_local0[25] = SetCoolTime(arg1, arg2, 3023, 10 + arg1:GetRandam_Int(0, 5), f2_local0[25], 0)
    f2_local0[26] = SetCoolTime(arg1, arg2, 3024, 20 + arg1:GetRandam_Int(0, 5), f2_local0[26], 0)
    f2_local0[27] = SetCoolTime(arg1, arg2, 3027, 5 + arg1:GetRandam_Int(0, 5), f2_local0[27], 0)
    f2_local0[28] = SetCoolTime(arg1, arg2, 3028, 15 + arg1:GetRandam_Int(0, 5), f2_local0[28], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act07)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act28)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act44)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_Act48)
    local f2_local7 = REGIST_FUNC(arg1, arg2, ShunnedChildSword214000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function ShunnedChildSword214000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = arg0:GetRandam_Int(1, 100)
    local f3_local2 = 4.5
    local f3_local3 = 999
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 0
    local f3_local7 = 1.5
    local f3_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8)
    local f3_local9 = 3000
    local f3_local10 = 3001
    local f3_local11 = 3002
    local f3_local12 = 3009
    local f3_local13 = 4.5
    local f3_local14 = 0
    local f3_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    if f3_local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local9, TARGET_ENE_0, f3_local13, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local12, TARGET_ENE_0, f3_local13, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local9, TARGET_ENE_0, f3_local13, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local10, TARGET_ENE_0, f3_local13, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local11, TARGET_ENE_0, f3_local13, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = arg0:GetRandam_Int(1, 100)
    local f4_local2 = 4
    local f4_local3 = 999
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 1.5
    local f4_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8)
    local f4_local9 = 3003
    local f4_local10 = 3006
    local f4_local11 = 3.5
    local f4_local12 = 0
    local f4_local13 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    if f4_local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local9, TARGET_ENE_0, f4_local11, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local10, TARGET_ENE_0, f4_local11, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local9, TARGET_ENE_0, f4_local11, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = arg0:GetRandam_Int(1, 100)
    local f5_local2 = 6
    local f5_local3 = 999
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 0
    local f5_local7 = 1.5
    local f5_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7, f5_local8)
    local f5_local9 = 3004
    local f5_local10 = 3.5
    local f5_local11 = 0
    local f5_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local9, TARGET_ENE_0, f5_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 16500) and arg0:GetHpRate(TARGET_SELF) >= 0.98 then
        local f6_local2 = 8.5
        local f6_local3 = 999
        local f6_local4 = 0
        local f6_local5 = 0
        local f6_local6 = 0
        local f6_local7 = 1.5
        local f6_local8 = 1.5
    else
        local f6_local2 = 8.5
        local f6_local3 = 0
        local f6_local4 = 999
        local f6_local5 = 0
        local f6_local6 = 0
        local f6_local7 = 1.5
        local f6_local8 = 1.5
    end
    Approach_Act_Flex(arg0, arg1, AppDist, ForceWalkDist, ForceRunDist, Odds_Run, Odds_Guard, WalkLife, RunLife)
    local f6_local2 = 3005
    local f6_local3 = 3006
    local f6_local4 = 3.5
    local f6_local5 = 0
    local f6_local6 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    if f6_local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local2, TARGET_ENE_0, f6_local4, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local3, TARGET_ENE_0, f6_local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local2, TARGET_ENE_0, f6_local4, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = arg0:GetRandam_Int(1, 100)
    local f7_local2 = 1.5
    local f7_local3 = 999
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 0
    local f7_local7 = 1.5
    local f7_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7, f7_local8)
    local f7_local9 = 3007
    local f7_local10 = 3.5
    local f7_local11 = 0
    local f7_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local9, TARGET_ENE_0, f7_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = arg0:GetRandam_Int(1, 100)
    local f8_local2 = 5.5
    local f8_local3 = 999
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 0
    local f8_local7 = 1.5
    local f8_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7, f8_local8)
    local f8_local9 = 3030
    local f8_local10 = 3031
    local f8_local11 = 4.5
    local f8_local12 = 0
    local f8_local13 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local9, TARGET_ENE_0, f8_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local10, TARGET_ENE_0, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = arg0:GetRandam_Int(1, 100)
    local f9_local2 = 5
    local f9_local3 = 999
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    local f9_local7 = 1.5
    local f9_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7, f9_local8)
    local f9_local9 = 3008
    local f9_local10 = 3.5
    local f9_local11 = 0
    local f9_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local9, TARGET_ENE_0, f9_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act16(arg0, arg1, arg2)
    local f10_local0 = arg0:GetRandam_Int(1, 100)
    local f10_local1 = 3
    local f10_local2 = 0
    local f10_local3 = 999
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 5
    local f10_local7 = 5
    Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    local f10_local8 = 3004
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 0
    local f10_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, f10_local9, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, f10_local9, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act17(arg0, arg1, arg2)
    local f11_local0 = arg0:GetRandam_Int(1, 100)
    local f11_local1 = 3
    local f11_local2 = 0
    local f11_local3 = 999
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 5
    local f11_local7 = 5
    Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    local f11_local8 = 3004
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local10 = 0
    local f11_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3035, TARGET_ENE_0, f11_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act18(arg0, arg1, arg2)
    local f12_local0 = arg0:GetRandam_Int(1, 100)
    local f12_local1 = 3
    local f12_local2 = 0
    local f12_local3 = 999
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 5
    local f12_local7 = 5
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    local f12_local8 = 3004
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local10 = 0
    local f12_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, f12_local9, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, f12_local9, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act19(arg0, arg1, arg2)
    local f13_local0 = arg0:GetRandam_Int(1, 100)
    local f13_local1 = 3
    local f13_local2 = 0
    local f13_local3 = 999
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 5
    local f13_local7 = 5
    Approach_Act_Flex(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    local f13_local8 = 3004
    local f13_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local10 = 0
    local f13_local11 = 0
    if f13_local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, f13_local9, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, f13_local9, 0, 0, 0, 0)
        if f13_local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 6, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 6, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, f13_local9, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, f13_local9, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, f13_local9, 0, 0, 0, 0)
        if f13_local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 6, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 6, 0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act20(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    local f14_local2 = 4
    local f14_local3 = 999
    local f14_local4 = 0
    local f14_local5 = 0
    local f14_local6 = 0
    local f14_local7 = 5
    local f14_local8 = 5
    Approach_Act_Flex(arg0, arg1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7, f14_local8)
    local f14_local9 = 3020
    local f14_local10 = 3.5
    local f14_local11 = 0
    local f14_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local9, TARGET_ENE_0, f14_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act21(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = arg0:GetRandam_Int(1, 100)
    local f15_local2 = 2
    local f15_local3 = 999
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 0
    local f15_local7 = 3
    local f15_local8 = 3
    Approach_Act_Flex(arg0, arg1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7, f15_local8)
    local f15_local9 = 3021
    local f15_local10 = 3.5
    local f15_local11 = 0
    local f15_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local9, TARGET_ENE_0, f15_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act22(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = arg0:GetRandam_Int(1, 100)
    local f16_local2 = 2
    local f16_local3 = 999
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = 0
    local f16_local7 = 3
    local f16_local8 = 3
    Approach_Act_Flex(arg0, arg1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7, f16_local8)
    local f16_local9 = 3022
    local f16_local10 = 3.5
    local f16_local11 = 0
    local f16_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local9, TARGET_ENE_0, f16_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act23(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = arg0:GetRandam_Int(1, 100)
    local f17_local2 = 3
    local f17_local3 = 0
    local f17_local4 = 999
    local f17_local5 = 0
    local f17_local6 = 0
    local f17_local7 = 3
    local f17_local8 = 3
    Approach_Act_Flex(arg0, arg1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6, f17_local7, f17_local8)
    local f17_local9 = 3025
    local f17_local10 = 3.5
    local f17_local11 = 0
    local f17_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local9, TARGET_ENE_0, f17_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act24(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = arg0:GetRandam_Int(1, 100)
    local f18_local2 = 3026
    local f18_local3 = 3.5
    local f18_local4 = 0
    local f18_local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local2, TARGET_ENE_0, f18_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act25(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetRandam_Int(1, 100)
    local f19_local2 = 3
    local f19_local3 = 0
    local f19_local4 = 999
    local f19_local5 = 0
    local f19_local6 = 0
    local f19_local7 = 3
    local f19_local8 = 3
    Approach_Act_Flex(arg0, arg1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6, f19_local7, f19_local8)
    local f19_local9 = 3023
    local f19_local10 = 3.5
    local f19_local11 = 0
    local f19_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local9, TARGET_ENE_0, f19_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act26(arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = arg0:GetRandam_Int(1, 100)
    local f20_local2 = 6
    local f20_local3 = 999
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 0
    local f20_local7 = 1.5
    local f20_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7, f20_local8)
    local f20_local9 = 3024
    local f20_local10 = 3.5
    local f20_local11 = 0
    local f20_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local9, TARGET_ENE_0, f20_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act27(arg0, arg1, arg2)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = arg0:GetRandam_Int(1, 100)
    local f21_local2 = 15
    local f21_local3 = 999
    local f21_local4 = 0
    local f21_local5 = 0
    local f21_local6 = 0
    local f21_local7 = 1.5
    local f21_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6, f21_local7, f21_local8)
    local f21_local9 = 3027
    local f21_local10 = 10
    local f21_local11 = 0
    local f21_local12 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f21_local9, TARGET_ENE_0, 18, 0, 0, 0, 120)
    if f21_local0 > 4 and f21_local1 < 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 4, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act28(arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = arg0:GetRandam_Int(1, 100)
    local f22_local2 = 8
    local f22_local3 = 999
    local f22_local4 = 0
    local f22_local5 = 0
    local f22_local6 = 0
    local f22_local7 = 1.5
    local f22_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6, f22_local7, f22_local8)
    local f22_local9 = 3028
    local f22_local10 = 10
    local f22_local11 = 0
    local f22_local12 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f22_local9, TARGET_ENE_0, 18, 0, 0, 0, 120)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act41(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if arg0:HasSpecialEffectId(TARGET_SELF, 16500) and arg0:GetHpRate(TARGET_SELF) >= 0.98 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 4, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 4, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_Act44(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local f27_local0 = 4
        local f27_local1 = 6003
        local f27_local2 = TARGET_ENE_0
        local f27_local3 = 0
        local f27_local4 = AI_DIR_TYPE_R
        local f27_local5 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f27_local0, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f27_local0 = arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180)
        if f27_local0 then
            f27_local0 = 4
            local f27_local1 = 6002
            local f27_local2 = TARGET_ENE_0
            local f27_local3 = 0
            local f27_local4 = AI_DIR_TYPE_L
            local f27_local5 = 0
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f27_local0, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    
end

function ShunnedChildSword214000_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ShunnedChildSword214000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_ShunnedChildSword214000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f32_local0 = arg1:GetRandam_Int(1, 100)
    local f32_local1 = arg1:GetRandam_Int(1, 100)
    local f32_local2 = arg1:GetDist(TARGET_ENE_0)
    local f32_local3 = arg1:GetHpRate(TARGET_SELF)
    local f32_local4 = arg1:GetNumber(0)
    local f32_local5 = arg1:GetNumber(1)
    local f32_local6 = arg1:GetRandam_Int(0, 10)
    local f32_local7 = arg1:GetRandam_Int(0, 5)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and f32_local2 > 5 and 3 + f32_local7 <= arg1:GetAttackPassedTime(6002) and 3 + f32_local7 <= arg1:GetAttackPassedTime(6003) then
        if f32_local0 <= 50 then
            arg1:SetNumber(0, 0)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, false)
            return true
        else
            arg1:SetNumber(0, 0)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, false)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then

    else

    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
        arg1:SetNumber(0, f32_local4 + 1)
        if arg1:GetNumber(0) >= 2 then
            if f32_local2 < 3 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 6) and 20 + f32_local7 <= arg1:GetAttackPassedTime(3025) and arg1:HasSpecialEffectId(TARGET_SELF, 16500) then
                arg1:SetNumber(0, 0)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 4, 0, 0, 0, 0)
                return true
            elseif f32_local2 < 3 and arg1:HasSpecialEffectId(TARGET_SELF, 16518) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 6) and 20 + f32_local7 <= arg1:GetAttackPassedTime(3004) then
                arg1:SetNumber(0, 0)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 4, 0, 0, 0, 0)
                return true
            elseif 10 + f32_local7 <= arg1:GetAttackPassedTime(6002) and 10 + f32_local7 <= arg1:GetAttackPassedTime(6003) then
                if f32_local0 <= 50 then
                    arg1:SetNumber(0, 0)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, false)
                    return true
                else
                    arg1:SetNumber(0, 0)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, false)
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5029) and arg1:GetStringIndexedNumber("Breath_Flg") == 1 and arg1:GetAttackPassedTime(3027) > 7 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, -1, 20) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 18, 0, 0, 0, 120)
            if f32_local2 > 4 and f32_local0 < 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
            end
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) and arg1:HasSpecialEffectId(TARGET_SELF, 16500) and f32_local2 < 1 and 20 + f32_local7 <= arg1:GetAttackPassedTime(3025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 180, 6) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 4, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5031) and arg1:HasSpecialEffectId(TARGET_SELF, 16500) and f32_local2 > 3.5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 8) and f32_local0 <= 50 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 4, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16500) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 180, 6) then
                if 15 + f32_local7 <= arg1:GetAttackPassedTime(3025) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3025, TARGET_ENE_0, 4, 0, 0, 0, 0)
                    return true
                elseif 10 + f32_local7 <= arg1:GetAttackPassedTime(6002) and 10 + f32_local7 <= arg1:GetAttackPassedTime(6003) then
                    if f32_local0 <= 50 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, false)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, false)
                        return true
                    end
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                    return true
                end
            elseif f32_local2 < 2.5 and 30 + f32_local7 <= arg1:GetAttackPassedTime(3023) and f32_local1 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 4, 0, 0, 0, 0)
                return true
            elseif f32_local2 > 4.5 and f32_local2 < 8 then
                if 10 + f32_local7 <= arg1:GetAttackPassedTime(3005) then
                    if f32_local0 <= 60 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 4, 0, 0, 0, 0)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 4, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 4, 0, 0, 0, 0)
                        return true
                    end
                elseif f32_local0 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 180, 6) then
            if 10 + f32_local7 <= arg1:GetAttackPassedTime(6002) and 10 + f32_local7 <= arg1:GetAttackPassedTime(6003) then
                if f32_local0 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, false)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, false)
                    return true
                end
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                return true
            end
        elseif f32_local2 < 2.5 and 30 + f32_local7 <= arg1:GetAttackPassedTime(3023) and f32_local1 <= 50 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 4, 0, 0, 0, 0)
            return true
        elseif f32_local2 > 4.5 and f32_local2 < 6 then
            if 10 + f32_local7 <= arg1:GetAttackPassedTime(3005) then
                if f32_local0 <= 60 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 4, 0, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 4, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 4, 0, 0, 0, 0)
                    return true
                end
            elseif f32_local0 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_ShunnedChildSword214000_AfterAttackAct, "ShunnedChildSword214000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ShunnedChildSword214000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f33_local0 = arg1:GetDist(TARGET_ENE_0)
    local f33_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f33_local0 >= 5 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif f33_local0 >= 2 then
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


