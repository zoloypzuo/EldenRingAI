RegisterTableGoal(GOAL_LostKnight_DualSword_301010_Battle, "LostKnight_DualSword_301010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LostKnight_DualSword_301010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 0)
    arg1:SetNumber(4, 0)
    arg1:SetNumber(6, 0)
    arg1:SetNumber(10, 0)
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
    arg1:EnableUnfavorableAttackCheck(1000000, 3012)
    arg1:EnableUnfavorableAttackCheck(1000000, 3013)
    arg1:EnableUnfavorableAttackCheck(1000000, 3015)
    arg1:EnableUnfavorableAttackCheck(1000000, 3016)
    arg1:EnableUnfavorableAttackCheck(1000000, 3017)
    arg1:EnableUnfavorableAttackCheck(1000000, 3018)
    arg1:EnableUnfavorableAttackCheck(1000000, 3019)
    
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
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 11139)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 10880)
    arg1:SetStringIndexedNumber("c3010_DashRate", 0)
    arg1:SetStringIndexedNumber("c3010_WalkDist", 1)
    arg1:SetStringIndexedNumber("c3010_RunDist", 1)
    arg1:SetStringIndexedNumber("c3010_GuardRate", 0)
    arg1:SetStringIndexedNumber("c3010_WalkLife", 1)
    if f2_local8 == true then
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16451)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10874)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_TRUNK_COLLAPSE)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 10859)
    if f2_local10 == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 10855) and arg1:GetNumber(1) ~= 1 then
            f2_local0[14] = 50
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 160, 90, 20 - arg1:GetMapHitRadius(TARGET_SELF)) then
            f2_local0[21] = 1
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 140, 90, 3.2 - arg1:GetMapHitRadius(TARGET_SELF) + 2) then
                f2_local0[5] = 50
            end
        elseif f2_local3 >= 10.5 then
            f2_local0[1] = 5
            f2_local0[2] = 5
            f2_local0[3] = 5
            f2_local0[11] = 40
            f2_local0[12] = 20
            f2_local0[18] = 30
        elseif f2_local3 >= 5.5 then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[8] = 10
            f2_local0[11] = 30
            f2_local0[12] = 20
            f2_local0[18] = 30
        elseif f2_local3 >= 1.5 then
            f2_local0[1] = 40
            f2_local0[2] = 40
            f2_local0[7] = 20
            f2_local0[8] = 20
            f2_local0[12] = 40
            f2_local0[13] = 40
            f2_local0[17] = 30
        else
            f2_local0[1] = 40
            f2_local0[2] = 40
            f2_local0[7] = 20
            f2_local0[12] = 30
            f2_local0[13] = 50
            f2_local0[16] = 30
            f2_local0[17] = 20
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 160, 90, 20 - arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[21] = 1
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 140, 90, 3.2 - arg1:GetMapHitRadius(TARGET_SELF) + 2) then
            f2_local0[5] = 50
        end
    elseif f2_local3 >= 10.5 then
        f2_local0[18] = 30
        f2_local0[22] = 100
    elseif f2_local3 >= 5.5 then
        f2_local0[1] = 30
        f2_local0[2] = 30
        f2_local0[3] = 30
        f2_local0[8] = 20
        f2_local0[18] = 30
        f2_local0[22] = 20
        f2_local0[24] = 10
    elseif f2_local3 >= 1.5 then
        f2_local0[1] = 50
        f2_local0[2] = 50
        f2_local0[7] = 20
        f2_local0[8] = 20
        f2_local0[17] = 30
    else
        f2_local0[1] = 50
        f2_local0[2] = 50
        f2_local0[7] = 20
        f2_local0[16] = 30
        f2_local0[17] = 20
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 6, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 6, f2_local0[3], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3008, 5, f2_local0[5], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3009, 5, f2_local0[5], 0)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3018, 20, f2_local0[16], 0)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3019, 20, f2_local0[17], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3020, 70, f2_local0[18], 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        f2_local0[7] = SetCoolTime(arg1, arg2, 3013, 5, f2_local0[7], 0)
        f2_local0[8] = SetCoolTime(arg1, arg2, 3016, 5, f2_local0[8], 0)
    else
        f2_local0[7] = SetCoolTime(arg1, arg2, 3013, 10, f2_local0[7], 0)
        f2_local0[8] = SetCoolTime(arg1, arg2, 3016, 10, f2_local0[8], 0)
    end
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 10840)
    local f2_local12 = arg1:HasSpecialEffectId(TARGET_SELF, 10850)
    if f2_local12 == false then
        f2_local0[17] = 0
    end
    if f2_local11 == false then
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
    if f2_local11 == true or f2_local12 == true or arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        f2_local0[7] = f2_local0[7] * 1.3
        f2_local0[8] = f2_local0[8] * 1.5
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        f2_local0[7] = f2_local0[7] * 3
        f2_local0[8] = f2_local0[8] * 3
    end
    if arg1:GetNumber(4) >= 5 then
        f2_local0[7] = f2_local0[7] * 2
        f2_local0[8] = f2_local0[8] * 2
    end
    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
        f2_local0[7] = f2_local0[7] * 1.5
        f2_local0[16] = f2_local0[16] * 1.5
        f2_local0[17] = f2_local0[17] * 3
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true and arg1:GetNumber(1) ~= 1 then
        f2_local0[7] = f2_local0[7] * 5
        f2_local0[8] = f2_local0[8] * 5
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10859) then
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act03)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act05)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act08)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act18)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act24)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act31)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act47)
    local f2_local13 = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local13, f2_local2)
    
