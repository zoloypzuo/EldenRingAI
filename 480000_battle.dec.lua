RegisterTableGoal(GOAL_GreaterDemon480000_Battle, "GreaterDemon480000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GreaterDemon480000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(4, 0)
    arg1:SetNumber(15, 0)
    arg1:GetStringIndexedNumber("c4800flag_surrender")
    arg1:SetStringIndexedNumber("Attack_Cnt", 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetEventRequest()
    local f2_local6 = 0
    local f2_local7 = 5
    arg1:SetStringIndexedNumber("c4800_enchDist", 0)
    arg1:SetStringIndexedNumber("c4800_DashRate", 0)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 10630)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 10631)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 10635)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 10640)
    local f2_local12 = arg1:HasSpecialEffectId(TARGET_SELF, 10641)
    local f2_local13 = arg1:HasSpecialEffectId(TARGET_SELF, 10642)
    local f2_local14 = arg1:HasSpecialEffectId(TARGET_SELF, 10643)
    local f2_local15 = 1
    if f2_local9 == true then
        f2_local6 = 20
        f2_local15 = 0
        arg1:SetStringIndexedNumber("c4800_enchDist", 6)
    end
    local f2_local16 = arg1:HasSpecialEffectId(TARGET_SELF, 10610)
    local f2_local17 = arg1:HasSpecialEffectId(TARGET_SELF, 10611)
    local f2_local18 = arg1:HasSpecialEffectId(TARGET_SELF, 10612)
    if f2_local8 == true then
        arg1:SetStringIndexedNumber("c4800_DashRate", 100)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10600)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10601)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10602)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10603)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10604)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10605)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16454)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10606)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10607)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10608)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10620)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10645)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10646)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10647)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10648)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10649)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_TRUNK_COLLAPSE)
    if f2_local10 == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) then
            f2_local0[15] = 35
            f2_local0[21] = 55
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) then
            f2_local0[15] = 10
            f2_local0[21] = 30
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
                f2_local0[4] = 0
                f2_local0[5] = 60
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
                f2_local0[4] = 60
                f2_local0[5] = 0
            end
        elseif f2_local3 >= 20 then
            f2_local0[2] = 20
            f2_local0[6] = 20
            f2_local0[11] = 40
            f2_local0[22] = 20
        elseif f2_local3 >= 13 then
            f2_local0[2] = 10
            f2_local0[6] = 30
            f2_local0[11] = 30
            f2_local0[22] = 30
            f2_local0[24] = 25
        elseif f2_local3 >= 5 then
            f2_local0[2] = 10
            f2_local0[4] = 10
            f2_local0[5] = 10
            f2_local0[6] = 25
            f2_local0[7] = 20
            f2_local0[11] = 30
            f2_local0[22] = 10
            f2_local0[23] = 50
            f2_local0[24] = 25
        else
            f2_local0[4] = 30
            f2_local0[5] = 20
            f2_local0[10] = 40
            f2_local0[11] = 10
            f2_local0[15] = 15
            f2_local0[17] = 25
            f2_local0[23] = 50
        end
    elseif f2_local8 == true then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 60, 90, 90) then
            f2_local0[5] = 50
            f2_local0[9] = 30
            f2_local0[15] = 10 * f2_local15
        elseif f2_local3 >= 17 then
            f2_local0[8] = 30
            f2_local0[11] = 30
            f2_local0[16] = 35
            f2_local0[22] = 40
        elseif f2_local3 >= 11 then
            f2_local0[2] = 10 * f2_local15
            f2_local0[4] = 10
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[7] = 0
            f2_local0[8] = 30
            f2_local0[11] = 30
            f2_local0[16] = 30
            f2_local0[22] = 30
            f2_local0[24] = 25
        elseif f2_local3 >= 6 then
            f2_local0[4] = 10
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[7] = 20
            f2_local0[8] = 30
            f2_local0[9] = 20
            f2_local0[11] = 20
            f2_local0[12] = 20
            f2_local0[16] = 20
            f2_local0[24] = 25
        else
            f2_local0[4] = 20
            f2_local0[5] = 20
            f2_local0[9] = 30
            f2_local0[10] = 50
            f2_local0[11] = 20
            f2_local0[15] = 10
            f2_local0[17] = 35
            f2_local0[23] = 50
        end
    elseif f2_local11 == true and f2_local12 == false and arg1:GetHpRate(TARGET_SELF) < 0.9 then
        f2_local0[34] = 100
    elseif f2_local12 == true and f2_local13 == false and arg1:GetHpRate(TARGET_SELF) < 0.7 then
        f2_local0[34] = 100
    elseif f2_local13 == true and f2_local14 == false and arg1:GetHpRate(TARGET_SELF) < 0.5 then
        f2_local0[34] = 100
    elseif f2_local14 == true and f2_local9 == false then
        f2_local0[35] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) then
        f2_local0[15] = 35
        f2_local0[21] = 55
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) then
        f2_local0[15] = 10
        f2_local0[21] = 30
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
            f2_local0[4] = 0
            f2_local0[5] = 60
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
            f2_local0[4] = 60
            f2_local0[5] = 0
        end
    elseif f2_local3 >= 20 then
        f2_local0[2] = 20
        f2_local0[6] = 20
        f2_local0[11] = 40
        f2_local0[22] = 20
    elseif f2_local3 >= 13 then
        f2_local0[2] = 10
        f2_local0[6] = 30
        f2_local0[11] = 30
        f2_local0[22] = 30
        f2_local0[24] = 25
    elseif f2_local3 >= 5 then
        f2_local0[2] = 10
        f2_local0[4] = 10
        f2_local0[5] = 10
        f2_local0[6] = 25
        f2_local0[7] = 20
        f2_local0[11] = 30
        f2_local0[22] = 10
        f2_local0[23] = 30
        f2_local0[24] = 25
    else
        f2_local0[4] = 30
        f2_local0[5] = 20
        f2_local0[10] = 40
        f2_local0[11] = 10
        f2_local0[15] = 15
        f2_local0[17] = 25
        f2_local0[23] = 50
    end
    if f2_local16 == true then
        f2_local0[23] = 0
        f2_local0[24] = 0
    end
    if f2_local17 == true then
        f2_local0[23] = 0
    end
    if f2_local18 == true then
        f2_local0[24] = 0
    end
    if arg1:GetStringIndexedNumber("Attack_Cnt") <= 3 then
        f2_local0[23] = f2_local0[23] * 1
        f2_local0[24] = f2_local0[24] * 1
    elseif arg1:GetStringIndexedNumber("Attack_Cnt") <= 5 then
        f2_local0[23] = f2_local0[23] * 1.2
        f2_local0[24] = f2_local0[24] * 1.5
    elseif arg1:GetStringIndexedNumber("Attack_Cnt") <= 8 then
        f2_local0[23] = f2_local0[23] * 1.5
        f2_local0[24] = f2_local0[24] * 3
    else
        f2_local0[23] = f2_local0[23] * 2
        f2_local0[24] = f2_local0[24] * 4
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 60, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 15, f2_local0[2], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3006, 8, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3007, 8, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3008, 4, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3009, 15, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3027, 40, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3028, 30, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3011, 15, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3010, 5, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3029, 15, f2_local0[12], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[15], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3017, 15, f2_local0[15], 0)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3020, 25, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3033, 40, f2_local0[17], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3014, 8, f2_local0[5], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3015, 8, f2_local0[5], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3016, 8, f2_local0[5], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3017, 8, f2_local0[5], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3014, 8, f2_local0[4], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3015, 8, f2_local0[4], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3016, 8, f2_local0[4], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3017, 8, f2_local0[4], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3014, 8, f2_local0[6], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3015, 8, f2_local0[6], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3016, 8, f2_local0[6], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3017, 8, f2_local0[6], 1)
    if f2_local3 < 3 then
        f2_local0[5] = 0
        f2_local0[11] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act12)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act17)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act24)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act35)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, GreaterDemon480000_Act47)
    local f2_local19 = REGIST_FUNC(arg1, arg2, GreaterDemon480000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local19, f2_local2)
    
