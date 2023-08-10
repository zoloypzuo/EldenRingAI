RegisterTableGoal(GOAL_LostKnight_Halberd_301020_Battle, "LostKnight_Halberd_301020_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LostKnight_Halberd_301020_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 0)
    arg1:SetNumber(6, 0)
    arg1:SetNumber(10, 0)
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
    arg1:EnableUnfavorableAttackCheck(2000000, 3015)
    arg1:EnableUnfavorableAttackCheck(2000000, 3016)
    arg1:EnableUnfavorableAttackCheck(2000000, 3017)
    arg1:EnableUnfavorableAttackCheck(2000000, 3018)
    arg1:EnableUnfavorableAttackCheck(2000000, 3019)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetEventRequest()
    local f2_local6 = 1
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 10840)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 10850)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 10880)
    arg1:SetStringIndexedNumber("c3010_DashRate", 0)
    arg1:SetStringIndexedNumber("c3010_WalkDist", 1)
    arg1:SetStringIndexedNumber("c3010_RunDist", 1)
    arg1:SetStringIndexedNumber("c3010_GuardRate", 0)
    arg1:SetStringIndexedNumber("c3010_WalkLife", 1)
    if f2_local8 == true or f2_local3 > 11 then
        arg1:SetStringIndexedNumber("c3010_DashRate", 100)
        arg1:SetStringIndexedNumber("c3010_WalkDist", 0)
        arg1:SetStringIndexedNumber("c3010_RunDist", 999)
        arg1:SetStringIndexedNumber("c3010_GuardRate", 0)
        arg1:SetStringIndexedNumber("c3010_WalkLife", 0)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16479)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10874)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 10859)
    if arg1:GetNumber(3) >= 5 then
        f2_local6 = 1.8
    end
    if f2_local9 == true then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 140, 90, 20 - arg1:GetMapHitRadius(TARGET_SELF)) then
            f2_local0[21] = 10
            f2_local0[3] = 30
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 90, 7.8 - arg1:GetMapHitRadius(TARGET_SELF)) then
                f2_local0[3] = 20
                f2_local0[2] = 40
                if arg1:IsFinishTimer(0) == true and arg1:GetTargetSARate(TARGET_SELF) <= 0.5 then
                    f2_local0[11] = 79
                end
            end
        elseif arg1:IsTargetGuard(TARGET_ENE_0) == true and f2_local4 <= 80 then
            f2_local0[2] = 20
            f2_local0[5] = 15
            f2_local0[11] = 20 * f2_local6
        elseif f2_local3 >= 10 then
            f2_local0[5] = 40
            f2_local0[6] = 30
            f2_local0[18] = 20
            f2_local0[31] = 50
            f2_local0[32] = 20
        elseif f2_local3 >= 7.5 then
            f2_local0[1] = 20
            f2_local0[4] = 20
            f2_local0[5] = 20
            f2_local0[6] = 30
            f2_local0[17] = 20
            f2_local0[18] = 20
            f2_local0[31] = 50
            f2_local0[32] = 40
        elseif f2_local3 >= 3.5 then
            f2_local0[1] = 20
            f2_local0[3] = 10
            f2_local0[4] = 20
            f2_local0[5] = 10
            f2_local0[6] = 20
            f2_local0[11] = 25
            f2_local0[17] = 20
            f2_local0[18] = 30
            f2_local0[24] = 10
            f2_local0[32] = 30
            f2_local0[33] = 30
        else
            f2_local0[1] = 20
            f2_local0[2] = 25
            f2_local0[3] = 20
            f2_local0[4] = 20
            f2_local0[11] = 35
            f2_local0[12] = 20
            f2_local0[17] = 20
            f2_local0[32] = 30
            f2_local0[33] = 30
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 140, 90, 20 - arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[21] = 10
        f2_local0[3] = 30
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 90, 7.8 - arg1:GetMapHitRadius(TARGET_SELF)) then
            f2_local0[3] = 20
            f2_local0[2] = 40
            if arg1:IsFinishTimer(0) == true and arg1:GetTargetSARate(TARGET_SELF) <= 0.5 then
                f2_local0[11] = 79
            end
        end
    elseif arg1:IsTargetGuard(TARGET_ENE_0) == true and f2_local4 <= 80 then
        f2_local0[2] = 20
        f2_local0[5] = 15
        f2_local0[11] = 20 * f2_local6
    elseif f2_local3 >= 10 then
        f2_local0[5] = 40
        f2_local0[6] = 30
        f2_local0[18] = 20
        f2_local0[22] = 60
    elseif f2_local3 >= 7.5 then
        f2_local0[1] = 20
        f2_local0[4] = 20
        f2_local0[5] = 20
        f2_local0[6] = 30
        f2_local0[17] = 20
        f2_local0[18] = 20
        f2_local0[22] = 20
        f2_local0[24] = 30
    elseif f2_local3 >= 3.5 then
        f2_local0[1] = 20
        f2_local0[3] = 10
        f2_local0[4] = 20
        f2_local0[5] = 10
        f2_local0[6] = 20
        f2_local0[11] = 25
        f2_local0[17] = 20
        f2_local0[18] = 30
        f2_local0[22] = 15
        f2_local0[24] = 10
    else
        f2_local0[1] = 20
        f2_local0[2] = 25
        f2_local0[3] = 20
        f2_local0[4] = 20
        f2_local0[11] = 35
        f2_local0[12] = 20
        f2_local0[17] = 20
        f2_local0[22] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[2], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 5, f2_local0[4], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3008, 15, f2_local0[6], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3017, 8, f2_local0[9], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3015, 10, f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3009, 15, f2_local0[12], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3015, 8, f2_local0[15], 0)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3019, 20, f2_local0[17], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3020, 70, f2_local0[18], 0)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 10840)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 10850)
    if f2_local11 == false then
        f2_local0[17] = 0
    end
    if f2_local10 == false then
        f2_local0[18] = 0
    elseif arg1:GetHpRate(TARGET_SELF) < 0.5 then
        f2_local0[18] = f2_local0[18] * 1.3
        if arg1:GetHpRate(TARGET_SELF) < 0.4 then
            f2_local0[18] = f2_local0[18] * 1.3
            if arg1:GetHpRate(TARGET_SELF) < 0.2 then
                f2_local0[18] = f2_local0[18] * 1.3
            end
        end
    elseif arg1:GetHpRate(TARGET_SELF) > 0.6 then
        f2_local0[18] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        f2_local0[6] = f2_local0[6] * 3
        f2_local0[11] = f2_local0[11] * 3
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true and arg1:GetNumber(1) ~= 1 then
        f2_local0[6] = f2_local0[6] * 5
        f2_local0[11] = f2_local0[11] * 5
    end
    if arg1:GetHpRate(TARGET_SELF) == 1 and f2_local11 == false then
        f2_local0[22] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10859) then
        f2_local0[31] = 0
        f2_local0[32] = 0
        f2_local0[33] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act12)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act15)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act18)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act24)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act33)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_Act47)
    local f2_local12 = REGIST_FUNC(arg1, arg2, LostKnight_Halberd_301020_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local12, f2_local2)
    
