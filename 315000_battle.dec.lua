RegisterTableGoal(GOAL_RuneHunterKnightAxe315000_Battle, "GOAL_RuneHunterKnightAxe315000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneHunterKnightAxe315000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(3000000, 3000)
    arg1:EnableUnfavorableAttackCheck(3000000, 3001)
    arg1:EnableUnfavorableAttackCheck(3000000, 3002)
    arg1:EnableUnfavorableAttackCheck(3000000, 3004)
    arg1:EnableUnfavorableAttackCheck(3000000, 3005)
    arg1:EnableUnfavorableAttackCheck(3000000, 3006)
    arg1:EnableUnfavorableAttackCheck(3000000, 3007)
    arg1:EnableUnfavorableAttackCheck(3000000, 3008)
    arg1:EnableUnfavorableAttackCheck(3000000, 3009)
    arg1:EnableUnfavorableAttackCheck(3000000, 3010)
    arg1:EnableUnfavorableAttackCheck(3000000, 3011)
    arg1:EnableUnfavorableAttackCheck(3000000, 3014)
    arg1:EnableUnfavorableAttackCheck(3000000, 3016)
    arg1:EnableUnfavorableAttackCheck(3000000, 3020)
    arg1:EnableUnfavorableAttackCheck(4000000, 3000)
    arg1:EnableUnfavorableAttackCheck(4000000, 3001)
    arg1:EnableUnfavorableAttackCheck(4000000, 3002)
    arg1:EnableUnfavorableAttackCheck(4000000, 3003)
    arg1:EnableUnfavorableAttackCheck(4000000, 3005)
    arg1:EnableUnfavorableAttackCheck(4000000, 3006)
    arg1:EnableUnfavorableAttackCheck(4000000, 3007)
    arg1:EnableUnfavorableAttackCheck(4000000, 3010)
    arg1:EnableUnfavorableAttackCheck(4000000, 3011)
    arg1:EnableUnfavorableAttackCheck(4000000, 3013)
    arg1:EnableUnfavorableAttackCheck(4000000, 3015)
    arg1:EnableUnfavorableAttackCheck(4000000, 3016)
    arg1:EnableUnfavorableAttackCheck(4000000, 3020)
    arg1:SetNumber(5, 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 11809)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 11810)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 11811)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 11813)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 11822)
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 11820)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 11821)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 11825)
    local f2_local10 = arg1:GetRandam_Int(0, 100)
    local f2_local11 = f2_local10 * arg1:GetNumber(5)
    if arg1:IsRiding(TARGET_SELF) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 11805) and arg1:ReserveRide(10) == true then
            f2_local0[14] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 11805) == false and arg1:HasSpecialEffectId(TARGET_SELF, 11825) == true and f2_local11 > 200 then
            f2_local0[13] = 100
            f2_local0[40] = 5
        elseif f2_local3 > 8 then
            f2_local0[13] = 1000
            f2_local0[15] = 10
            f2_local0[16] = 10
            f2_local0[17] = 10
            f2_local0[40] = 10
        elseif f2_local3 > 2 then
            f2_local0[11] = 60
            f2_local0[15] = 100
            f2_local0[16] = 40
            f2_local0[17] = 10
            f2_local0[18] = 85
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 260, 3) then
            f2_local0[17] = 10
            f2_local0[18] = 85
            f2_local0[45] = 5
        else
            f2_local0[12] = 15
            f2_local0[15] = 5
            f2_local0[17] = 50
            f2_local0[45] = 30
        end
    elseif f2_local3 < 1.5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 260, 3) then
            f2_local0[3] = 30
            f2_local0[6] = 90
            f2_local0[10] = 30
            f2_local0[43] = 10
        else
            f2_local0[3] = 40
            f2_local0[5] = 40
            f2_local0[10] = 30
            f2_local0[43] = 10
        end
    elseif f2_local3 < 5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 260, 6) then
            f2_local0[1] = 40
            f2_local0[3] = 30
            f2_local0[4] = 25
            f2_local0[5] = 20
            f2_local0[6] = 90
            f2_local0[9] = 20
            f2_local0[10] = 30
            f2_local0[43] = 10
        else
            f2_local0[3] = 40
            f2_local0[4] = 20
            f2_local0[5] = 10
            f2_local0[6] = 30
            f2_local0[43] = 10
        end
    elseif f2_local3 < 10 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 150, 260, 12) then
            f2_local0[10] = 30
            f2_local0[43] = 10
            f2_local0[9] = 60
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 260, 12) then
            f2_local0[2] = 15
            f2_local0[4] = 20
            f2_local0[9] = 20
        else
            f2_local0[4] = 40
            f2_local0[10] = 25
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 150, 260, 20) then
        f2_local0[10] = 30
        f2_local0[43] = 10
        f2_local0[9] = 60
    else
        f2_local0[2] = 40
        f2_local0[9] = 40
        f2_local0[42] = 40
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10 + arg1:GetRandam_Int(0, 5), f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10 + arg1:GetRandam_Int(0, 5), f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3006, 10 + arg1:GetRandam_Int(0, 5), f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3010, 5 + arg1:GetRandam_Int(0, 10), f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3011, 10 + arg1:GetRandam_Int(0, 5), f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3020, 10 + arg1:GetRandam_Int(0, 5), f2_local0[6], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3005, 5 + arg1:GetRandam_Int(10, 15), f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3012, 10 + arg1:GetRandam_Int(0, 5), f2_local0[10], 15)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3020, 3 + arg1:GetRandam_Int(0, 5), f2_local0[13], 0)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3007, 10 + arg1:GetRandam_Int(0, 5), f2_local0[17], 1)
    f2_local0[49] = SetCoolTime(arg1, arg2, 3006, 10 + arg1:GetRandam_Int(0, 5), f2_local0[49], 0)
    f2_local0[49] = SetCoolTime(arg1, arg2, 3006, 10 + arg1:GetRandam_Int(0, 5), f2_local0[49], 0)
    f2_local0[49] = SetCoolTime(arg1, arg2, 3004, 10 + arg1:GetRandam_Int(0, 5), f2_local0[49], 0)
    f2_local0[49] = SetCoolTime(arg1, arg2, 3020, 3 + arg1:GetRandam_Int(0, 5), f2_local0[49], 0)
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 6) == false then
        f2_local0[6] = 0
    end
    if f2_local3 > 3 then
        f2_local0[12] = 0
        f2_local0[18] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 11825) == false then
        f2_local0[13] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act22)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act45)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act48)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act49)
    local f2_local12 = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local12, f2_local2)
    