end

function LostKnight_DualSword_301010_Act01(arg0, arg1, arg2)
    arg0:SetNumber(4, arg0:GetNumber(4) + 1)
    local f3_local0 = arg0:GetRandam_Int(1, 100)
    local f3_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 10840)
    local f3_local2 = arg0:HasSpecialEffectId(TARGET_SELF, 10850)
    local f3_local3 = arg0:HasSpecialEffectId(TARGET_SELF, 11139)
    local f3_local4 = arg0:HasSpecialEffectId(TARGET_SELF, 10880)
    local f3_local5 = arg0:GetDist(TARGET_ENE_0)
    if f3_local2 == true or f3_local3 == true or f3_local5 >= 11 and f3_local4 == false then
        local f3_local6 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF)
        local f3_local7 = 0
        local f3_local8 = 999
        local f3_local9 = 100
        local f3_local10 = 0
        local f3_local11 = 0
        local f3_local12 = 6
        Approach_Act_Flex(arg0, arg1, f3_local6, f3_local7, f3_local8, f3_local9, f3_local10, f3_local11, f3_local12)
    else
        local f3_local6 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF)
        local f3_local7 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 6
        local f3_local8 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 6
        local f3_local9 = arg0:GetStringIndexedNumber("c3010_DashRate")
        local f3_local10 = 0
        local f3_local11 = 3
        local f3_local12 = 6
        Approach_Act_Flex(arg0, arg1, f3_local6, f3_local7, f3_local8, f3_local9, f3_local10, f3_local11, f3_local12)
    end
    local f3_local6 = 3000
    local f3_local7 = 3001
    local f3_local8 = 3002
    local f3_local9 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 9.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local12 = 0
    local f3_local13 = 140
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f3_local6, TARGET_ENE_0, f3_local9, f3_local12, f3_local13, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f3_local7, TARGET_ENE_0, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act02(arg0, arg1, arg2)
    arg0:SetNumber(4, arg0:GetNumber(4) + 1)
    local f4_local0 = arg0:GetRandam_Int(1, 100)
    local f4_local1 = arg0:GetDist(TARGET_ENE_0)
    local f4_local2 = arg0:HasSpecialEffectId(TARGET_SELF, 10840)
    local f4_local3 = arg0:HasSpecialEffectId(TARGET_SELF, 10850)
    local f4_local4 = arg0:HasSpecialEffectId(TARGET_SELF, 11139)
    local f4_local5 = arg0:HasSpecialEffectId(TARGET_SELF, 10880)
    local f4_local6 = arg0:GetDist(TARGET_ENE_0)
    if f4_local3 == true or f4_local4 == true or f4_local6 >= 11 and f4_local5 == false then
        local f4_local7 = 5.1 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local8 = 0
        local f4_local9 = 999
        local f4_local10 = 100
        local f4_local11 = 0
        local f4_local12 = 0
        local f4_local13 = 6
        Approach_Act_Flex(arg0, arg1, f4_local7, f4_local8, f4_local9, f4_local10, f4_local11, f4_local12, f4_local13)
    else
        local f4_local7 = 5.1 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local8 = 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 6
        local f4_local9 = 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 6
        local f4_local10 = arg0:GetStringIndexedNumber("c3010_DashRate")
        local f4_local11 = 0
        local f4_local12 = 3
        local f4_local13 = 6
        Approach_Act_Flex(arg0, arg1, f4_local7, f4_local8, f4_local9, f4_local10, f4_local11, f4_local12, f4_local13)
    end
    local f4_local7 = 3003
    local f4_local8 = 3005
    local f4_local9 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local11 = 0
    local f4_local12 = 140
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f4_local7, TARGET_ENE_0, f4_local9, f4_local11, f4_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f4_local8, TARGET_ENE_0, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act03(arg0, arg1, arg2)
    arg0:SetNumber(4, arg0:GetNumber(4) + 1)
    local f5_local0 = arg0:GetRandam_Int(1, 100)
    local f5_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 10840)
    local f5_local2 = arg0:HasSpecialEffectId(TARGET_SELF, 10850)
    local f5_local3 = arg0:HasSpecialEffectId(TARGET_SELF, 11139)
    local f5_local4 = arg0:HasSpecialEffectId(TARGET_SELF, 10880)
    local f5_local5 = arg0:GetDist(TARGET_ENE_0)
    if f5_local2 == true or f5_local3 == true or f5_local5 >= 11 and f5_local4 == false then
        local f5_local6 = 9.7 - arg0:GetMapHitRadius(TARGET_SELF)
        local f5_local7 = 0
        local f5_local8 = 999
        local f5_local9 = 100
        local f5_local10 = 0
        local f5_local11 = 0
        local f5_local12 = 6
        Approach_Act_Flex(arg0, arg1, f5_local6, f5_local7, f5_local8, f5_local9, f5_local10, f5_local11, f5_local12)
    else
        local f5_local6 = 9.7 - arg0:GetMapHitRadius(TARGET_SELF)
        local f5_local7 = 9.7 - arg0:GetMapHitRadius(TARGET_SELF) + 6
        local f5_local8 = 9.7 - arg0:GetMapHitRadius(TARGET_SELF) + 6
        local f5_local9 = arg0:GetStringIndexedNumber("c3010_DashRate")
        local f5_local10 = 0
        local f5_local11 = 3
        local f5_local12 = 6
        Approach_Act_Flex(arg0, arg1, f5_local6, f5_local7, f5_local8, f5_local9, f5_local10, f5_local11, f5_local12)
    end
    local f5_local6 = 3004
    local f5_local7 = 3005
    local f5_local8 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 0
    local f5_local11 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f5_local6, TARGET_ENE_0, f5_local8, f5_local10, f5_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f5_local7, TARGET_ENE_0, f5_local9, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act05(arg0, arg1, arg2)
    local f6_local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f6_local3 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    local f6_local7 = 3009
    local f6_local8 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 180
    arg0:SetTimer(5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f6_local7, TARGET_ENE_0, DIST_None, f6_local9, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act07(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(4, 0)
    local f7_local0 = 7.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 7.4 - arg0:GetMapHitRadius(TARGET_SELF) + 6
    local f7_local2 = 7.4 - arg0:GetMapHitRadius(TARGET_SELF) + 6
    local f7_local3 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 6
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3013
    local f7_local8 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    arg0:SetTimer(0, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act08(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(4, 0)
    local f8_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16451)
    local f8_local1 = 9.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 9.2 - arg0:GetMapHitRadius(TARGET_SELF) + 6
    local f8_local3 = 9.2 - arg0:GetMapHitRadius(TARGET_SELF) + 6
    local f8_local4 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 4
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local8 = 3016
    local f8_local9 = 3017
    local f8_local10 = 999
    local f8_local11 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local12 = 0
    local f8_local13 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local8, TARGET_ENE_0, f8_local10, f8_local12, f8_local13, 0, 0)
    arg0:SetTimer(0, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act09(arg0, arg1, arg2)
    local f9_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 6
    local f9_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 6
    local f9_local3 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 6
    local f9_local7 = 3017
    local f9_local8 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act11(arg0, arg1, arg2)
    local f10_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act12(arg0, arg1, arg2)
    local f11_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    arg0:SetNumber(1, 1)
    if f11_local0 > 50 then
        arg0:SetNumber(15, 3)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
    else
        arg0:SetNumber(15, 4)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act13(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f12_local0 = arg0:GetRandam_Int(1, 100)
    local f12_local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10876)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act14(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10876)
    arg0:SetNumber(1, 1)
    local f13_local0 = 5
    local f13_local1 = 3015
    local f13_local2 = 6
    local f13_local3 = 0
    local f13_local4 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16660)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 16656)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10126)
    local f13_local5 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(WARP_TIMER, 0)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_NONE, 0, AI_DIR_TYPE_F, 2)
    local f13_local6 = arg0:GetDist(TARGET_ENE_0)
    local f13_local7 = arg0:GetRandam_Int(1, 100)
    select_Attack1 = 3017
    selectFate_1F = 70
    selectFate_1B = 10
    selectFate_1L = 10
    selectFate_1R = 10
    selectFate_2F = 0
    selectFate_2B = 0
    selectFate_2L = 0
    selectFate_2R = 0
    warpDist_1F = 2.5
    warpDist_1B = 2.5
    warpDist_1L = 2.5
    warpDist_1R = 2.5
    warpDist_2F = 0
    warpDist_2B = 0
    warpDist_2L = 0
    warpDist_2R = 0
    same_Angle = 0
    local f13_local8 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 0
    local f13_local10 = 0
    local f13_local11 = arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local12 = arg0:GetDist(TARGET_ENE_0)
    local f13_local13 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local f13_local14 = 3027
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, warpDist_1F + f13_local11, f13_local11, 0) <= warpDist_1F then
        selectFate_1F = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, warpDist_1B + f13_local11, f13_local11, 0) <= warpDist_1B then
        selectFate_1B = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, warpDist_1L + f13_local11, f13_local11, 0) <= warpDist_1L then
        selectFate_1L = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, warpDist_1R + f13_local11, f13_local11, 0) <= warpDist_1R then
        selectFate_1R = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, warpDist_2F + f13_local11, f13_local11, 0) <= warpDist_2F then
        selectFate_2F = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, warpDist_2B + f13_local11, f13_local11, 0) <= warpDist_2B then
        selectFate_2B = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, warpDist_2L + f13_local11, f13_local11, 0) <= warpDist_2L then
        selectFate_2L = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, warpDist_2R + f13_local11, f13_local11, 0) <= warpDist_2R then
        selectFate_2B = 0
    end
    local f13_local15 = arg0:GetRandam_Int(0, selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R + selectFate_2F + selectFate_2B + selectFate_2L + selectFate_2R)
    local f13_local16 = AI_DIR_TYPE_F
    local f13_local17 = 0
    local f13_local18 = f13_local14
    local f13_local19 = TARGET_ENE_0
    if 0 == selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R + selectFate_2F + selectFate_2B + selectFate_2L + selectFate_2R then
        arg0:SetNumber(6, 1)
        f13_local16 = AI_DIR_TYPE_F
        f13_local17 = 0
        f13_local18 = 3027
    elseif 0 ~= selectFate_1F and f13_local15 <= selectFate_1F then
        f13_local16 = AI_DIR_TYPE_F
        f13_local17 = warpDist_1F
        f13_local18 = select_Attack1
        f13_local19 = TARGET_ENE_0
    elseif 0 ~= selectFate_1B and f13_local15 <= selectFate_1F + selectFate_1B then
        f13_local16 = AI_DIR_TYPE_B
        f13_local17 = warpDist_1B
        f13_local18 = select_Attack1
        f13_local19 = TARGET_ENE_0
    elseif 0 ~= selectFate_1L and f13_local15 <= selectFate_1F + selectFate_1B + selectFate_1L then
        f13_local16 = AI_DIR_TYPE_L
        f13_local17 = warpDist_1L
        f13_local18 = select_Attack1
        f13_local19 = TARGET_ENE_0
    elseif 0 ~= selectFate_1R and f13_local15 <= selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R then
        f13_local16 = AI_DIR_TYPE_R
        f13_local17 = warpDist_1R
        f13_local18 = select_Attack1
        f13_local19 = TARGET_ENE_0
    end
    arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_B, 2.5, TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, f13_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act15(arg0, arg1, arg2)
    local f14_local0 = 2.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 2.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 2.7 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 4
    local f14_local6 = 8
    local f14_local7 = 3015
    local f14_local8 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local9 = 0
    local f14_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    arg0:SetTimer(0, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act16(arg0, arg1, arg2)
    local f15_local0 = 5
    local f15_local1 = 999
    local f15_local2 = 999
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 4
    local f15_local6 = 8
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 3018
    local f15_local8 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local9 = 0
    local f15_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    arg0:SetTimer(4, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act17(arg0, arg1, arg2)
    local f16_local0 = 3019
    local f16_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 3
    local f16_local3 = 110
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act18(arg0, arg1, arg2)
    local f17_local0 = 3020
    local f17_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 0
    local f17_local3 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f17_local0, TARGET_SELF, f17_local1, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act22(arg0, arg1, arg2)
    local f19_local0 = arg0:GetRandam_Int(1, 100)
    local f19_local1 = 2
    local f19_local2 = 0
    local f19_local3 = 999
    local f19_local4 = 100
    local f19_local5 = 0
    local f19_local6 = 0
    local f19_local7 = 4
    Approach_Act_Flex(arg0, arg1, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6, f19_local7)
    if f19_local0 > 30 then
        local f19_local8 = 3000
        local f19_local9 = 3001
        local f19_local10 = 3002
        local f19_local11 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
        local f19_local12 = 9.4 - arg0:GetMapHitRadius(TARGET_SELF)
        local f19_local13 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
        local f19_local14 = 0
        local f19_local15 = 140
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f19_local8, TARGET_ENE_0, f19_local11, f19_local14, f19_local15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f19_local9, TARGET_ENE_0, f19_local12, 0, 0)
    else
        local f19_local8 = 3004
        local f19_local9 = 3005
        local f19_local10 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF)
        local f19_local11 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
        local f19_local12 = 0
        local f19_local13 = 90
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f19_local8, TARGET_ENE_0, f19_local10, f19_local12, f19_local13, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f19_local9, TARGET_ENE_0, f19_local11, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act23(arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = 10
    local f20_local2 = 30
    local f20_local3 = arg0:GetRandam_Int(1, 100)
    if f20_local1 <= f20_local0 then
        Approach_Act(arg0, arg1, f20_local1, f20_local2, Odds_Guard, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f20_local1, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act24(arg0, arg1, arg2)
    local f21_local0 = 0
    local f21_local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_ActCP3(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_DualSword_301010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_LostKnight_DualSword_301010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f29_local0 = arg1:GetDist(TARGET_ENE_0)
    local f29_local1 = arg1:GetDist(TARGET_FRI_0)
    local f29_local2 = arg1:GetRandam_Int(1, 100)
    local f29_local3 = arg1:GetPrevTargetState()
    local f29_local4 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    local f29_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 10840)
    local f29_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 10850)
    local f29_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 10880)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10874)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(5025) then
            if f29_local0 <= 3 and arg1:GetStringIndexedNumber("c3010count_att3001") < 1 then
                if f29_local2 > 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 9.4 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    arg1:SetStringIndexedNumber("c3010count_att3001", arg1:GetStringIndexedNumber("c3010count_att3001") + 1)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3002, TARGET_ENE_0, 4 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    arg1:SetStringIndexedNumber("c3010count_att3001", 0)
                    return true
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3002, TARGET_ENE_0, 4 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                arg1:SetStringIndexedNumber("c3010count_att3001", 0)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(16451) and (f29_local5 == true or f29_local6 == true) then
            local f29_local8 = arg1:GetDist(TARGET_ENE_0)
            if f29_local8 <= 4 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, DistToAtt3, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local f29_local8 = arg1:GetRandam_Int(1, 100) * 1
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 4) then
            if not not arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 90, 3) or arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 90, 3) then
                if f29_local8 > 70 and arg1:GetAttackPassedTime(3018) >= 20 then
                    arg2:ClearSubGoal()
                    LostKnight_DualSword_301010_Act16(arg1, arg2)
                    return true
                elseif f29_local8 > 10 then
                    arg2:ClearSubGoal()
                    LostKnight_DualSword_301010_Act05(arg1, arg2)
                    return true
                end
            elseif arg1:GetTimer(5) == 0 then
                arg2:ClearSubGoal()
                LostKnight_DualSword_301010_Act05(arg1, arg2)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:GetTimer(4) == 0 then
        local f29_local8 = arg1:GetRandam_Int(1, 100)
        local f29_local9 = 1
        if arg1:GetHpRate(TARGET_SELF) < 0.7 then
            f29_local9 = 1.8
        end
        f29_local8 = f29_local8 * f29_local9
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 170, 90, 3) and f29_local8 > 80 then
            arg2:ClearSubGoal()
            LostKnight_DualSword_301010_Act16(arg1, arg2)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5029) == true and arg1:HasSpecialEffectId(TARGET_ENE_0, 10859) == false then
        local f29_local8 = arg1:GetDist(TARGET_ENE_0)
        local f29_local9 = arg1:GetRandam_Int(1, 100)
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
        local f29_local10 = 4 - arg1:GetMapHitRadius(TARGET_SELF)
        local f29_local11 = 0
        local f29_local12 = 0
        local f29_local13 = arg1:GetMapHitRadius(TARGET_SELF)
        local f29_local14 = arg1:GetDist(TARGET_ENE_0)
        local f29_local15 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToB, warpDist_x + f29_local13, f29_local13, 0) <= warpDist_x then
            selectFate_ToB = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_x + f29_local13, f29_local13, 0) <= warpDist_x then
            selectFate_ToBL = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_x + f29_local13, f29_local13, 0) <= warpDist_x then
            selectFate_ToBR = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, warpDist_x + f29_local13, f29_local13, 0) <= warpDist_x then
            selectFate_ToL = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, warpDist_x + f29_local13, f29_local13, 0) <= warpDist_x then
            selectFate_ToR = 0
        end
        local f29_local16 = arg1:GetRandam_Int(0, selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR)
        local f29_local17 = AI_DIR_TYPE_ToB
        local f29_local18 = 0
        local f29_local19 = TARGET_ENE_0
        if 0 == selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
            arg1:SetNumber(15, 5)
        elseif 0 ~= AI_DIR_TYPE_ToB and f29_local16 <= selectFate_ToB then
            f29_local17 = AI_DIR_TYPE_ToB
            f29_local18 = warpDist_x
            f29_local19 = TARGET_ENE_0
        elseif 0 ~= selectFate_2 and f29_local16 <= selectFate_ToB + selectFate_ToBL then
            f29_local17 = AI_DIR_TYPE_ToBL
            f29_local18 = warpDist_x
            f29_local19 = TARGET_ENE_0
        elseif 0 ~= selectFate_3 and f29_local16 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR then
            f29_local17 = AI_DIR_TYPE_ToBR
            f29_local18 = warpDist_x
            f29_local19 = TARGET_ENE_0
        elseif 0 ~= selectFate_4 and f29_local16 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL then
            f29_local17 = AI_DIR_TYPE_ToL
            f29_local18 = warpDist_x
            f29_local19 = TARGET_ENE_0
        elseif 0 ~= selectFate_4 and f29_local16 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
            f29_local17 = AI_DIR_TYPE_ToR
            f29_local18 = warpDist_x
            f29_local19 = TARGET_ENE_0
        end
        if arg1:GetNumber(15) == 2 then
            arg2:ClearSubGoal()
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_SELF, AI_DIR_TYPE_B, f29_local18, f29_local19, arg1:GetRandam_Int(5, 7), -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        elseif arg1:GetNumber(15) == 5 then
            arg2:ClearSubGoal()
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f29_local17, f29_local18, f29_local19, 5, -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        else
            arg2:ClearSubGoal()
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f29_local17, f29_local18, f29_local19, 5, -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10874) then
        local f29_local8 = arg1:GetDist(TARGET_ENE_0)
        local f29_local9 = arg1:GetRandam_Int(1, 100)
        arg1:SetNumber(10, arg1:GetNumber(10) + 1)
        if arg1:GetNumber(10) == 1 then
            local f29_local10 = arg1:GetRandam_Int(0, 100)
        elseif arg1:GetNumber(10) == 2 then
            local f29_local10 = arg1:GetRandam_Int(30, 100)
        elseif arg1:GetNumber(10) >= 3 then
            local f29_local10 = arg1:GetRandam_Int(60, 100)
        end
        if f29_local9 > 80 and f29_local8 <= 5 then
            arg1:SetNumber(10, 0)
            local f29_local10 = arg1:GetRandam_Int(0, 100)
            if f29_local7 == true then
                if f29_local10 > 60 then
                    arg2:ClearSubGoal()
                    LostKnight_DualSword_301010_Act12(arg1, arg2)
                elseif f29_local10 > 20 then
                    arg2:ClearSubGoal()
                    LostKnight_DualSword_301010_Act13(arg1, arg2)
                elseif f29_local10 > 10 then
                    LostKnight_DualSword_301010_Act07(arg1, arg2)
                else
                    LostKnight_DualSword_301010_Act08(arg1, arg2)
                end
            elseif f29_local10 > 50 then
                LostKnight_DualSword_301010_Act07(arg1, arg2)
            else
                LostKnight_DualSword_301010_Act08(arg1, arg2)
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10875) then
        local f29_local8 = arg1:GetDist(TARGET_ENE_0)
        local f29_local9 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and f29_local8 <= 4 then
            if f29_local9 > 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 4, 0, 90)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10876) then
        local f29_local8 = arg1:GetDist(TARGET_ENE_0)
        local f29_local9 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and f29_local8 >= 4 then
            local f29_local10 = arg1:GetRandam_Int(0, 100)
            if f29_local10 > 50 then
                arg2:ClearSubGoal()
                LostKnight_DualSword_301010_Act12(arg1, arg2)
            elseif f29_local10 > 20 then
                LostKnight_DualSword_301010_Act24(arg1, arg2)
            else
                arg2:ClearSubGoal()
                LostKnight_DualSword_301010_Act11(arg1, arg2)
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        arg1:SetStringIndexedNumber("c3010_DashRate", 100)
        if f29_local7 == true then
            if f29_local2 > 90 then
                arg2:ClearSubGoal()
                LostKnight_DualSword_301010_Act11(arg1, arg2)
                return true
            end
        elseif f29_local0 >= 4 then
            arg2:ClearSubGoal()
            LostKnight_DualSword_301010_Act22(arg1, arg2)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local f29_local8 = arg1:GetDist(TARGET_ENE_0)
        local f29_local9 = arg1:GetRandam_Int(1, 100)
        if f29_local7 == true then
            if f29_local8 >= 5 then
                if f29_local9 > 90 then
                    arg2:ClearSubGoal()
                    LostKnight_DualSword_301010_Act11(arg1, arg2)
                end
            elseif f29_local9 > 90 then
                arg2:ClearSubGoal()
                LostKnight_DualSword_301010_Act13(arg1, arg2)
            end
        elseif f29_local8 >= 5 then
            arg2:ClearSubGoal()
            LostKnight_DualSword_301010_Act22(arg1, arg2)
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_LostKnight_DualSword_301010_AfterAttackAct, "LostKnight_DualSword_301010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LostKnight_DualSword_301010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