end

function LostKnight_Halberd_301020_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10850)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10870)
    local f3_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = (4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 6) * arg0:GetStringIndexedNumber("c3010_WalkDist")
    local f3_local4 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 6 + arg0:GetStringIndexedNumber("c3010_RunDist")
    local f3_local5 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f3_local6 = arg0:GetStringIndexedNumber("c3010_GuardRate")
    local f3_local7 = 3 * arg0:GetStringIndexedNumber("c3010_WalkLife")
    local f3_local8 = 4
    Approach_Act_Flex(arg0, arg1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8)
    local f3_local9 = 3000
    local f3_local10 = 3001
    local f3_local11 = 3002
    local f3_local12 = 3009
    local f3_local13 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local14 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local15 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f3_local16 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local17 = 2
    local f3_local18 = 70
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f3_local9, TARGET_ENE_0, f3_local13, f3_local17, f3_local18, 0, 0)
    if f3_local1 > 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f3_local12, TARGET_ENE_0, f3_local15, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f3_local10, TARGET_ENE_0, f3_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f3_local11, TARGET_ENE_0, f3_local16, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetRandam_Int(1, 100)
    local f4_local1 = arg0:GetDist(TARGET_ENE_0)
    local f4_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = (3 - arg0:GetMapHitRadius(TARGET_SELF) + 6) * arg0:GetStringIndexedNumber("c3010_WalkDist")
    local f4_local4 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 6 + arg0:GetStringIndexedNumber("c3010_RunDist")
    local f4_local5 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f4_local6 = arg0:GetStringIndexedNumber("c3010_GuardRate")
    local f4_local7 = 3 * arg0:GetStringIndexedNumber("c3010_WalkLife")
    local f4_local8 = 4
    Approach_Act_Flex(arg0, arg1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8)
    local f4_local9 = 3003
    local f4_local10 = 3002
    local f4_local11 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local12 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f4_local13 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local14 = 0
    local f4_local15 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f4_local9, TARGET_ENE_0, f4_local11, f4_local14, f4_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f4_local10, TARGET_ENE_0, f4_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3007, TARGET_ENE_0, f4_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetRandam_Int(1, 100)
    local f5_local1 = arg0:GetDist(TARGET_ENE_0)
    local f5_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = (4 - arg0:GetMapHitRadius(TARGET_SELF) + 6) * arg0:GetStringIndexedNumber("c3010_WalkDist")
    local f5_local4 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 6 + arg0:GetStringIndexedNumber("c3010_RunDist")
    local f5_local5 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f5_local6 = arg0:GetStringIndexedNumber("c3010_GuardRate")
    local f5_local7 = 3 * arg0:GetStringIndexedNumber("c3010_WalkLife")
    local f5_local8 = 4
    Approach_Act_Flex(arg0, arg1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7, f5_local8)
    local f5_local9 = 3004
    local f5_local10 = 3017
    local f5_local11 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local12 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local13 = 0
    local f5_local14 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f5_local9, TARGET_ENE_0, f5_local11, f5_local13, f5_local14, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10870)
    local f6_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = (3 - arg0:GetMapHitRadius(TARGET_SELF) + 6) * arg0:GetStringIndexedNumber("c3010_WalkDist")
    local f6_local4 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 6 + arg0:GetStringIndexedNumber("c3010_RunDist")
    local f6_local5 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f6_local6 = arg0:GetStringIndexedNumber("c3010_GuardRate")
    local f6_local7 = 3 * arg0:GetStringIndexedNumber("c3010_WalkLife")
    local f6_local8 = 4
    Approach_Act_Flex(arg0, arg1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7, f6_local8)
    local f6_local9 = 3005
    local f6_local10 = 3006
    local f6_local11 = 3009
    local f6_local12 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local13 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local14 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local15 = 0
    local f6_local16 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f6_local9, TARGET_ENE_0, f6_local12, f6_local15, f6_local16, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f6_local10, TARGET_ENE_0, f6_local13, 0, 0)
    if f6_local1 > 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f6_local11, TARGET_ENE_0, f6_local13, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 8.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = (8.2 - arg0:GetMapHitRadius(TARGET_SELF) + 6) * arg0:GetStringIndexedNumber("c3010_WalkDist")
    local f7_local3 = 8.2 - arg0:GetMapHitRadius(TARGET_SELF) + 6 + arg0:GetStringIndexedNumber("c3010_RunDist")
    local f7_local4 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f7_local5 = arg0:GetStringIndexedNumber("c3010_GuardRate")
    local f7_local6 = 3 * arg0:GetStringIndexedNumber("c3010_WalkLife")
    local f7_local7 = 4
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 3007
    local f7_local9 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 0
    local f7_local11 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f7_local8, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act06(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 11.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = (11.3 - arg0:GetMapHitRadius(TARGET_SELF) + 6) * arg0:GetStringIndexedNumber("c3010_WalkDist")
    local f8_local3 = 11.3 - arg0:GetMapHitRadius(TARGET_SELF) + 6 + arg0:GetStringIndexedNumber("c3010_RunDist")
    local f8_local4 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f8_local5 = arg0:GetStringIndexedNumber("c3010_GuardRate")
    local f8_local6 = 3 * arg0:GetStringIndexedNumber("c3010_WalkLife")
    local f8_local7 = 4
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local8 = 3008
    local f8_local9 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 0
    local f8_local11 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act07(arg0, arg1, arg2)
    local f9_local0 = 3009
    local f9_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 0
    local f9_local3 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3, 0, 0)
    arg0:SetTimer(0, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act08(arg0, arg1, arg2)
    local f10_local0 = 11 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 11 - arg0:GetMapHitRadius(TARGET_SELF) + 6
    local f10_local2 = 11 - arg0:GetMapHitRadius(TARGET_SELF) + 6
    local f10_local3 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 6
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3016
    local f10_local8 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 0
    local f10_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    arg0:SetTimer(0, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act09(arg0, arg1, arg2)
    local f11_local0 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = (4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 6) * arg0:GetStringIndexedNumber("c3010_WalkDist")
    local f11_local2 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 6 + arg0:GetStringIndexedNumber("c3010_RunDist")
    local f11_local3 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f11_local4 = arg0:GetStringIndexedNumber("c3010_GuardRate")
    local f11_local5 = 3 * arg0:GetStringIndexedNumber("c3010_WalkLife")
    local f11_local6 = 4
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3017
    local f11_local8 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local9 = 0
    local f11_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    arg0:SetTimer(0, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act10(arg0, arg1, arg2)
    local f12_local0 = 14.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = (14.5 - arg0:GetMapHitRadius(TARGET_SELF) + 6) * arg0:GetStringIndexedNumber("c3010_WalkDist")
    local f12_local2 = 14.5 - arg0:GetMapHitRadius(TARGET_SELF) + 6 + arg0:GetStringIndexedNumber("c3010_RunDist")
    local f12_local3 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f12_local4 = arg0:GetStringIndexedNumber("c3010_GuardRate")
    local f12_local5 = 3 * arg0:GetStringIndexedNumber("c3010_WalkLife")
    local f12_local6 = 4
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3018
    local f12_local8 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 0
    local f12_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act11(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f13_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16479)
    local f13_local1 = 3015
    local f13_local2 = 3016
    local f13_local3 = 3018
    local f13_local4 = 3008
    local f13_local5 = 15
    local f13_local6 = 15
    local f13_local7 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local8 = 0
    local f13_local9 = 120
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10870)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10871)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f13_local1, TARGET_ENE_0, f13_local5, f13_local8, f13_local9, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10870)
    local f14_local1 = 3009
    local f14_local2 = 3008
    local f14_local3 = 3007
    local f14_local4 = 15
    local f14_local5 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f14_local6 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local7 = 0
    local f14_local8 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f14_local1, TARGET_ENE_0, f14_local4, f14_local7, f14_local8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act15(arg0, arg1, arg2)
    local f15_local0 = 3015
    local f15_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 0
    local f15_local3 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local0, TARGET_ENE_0, DIST_None, 0, 90)
    local f15_local4 = 3004
    local f15_local5 = 3017
    local f15_local6 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local7 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local8 = 0
    local f15_local9 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local4, TARGET_ENE_0, 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5, f15_local8, f15_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f15_local5, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    arg0:SetTimer(0, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act17(arg0, arg1, arg2)
    local f16_local0 = 3019
    local f16_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 3
    local f16_local3 = 110
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act18(arg0, arg1, arg2)
    if arg0:GetNumber(6) == 0 then
        arg0:SetNumber(6, 1)
    elseif arg0:GetNumber(6) == 1 then
        arg0:SetNumber(6, 2)
    end
    local f17_local0 = 3020
    local f17_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 0
    local f17_local3 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f17_local0, TARGET_SELF, f17_local1, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act22(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local2 = 30
    local f19_local3 = true
    local f19_local4 = arg0:GetRandam_Int(1, 100)
    local f19_local5 = 3
    local f19_local6 = 0
    local f19_local7 = 999
    local f19_local8 = 100
    local f19_local9 = 0
    local f19_local10 = 0
    local f19_local11 = 4
    Approach_Act_Flex(arg0, arg1, f19_local5, f19_local6, f19_local7, f19_local8, f19_local9, f19_local10, f19_local11)
    if f19_local4 > 40 then
        local f19_local12 = 3007
        local f19_local13 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f19_local14 = 0
        local f19_local15 = 180
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f19_local12, TARGET_ENE_0, f19_local13, f19_local14, f19_local15, 0, 0)
    else
        local f19_local12 = arg0:GetRandam_Int(1, 100)
        local f19_local13 = 3000
        local f19_local14 = 3001
        local f19_local15 = 3002
        local f19_local16 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
        local f19_local17 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
        local f19_local18 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3
        local f19_local19 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f19_local20 = 2
        local f19_local21 = 70
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f19_local13, TARGET_ENE_0, f19_local16, f19_local20, f19_local21, 0, 0)
        if f19_local12 > 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, f19_local18, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f19_local14, TARGET_ENE_0, f19_local17, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f19_local15, TARGET_ENE_0, f19_local19, 0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act23(arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = 11
    local f20_local2 = 30
    local f20_local3 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 7.5)
    if f20_local1 <= f20_local0 then
        Approach_Act(arg0, arg1, f20_local1, f20_local2, Odds_Guard, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f20_local1, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act24(arg0, arg1, arg2)
    local f21_local0 = 0
    local f21_local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 7.5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act31(arg0, arg1, arg2)
    local f22_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act32(arg0, arg1, arg2)
    local f23_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    arg0:SetNumber(1, 1)
    if f23_local0 > 50 then
        arg0:SetNumber(15, 3)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
    else
        arg0:SetNumber(15, 4)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act33(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f24_local0 = arg0:GetRandam_Int(1, 100)
    local f24_local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10876)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_ActCP3(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_Halberd_301020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_LostKnight_Halberd_301020_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f32_local0 = arg1:GetDist(TARGET_ENE_0)
    local f32_local1 = arg1:GetDist(TARGET_FRI_0)
    local f32_local2 = arg1:GetRandam_Int(1, 100)
    local f32_local3 = arg1:GetPrevTargetState()
    local f32_local4 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    local f32_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 10164)
    local f32_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 10840)
    local f32_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 10850)
    local f32_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 10851)
    local f32_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 10880)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10874)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10870) then
        local f32_local10 = arg1:GetDist(TARGET_ENE_0)
        local f32_local11 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and f32_local10 < 7 then
            if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                if f32_local11 > 30 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3018, TARGET_ENE_0, 4, 0, 90)
                    return true
                elseif f32_local11 > 10 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3007, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            elseif f32_local11 > 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3018, TARGET_ENE_0, 4, 0, 90)
                return true
            elseif f32_local11 > 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3007, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and f32_local10 < 9 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3007, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10871) then
        local f32_local10 = arg1:GetDist(TARGET_ENE_0)
        local f32_local11 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                if f32_local10 < 3 then
                    if f32_local11 > 60 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 4, 0, 90)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3018, TARGET_ENE_0, 4, 0, 90)
                        return true
                    end
                elseif f32_local10 < 7 then
                    if faet > 20 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3018, TARGET_ENE_0, 4, 0, 90)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 4, 0, 90)
                        return true
                    end
                elseif f32_local10 < 10 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            elseif f32_local10 < 3 then
                if f32_local11 > 40 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 4, 0, 90)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3018, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            elseif f32_local10 < 7 then
                if faet > 70 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3018, TARGET_ENE_0, 4, 0, 90)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            elseif f32_local10 < 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10875) then
        local f32_local10 = arg1:GetDist(TARGET_ENE_0)
        local f32_local11 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and f32_local10 <= 6 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10876) then
        local f32_local10 = arg1:GetDist(TARGET_ENE_0)
        local f32_local11 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and f32_local10 >= 4 then
            local f32_local12 = arg1:GetRandam_Int(0, 100)
            if f32_local12 > 50 then
                LostKnight_SwordShield_301000_Act12(arg1, arg2)
            elseif f32_local12 > 20 then
                LostKnight_SwordShield_301000_Act24(arg1, arg2)
            else
                LostKnight_SwordShield_301000_Act11(arg1, arg2)
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        if f32_local0 >= 4 then
            if f32_local9 == true then
                if f32_local2 > 60 then
                    arg2:ClearSubGoal()
                    LostKnight_Halberd_301020_Act31(arg1, arg2)
                elseif f32_local2 > 30 then
                    arg2:ClearSubGoal()
                    LostKnight_Halberd_301020_Act32(arg1, arg2)
                end
            else
                arg2:ClearSubGoal()
                LostKnight_Halberd_301020_Act22(arg1, arg2)
            end
        end
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5029) == true and arg1:HasSpecialEffectId(TARGET_ENE_0, 10859) == false then
        local f32_local10 = arg1:GetDist(TARGET_ENE_0)
        local f32_local11 = arg1:GetRandam_Int(1, 100)
        selectFate_ToB = 1
        selectFate_ToBL = 1
        selectFate_ToBR = 1
        selectFate_ToL = 1
        selectFate_ToR = 1
        warpDist_x = arg1:GetRandam_Int(3, 5)
        if arg1:GetNumber(15) == 1 then
            selectFate_ToBL = 0
            selectFate_ToBR = 0
            selectFate_ToL = 0
            selectFate_ToR = 0
        elseif arg1:GetNumber(15) == 2 then

        elseif arg1:GetNumber(15) == 3 then
            selectFate_ToB = 0
            selectFate_ToBR = 0
            selectFate_ToR = 0
        elseif arg1:GetNumber(15) == 4 then
            selectFate_ToB = 0
            selectFate_ToBL = 0
            selectFate_ToL = 0
        end
        local f32_local12 = 4.5 - arg1:GetMapHitRadius(TARGET_SELF)
        local f32_local13 = 0
        local f32_local14 = 0
        local f32_local15 = arg1:GetMapHitRadius(TARGET_SELF)
        local f32_local16 = arg1:GetDist(TARGET_ENE_0)
        local f32_local17 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToB, warpDist_x + f32_local15, f32_local15, 0) <= warpDist_x then
            selectFate_ToB = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_x + f32_local15, f32_local15, 0) <= warpDist_x then
            selectFate_ToBL = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_x + f32_local15, f32_local15, 0) <= warpDist_x then
            selectFate_ToBR = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, warpDist_x + f32_local15, f32_local15, 0) <= warpDist_x then
            selectFate_ToL = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, warpDist_x + f32_local15, f32_local15, 0) <= warpDist_x then
            selectFate_ToR = 0
        end
        local f32_local18 = arg1:GetRandam_Int(0, selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR)
        local f32_local19 = AI_DIR_TYPE_ToB
        local f32_local20 = 0
        local f32_local21 = TARGET_ENE_0
        if 0 == selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
            arg1:SetNumber(15, 5)
        elseif 0 ~= AI_DIR_TYPE_ToB and f32_local18 <= selectFate_ToB then
            f32_local19 = AI_DIR_TYPE_ToB
            f32_local20 = warpDist_x
            f32_local21 = TARGET_ENE_0
        elseif 0 ~= selectFate_2 and f32_local18 <= selectFate_ToB + selectFate_ToBL then
            f32_local19 = AI_DIR_TYPE_ToBL
            f32_local20 = warpDist_x
            f32_local21 = TARGET_ENE_0
        elseif 0 ~= selectFate_3 and f32_local18 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR then
            f32_local19 = AI_DIR_TYPE_ToBR
            f32_local20 = warpDist_x
            f32_local21 = TARGET_ENE_0
        elseif 0 ~= selectFate_4 and f32_local18 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL then
            f32_local19 = AI_DIR_TYPE_ToL
            f32_local20 = warpDist_x
            f32_local21 = TARGET_ENE_0
        elseif 0 ~= selectFate_4 and f32_local18 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
            f32_local19 = AI_DIR_TYPE_ToR
            f32_local20 = warpDist_x
            f32_local21 = TARGET_ENE_0
        end
        if arg1:GetNumber(15) == 2 then
            arg2:ClearSubGoal()
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_SELF, AI_DIR_TYPE_B, f32_local20, f32_local21, arg1:GetRandam_Int(5, 7), -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        elseif arg1:GetNumber(15) == 5 then
            arg2:ClearSubGoal()
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f32_local19, f32_local20, f32_local21, 5, -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        else
            arg2:ClearSubGoal()
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f32_local19, f32_local20, f32_local21, 5, -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10874) then
        local f32_local10 = arg1:GetDist(TARGET_ENE_0)
        local f32_local11 = arg1:GetRandam_Int(1, 100)
        arg1:SetNumber(10, arg1:GetNumber(10) + 1)
        if arg1:GetNumber(10) == 1 then
            local f32_local12 = arg1:GetRandam_Int(0, 100)
        elseif arg1:GetNumber(10) == 2 then
            local f32_local12 = arg1:GetRandam_Int(30, 100)
        elseif arg1:GetNumber(10) >= 3 then
            local f32_local12 = arg1:GetRandam_Int(60, 100)
        end
        if f32_local11 > 70 and f32_local10 <= 5 then
            arg1:SetNumber(10, 0)
            local f32_local12 = arg1:GetRandam_Int(1, 100)
            if f32_local12 > 80 then
                LostKnight_Halberd_301020_Act09(arg1, arg2)
            else
                LostKnight_Halberd_301020_Act11(arg1, arg2)
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local f32_local10 = arg1:GetDist(TARGET_ENE_0)
        local f32_local11 = arg1:GetRandam_Int(1, 100)
        if arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16479) then
            if f32_local10 <= 3.5 then
                if f32_local11 >= 50 then
                    LostKnight_Halberd_301020_Act01(arg1, arg2)
                elseif f32_local11 >= 20 then
                    LostKnight_Halberd_301020_Act09(arg1, arg2)
                end
            elseif f32_local10 <= 20 then
                LostKnight_Halberd_301020_Act22(arg1, arg2)
            end
        elseif f32_local10 <= 3.5 then
            if f32_local11 >= 50 then
                LostKnight_Halberd_301020_Act11(arg1, arg2)
            elseif f32_local11 >= 20 then
                LostKnight_Halberd_301020_Act09(arg1, arg2)
            end
        elseif f32_local10 <= 20 then
            LostKnight_Halberd_301020_Act22(arg1, arg2)
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_LostKnight_Halberd_301020_AfterAttackAct, "LostKnight_Halberd_301020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LostKnight_Halberd_301020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


