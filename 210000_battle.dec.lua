RegisterTableGoal(GOAL_BlackSword210000_Battle, "BlackSword210000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackSword210000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:SetStringIndexedNumber("isRunRate", 0)
    arg1:SetStringIndexedNumber("isFirstAttack", 0)
    arg1:SetStringIndexedNumber("isThrowSeal", 0)
    arg1:SetStringIndexedNumber("ReduceCTLightWave", 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:DeleteObserve(0)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 38)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 79)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 83)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14540)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14541)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14542)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14543)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14544)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14545)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14546)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    if arg1:HasSpecialEffectId(TARGET_SELF, 14547) == false then
        arg1:SetStringIndexedNumber("isRunRate", 100)
    else
        arg1:SetStringIndexedNumber("isRunRate", 0)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        arg1:SetStringIndexedNumber("isThrowSeal", 1)
        arg1:SetStringIndexedNumber("ReduceCTLightWave", 8)
    end
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    if arg1:GetStringIndexedNumber("isFirstAttack") == 0 and arg1:HasSpecialEffectId(TARGET_SELF, 14547) then
        arg1:SetStringIndexedNumber("isFirstAttack", 1)
        f2_local0[15] = 10000
    elseif arg1:IsRiding(TARGET_ENE_0) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14547) == false then
        f2_local0[20] = 100
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 79) then
        f2_local0[17] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14506) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14507) == false and arg1:GetStringIndexedNumber("isFirstAttack") == 0 then
        arg1:SetStringIndexedNumber("isFirstAttack", 1)
        f2_local0[7] = 100
    elseif f2_local3 < 4 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 6) then
            f2_local0[5] = 20
            f2_local0[8] = 10
            f2_local0[9] = 25
            f2_local0[11] = 25
            f2_local0[13] = 30
            f2_local0[15] = 20
            f2_local0[16] = 20
        else
            f2_local0[5] = 10
            f2_local0[47] = 90
            f2_local0[8] = 1
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14532) then
            f2_local0[8] = 360
            f2_local0[47] = 180
        end
    elseif f2_local3 < 6 then
        f2_local0[4] = 35
        f2_local0[8] = 10
        f2_local0[9] = 15
        f2_local0[11] = 15
        f2_local0[13] = 25
        f2_local0[15] = 20
        f2_local0[16] = 20
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
            f2_local0[47] = 5000
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14532) then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                f2_local0[8] = 800
            end
            f2_local0[47] = 5000
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14506) == false then
        f2_local0[4] = 30
        f2_local0[5] = 15
        f2_local0[9] = 25
        f2_local0[13] = 20
        f2_local0[15] = 20
        f2_local0[16] = 15
        f2_local0[14] = 40
        f2_local0[49] = 10
        if arg1:HasSpecialEffectId(TARGET_SELF, 14530) then
            if f2_local4 < 30 then
                f2_local0[49] = 999
            end
            f2_local0[14] = 80
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
            f2_local0[47] = 5000
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14532) then
            f2_local0[14] = 300
            f2_local0[22] = 240
            f2_local0[49] = 240
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                f2_local0[47] = 5000
            end
        end
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) then
            f2_local0[14] = 1000
        end
    else
        f2_local0[14] = 30
        f2_local0[47] = 70
        f2_local0[8] = 1
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) then
        f2_local0[11] = 0
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        f2_local0[8] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14506) == false then
        f2_local0[7] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14506) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14507) == false then
        f2_local0[7] = 100
        f2_local0[49] = 40
        f2_local0[14] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14547) then
        f2_local0[9] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[14] = 0
        f2_local0[16] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
    else
        f2_local0[15] = 0
    end
    if arg1:GetStringIndexedNumber("isThrowSeal") == true then
        f2_local0[11] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
    end
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 10 + arg1:GetRandam_Int(0, 5), f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 10 + arg1:GetRandam_Int(0, 5), f2_local0[5], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3008, 25, f2_local0[7], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3009, 5, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3010, 5 + arg1:GetRandam_Int(0, 5), f2_local0[9], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3011, 10 + arg1:GetRandam_Int(0, 5), f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3012, 10 + arg1:GetRandam_Int(0, 5), f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3014, 10 + arg1:GetRandam_Int(0, 5), f2_local0[12], 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 14532) == false then
        f2_local0[14] = SetCoolTime(arg1, arg2, 3017, 5 + arg1:GetRandam_Int(0, 5), f2_local0[14], 0)
    else
        f2_local0[14] = SetCoolTime(arg1, arg2, 3017, 3, f2_local0[14], 1)
    end
    f2_local0[15] = SetCoolTime(arg1, arg2, 3018, 10 + arg1:GetRandam_Int(0, 5), f2_local0[15], 0)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3021, 10 + arg1:GetRandam_Int(0, 5), f2_local0[21], 0)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[22], 0)
    f2_local0[44] = SetCoolTime(arg1, arg2, 3002, 10 + arg1:GetRandam_Int(0, 5), f2_local0[44], 1)
    f2_local0[44] = SetCoolTime(arg1, arg2, 3003, 5 + arg1:GetRandam_Int(0, 5), f2_local0[44], 1)
    f2_local0[45] = SetCoolTime(arg1, arg2, 3003, 10 + arg1:GetRandam_Int(0, 5), f2_local0[45], 1)
    f2_local0[45] = SetCoolTime(arg1, arg2, 3002, 5 + arg1:GetRandam_Int(0, 5), f2_local0[45], 1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 14532) == false then
        f2_local0[49] = SetCoolTime(arg1, arg2, 2002, 20, f2_local0[49], 1)
        f2_local0[49] = SetCoolTime(arg1, arg2, 2003, 20, f2_local0[49], 1)
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act22)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act42)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act47)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act48)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act49)
    local f2_local7 = REGIST_FUNC(arg1, arg2, BlackSword210000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function BlackSword210000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = arg0:GetRandam_Int(1, 100)
    local f3_local2 = 3
    local f3_local3 = 0
    local f3_local4 = 999
    local f3_local5 = arg0:GetStringIndexedNumber("isRunRate")
    local f3_local6 = 0
    local f3_local7 = 20
    local f3_local8 = 20
    Approach_Act_Flex(arg0, arg1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8)
    local f3_local9 = 3000
    local f3_local10 = 3.5
    local f3_local11 = 0
    local f3_local12 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local9, TARGET_ENE_0, f3_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = arg0:GetRandam_Int(1, 100)
    local f4_local2 = 2.5
    local f4_local3 = 0
    local f4_local4 = 999
    local f4_local5 = arg0:GetStringIndexedNumber("isRunRate")
    local f4_local6 = 0
    local f4_local7 = 20
    local f4_local8 = 20
    Approach_Act_Flex(arg0, arg1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8)
    local f4_local9 = 3001
    local f4_local10 = 3.5
    local f4_local11 = 0
    local f4_local12 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local9, TARGET_ENE_0, f4_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = arg0:GetRandam_Int(1, 100)
    local f5_local2 = 3
    local f5_local3 = 0
    local f5_local4 = 999
    local f5_local5 = arg0:GetStringIndexedNumber("isRunRate")
    local f5_local6 = 0
    local f5_local7 = 20
    local f5_local8 = 20
    Approach_Act_Flex(arg0, arg1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7, f5_local8)
    local f5_local9 = 3002
    local f5_local10 = 3.5
    local f5_local11 = 0
    local f5_local12 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local9, TARGET_ENE_0, f5_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = arg0:GetRandam_Int(1, 100)
    local f6_local2 = 5.5
    local f6_local3 = 0
    local f6_local4 = 999
    local f6_local5 = arg0:GetStringIndexedNumber("isRunRate")
    local f6_local6 = 0
    local f6_local7 = 20
    local f6_local8 = 20
    Approach_Act_Flex(arg0, arg1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7, f6_local8)
    local f6_local9 = 3003
    local f6_local10 = 3.5
    local f6_local11 = 0
    local f6_local12 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local9, TARGET_ENE_0, f6_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = arg0:GetRandam_Int(1, 100)
    local f7_local2 = 5
    local f7_local3 = 0
    local f7_local4 = 999
    local f7_local5 = arg0:GetStringIndexedNumber("isRunRate")
    local f7_local6 = 0
    local f7_local7 = 20
    local f7_local8 = 20
    Approach_Act_Flex(arg0, arg1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7, f7_local8)
    local f7_local9 = 3006
    local f7_local10 = 3.5
    local f7_local11 = 0
    local f7_local12 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local9, TARGET_ENE_0, f7_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = arg0:GetRandam_Int(1, 100)
    local f8_local2 = 6
    local f8_local3 = 0
    local f8_local4 = 999
    local f8_local5 = arg0:GetStringIndexedNumber("isRunRate")
    local f8_local6 = 0
    local f8_local7 = 20
    local f8_local8 = 20
    Approach_Act_Flex(arg0, arg1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7, f8_local8)
    local f8_local9 = 3007
    local f8_local10 = 3.5
    local f8_local11 = 0
    local f8_local12 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local9, TARGET_ENE_0, f8_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = arg0:GetRandam_Int(1, 100)
    local f9_local2 = 1.5
    local f9_local3 = 0
    local f9_local4 = 999
    local f9_local5 = arg0:GetStringIndexedNumber("isRunRate")
    local f9_local6 = 0
    local f9_local7 = 20
    local f9_local8 = 20
    Approach_Act_Flex(arg0, arg1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7, f9_local8)
    local f9_local9 = 3008
    local f9_local10 = 3.5
    local f9_local11 = 0
    local f9_local12 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, f9_local9, TARGET_ENE_0, f9_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = arg0:GetRandam_Int(1, 100)
    local f10_local2 = 3009
    local f10_local3 = 3.5
    local f10_local4 = 0
    local f10_local5 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local2, TARGET_ENE_0, f10_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetRandam_Int(1, 100)
    local f11_local2 = 6
    local f11_local3 = 0
    local f11_local4 = 999
    local f11_local5 = arg0:GetStringIndexedNumber("isRunRate")
    local f11_local6 = 0
    local f11_local7 = 20
    local f11_local8 = 20
    Approach_Act_Flex(arg0, arg1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7, f11_local8)
    local f11_local9 = 3010
    local f11_local10 = 3.5
    local f11_local11 = 0
    local f11_local12 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local9, TARGET_ENE_0, f11_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetRandam_Int(1, 100)
    local f12_local2 = 3011
    local f12_local3 = 3.5
    local f12_local4 = 0
    local f12_local5 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local2, TARGET_ENE_0, f12_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetRandam_Int(1, 100)
    local f13_local2 = 6
    local f13_local3 = 0
    local f13_local4 = 999
    local f13_local5 = arg0:GetStringIndexedNumber("isRunRate")
    local f13_local6 = 0
    local f13_local7 = 20
    local f13_local8 = 20
    Approach_Act_Flex(arg0, arg1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7, f13_local8)
    local f13_local9 = 3012
    local f13_local10 = 3.5
    local f13_local11 = 0
    local f13_local12 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local9, TARGET_ENE_0, f13_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    local f14_local2 = 3.5
    local f14_local3 = 0
    local f14_local4 = 999
    local f14_local5 = arg0:GetStringIndexedNumber("isRunRate")
    local f14_local6 = 0
    local f14_local7 = 20
    local f14_local8 = 20
    Approach_Act_Flex(arg0, arg1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7, f14_local8)
    local f14_local9 = 3014
    local f14_local10 = 3.5
    local f14_local11 = 0
    local f14_local12 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local9, TARGET_ENE_0, f14_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act13(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = arg0:GetRandam_Int(1, 100)
    local f15_local2 = 3
    local f15_local3 = 0
    local f15_local4 = 999
    local f15_local5 = arg0:GetStringIndexedNumber("isRunRate")
    local f15_local6 = 0
    local f15_local7 = 20
    local f15_local8 = 20
    Approach_Act_Flex(arg0, arg1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7, f15_local8)
    local f15_local9 = 3015
    local f15_local10 = 2
    local f15_local11 = 0
    local f15_local12 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local9, TARGET_ENE_0, f15_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act14(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = arg0:GetRandam_Int(1, 100)
    local f16_local2 = 3017
    local f16_local3 = 2
    local f16_local4 = 0
    local f16_local5 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local2, TARGET_ENE_0, f16_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act15(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = arg0:GetRandam_Int(1, 100)
    local f17_local2 = 3.5
    local f17_local3 = 0
    local f17_local4 = 999
    local f17_local5 = arg0:GetStringIndexedNumber("isRunRate")
    local f17_local6 = 0
    local f17_local7 = 20
    local f17_local8 = 20
    Approach_Act_Flex(arg0, arg1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6, f17_local7, f17_local8)
    local f17_local9 = 3018
    local f17_local10 = 2
    local f17_local11 = 0
    local f17_local12 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local9, TARGET_ENE_0, f17_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act16(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = arg0:GetRandam_Int(1, 100)
    local f18_local2 = 5
    local f18_local3 = 0
    local f18_local4 = 999
    local f18_local5 = arg0:GetStringIndexedNumber("isRunRate")
    local f18_local6 = 0
    local f18_local7 = 20
    local f18_local8 = 20
    Approach_Act_Flex(arg0, arg1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6, f18_local7, f18_local8)
    local f18_local9 = 3004
    local f18_local10 = 2
    local f18_local11 = 0
    local f18_local12 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f18_local9, TARGET_ENE_0, f18_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act17(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1, 1, 1, 100, 0, 0.1, 0.1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3110, TARGET_ENE_0, 3, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act18(arg0, arg1, arg2)
    local f20_local0 = arg0:GetRandam_Int(1, 100)
    local f20_local1 = 3
    local f20_local2 = 0
    local f20_local3 = 999
    local f20_local4 = arg0:GetStringIndexedNumber("isRunRate")
    local f20_local5 = 0
    local f20_local6 = 20
    local f20_local7 = 20
    Approach_Act_Flex(arg0, arg1, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7)
    local f20_local8 = 3004
    local f20_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local10 = 0
    local f20_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, f20_local9, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, f20_local9, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act19(arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Int(1, 100)
    local f21_local1 = 3
    local f21_local2 = 0
    local f21_local3 = 999
    local f21_local4 = arg0:GetStringIndexedNumber("isRunRate")
    local f21_local5 = 0
    local f21_local6 = 20
    local f21_local7 = 20
    Approach_Act_Flex(arg0, arg1, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6, f21_local7)
    local f21_local8 = 3004
    local f21_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local10 = 0
    local f21_local11 = 0
    if f21_local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, f21_local9, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, f21_local9, 0, 0, 0, 0)
        if f21_local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 6, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 6, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, f21_local9, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, f21_local9, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, f21_local9, 0, 0, 0, 0)
        if f21_local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 6, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 6, 0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act20(arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = arg0:GetRandam_Int(1, 100)
    local f22_local2 = 40
    local f22_local3 = 0
    local f22_local4 = 999
    local f22_local5 = arg0:GetStringIndexedNumber("isRunRate")
    local f22_local6 = 0
    local f22_local7 = 20
    local f22_local8 = 20
    Approach_Act_Flex(arg0, arg1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6, f22_local7, f22_local8)
    local f22_local9 = 3020
    local f22_local10 = 2
    local f22_local11 = 0
    local f22_local12 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f22_local9, TARGET_ENE_0, f22_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act21(arg0, arg1, arg2)
    local f23_local0 = arg0:GetDist(TARGET_ENE_0)
    local f23_local1 = arg0:GetRandam_Int(1, 100)
    local f23_local2 = 10
    local f23_local3 = 0
    local f23_local4 = 999
    local f23_local5 = arg0:GetStringIndexedNumber("isRunRate")
    local f23_local6 = 0
    local f23_local7 = 20
    local f23_local8 = 20
    Approach_Act_Flex(arg0, arg1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6, f23_local7, f23_local8)
    local f23_local9 = 3021
    local f23_local10 = 2
    local f23_local11 = 0
    local f23_local12 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f23_local9, TARGET_ENE_0, f23_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act22(arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = arg0:GetRandam_Int(1, 100)
    local f24_local2 = 4
    local f24_local3 = 0
    local f24_local4 = 999
    local f24_local5 = arg0:GetStringIndexedNumber("isRunRate")
    local f24_local6 = 0
    local f24_local7 = 20
    local f24_local8 = 20
    Approach_Act_Flex(arg0, arg1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6, f24_local7, f24_local8)
    local f24_local9 = 3011
    local f24_local10 = 3.5
    local f24_local11 = 0
    local f24_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f24_local9, TARGET_ENE_0, f24_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 6)
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act41(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, 1, 1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act44(arg0, arg1, arg2)
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act45(arg0, arg1, arg2)
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act47(arg0, arg1, arg2)
    local f32_local0 = 0.5
    local f32_local1 = 6013
    local f32_local2 = TARGET_ENE_0
    local f32_local3 = 0
    local f32_local4 = AI_DIR_TYPE_R
    local f32_local5 = 0
    local f32_local6 = arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180)
    if f32_local6 == true then
        f32_local1 = 6012
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 14547) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f32_local0, f32_local1, f32_local2, f32_local3, f32_local4, f32_local5)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f32_local7 = arg0:GetRandam_Int(1, 100)
    if arg0:GetAttackPassedTime(6002) > 5 and arg0:GetAttackPassedTime(6003) > 5 then
        if arg0:HasSpecialEffectId(TARGET_SELF, 14506) then
            f32_local7 = f32_local7 - 80
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 14532) and arg0:GetDist(TARGET_ENE_0) < 6 then
            f32_local7 = f32_local7 - 70
        end
    else
        f32_local7 = f32_local7 + 20
    end
    if f32_local7 < 20 or arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 60, -1, 3) then
        if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 5) and f32_local6 == true then
            f32_local1 = 6002
        elseif arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 5) and f32_local6 == false then
            f32_local1 = 6003
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f32_local0, f32_local1, f32_local2, f32_local3, f32_local4, f32_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_Act49(arg0, arg1, arg2)
    local f34_local0 = 6
    local f34_local1 = 50
    local f34_local2 = -1
    local f34_local3 = true
    local f34_local4 = 1
    local f34_local5 = 10
    local f34_local6 = 1.5
    local f34_local7 = 0.5
    if arg0:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku and arg0:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Torimaki then
        f34_local6 = arg0:GetRandam_Float(2.5, 3.5)
        f34_local7 = arg0:GetRandam_Float(2.5, 3.5)
    end
    local f34_local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, f34_local4)
    local f34_local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, f34_local4)
    local f34_local10 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, f34_local4)
    local f34_local11 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, f34_local4)
    local f34_local12 = arg0:GetDist(TARGET_ENE_0)
    local f34_local13 = arg0:GetRandam_Int(0, 1)
    if f34_local9 == true and f34_local8 == true then

    elseif f34_local9 == true and f34_local8 == false then
        f34_local13 = 0
    elseif f34_local9 == false and f34_local8 == true then
        f34_local13 = 1
    elseif f34_local9 == false and f34_local8 == false then
        f34_local13 = 2
    end
    if f34_local1 < f34_local12 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f34_local5, TARGET_ENE_0, arg0:GetRandam_Float(f34_local0, f34_local1), TARGET_SELF, true, f34_local2)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f34_local12 <= f34_local1 and f34_local0 <= f34_local12 then
        if f34_local13 <= 1 then
            arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 6)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f34_local6, TARGET_ENE_0, f34_local13, 100, f34_local3, false, f34_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, TARGET_ENE_0, f34_local0, TARGET_SELF, true, f34_local2)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f34_local12 < f34_local0 then
        if f34_local11 == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f34_local7, TARGET_ENE_0, arg0:GetRandam_Float(f34_local0, f34_local1), TARGET_ENE_0, f34_local3, f34_local2, GUARD_GOAL_DESIRE_RET_Success)
        elseif f34_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f34_local6, TARGET_ENE_0, f34_local13, 100, f34_local3, false, f34_local2, resultTypeIfGuardSuccess)
        else
            BlackSword210000_Act05(arg0, arg1)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSword210000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BlackSword210000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f38_local0 = arg1:GetRandam_Int(1, 100)
    local f38_local1 = arg1:GetRandam_Int(1, 100)
    local f38_local2 = arg1:GetDist(TARGET_ENE_0)
    local f38_local3 = arg1:GetHpRate(TARGET_SELF)
    local f38_local4 = arg1:GetNumber(0)
    local f38_local5 = arg1:GetNumber(1)
    local f38_local6 = arg1:GetRandam_Int(0, 10)
    local f38_local7 = arg1:GetRandam_Int(0, 5)
    local f38_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 14547)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 14506) == false and arg1:HasSpecialEffectId(TARGET_SELF, 14531) then
        if f38_local2 > 6 or f38_local8 == true then
            arg2:ClearSubGoal()
            BlackSword210000_Act47(arg1, arg2)
            return true
        else
            local f38_local9 = arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120)
            if f38_local9 then
                f38_local9 = 3006
                if arg1:GetAttackPassedTime(3010) > 10 then
                    f38_local9 = 3010
                elseif arg1:GetAttackPassedTime(3012) > 10 and arg1:GetStringIndexedNumber("isThrowSeal") == false then
                    f38_local9 = 3012
                end
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f38_local9, TARGET_ENE_0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) and arg1:GetTimer(2) <= 0 then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:GetTimer(1) <= 0 and arg1:HasSpecialEffectId(TARGET_SELF, 14531) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6 + arg1:GetMapHitRadius(TARGET_SELF)) then
        arg1:SetTimer(1, 10)
        arg2:ClearSubGoal()
        if f38_local0 < 33 then
            arg1:SetTimer(2, 0.5)
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_ENE_0)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, 3010, TARGET_ENE_0, 0, 0, 0)
        elseif f38_local0 < 66 and arg1:GetStringIndexedNumber("isThrowSeal") == false then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, 3012, TARGET_ENE_0, 0, 0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, 3011, TARGET_ENE_0, 0, 0, 0)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 5035) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14506) and f38_local2 < 3 then
            arg2:ClearSubGoal()
            BlackSword210000_Act47(arg1, arg2)
            return true
        elseif f38_local2 < 1.5 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                if 20 + f38_local7 <= arg1:GetAttackPassedTime(3009) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 9, 0, 0) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 0, 0, 0)
                    return true
                elseif 10 + f38_local7 <= arg1:GetAttackPassedTime(3010) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3010, TARGET_ENE_0, 0, 0, 0)
                    return true
                elseif 10 + f38_local7 <= arg1:GetAttackPassedTime(3012) and arg1:GetStringIndexedNumber("isThrowSeal") == false and 5 + f38_local7 <= arg1:GetAttackPassedTime(3010) and arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == false then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3012, TARGET_ENE_0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    BlackSword210000_Act47(arg1, arg2)
                    return true
                end
            else
                arg2:ClearSubGoal()
                BlackSword210000_Act47(arg1, arg2)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
        if arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 5, 0, 0) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            BlackSword210000_Act47(arg1, arg2)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5031) and f38_local2 > 6 and arg1:HasSpecialEffectId(TARGET_SELF, 14506) and arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == false then
        arg2:ClearSubGoal()
        local f38_local9 = 7
        local f38_local10 = 0
        local f38_local11 = 999
        local f38_local12 = arg1:GetStringIndexedNumber("isRunRate")
        local f38_local13 = 0
        local f38_local14 = 20
        local f38_local15 = 20
        Approach_Act_Flex(arg1, arg2, f38_local9, f38_local10, f38_local11, f38_local12, f38_local13, f38_local14, f38_local15)
        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3007, TARGET_ENE_0, 6, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14532) and f38_local2 < 8 then
            arg2:ClearSubGoal()
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 10, 0, 0, 0)
            else
                BlackSword210000_Act47(arg1, arg2)
            end
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14540) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetAttackPassedTime(3000) > 12 and f38_local0 < 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and f38_local8 == false and arg1:HasSpecialEffectId(TARGET_SELF, 14506) == false and 12 - arg1:GetStringIndexedNumber("ReduceCTLightWave") < arg1:GetAttackPassedTime(3017) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14541) and f38_local8 == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 3 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14542) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) and f38_local0 < 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetAttackPassedTime(3014) > 20 and f38_local8 == false and f38_local1 < 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f38_local8 == true then
                    BlackSword210000_Act47(arg1, arg2)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                if arg1:HasSpecialEffectId(TARGET_SELF, 14548) and arg1:GetAttackPassedTime(3025) > 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0)
                end
                return true
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                BlackSword210000_Act47(arg1, arg2)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14543) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetAttackPassedTime(3000) > 12 and f38_local0 < 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetAttackPassedTime(3012) > 30 and arg1:GetStringIndexedNumber("isThrowSeal") == false and f38_local1 < 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 10 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetAttackPassedTime(3010) > 20 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) and f38_local8 == false and arg1:GetAttackPassedTime(3014) > 20 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                if arg1:HasSpecialEffectId(TARGET_SELF, 14548) and arg1:GetAttackPassedTime(3025) > 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0)
                end
                return true
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and 12 - arg1:GetStringIndexedNumber("ReduceCTLightWave") < arg1:GetAttackPassedTime(3017) and arg1:HasSpecialEffectId(TARGET_SELF, 14506) == false and f38_local8 == false then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                BlackSword210000_Act47(arg1, arg2)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14544) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetAttackPassedTime(3000) > 12 and f38_local0 < 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 3.5 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetAttackPassedTime(3018) > 5 and f38_local8 == true and f38_local0 < 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetAttackPassedTime(3012) > 30 and f38_local8 == true and arg1:GetStringIndexedNumber("isThrowSeal") == false and f38_local1 < 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 10 + arg1:GetMapHitRadius(TARGET_SELF)) and f38_local8 == true and arg1:GetAttackPassedTime(3010) > 20 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f38_local8 == true then
                    BlackSword210000_Act47(arg1, arg2)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetAttackPassedTime(3012) > 30 and arg1:GetStringIndexedNumber("isThrowSeal") == false then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 10 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetAttackPassedTime(3010) > 20 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and 12 - arg1:GetStringIndexedNumber("ReduceCTLightWave") < arg1:GetAttackPassedTime(3017) and f38_local8 == false and arg1:HasSpecialEffectId(TARGET_SELF, 14506) == false then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14545) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetAttackPassedTime(3000) > 12 and f38_local0 < 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 3.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 10, 0, 0, 0)
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and f38_local8 == false and arg1:HasSpecialEffectId(TARGET_SELF, 14506) == false and 12 - arg1:GetStringIndexedNumber("ReduceCTLightWave") < arg1:GetAttackPassedTime(3017) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14546) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) and f38_local1 < 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 5, 0, 0, 120)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 5, 0, 0, 120)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 3.5 + arg1:GetMapHitRadius(TARGET_SELF)) and f38_local0 < 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 3.5 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetAttackPassedTime(3018) > 5 and f38_local8 == true and f38_local0 < 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f38_local8 == true then
                    BlackSword210000_Act47(arg1, arg2)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 10 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) and f38_local0 < 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetAttackPassedTime(3014) > 20 and f38_local8 == false and f38_local1 < 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f38_local8 == true then
                    BlackSword210000_Act47(arg1, arg2)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                if arg1:HasSpecialEffectId(TARGET_SELF, 14548) and arg1:GetAttackPassedTime(3025) > 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0)
                end
                return true
            else
                arg2:ClearSubGoal()
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
        arg2:ClearSubGoal()
        if arg1:HasSpecialEffectId(TARGET_SELF, 14506) then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 7, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
        else
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5034) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 60, 4) then
        if f38_local2 < 3.5 then
            if f38_local0 <= 30 and f38_local8 == false and 20 + f38_local7 <= arg1:GetAttackPassedTime(3014) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                if arg1:HasSpecialEffectId(TARGET_SELF, 14548) and arg1:GetAttackPassedTime(3025) > 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0)
                end
                return true
            end
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5036) then
        arg2:ClearSubGoal()
        BlackSword210000_Act47(arg1, arg2)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(79) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_BlackSword210000_AfterAttackAct, "BlackSword210000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackSword210000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f39_local0 = arg1:GetDist(TARGET_ENE_0)
    local f39_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f39_local0 >= 5 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif f39_local0 >= 2 then
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


