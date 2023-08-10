RegisterTableGoal(GOAL_StormHawk421000_Battle, "StormHawk421000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_StormHawk421000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
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
    arg1:EnableUnfavorableAttackCheck(2000000, 3000)
    arg1:EnableUnfavorableAttackCheck(2000000, 3001)
    arg1:EnableUnfavorableAttackCheck(2000000, 3002)
    arg1:EnableUnfavorableAttackCheck(2000000, 3003)
    arg1:EnableUnfavorableAttackCheck(2000000, 3004)
    arg1:EnableUnfavorableAttackCheck(2000000, 3005)
    arg1:EnableUnfavorableAttackCheck(2000000, 3006)
    arg1:EnableUnfavorableAttackCheck(2000000, 3007)
    arg1:EnableUnfavorableAttackCheck(2000000, 3008)
    arg1:EnableUnfavorableAttackCheck(2000000, 3009)
    arg1:EnableUnfavorableAttackCheck(2000000, 3010)
    arg1:EnableUnfavorableAttackCheck(2000000, 3011)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetOffsetY(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetEventRequest()
    local f2_local8 = arg1:GetHpRate(TARGET_SELF)
    local f2_local9 = 0
    if arg1:HasSpecialEffectId(TARGET_SELF, 10910) == true then
        f2_local9 = 80
    end
    local f2_local10 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10940) then
        f2_local0[15] = 100
    elseif f2_local10 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[25] = 100
    elseif f2_local10 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[25] = 80
        if f2_local3 <= 15 and f2_local3 >= 8 then
            f2_local0[1] = 20
        end
    elseif f2_local5 >= 0.1 and arg1:HasSpecialEffectId(TARGET_SELF, 10911) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        if f2_local3 >= 5 then
            f2_local0[1] = 100
        else
            f2_local0[1] = 100
        end
    elseif f2_local5 >= 0.1 then
        if f2_local3 > 8 then
            f2_local0[34] = 100
        else
            f2_local0[31] = 40
            f2_local0[33] = 60
        end
    elseif f2_local3 >= 20 then
        f2_local0[1] = 30
        f2_local0[4] = 5
        f2_local0[5] = 5
        f2_local0[10] = 60
        f2_local0[27] = 100
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            f2_local0[33] = 6000
        end
    elseif f2_local3 >= 10 then
        f2_local0[1] = 20
        f2_local0[7] = 20
        f2_local0[10] = 60
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[27] = 100
        f2_local0[34] = 0
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            f2_local0[33] = 6000
        end
    elseif f2_local3 >= 5 then
        if InsideRange(arg1, arg2, 0, 90, 0, 99) then
            f2_local0[1] = 60
            f2_local0[2] = 20
            f2_local0[3] = f2_local9
            f2_local0[4] = 30
            f2_local0[5] = 30
            f2_local0[6] = 0
            f2_local0[10] = 20
            f2_local0[27] = 100
        else
            f2_local0[1] = 60
            f2_local0[2] = 20
            f2_local0[3] = f2_local9
            f2_local0[4] = 30
            f2_local0[5] = 30
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[10] = 20
            f2_local0[27] = 100
        end
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            f2_local0[33] = 6000
        end
    elseif f2_local3 >= 2.5 then
        if InsideRange(arg1, arg2, 180, 120, 0, 99) then
            f2_local0[8] = 70
            f2_local0[31] = 30
        else
            f2_local0[1] = 120
            f2_local0[2] = 40
            f2_local0[3] = f2_local9
            f2_local0[33] = 20
            f2_local0[27] = 100
            if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                f2_local0[10] = 50
            end
        end
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and f2_local3 > 4.5 then
            f2_local0[10] = 50
        end
    elseif InsideRange(arg1, arg2, 180, 100, 0, 99) then
        f2_local0[22] = 20
        f2_local0[31] = 40
        f2_local0[33] = 60
    elseif InsideRange(arg1, arg2, 180, 240, 0, 99) then
        f2_local0[3] = f2_local9
        f2_local0[7] = 40
        f2_local0[9] = 40
        f2_local0[22] = 20
        f2_local0[31] = 0
        f2_local0[33] = 20
    else
        f2_local0[2] = 20
        f2_local0[3] = f2_local9
        f2_local0[8] = 40
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 20
        f2_local0[33] = 40
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        f2_local0[1] = 0
        f2_local0[7] = 0
        f2_local0[9] = 0
    else
        f2_local0[22] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == false then
        f2_local0[26] = 0
        f2_local0[27] = 0
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        f2_local0[26] = 0
        f2_local0[27] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) and arg1:GetAttackPassedTime(3015) > 40 and arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        f2_local0[26] = 999999
    end
    f2_local0[35] = 0
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3010, 15, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[8], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[10], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[22], 0)
    f2_local0[26] = SetCoolTime(arg1, arg2, 3015, 40, f2_local0[26], 0)
    f2_local0[27] = SetCoolTime(arg1, arg2, 3016, 10, f2_local0[27], 0)
    f2_local0[33] = SetCoolTime(arg1, arg2, 6012, 10, f2_local0[33], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 6013, 10, f2_local0[33], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act10)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act15)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act22)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act27)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act35)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, StormHawk421000_Act43)
    local f2_local11 = REGIST_FUNC(arg1, arg2, StormHawk421000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local11, f2_local2)
    