end

function RuneHunterKnightAxe315000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 4.5
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 1
    local f3_local7 = 1
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 3000
    local f3_local9 = 3002
    local f3_local10 = 3004
    local f3_local11 = 4
    local f3_local12 = 4
    local f3_local13 = 7
    local f3_local14 = 0
    local f3_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local8, TARGET_ENE_0, f3_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local9, TARGET_ENE_0, f3_local12, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 16
    local f4_local2 = 0
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 1
    local f4_local7 = 1
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 3001
    local f4_local9 = 3002
    local f4_local10 = 3004
    local f4_local11 = 3.5
    local f4_local12 = 4
    local f4_local13 = 7
    local f4_local14 = 0
    local f4_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local8, TARGET_ENE_0, f4_local11, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 3006
    local f5_local2 = 3012
    local f5_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local4 = 0
    local f5_local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 260, 12) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local2, TARGET_ENE_0, 0, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local1, TARGET_ENE_0, 0, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local1, TARGET_ENE_0, 0, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 10
    local f6_local2 = 0
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 1
    local f6_local7 = 1
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 3010
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 0
    local f6_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local8, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 5
    local f7_local2 = 0
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 1
    local f7_local7 = 1
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = arg0:GetDist(TARGET_ENE_0)
    local f7_local9 = 3011
    local f7_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local11 = 0
    local f7_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local9, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act06(arg0, arg1, arg2)
    local f8_local0 = 3020
    local f8_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 0
    local f8_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 4.5
    local f9_local2 = 0
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 1
    local f9_local7 = 1
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    local f9_local8 = 3014
    local f9_local9 = 3016
    local f9_local10 = 3004
    local f9_local11 = 4
    local f9_local12 = 4
    local f9_local13 = 7
    local f9_local14 = 0
    local f9_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local8, TARGET_ENE_0, f9_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f9_local9, TARGET_ENE_0, f9_local12, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act09(arg0, arg1, arg2)
    local f10_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f10_local1 = 28
    local f10_local2 = 0
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 1
    local f10_local7 = 1
    Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 260, 18) and arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 260, 12) then
        if f10_local0 > 50 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, 10, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBR, arg0:GetRandam_Int(30, 40))
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, 10, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBL, arg0:GetRandam_Int(30, 40))
        end
    end
    local f10_local8 = 3005
    local f10_local9 = 100
    local f10_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local11 = 0
    local f10_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local8, TARGET_ENE_0, f10_local9, f10_local11, f10_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act10(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 30
    local f11_local2 = 0
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 1
    local f11_local7 = 1
    Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    local f11_local8 = 3012
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local10 = 0
    local f11_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local8, TARGET_ENE_0, f11_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act11(arg0, arg1, arg2)
    arg0:SetNumber(5, arg0:GetNumber(5) + 1)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 5
    local f12_local2 = 0
    local f12_local3 = 999
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 1
    local f12_local7 = 1
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    local f12_local8 = 3000
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local10 = 0
    local f12_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act12(arg0, arg1, arg2)
    arg0:SetNumber(5, arg0:GetNumber(5) + 1)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 3001
    local f13_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = 0
    local f13_local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11809)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11813)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local1, TARGET_ENE_0, f13_local2, f13_local3, f13_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act13(arg0, arg1, arg2)
    arg0:SetNumber(5, 0)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 3020
    local f14_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local3 = 0
    local f14_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local1, TARGET_ENE_0, f14_local2, f14_local3, f14_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act14(arg0, arg1, arg2)
    arg0:SetNumber(5, 0)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_Mount, 10, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act15(arg0, arg1, arg2)
    arg0:SetNumber(5, arg0:GetNumber(5) + 1)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 4
    local f16_local2 = 0
    local f16_local3 = 999
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = 1
    local f16_local7 = 1
    Approach_Act_Flex(arg0, arg1, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7)
    local f16_local8 = 3002
    local f16_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local10 = 0
    local f16_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11809)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11813)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local8, TARGET_ENE_0, f16_local9, f16_local10, f16_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act16(arg0, arg1, arg2)
    arg0:SetNumber(5, arg0:GetNumber(5) + 1)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 4
    local f17_local2 = 0
    local f17_local3 = 999
    local f17_local4 = 0
    local f17_local5 = 0
    local f17_local6 = 1
    local f17_local7 = 1
    Approach_Act_Flex(arg0, arg1, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6, f17_local7)
    local f17_local8 = 3003
    local f17_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local10 = 0
    local f17_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11809)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11813)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local8, TARGET_ENE_0, f17_local9, f17_local10, f17_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act17(arg0, arg1, arg2)
    arg0:SetNumber(5, arg0:GetNumber(5) + 1)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 4
    local f18_local2 = 0
    local f18_local3 = 999
    local f18_local4 = 0
    local f18_local5 = 0
    local f18_local6 = 1
    local f18_local7 = 1
    Approach_Act_Flex(arg0, arg1, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6, f18_local7)
    local f18_local8 = 3007
    local f18_local9 = 5
    local f18_local10 = 5
    local f18_local11 = 0
    local f18_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local8, TARGET_ENE_0, SuccessDist, f18_local11, f18_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act18(arg0, arg1, arg2)
    arg0:SetNumber(5, arg0:GetNumber(5) + 1)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 3008
    local f19_local2 = 5
    local f19_local3 = 5
    local f19_local4 = 0
    local f19_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local1, TARGET_ENE_0, SuccessDist, f19_local4, f19_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act19(arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = 4
    local f20_local2 = 0
    local f20_local3 = 999
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 1
    local f20_local7 = 1
    Approach_Act_Flex(arg0, arg1, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7)
    local f20_local8 = 3000
    local f20_local9 = 5
    local f20_local10 = 5
    local f20_local11 = 0
    local f20_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, f20_local9, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act20(arg0, arg1, arg2)
    local f21_local0 = 3025
    local f21_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local2 = 0
    local f21_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f21_local0, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act21(arg0, arg1, arg2)
    local f22_local0 = 3026
    local f22_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local2 = 0
    local f22_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f22_local0, TARGET_ENE_0, f22_local1, f22_local2, f22_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act22(arg0, arg1, arg2)
    local f23_local0 = 3027
    local f23_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local2 = 0
    local f23_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f23_local0, TARGET_ENE_0, f23_local1, f23_local2, f23_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act41(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act43(arg0, arg1, arg2)
    local f27_local0 = arg0:GetDist(TARGET_ENE_0)
    local f27_local1 = arg0:GetRandam_Int(1, 100)
    if f27_local1 > 50 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, 10, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBL, arg0:GetRandam_Int(20, 30))
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, 10, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBR, arg0:GetRandam_Int(20, 30))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act44(arg0, arg1, arg2)
    local f28_local0 = 3013
    local f28_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local2 = 0
    local f28_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_ENE_0, 6, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act45(arg0, arg1, arg2)
    local f29_local0 = 3006
    local f29_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f29_local2 = 0
    local f29_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f29_local0, TARGET_ENE_0, f29_local1, f29_local2, f29_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1.5, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightAxe315000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RuneHunterKnightAxe315001_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f34_local0 = arg1:GetRandam_Int(1, 100)
    local f34_local1 = arg1:GetDist(TARGET_ENE_0)
    local f34_local2 = arg1:GetHpRate(TARGET_SELF)
    local f34_local3 = arg1:GetNumber(0)
    local f34_local4 = arg1:GetRandam_Int(0, 10)
    local f34_local5 = arg1:GetRandam_Int(0, 5)
    local f34_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 11820)
    local f34_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 11821)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 11822)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsRiding(TARGET_SELF) == false then
        if arg1:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) and arg1:IsRiding(TARGET_SELF) == false and arg1:HasSpecialEffectId(TARGET_SELF, 11805) == false and arg1:HasSpecialEffectId(TARGET_SELF, 11825) == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 11809) and f34_local1 > 2 and f34_local1 < 4 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 3, 0, 0, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 3, 0, 0)
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 11810) and f34_local1 > 2 and f34_local1 < 6 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 10, 0, 0)
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 11811) and f34_local1 > 2 and f34_local1 < 4 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 10, 0, 0)
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 11813) then
            if 20 + f34_local5 <= arg1:GetAttackPassedTime(3020) and arg1:HasSpecialEffectId(TARGET_SELF, 11815) == false and arg1:HasSpecialEffectId(TARGET_SELF, 11805) == false and arg1:HasSpecialEffectId(TARGET_SELF, 11825) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 10, 0, 0)
                return true
            elseif f34_local1 < 2 and 10 + f34_local5 <= arg1:GetAttackPassedTime(3008) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 180, 3) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 10, 0, 0)
                return true
            elseif f34_local1 < 2 and 10 + f34_local5 <= arg1:GetAttackPassedTime(3007) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 10, 0, 0)
                return true
            elseif f34_local1 < 2 and 10 + f34_local5 <= arg1:GetAttackPassedTime(3006) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 10, 0, 0)
                return true
            elseif f34_local1 > 4 and f34_local1 < 7 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 10, 0, 0)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 11814) then
            if f34_local1 < 2 and 20 + f34_local5 <= arg1:GetAttackPassedTime(3020) and arg1:HasSpecialEffectId(TARGET_SELF, 11815) == false and arg1:HasSpecialEffectId(TARGET_SELF, 11805) == false and arg1:HasSpecialEffectId(TARGET_SELF, 11825) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 10, 0, 0)
                return true
            elseif f34_local1 > 2 then
                if f34_local1 < 4 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 10, 0, 0)
                    return true
                elseif f34_local1 < 6 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 10, 0, 0)
                    return true
                end
            end
        end
    end
    if arg1:IsRiding(TARGET_SELF) == true then
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            if f34_local1 < 6 then
                if f34_local6 == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 4, 0, 90)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            elseif f34_local1 > 0.5 and f34_local1 < 6 and 5 + f34_local5 <= arg1:GetAttackPassedTime(3004) then
                if f34_local6 == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 4, 0, 90)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            local f34_local8 = arg1:GetMapHitRadius(TARGET_SELF)
            local f34_local9 = 5
            local f34_local10 = arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, f34_local9 + f34_local8, f34_local8, 0)
            local f34_local11 = arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, f34_local9 + f34_local8, f34_local8, 0)
            local f34_local12 = arg1:GetRandam_Int(AI_DIR_TYPE_L, AI_DIR_TYPE_R)
            if f34_local10 < f34_local9 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 4, 0, 90)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, 90, 5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            local f34_local8 = arg1:GetRandam_Int(1, 100)
            local f34_local9 = arg1:GetRandam_Int(1, 100)
            if f34_local9 > 30 then
                if (10 + f34_local5 <= arg1:GetAttackPassedTime(3020) or f34_local8 > 90) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 150, 90, 6) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 10, 0, 0)
                    return true
                elseif 10 + f34_local5 <= arg1:GetAttackPassedTime(3012) or f34_local8 > 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 10, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    RuneHunterKnightAxe315000_Act43(arg1, arg2)
                    return true
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            if 10 + f34_local5 <= arg1:GetAttackPassedTime(3006) and f34_local1 < 4 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 10, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 10, 0, 0)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 150, 180, 7) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 4, 0, 90)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 170, 180, 6) and 15 + f34_local5 <= arg1:GetAttackPassedTime(3007) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 10, 0, 0)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 11822) then
            if f34_local1 <= 4 and f34_local0 > 40 then
                if f34_local6 == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 4, 0, 90)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            elseif f34_local1 >= 3 and f34_local1 < 10 and f34_local0 > 10 then
                if f34_local6 == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 4, 0, 90)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 4) then
            if 15 + f34_local5 <= arg1:GetAttackPassedTime(3007) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 10, 0, 0)
                return true
            elseif 10 + f34_local5 <= arg1:GetAttackPassedTime(3006) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 10, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 10, 0, 0)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_RuneHunterKnightAxe315001_AfterAttackAct, "RuneHunterKnightAxe315001_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneHunterKnightAxe315001_AfterAttackAct, true)
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


