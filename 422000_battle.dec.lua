RegisterTableGoal(GOAL_GroundTaco422000_Battle, "GroundTaco422000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GroundTaco422000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 1)
    arg1:SetNumber(2, 1)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetEventRequest()
    local f2_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 11750)
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 11751)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 11752)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 11753)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 11755)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 11757)
    arg1:SetStringIndexedNumber("c4220_DashRate", 0)
    if arg1:GetStringIndexedNumber("c4220_SelfEat") <= 0 then
        arg1:SetStringIndexedNumber("c4220_SelfEat", 100)
    end
    arg1:SetStringIndexedNumber("c4130_test_001", (1 - arg1:GetHpRate(TARGET_SELF)) * 50 - arg1:GetStringIndexedNumber("c4220_SelfEat") * 20)
    if f2_local10 == true and arg1:IsFinishTimer(0) == true then
        f2_local0[32] = 100
    elseif f2_local8 == true and arg1:IsFinishTimer(5) == true then
        f2_local0[16] = 100
    elseif f2_local9 == true and arg1:IsFinishTimer(6) == true then
        f2_local0[17] = 100
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 90, 30 - arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[21] = 100
    elseif not not arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 90, 30 - arg1:GetMapHitRadius(TARGET_SELF)) or arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 90, 30 - arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[3] = 20
        f2_local0[13] = 30
        f2_local0[21] = 50
    elseif f2_local8 == true and f2_local9 == true then
        f2_local0[4] = 20
        f2_local0[5] = 80
    elseif f2_local3 >= 15 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 10
        f2_local0[5] = 0
        f2_local0[10] = 0
        f2_local0[11] = 30
        f2_local0[12] = 10
        f2_local0[22] = 50
    elseif f2_local3 >= 10 then
        f2_local0[1] = 10
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 20
        f2_local0[5] = 0
        f2_local0[10] = 10
        f2_local0[11] = 10
        f2_local0[12] = 30
        f2_local0[13] = 10
        f2_local0[22] = 10
    elseif f2_local3 >= 3 then
        f2_local0[1] = 30
        f2_local0[2] = 20
        f2_local0[3] = 10
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[10] = 10
        f2_local0[12] = 10
        f2_local0[13] = 20
        f2_local0[22] = 0
        f2_local0[24] = 0
    else
        f2_local0[1] = 30
        f2_local0[2] = 20
        f2_local0[3] = 10
        f2_local0[4] = 0
        f2_local0[5] = 30
        f2_local0[10] = 10
    end
    if arg1:IsFinishTimer(1) == true and arg1:GetHpRate(TARGET_SELF) <= 0.75 and f2_local9 == false and f2_local7 == true then
        f2_local0[31] = arg1:GetStringIndexedNumber("c4220_SelfEat")
    end
    if f2_local6 == false and f2_local7 == false then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
    elseif f2_local6 == false then
        f2_local0[1] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
    elseif f2_local7 == false then
        f2_local0[2] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
    end
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 15, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 20, f2_local0[4], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3011, 15, f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3009, 30, f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3010, 50, f2_local0[12], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3012, 30, f2_local0[13], 0)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3014, 40, f2_local0[31], 0)
    f2_local0[32] = SetCoolTime(arg1, arg2, 3030, 40, f2_local0[32], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act05)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act13)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act17)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act24)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act33)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, GroundTaco422000_Act47)
    local f2_local12 = REGIST_FUNC(arg1, arg2, GroundTaco422000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local12, f2_local2)
    
end