end

function GreaterDemon480000_Act01(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:SetStringIndexedNumber("Attack_Cnt", arg0:GetStringIndexedNumber("Attack_Cnt") + 1)
    local f3_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 30 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    local f3_local7 = 3000
    local f3_local8 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 30, f3_local7, TARGET_ENE_0, DIST_None, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act02(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:SetStringIndexedNumber("Attack_Cnt", arg0:GetStringIndexedNumber("Attack_Cnt") + 1)
    local f4_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f4_local3 = arg0:GetStringIndexedNumber("c4800_DashRate")
    local f4_local4 = 0
    local f4_local5 = 1
    local f4_local6 = 1
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act03(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act04(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:SetStringIndexedNumber("Attack_Cnt", arg0:GetStringIndexedNumber("Attack_Cnt") + 1)
    local f6_local0 = arg0:GetRandam_Int(1, 100)
    local f6_local1 = arg0:GetDist(TARGET_ENE_0)
    local f6_local2 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local4 = 7 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f6_local5 = arg0:GetStringIndexedNumber("c4800_DashRate")
    local f6_local6 = 0
    local f6_local7 = 0.5
    local f6_local8 = 0.5
    Approach_Act_Flex(arg0, arg1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7, f6_local8)
    local f6_local9 = 3006
    local f6_local10 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local11 = 0
    local f6_local12 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local9, TARGET_ENE_0, arg0:GetStringIndexedNumber("c4800_enchDist") + 7 - arg0:GetMapHitRadius(TARGET_SELF), f6_local11, f6_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act05(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:SetStringIndexedNumber("Attack_Cnt", arg0:GetStringIndexedNumber("Attack_Cnt") + 1)
    local f7_local0 = arg0:GetRandam_Int(1, 100)
    local f7_local1 = arg0:GetDist(TARGET_ENE_0)
    local f7_local2 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local4 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f7_local5 = arg0:GetStringIndexedNumber("c4800_DashRate")
    local f7_local6 = 0
    local f7_local7 = 0.5
    local f7_local8 = 0.5
    Approach_Act_Flex(arg0, arg1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7, f7_local8)
    local f7_local9 = 3007
    local f7_local10 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local11 = 0
    local f7_local12 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local9, TARGET_ENE_0, arg0:GetStringIndexedNumber("c4800_enchDist") + 8.5 - arg0:GetMapHitRadius(TARGET_SELF), f7_local11, f7_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act06(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:SetStringIndexedNumber("Attack_Cnt", arg0:GetStringIndexedNumber("Attack_Cnt") + 1)
    local f8_local0 = arg0:GetRandam_Int(1, 100)
    local f8_local1 = arg0:GetDist(TARGET_ENE_0)
    local f8_local2 = 18 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 18 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local4 = 18 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f8_local5 = arg0:GetStringIndexedNumber("c4800_DashRate")
    local f8_local6 = 0
    local f8_local7 = 1
    local f8_local8 = 1
    Approach_Act_Flex(arg0, arg1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7, f8_local8)
    local f8_local9 = 3008
    local f8_local10 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local11 = 0
    local f8_local12 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local9, TARGET_ENE_0, arg0:GetStringIndexedNumber("c4800_enchDist") + 18 - arg0:GetMapHitRadius(TARGET_SELF), f8_local11, f8_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act07(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:SetStringIndexedNumber("Attack_Cnt", arg0:GetStringIndexedNumber("Attack_Cnt") + 1)
    local f9_local0 = arg0:GetRandam_Int(1, 100)
    local f9_local1 = arg0:GetDist(TARGET_ENE_0)
    local f9_local2 = arg0:HasSpecialEffectId(TARGET_SELF, 10631)
    local f9_local3 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local4 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local5 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f9_local6 = arg0:GetStringIndexedNumber("c4800_DashRate")
    local f9_local7 = 0
    local f9_local8 = 1
    local f9_local9 = 1
    Approach_Act_Flex(arg0, arg1, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7, f9_local8, f9_local9)
    local f9_local10 = 3009
    local f9_local11 = 3025
    local f9_local12 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local13 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local14 = 0
    local f9_local15 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local10, TARGET_ENE_0, arg0:GetStringIndexedNumber("c4800_enchDist") + 8.5 - arg0:GetMapHitRadius(TARGET_SELF), f9_local14, f9_local15, 0, 0)
    if f9_local2 == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, f9_local11, TARGET_ENE_0, f9_local12, 0, 0, f9_local15)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act08(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:SetStringIndexedNumber("Attack_Cnt", arg0:GetStringIndexedNumber("Attack_Cnt") + 1)
    local f10_local0 = arg0:GetRandam_Int(1, 100)
    local f10_local1 = arg0:GetDist(TARGET_ENE_0)
    local f10_local2 = 18 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local3 = 18 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local4 = 18 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f10_local5 = arg0:GetStringIndexedNumber("c4800_DashRate")
    local f10_local6 = 0
    local f10_local7 = 4
    local f10_local8 = 8
    local f10_local9 = 3027
    local f10_local10 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local11 = 0
    local f10_local12 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f10_local9, TARGET_ENE_0, arg0:GetStringIndexedNumber("c4800_enchDist") + 18 - arg0:GetMapHitRadius(TARGET_SELF), f10_local11, f10_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act09(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:SetStringIndexedNumber("Attack_Cnt", arg0:GetStringIndexedNumber("Attack_Cnt") + 1)
    local f11_local0 = arg0:GetRandam_Int(1, 100)
    local f11_local1 = arg0:GetDist(TARGET_ENE_0)
    local f11_local2 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local4 = 30 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f11_local5 = arg0:GetStringIndexedNumber("c4800_DashRate")
    local f11_local6 = 0
    local f11_local7 = 4
    local f11_local8 = 8
    local f11_local9 = 3028
    local f11_local10 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local11 = 0
    local f11_local12 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f11_local9, TARGET_ENE_0, DIST_None, f11_local11, f11_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act10(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:SetStringIndexedNumber("Attack_Cnt", arg0:GetStringIndexedNumber("Attack_Cnt") + 1)
    local f12_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f12_local3 = arg0:GetStringIndexedNumber("c4800_DashRate")
    local f12_local4 = 0
    local f12_local5 = 1
    local f12_local6 = 1
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10607)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16456)
    local f12_local7 = 3011
    local f12_local8 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 0
    local f12_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f12_local7, TARGET_ENE_0, DIST_None, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act11(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:SetStringIndexedNumber("Attack_Cnt", arg0:GetStringIndexedNumber("Attack_Cnt") + 1)
    local f13_local0 = 16 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 16 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 16 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f13_local3 = arg0:GetStringIndexedNumber("c4800_DashRate")
    local f13_local4 = 0
    local f13_local5 = 0.5
    local f13_local6 = 0.5
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3010
    local f13_local8 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 0
    local f13_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f13_local7, TARGET_ENE_0, arg0:GetStringIndexedNumber("c4800_enchDist") + 16 - arg0:GetMapHitRadius(TARGET_SELF), f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act12(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:SetStringIndexedNumber("Attack_Cnt", arg0:GetStringIndexedNumber("Attack_Cnt") + 1)
    local f14_local0 = arg0:GetRandam_Int(1, 100)
    local f14_local1 = arg0:GetDist(TARGET_ENE_0)
    local f14_local2 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local3 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local4 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f14_local5 = arg0:GetStringIndexedNumber("c4800_DashRate")
    local f14_local6 = 0
    local f14_local7 = 4
    local f14_local8 = 8
    Approach_Act_Flex(arg0, arg1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7, f14_local8)
    local f14_local9 = 3029
    local f14_local10 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local11 = 0
    local f14_local12 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f14_local9, TARGET_ENE_0, arg0:GetStringIndexedNumber("c4800_enchDist") + 7.8 - arg0:GetMapHitRadius(TARGET_SELF), f14_local11, f14_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act15(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:SetStringIndexedNumber("Attack_Cnt", arg0:GetStringIndexedNumber("Attack_Cnt") + 1)
    local f15_local0 = arg0:GetRandam_Int(1, 100)
    local f15_local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local3 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f15_local4 = arg0:GetStringIndexedNumber("c4800_DashRate")
    local f15_local5 = 0
    local f15_local6 = 1
    local f15_local7 = 1
    local f15_local8 = 3016
    local f15_local9 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local10 = 0
    local f15_local11 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f15_local8, TARGET_ENE_0, f15_local9, f15_local10, f15_local11, 0, 0)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 90, 7 - arg0:GetMapHitRadius(TARGET_SELF)) and f15_local0 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Int(2, 5), TARGET_ENE_0, 6.5, TARGET_ENE_0, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act16(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:SetStringIndexedNumber("Attack_Cnt", arg0:GetStringIndexedNumber("Attack_Cnt") + 1)
    local f16_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f16_local3 = arg0:GetStringIndexedNumber("c4800_DashRate")
    local f16_local4 = 0
    local f16_local5 = 4
    local f16_local6 = 8
    local f16_local7 = 3020
    local f16_local8 = 3027
    local f16_local9 = 100
    local f16_local10 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local11 = 0
    local f16_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10607)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local7, TARGET_ENE_0, f16_local9, f16_local11, f16_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act17(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:SetStringIndexedNumber("Attack_Cnt", arg0:GetStringIndexedNumber("Attack_Cnt") + 1)
    local f17_local0 = 3033
    local f17_local1 = 3027
    local f17_local2 = 100
    local f17_local3 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local4 = 0
    local f17_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local0, TARGET_ENE_0, f17_local2, f17_local4, f17_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_ActCP1(arg0, arg1, arg2)
    local f18_local0 = ATT30_DIST_MAX
    local f18_local1 = ATT30_DIST_MAX
    local f18_local2 = ATT30_DIST_MAX + 3
    local f18_local3 = 50
    local f18_local4 = 50
    local f18_local5 = 4
    local f18_local6 = 8
    Approach_Act_Flex(arg0, arg1, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    local f18_local7 = 3000
    local f18_local8 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local9 = 0
    local f18_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f18_local7, TARGET_ENE_0, f18_local8, f18_local9, f18_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_ActCP2(arg0, arg1, arg2)
    local f19_local0 = arg0:GetRandam_Int(1, 100)
    local f19_local1 = ATT30_DIST_MAX
    local f19_local2 = ATT30_DIST_MAX
    local f19_local3 = ATT30_DIST_MAX + 3
    local f19_local4 = 100
    local f19_local5 = 0
    local f19_local6 = 4
    local f19_local7 = 8
    Approach_Act_Flex(arg0, arg1, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6, f19_local7)
    local f19_local8 = 3001
    local f19_local9 = 3002
    local f19_local10 = 3003
    local f19_local11 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local12 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local13 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local14 = 0
    local f19_local15 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f19_local8, TARGET_ENE_0, f19_local11, f19_local14, f19_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, f19_local9, TARGET_ENE_0, f19_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 15, f19_local10, TARGET_ENE_0, f19_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act22(arg0, arg1, arg2)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = 6.5
    local f21_local2 = arg0:GetRandam_Int(1, 100)
    local f21_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Int(2, 4), TARGET_ENE_0, f21_local1, TARGET_ENE_0, false, f21_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act23(arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = arg0:GetRandam_Int(5, 6)
    local f22_local2 = 20
    local f22_local3 = 100
    local f22_local4 = arg0:GetRandam_Int(1, 100)
    local f22_local5 = arg0:HasSpecialEffectId(TARGET_SELF, 10555)
    local f22_local6 = -1
    if f22_local4 <= f22_local3 then
        f22_local6 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, f22_local1, TARGET_ENE_0, false, f22_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act24(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("Attack_Cnt", 0)
    local f23_local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNumber(3) == 1 then
        arg0:SetNumber(3, 1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(3, 4), TARGET_ENE_0, 0, arg0:GetRandam_Int(60, 80), true, true, -1)
    elseif arg0:GetNumber(3) == 2 then
        arg0:SetNumber(3, 2)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(3, 4), TARGET_ENE_0, 1, arg0:GetRandam_Int(60, 80), true, true, -1)
    elseif f23_local0 > 50 then
        arg0:SetNumber(3, 1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(3, 4), TARGET_ENE_0, 0, arg0:GetRandam_Int(60, 80), true, true, -1)
    else
        arg0:SetNumber(3, 2)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(3, 4), TARGET_ENE_0, 1, arg0:GetRandam_Int(60, 80), true, true, -1)
    end
    arg0:SetNumber(10, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act34(arg0, arg1, arg2)
    local f24_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 10640)
    local f24_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 10641)
    local f24_local2 = arg0:HasSpecialEffectId(TARGET_SELF, 10642)
    local f24_local3 = arg0:HasSpecialEffectId(TARGET_SELF, 10643)
    if f24_local0 == true and f24_local1 == false and arg0:GetHpRate(TARGET_SELF) < 0.9 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3002, TARGET_SELF, DIST_None, 0, 0)
    elseif f24_local1 == true and f24_local2 == false and arg0:GetHpRate(TARGET_SELF) < 0.8 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3003, TARGET_SELF, DIST_None, 0, 0)
    elseif f24_local2 == true and f24_local3 == false and arg0:GetHpRate(TARGET_SELF) < 0.7 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3004, TARGET_SELF, DIST_None, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act35(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3023, TARGET_SELF, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_ActCP3(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 30, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GreaterDemon480000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_GreaterDemon480000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f33_local0 = arg1:GetDist(TARGET_ENE_0)
    local f33_local1 = arg1:GetDist(TARGET_FRI_0)
    local f33_local2 = arg1:GetRandam_Int(1, 100)
    local f33_local3 = arg1:GetRandam_Int(1, 100)
    local f33_local4 = arg1:HasSpecialEffectId(TARGET_SELF, 10630)
    local f33_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 10631)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10600)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10601)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10602)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10603)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10604)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10605)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16454)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10606)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10607)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10608)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10620)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10645)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10646)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10647)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10648)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10649)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    local f33_local6 = arg1:GetPrevTargetState()
    local f33_local7 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    local f33_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 17603)
    if arg1:IsInterupt(INTERUPT_Damaged) then
        if BreakDown == true and ReactionTime == false then
            local f33_local9 = arg1:GetDist(TARGET_ENE_0)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_SELF, 0, 0, 0, 0, 0)
            return true
        elseif f33_local8 == true then
            local f33_local9 = arg1:GetDist(TARGET_ENE_0)
            local f33_local10 = arg1:GetRandam_Int(1, 100)
            local f33_local11 = arg1:GetRandam_Int(1, 100)
            arg2:ClearSubGoal()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and pcSurrendCheck == true then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 60, 3039, TARGET_ENE_0, DIST_None, 0, 0, 0)
        GreaterDemon480000_Act05(arg1, arg2)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(10607) then
            local f33_local9 = arg1:GetDist(TARGET_ENE_0)
            local f33_local10 = arg1:GetRandam_Int(1, 100)
            arg2:ClearSubGoal()
            if f33_local9 < 25 then
                if f33_local10 > 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3022, TARGET_ENE_0, 30 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    return true
                elseif f33_local10 > 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3027, TARGET_ENE_0, 30 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    return true
                end
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(10620) then
            local f33_local9 = arg1:GetDist(TARGET_ENE_0)
            local f33_local10 = arg1:GetRandam_Int(1, 100)
            if f33_local9 > 10 then
                if f33_local10 > 50 then
                    arg2:ClearSubGoal()
                    GreaterDemon480000_Act09(arg1, arg2)
                    return true
                else
                    arg2:ClearSubGoal()
                    GreaterDemon480000_Act16(arg1, arg2)
                    return true
                end
            else
                arg2:ClearSubGoal()
                GreaterDemon480000_Act09(arg1, arg2)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(10608) then
            local f33_local9 = arg1:GetDist(TARGET_ENE_0)
            local f33_local10 = arg1:GetRandam_Int(1, 100)
            arg2:ClearSubGoal()
            if f33_local9 > 7 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3030, TARGET_ENE_0, 30 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(10602) and f33_local0 <= 45 then
            arg2:ClearSubGoal()
            if f33_local0 <= 4 then
                local f33_local9 = arg1:GetRandam_Int(1, 100)
                if arg1:GetAttackPassedTime(3011) >= 30 and f33_local9 > 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3011, TARGET_ENE_0, 6 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                else
                    local f33_local10 = arg1:GetRandam_Int(1, 100)
                    if f33_local10 > 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3024, TARGET_ENE_0, 6 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3012, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    end
                    return true
                end
            elseif f33_local0 < 6 then
                local f33_local9 = arg1:GetRandam_Int(1, 100)
                if f33_local9 > 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3012, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                else
                    local f33_local10 = arg1:GetRandam_Int(1, 100)
                    if f33_local10 > 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3014, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 40 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                        return true
                    end
                end
            elseif f33_local2 > 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3014, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                return true
            elseif f33_local2 > 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 40 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                return true
            end
            return true
        end
        if arg1:GetSpecialEffectActivateInterruptId(10605) then
            local f33_local9 = arg1:GetRandam_Int(1, 100)
            if f33_local0 <= 45 then
                arg2:ClearSubGoal()
                if f33_local0 <= 5 then
                    if arg1:GetAttackPassedTime(3011) >= 30 and f33_local9 > 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3011, TARGET_ENE_0, 6 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    else
                        if f33_local9 > 40 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3024, TARGET_ENE_0, 6 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3012, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                        end
                        return true
                    end
                elseif f33_local0 < 9 then
                    if f33_local9 < 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3012, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3029, TARGET_ENE_0, 7.8 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    end
                elseif f33_local0 < 18 then
                    if f33_local9 < 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3014, TARGET_ENE_0, 40 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3029, TARGET_ENE_0, 7.8 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    end
                end
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(10603) then
            local f33_local9 = arg1:GetRandam_Int(1, 100)
            if f33_local0 <= 45 then
                arg2:ClearSubGoal()
                if f33_local0 <= 4 then
                    local f33_local10 = arg1:GetRandam_Int(1, 100)
                    if arg1:GetAttackPassedTime(3011) >= 30 and f33_local10 > 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3011, TARGET_ENE_0, 6 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    else
                        local f33_local11 = arg1:GetRandam_Int(1, 100)
                        if f33_local11 > 66 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3026, TARGET_ENE_0, 6 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                        elseif f33_local11 > 33 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3013, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3017, TARGET_ENE_0, 6 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                        end
                        return true
                    end
                elseif f33_local0 < 6 then
                    local f33_local10 = arg1:GetRandam_Int(1, 100)
                    if f33_local10 > 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3013, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    else
                        local f33_local11 = arg1:GetRandam_Int(1, 100)
                        if f33_local11 > 50 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3015, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 40 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                            return true
                        end
                    end
                elseif f33_local9 > 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3015, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    return true
                elseif f33_local9 > 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 40 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    return true
                end
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(10600) then
            local f33_local9 = arg1:GetRandam_Int(1, 100)
            if f33_local4 == true and f33_local9 > 40 then
                if f33_local0 <= 45 then
                    arg2:ClearSubGoal()
                    if f33_local0 < 4 then
                        local f33_local10 = arg1:GetRandam_Int(1, 100)
                        if arg1:GetAttackPassedTime(3011) >= 30 and f33_local10 > 50 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3011, TARGET_ENE_0, 6 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3024, TARGET_ENE_0, 6 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                        end
                        return true
                    elseif arg1:GetAttackPassedTime(3020) >= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3020, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    else
                        local f33_local10 = arg1:GetRandam_Int(1, 100)
                        if f33_local10 > 50 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3014, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 40 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                            return true
                        end
                        return true
                    end
                end
            else
                arg2:ClearSubGoal()
                if f33_local0 < 4 then
                    local f33_local10 = arg1:GetRandam_Int(1, 100)
                    if arg1:GetAttackPassedTime(3011) >= 30 and f33_local10 > 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3011, TARGET_ENE_0, 6 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3024, TARGET_ENE_0, 6 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    end
                    return true
                elseif f33_local9 > 50 then
                    local f33_local10 = arg1:GetRandam_Int(1, 100)
                    if f33_local10 > 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3014, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 40 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                        return true
                    end
                end
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(10606) then
            local f33_local9 = arg1:GetRandam_Int(1, 100)
            if f33_local4 == true and 7 - arg1:GetMapHitRadius(TARGET_SELF) <= f33_local0 and f33_local0 <= arg1:GetStringIndexedNumber("c4800_enchDist") + 20 - arg1:GetMapHitRadius(TARGET_SELF) + 2 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3031, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 20 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(10604) then
            local f33_local9 = arg1:GetRandam_Int(1, 100)
            if f33_local4 == true and f33_local9 > 40 then
                arg2:ClearSubGoal()
                if f33_local0 <= 4 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3026, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    return true
                elseif f33_local0 > 6 and f33_local0 < 15 then
                    local f33_local10 = arg1:GetRandam_Int(1, 100)
                    if f33_local10 > 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3029, TARGET_ENE_0, 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    else
                        local f33_local11 = arg1:GetRandam_Int(1, 100)
                        if f33_local11 > 50 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3015, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 40 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                            return true
                        end
                    end
                end
                return true
            else
                arg2:ClearSubGoal()
                local f33_local10 = arg1:GetRandam_Int(1, 100)
                if f33_local0 <= 3 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3026, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    return true
                elseif f33_local10 > 60 then
                    local f33_local11 = arg1:GetRandam_Int(1, 100)
                    if f33_local11 > 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3015, TARGET_ENE_0, arg1:GetStringIndexedNumber("c4800_enchDist") + 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 40 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                        return true
                    end
                end
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(10601) and f33_local0 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3034, TARGET_ENE_0, 30 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16456) then
        local f33_local9 = arg1:GetDist(TARGET_ENE_0)
        local f33_local10 = arg1:GetRandam_Int(1, 100)
        if f33_local4 == true then
            if f33_local10 > 50 and arg1:GetAttackPassedTime(3020) >= 20 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3020, TARGET_ENE_0, 30 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
            elseif f33_local10 > 30 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16482)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3008, TARGET_ENE_0, 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3027, TARGET_ENE_0, 30 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                return true
            end
        elseif f33_local9 <= 8 then
            if f33_local10 > 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3009, TARGET_ENE_0, 30 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                local f33_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 10631)
                local f33_local12 = 3025
                local f33_local13 = 15 - arg1:GetMapHitRadius(TARGET_SELF)
                local f33_local14 = 7 - arg1:GetMapHitRadius(TARGET_SELF)
                local f33_local15 = 0
                local f33_local16 = 120
                if f33_local11 == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, f33_local12, TARGET_ENE_0, f33_local13, 0, 0, f33_local16)
                    return true
                end
            end
        else
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16482)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3008, TARGET_ENE_0, 7 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_GreaterDemon480000_AfterAttackAct, "GreaterDemon480000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GreaterDemon480000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