end

function StormHawk421000_Act01(arg0, arg1, arg2)
    local f3_local0 = 6.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 0
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) == false and f3_local0 < arg0:GetDist(TARGET_ENE_0) then
        StormHawk421000_Act33(arg0, arg1)
    end
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act02(arg0, arg1, arg2)
    local f4_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 0
    local f4_local3 = 50
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) == false and f4_local0 < arg0:GetDist(TARGET_ENE_0) then
        StormHawk421000_Act33(arg0, arg1)
    end
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 3008
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local8, TARGET_ENE_0, f4_local9, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act03(arg0, arg1, arg2)
    local f5_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 0
    local f5_local3 = 50
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) == false and f5_local0 < arg0:GetDist(TARGET_ENE_0) then
        StormHawk421000_Act33(arg0, arg1)
    end
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = arg0:GetRandam_Int(1, 100)
    local f5_local8 = 3010
    local f5_local9 = 6.5
    local f5_local10 = 0
    local f5_local11 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act04(arg0, arg1, arg2)
    local f6_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 0
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) == false and f6_local0 < arg0:GetDist(TARGET_ENE_0) then
        StormHawk421000_Act33(arg0, arg1)
    end
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3002
    local f6_local8 = 3003
    local f6_local9 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 0
    local f6_local11 = 0
    local f6_local12 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local12, f6_local10, f6_local11)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local8, TARGET_ENE_0, f6_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act05(arg0, arg1, arg2)
    local f7_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 0
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) == false then
        StormHawk421000_Act33(arg0, arg1)
    end
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3002
    local f7_local8 = 3004
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 0
    local f7_local11 = 0
    local f7_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local12, f7_local10, f7_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local8, TARGET_ENE_0, f7_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act06(arg0, arg1, arg2)
    local f8_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 0
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) == false and f8_local0 < arg0:GetDist(TARGET_ENE_0) then
        StormHawk421000_Act33(arg0, arg1)
    end
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = arg0:GetRandam_Int(1, 100)
    local f8_local8 = 3002
    local f8_local9 = 3007
    local f8_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local11 = 0
    local f8_local12 = 0
    local f8_local13 = 5
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local8, TARGET_ENE_0, f8_local13, f8_local11, f8_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local9, TARGET_ENE_0, f8_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act07(arg0, arg1, arg2)
    local f9_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 0
    local f9_local3 = 50
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 4
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) == false and f9_local0 < arg0:GetDist(TARGET_ENE_0) then
        StormHawk421000_Act33(arg0, arg1)
    end
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3007
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act08(arg0, arg1, arg2)
    local f10_local0 = 3004
    local f10_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 0
    local f10_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local0, TARGET_ENE_0, f10_local1, f10_local2, f10_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act09(arg0, arg1, arg2)
    local f11_local0 = 6.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 0
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 8
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) == false and f11_local0 < arg0:GetDist(TARGET_ENE_0) then
        StormHawk421000_Act33(arg0, arg1)
    end
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3000
    local f11_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local9 = 0
    local f11_local10 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, 6.5, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 11.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = f12_local1 + 0
    local f12_local3 = f12_local1 + 0
    local f12_local4 = 100
    local f12_local5 = 0
    local f12_local6 = 2
    local f12_local7 = 4
    if f12_local0 > 15 then
        f12_local1 = 13
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) == false and f12_local1 < arg0:GetDist(TARGET_ENE_0) then
        StormHawk421000_Act33(arg0, arg1)
    end
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    local f12_local8 = 3009
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local10 = 0
    local f12_local11 = 0
    if f12_local0 > 15 then
        f12_local8 = 3011
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act15(arg0, arg1, arg2)
    local f13_local0 = 14.5
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 0
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 4
    if arg0:HasSpecialEffectId(TARGET_SELF, 10944) then
        f13_local0 = 9
    end
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3013
    local f13_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 1
    local f13_local10 = 60
    if arg0:HasSpecialEffectId(TARGET_SELF, 10942) then
        f13_local7 = 3014
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 10944) then
        f13_local7 = 3017
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act18(arg0, arg1, arg2)
    local f14_local0 = 3020
    local f14_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 0
    local f14_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act19(arg0, arg1, arg2)
    local f15_local0 = 3020
    local f15_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 0
    local f15_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local1, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act20(arg0, arg1, arg2)
    local f16_local0 = 3005
    local f16_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act21(arg0, arg1, arg2)
    local f17_local0 = 3006
    local f17_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 0
    local f17_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local0, TARGET_ENE_0, f17_local1, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act22(arg0, arg1, arg2)
    local f18_local0 = 3005
    local f18_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = 0
    local f18_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f18_local0, TARGET_ENE_0, 999, 0, 360, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act25(arg0, arg1, arg2)
    local f19_local0 = 8
    local f19_local1 = 15
    local f19_local2 = -1
    local f19_local3 = true
    local f19_local4 = 1
    local f19_local5 = 10
    local f19_local6 = 1.5
    local f19_local7 = 0.5
    local f19_local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, f19_local4)
    local f19_local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, f19_local4)
    local f19_local10 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, f19_local4)
    local f19_local11 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, f19_local4)
    local f19_local12 = arg0:GetDist(TARGET_ENE_0)
    local f19_local13 = arg0:GetRandam_Int(0, 1)
    if f19_local9 == true and f19_local8 == true then

    elseif f19_local9 == true and f19_local8 == false then
        f19_local13 = 0
    elseif f19_local9 == false and f19_local8 == true then
        f19_local13 = 1
    elseif f19_local9 == false and f19_local8 == false then
        f19_local13 = 2
    end
    if f19_local1 < f19_local12 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f19_local5, TARGET_ENE_0, arg0:GetRandam_Float(f19_local0, f19_local1), TARGET_SELF, f19_local3, f19_local2)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f19_local12 <= f19_local1 and f19_local0 <= f19_local12 then
        local f19_local14 = arg0:GetRandam_Int(1, 100)
        if f19_local13 <= 1 and f19_local14 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local6, TARGET_ENE_0, f19_local13, 100, f19_local3, false, f19_local2, resultTypeIfGuardSuccess)
        else
            local f19_local15 = arg0:GetRandam_Int(0, 2)
            local f19_local16 = 3030 + f19_local15
            local f19_local17 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
            local f19_local18 = 0
            local f19_local19 = 0
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local16, TARGET_ENE_0, f19_local17, f19_local18, f19_local19, 0, 0)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f19_local12 < f19_local0 then
        if f19_local11 == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f19_local7, TARGET_ENE_0, arg0:GetRandam_Float(f19_local0, f19_local1), TARGET_ENE_0, f19_local3, f19_local2, GUARD_GOAL_DESIRE_RET_Success)
        elseif f19_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local6, TARGET_ENE_0, f19_local13, 100, f19_local3, false, f19_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act26(arg0, arg1, arg2)
    local f20_local0 = 10
    local f20_local1 = f20_local0 + 0
    local f20_local2 = f20_local0 + 0
    local f20_local3 = 100
    local f20_local4 = 0
    local f20_local5 = 2
    local f20_local6 = 4
    Approach_Act_Flex(arg0, arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local f20_local7 = 3015
    local f20_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local9 = 0
    local f20_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local7, TARGET_LOCALPLAYER, f20_local8, f20_local9, f20_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act27(arg0, arg1, arg2)
    local f21_local0 = 10
    local f21_local1 = f21_local0 + 0
    local f21_local2 = f21_local0 + 0
    local f21_local3 = 100
    local f21_local4 = 0
    local f21_local5 = 4
    local f21_local6 = 8
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) == false and f21_local0 < arg0:GetDist(TARGET_ENE_0) then
        StormHawk421000_Act33(arg0, arg1)
    end
    Approach_Act_Flex(arg0, arg1, f21_local0, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6)
    local f21_local7 = arg0:GetRandam_Int(1, 100)
    local f21_local8 = 3016
    local f21_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local10 = 0
    local f21_local11 = 0
    local f21_local12 = 5
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f21_local8, TARGET_ENE_0, f21_local12, f21_local10, f21_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act32(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act33(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act34(arg0, arg1, arg2)
    local f26_local0 = arg0:GetDist(TARGET_ENE_0)
    local f26_local1 = arg0:GetRandam_Int(1, 100)
    local f26_local2 = 2
    local f26_local3 = 8
    local f26_local4 = -1
    if f26_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f26_local2, TARGET_ENE_0, f26_local3, TARGET_SELF, true, f26_local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f26_local2, TARGET_ENE_0, f26_local3, TARGET_SELF, false, f26_local4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act35(arg0, arg1, arg2)
    local f27_local0 = arg0:GetRandam_Int(AI_DIR_TYPE_ToL, AI_DIR_TYPE_ToR)
    local f27_local1 = arg0:GetRandam_Int(1, 100)
    local f27_local2 = arg0:GetRandam_Float(1.5, 2)
    local f27_local3 = 0
    local f27_local4 = arg0:GetRandam_Int(40, 80)
    local f27_local5 = -1
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        f27_local3 = 1
    end
    if InsideRange(arg0, arg1, 270, 180, 0, 99) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f27_local2, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, 5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f27_local2, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act40(arg0, arg1, arg2)
    local f28_local0 = 3015
    local f28_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local2 = 0
    local f28_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f28_local0, TARGET_ENE_0, f28_local1, f28_local2, f28_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act41(arg0, arg1, arg2)
    local f29_local0 = arg0:GetRandam_Int(1, 100)
    local f29_local1 = 60
    local f29_local2 = -1
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60, f29_local2, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act42(arg0, arg1, arg2)
    local f30_local0 = arg0:GetRandam_Int(1, 100)
    local f30_local1 = arg0:GetRandam_Float(2.5, 3)
    local f30_local2 = 0
    local f30_local3 = 180
    local f30_local4 = -1
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        f30_local2 = 1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f30_local1, TARGET_ENE_0, f30_local2, f30_local3, true, true, f30_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_Act43(arg0, arg1, arg2)
    local f31_local0 = arg0:GetRandam_Int(1, 100)
    local f31_local1 = arg0:GetRandam_Float(2.5, 3)
    local f31_local2 = arg0:GetRandam_Float(5, 7)
    local f31_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f31_local1, TARGET_ENE_0, f31_local2, TARGET_ENE_0, true, f31_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormHawk421000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_StormHawk421000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f35_local0 = arg1:GetDist(TARGET_ENE_0)
    local f35_local1 = arg1:GetRandam_Int(1, 100)
    local f35_local2 = arg1:GetHpRate(TARGET_SELF)
    local f35_local3 = arg1:GetOffsetY(TARGET_SELF)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 10910) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5025) and f35_local0 < 4.5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) == true and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, -1, 5 + arg1:GetMapHitRadius(TARGET_SELF)) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5400) == true then

    else
        if arg1:HasSpecialEffectId(TARGET_SELF, 10910) == true and arg1:IsInterupt(INTERUPT_Damaged) and arg1:GetTimer(0) <= 0 then
            arg1:SetTimer(0, 3)
            arg2:ClearSubGoal()
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
            return true
        end
        if f35_local3 >= 0.1 then

        elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and (not not arg1:GetSpecialEffectActivateInterruptId(90) or arg1:GetSpecialEffectActivateInterruptId(6992)) then
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 10910) == true then
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 7, TARGET_SELF, true, -1)
                StormHawk421000_Act03(arg1, arg2)
            else
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 6.2, TARGET_SELF, true, -1)
                StormHawk421000_Act01(arg1, arg2)
            end
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_StormHawk421000_AfterAttackAct, "StormHawk421000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_StormHawk421000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