function GroundTaco422000_Act01(arg0, arg1, arg2)
    local f3_local0 = 4.7
    local f3_local1 = 4.7 + 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 4.7
    local f3_local3 = 20
    local f3_local4 = 0
    local f3_local5 = 8
    local f3_local6 = 4
    GroundTaco422000_Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3.5
    local f3_local9 = 0
    local f3_local10 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act02(arg0, arg1, arg2)
    local f4_local0 = 4.4
    local f4_local1 = 4.4 + 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 4.4
    local f4_local3 = 20
    local f4_local4 = 0
    local f4_local5 = 8
    local f4_local6 = 4
    GroundTaco422000_Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 3.5
    local f4_local9 = 0
    local f4_local10 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act03(arg0, arg1, arg2)
    local f5_local0 = 10
    local f5_local1 = 7.2 + 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 0
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 8
    local f5_local6 = 0
    GroundTaco422000_Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3002
    local f5_local8 = 3021
    local f5_local9 = 3.5
    local f5_local10 = 0
    local f5_local11 = 180
    local f5_local12 = arg0:HasSpecialEffectId(TARGET_SELF, 11752)
    local f5_local13 = arg0:HasSpecialEffectId(TARGET_SELF, 11753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    if not not f5_local12 or f5_local13 == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f5_local7, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act04(arg0, arg1, arg2)
    local f6_local0 = 10
    local f6_local1 = 15.5 + 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 0
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 0
    GroundTaco422000_Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3003
    local f6_local8 = 3022
    local f6_local9 = 3.5
    local f6_local10 = 0
    local f6_local11 = 180
    local f6_local12 = arg0:HasSpecialEffectId(TARGET_SELF, 11752)
    local f6_local13 = arg0:HasSpecialEffectId(TARGET_SELF, 11753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    if not not f6_local12 or f6_local13 == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f6_local7, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetRandam_Int(1, 100)
    local f7_local1 = 2
    local f7_local2 = 2 + 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 2
    local f7_local7 = 0
    GroundTaco422000_Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 3004
    local f7_local9 = 3005
    local f7_local10 = 2 + 3
    local f7_local11 = 3.5
    local f7_local12 = 0
    local f7_local13 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f7_local8, TARGET_ENE_0, f7_local10, f7_local12, f7_local13, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f7_local9, TARGET_ENE_0, f7_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act10(arg0, arg1, arg2)
    local f8_local0 = 5
    local f8_local1 = 4.3 + 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 4.3
    local f8_local3 = 40
    local f8_local4 = 0
    local f8_local5 = 8
    local f8_local6 = 4
    GroundTaco422000_Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3011
    local f8_local8 = 3.5
    local f8_local9 = 0
    local f8_local10 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act11(arg0, arg1, arg2)
    local f9_local0 = 30
    local f9_local1 = 0
    local f9_local2 = 999
    local f9_local3 = 40
    local f9_local4 = 0
    local f9_local5 = 8
    local f9_local6 = 4
    GroundTaco422000_Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3009
    local f9_local8 = 10
    local f9_local9 = 0
    local f9_local10 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act12(arg0, arg1, arg2)
    local f10_local0 = 10
    local f10_local1 = 0
    local f10_local2 = 999
    local f10_local3 = 40
    local f10_local4 = 0
    local f10_local5 = 8
    local f10_local6 = 4
    GroundTaco422000_Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3010
    local f10_local8 = 10
    local f10_local9 = 0
    local f10_local10 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act13(arg0, arg1, arg2)
    local f11_local0 = 10
    local f11_local1 = 0
    local f11_local2 = 999
    local f11_local3 = 40
    local f11_local4 = 0
    local f11_local5 = 8
    local f11_local6 = 4
    GroundTaco422000_Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3012
    local f11_local8 = 10
    local f11_local9 = 0
    local f11_local10 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act16(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:SetNumber(1, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act17(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:SetNumber(2, 1)
    arg0:SetTimer(1, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_ActCP1(arg0, arg1, arg2)
    local f14_local0 = 3
    local f14_local1 = 3
    local f14_local2 = 3 + 3
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 4
    local f14_local6 = 8
    GroundTaco422000_Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3000
    local f14_local8 = 3.5
    local f14_local9 = 0
    local f14_local10 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_ActCP2(arg0, arg1, arg2)
    local f15_local0 = arg0:GetRandam_Int(1, 100)
    local f15_local1 = 3
    local f15_local2 = 3
    local f15_local3 = 3 + 3
    local f15_local4 = 100
    local f15_local5 = 0
    local f15_local6 = 4
    local f15_local7 = 8
    GroundTaco422000_Approach_Act_Flex(arg0, arg1, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7)
    local f15_local8 = 3001
    local f15_local9 = 3002
    local f15_local10 = 3003
    local f15_local11 = 7.2
    local f15_local12 = 15.5
    local f15_local13 = 3.5
    local f15_local14 = 0
    local f15_local15 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f15_local8, TARGET_ENE_0, f15_local11, f15_local14, f15_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f15_local9, TARGET_ENE_0, f15_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f15_local10, TARGET_ENE_0, f15_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act21(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act22(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = (15 - arg0:GetMapHitRadius(TARGET_SELF)) / 3
    local f17_local2 = true
    local f17_local3 = arg0:GetRandam_Int(1, 100)
    local f17_local4 = -1
    if f17_local0 <= 15 - arg0:GetMapHitRadius(TARGET_SELF) then
        f17_local2 = false
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f17_local1, TARGET_ENE_0, f17_local2, f17_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act23(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 10
    local f18_local2 = true
    local f18_local3 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    local f18_local4 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f18_local1, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act24(arg0, arg1, arg2)
    local f19_local0 = arg0:GetRandam_Int(1, 100)
    local f19_local1 = -1
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f19_local1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act31(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:SetStringIndexedNumber("c4220_SelfEat", 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act32(arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Int(1, 100)
    local f21_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 11757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:SetTimer(0, 40)
    arg0:SetTimer(2, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act33(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_ActCP3(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11769)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GroundTaco422000_Approach_Act_Flex(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    local f27_local0 = arg0:GetDist(TARGET_ENE_0)
    local f27_local1 = arg0:GetRandam_Int(1, 100)
    local f27_local2 = false
    if arg3 <= f27_local0 then
        f27_local2 = true
    elseif arg4 <= f27_local0 and f27_local1 <= arg5 then
        f27_local2 = false
    end
    local f27_local3 = -1
    local f27_local4 = arg0:GetRandam_Int(1, 100)
    if f27_local4 <= arg6 then
        f27_local3 = 9910
    end
    if f27_local2 == true then
        life = arg7
    else
        life = arg8
    end
    if arg2 <= f27_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, life, TARGET_ENE_0, arg2, TARGET_SELF, f27_local2, f27_local3)
    end
    
end

function GroundTaco422000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_GroundTaco422000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f31_local0 = arg1:GetDist(TARGET_ENE_0)
    local f31_local1 = arg1:GetDist(TARGET_FRI_0)
    local f31_local2 = arg1:GetRandam_Int(1, 100)
    local f31_local3 = arg1:GetPrevTargetState()
    local f31_local4 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    local f31_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 11750)
    local f31_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 11751)
    local f31_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 11752)
    local f31_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 11753)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptType(0) == PLAN_SP_EFFECT_FALL_FROM_HORSE then
        arg2:ClearSubGoal()
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then

    else

    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:GetHpRate(TARGET_SELF) < 0.95 then
        arg2:ClearSubGoal()
        if f31_local0 >= 12 then
            local f31_local9 = 20
            local f31_local10 = 0
            local f31_local11 = 100
            local f31_local12 = 0
            local f31_local13 = 0
            local f31_local14 = 0
            local f31_local15 = 8
            GroundTaco422000_Approach_Act_Flex(arg1, arg2, f31_local9, f31_local10, f31_local11, f31_local12, f31_local13, f31_local14, f31_local15)
            local f31_local16 = 3009
            local f31_local17 = 10
            local f31_local18 = 0
            local f31_local19 = 180
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f31_local16, TARGET_ENE_0, f31_local17, f31_local18, f31_local19, 0, 0)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 11769) then
            arg2:ClearSubGoal()
            if f31_local7 == true and arg1:GetNumber(1) == 1 then
                arg1:SetTimer(5, 20)
                arg1:SetNumber(1, 0)
            elseif f31_local8 == true and arg1:GetNumber(2) == 1 then
                arg1:SetTimer(6, 20)
                arg1:SetNumber(2, 0)
            end
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_GroundTaco422000_AfterAttackAct, "GroundTaco422000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GroundTaco422000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


