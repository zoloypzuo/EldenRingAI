RegisterTableGoal(GOAL_MarikaLineageWomanDagger331010_Battle, "MarikaLineageWomanDagger331010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MarikaLineageWomanDagger331010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(2, 3000)
    arg1:EnableUnfavorableAttackCheck(2, 3001)
    arg1:EnableUnfavorableAttackCheck(2, 3002)
    arg1:EnableUnfavorableAttackCheck(2, 3003)
    arg1:EnableUnfavorableAttackCheck(2, 3004)
    arg1:EnableUnfavorableAttackCheck(2, 3005)
    arg1:EnableUnfavorableAttackCheck(2, 3006)
    arg1:EnableUnfavorableAttackCheck(2, 3010)
    arg1:EnableUnfavorableAttackCheck(2, 3011)
    arg1:EnableUnfavorableAttackCheck(2, 3012)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 79)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 83)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 11653)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetHpRate(TARGET_SELF)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = 1
    if arg1:HasSpecialEffectId(TARGET_SELF, 11692) == true then
        f2_local6 = 0
    end
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if not (f2_local7 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku) or f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[5] = 20
        f2_local0[31] = 80
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 79) == true then
        f2_local0[10] = 100
    else
        local f2_local8 = arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240)
        if f2_local8 then
            f2_local0[35] = 100
        else
            f2_local8 = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                f2_local8 = 20
            end
            if f2_local3 >= 6 then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 20 * f2_local6
                f2_local0[6] = 60 + f2_local8
                f2_local0[30] = 10 * f2_local6
                f2_local0[31] = 10
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
            elseif f2_local3 >= 4 then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 20 * f2_local6
                f2_local0[6] = 400 + f2_local8
                f2_local0[30] = 0
                f2_local0[31] = 40
                f2_local0[32] = 0
                f2_local0[33] = 20 * f2_local6
                f2_local0[34] = 0
            elseif f2_local3 >= 2 then
                f2_local0[1] = 30
                f2_local0[2] = 25
                f2_local0[3] = 15
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 15
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 10
                f2_local0[33] = 20
                f2_local0[34] = 0
            else
                f2_local0[1] = 20
                f2_local0[2] = 40
                f2_local0[3] = 15
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 10
                f2_local0[33] = 0
                f2_local0[34] = 0
            end
        end
    end
    f2_local0[6] = SetCoolTime(arg1, arg2, 3010, 9, f2_local0[6], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[32], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[32], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanDagger331010_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanDagger331010_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanDagger331010_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanDagger331010_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanDagger331010_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanDagger331010_Act6)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanDagger331010_Act7)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanDagger331010_Act8)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanDagger331010_Act10)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanDagger331010_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanDagger331010_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanDagger331010_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanDagger331010_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanDagger331010_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanDagger331010_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanDagger331010_Act36)
    local f2_local8 = REGIST_FUNC(arg1, arg2, MarikaLineageWomanDagger331010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function MarikaLineageWomanDagger331010_Act1(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 2.5
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 3
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = TARGET_ENE_0
    local f3_local11 = 10
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local8, f3_local9, f3_local10, f3_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanDagger331010_Act2(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 2.5
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 3
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f4_local8 = 5
    local f4_local9 = 3001
    local f4_local10 = 3001
    local f4_local11 = TARGET_ENE_0
    local f4_local12 = 10
    local f4_local13 = 0
    local f4_local14 = 0
    local f4_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local8, f4_local9, f4_local11, f4_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanDagger331010_Act3(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 2.5
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 3
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f5_local8 = 5
    local f5_local9 = 3002
    local f5_local10 = TARGET_ENE_0
    local f5_local11 = 10
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local8, f5_local9, f5_local10, f5_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanDagger331010_Act4(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 2.2
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 3
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f6_local8 = 5
    local f6_local9 = 3004
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 10
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanDagger331010_Act5(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 4.2
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 3
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f7_local8 = 5
    local f7_local9 = 3005
    local f7_local10 = TARGET_ENE_0
    local f7_local11 = 10
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local8, f7_local9, f7_local10, f7_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanDagger331010_Act6(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11653)
    arg0:SetTimer(2, 2.5)
    local f8_local0 = 5
    local f8_local1 = 3010
    local f8_local2 = TARGET_ENE_0
    local f8_local3 = 10
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local0, f8_local1, f8_local2, f8_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanDagger331010_Act7(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 2.5
    local f9_local2 = 0
    local f9_local3 = 999
    local f9_local4 = 100
    local f9_local5 = 0
    local f9_local6 = 3
    local f9_local7 = 3
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f9_local8 = 5
    local f9_local9 = 3006
    local f9_local10 = TARGET_ENE_0
    local f9_local11 = 10
    local f9_local12 = 0
    local f9_local13 = 0
    local f9_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local8, f9_local9, f9_local10, f9_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanDagger331010_Act8(arg0, arg1, arg2)
    local f10_local0 = 5
    local f10_local1 = -1
    local f10_local2 = -1
    local f10_local3 = -1
    local f10_local4 = -1
    local f10_local5 = TARGET_ENE_0
    local f10_local6 = 3
    local f10_local7 = 0
    local f10_local8 = true
    local f10_local9 = arg0:GetDist(TARGET_ENE_0)
    local f10_local10 = arg0:GetRandam_Int(1, 100)
    if f10_local9 <= 4 and arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f10_local0, f10_local1, 1, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7, f10_local8)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f10_local11 = 5
    local f10_local12 = 3010
    local f10_local13 = TARGET_ENE_0
    local f10_local14 = 10
    local f10_local15 = 0
    local f10_local16 = 0
    local f10_local17 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local11, f10_local12, f10_local13, f10_local14, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanDagger331010_Act10(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 0.1
    local f11_local2 = 0
    local f11_local3 = 999
    local f11_local4 = 100
    local f11_local5 = 0
    local f11_local6 = 3
    local f11_local7 = 3
    Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    local f11_local8 = 3110
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local10 = 0
    local f11_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 0.5, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanDagger331010_Act30(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetRandam_Int(1, 100)
    local f12_local2 = 2
    local f12_local3 = 8
    local f12_local4 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f12_local2, TARGET_ENE_0, f12_local3, TARGET_SELF, false, f12_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanDagger331010_Act31(arg0, arg1, arg2)
    local f13_local0 = arg0:GetRandam_Int(1, 3)
    local f13_local1 = TARGET_ENE_0
    local f13_local2 = arg0:GetRandam_Int(0, 1)
    local f13_local3 = arg0:GetRandam_Int(30, 60)
    local f13_local4 = arg0:GetRandam_Int(4, 6)
    local f13_local5 = TARGET_SELF
    local f13_local6 = true
    local f13_local7 = true
    local f13_local8 = arg0:GetDist(TARGET_ENE_0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    local f13_local9 = 0
    local f13_local10 = arg0:GetRandam_Int(1, 100)
    local f13_local11 = -1
    if f13_local10 <= f13_local9 then
        f13_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f13_local0, f13_local1, f13_local2, f13_local3, f13_local6, f13_local7, f13_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanDagger331010_Act32(arg0, arg1, arg2)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 99) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanDagger331010_Act33(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanDagger331010_Act34(arg0, arg1, arg2)
    local f16_local0 = 5
    local f16_local1 = -1
    local f16_local2 = -1
    local f16_local3 = 1
    local f16_local4 = 2
    local f16_local5 = TARGET_ENE_0
    local f16_local6 = 3
    local f16_local7 = 0
    local f16_local8 = true
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f16_local0, f16_local1, 1, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7, f16_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f16_local0, f16_local1, f16_local2, 1, -1, f16_local5, f16_local6, f16_local7, f16_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f16_local0, f16_local1, f16_local2, -1, 1, f16_local5, f16_local6, f16_local7, f16_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanDagger331010_Act35(arg0, arg1, arg2)
    local f17_local0 = 2
    local f17_local1 = TARGET_ENE_0
    local f17_local2 = 45
    local f17_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f17_local4 = true
    local f17_local5 = 0
    local f17_local6 = arg0:GetRandam_Int(1, 100)
    local f17_local7 = -1
    if f17_local6 <= f17_local5 then
        f17_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f17_local0, f17_local1, f17_local2, f17_local7, f17_local3, f17_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanDagger331010_Act36(arg0, arg1, arg2)
    local f18_local0 = 3
    local f18_local1 = -1
    local f18_local2 = -1
    local f18_local3 = 1
    local f18_local4 = 1
    local f18_local5 = TARGET_ENE_0
    local f18_local6 = 2
    local f18_local7 = 0
    local f18_local8 = true
    local f18_local9 = arg0:GetRandam_Int(1, 100)
    if f18_local9 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f18_local0, f18_local1, f18_local2, 2, f18_local4, f18_local5, f18_local6, f18_local7, f18_local8)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f18_local0, f18_local1, f18_local2, f18_local3, 2, f18_local5, f18_local6, f18_local7, f18_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanDagger331010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MarikaLineageWomanDagger331010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f22_local0 = arg1:GetDist(TARGET_ENE_0)
    local f22_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f22_local2 = arg1:GetRandam_Int(1, 100)
    local f22_local3 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(79) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            arg2:ClearSubGoal()
            local f22_local4 = arg1:GetDist(TARGET_ENE_0)
            local f22_local5 = arg1:GetRandam_Int(1, 100)
            if f22_local4 <= 2 then
                if f22_local5 <= 50 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                    local f22_local6 = 5
                    local f22_local7 = 3001
                    local f22_local8 = TARGET_ENE_0
                    local f22_local9 = 10
                    local f22_local10 = 0
                    local f22_local11 = 0
                    local f22_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local6, f22_local7, f22_local8, successDist2, 0, 0, 0)
                elseif f22_local5 <= 75 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                    local f22_local6 = 5
                    local f22_local7 = 3006
                    local f22_local8 = TARGET_ENE_0
                    local f22_local9 = 10
                    local f22_local10 = 0
                    local f22_local11 = 0
                    local f22_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local6, f22_local7, f22_local8, successDist2, 0, 0, 0)
                else
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                    local f22_local6 = 5
                    local f22_local7 = 3003
                    local f22_local8 = TARGET_ENE_0
                    local f22_local9 = 10
                    local f22_local10 = 0
                    local f22_local11 = 0
                    local f22_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local6, f22_local7, f22_local8, successDist2, 0, 0, 0)
                end
            elseif f22_local4 <= 6 then
                if f22_local5 <= 60 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                    local f22_local6 = 5
                    local f22_local7 = 3005
                    local f22_local8 = TARGET_ENE_0
                    local f22_local9 = 10
                    local f22_local10 = 0
                    local f22_local11 = 0
                    local f22_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local6, f22_local7, f22_local8, successDist2, 0, 0, 0)
                else

                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            arg2:ClearSubGoal()
            local f22_local4 = arg1:GetDist(TARGET_ENE_0)
            local f22_local5 = arg1:GetRandam_Int(1, 100)
            if f22_local4 <= 2 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                local f22_local6 = 5
                local f22_local7 = 3002
                local f22_local8 = TARGET_ENE_0
                local f22_local9 = 10
                local f22_local10 = 0
                local f22_local11 = 0
                local f22_local12 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local6, f22_local7, f22_local8, successDist2, 0, 0, 0)
            elseif f22_local5 <= 40 then
                local f22_local6 = 5
                local f22_local7 = -1
                local f22_local8 = -1
                local f22_local9 = -1
                local f22_local10 = -1
                local f22_local11 = TARGET_ENE_0
                local f22_local12 = 3
                local f22_local13 = 0
                local f22_local14 = true
                if f22_local5 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, f22_local6, f22_local7, f22_local8, 1, f22_local10, f22_local11, f22_local12, f22_local13, f22_local14)
                else
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, f22_local6, f22_local7, f22_local8, f22_local9, 1, f22_local11, f22_local12, f22_local13, f22_local14)
                end
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
            arg2:ClearSubGoal()
            local f22_local4 = arg1:GetDist(TARGET_ENE_0)
            local f22_local5 = arg1:GetRandam_Int(1, 100)
            if f22_local4 <= 2 then
                if f22_local5 <= 40 then
                    local f22_local6 = 5
                    local f22_local7 = 3001
                    local f22_local8 = TARGET_ENE_0
                    local f22_local9 = 10
                    local f22_local10 = 0
                    local f22_local11 = 0
                    local f22_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local6, f22_local7, f22_local8, successDist2, 0, 0, 0)
                else
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                    local f22_local6 = 5
                    local f22_local7 = 3003
                    local f22_local8 = TARGET_ENE_0
                    local f22_local9 = 10
                    local f22_local10 = 0
                    local f22_local11 = 0
                    local f22_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local6, f22_local7, f22_local8, successDist2, 0, 0, 0)
                end
            else
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            arg2:ClearSubGoal()
            local f22_local4 = arg1:GetDist(TARGET_ENE_0)
            local f22_local5 = arg1:GetRandam_Int(1, 100)
            local f22_local6 = 5
            local f22_local7 = -1
            local f22_local8 = -1
            local f22_local9 = 1
            local f22_local10 = 2
            local f22_local11 = TARGET_ENE_0
            local f22_local12 = 3
            local f22_local13 = 0
            local f22_local14 = true
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, f22_local6, f22_local7, f22_local8, 1, -1, f22_local11, f22_local12, f22_local13, f22_local14)
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, f22_local6, f22_local7, f22_local8, -1, 1, f22_local11, f22_local12, f22_local13, f22_local14)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            arg2:ClearSubGoal()
            local f22_local4 = arg1:GetDist(TARGET_ENE_0)
            local f22_local5 = arg1:GetRandam_Int(1, 100)
            if f22_local4 <= 2.5 then
                if f22_local5 <= 40 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                    local f22_local6 = 5
                    local f22_local7 = 3001
                    local f22_local8 = TARGET_ENE_0
                    local f22_local9 = 10
                    local f22_local10 = 0
                    local f22_local11 = 0
                    local f22_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local6, f22_local7, f22_local8, successDist2, 0, 0, 0)
                elseif f22_local5 <= 70 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                    local f22_local6 = 5
                    local f22_local7 = 3006
                    local f22_local8 = TARGET_ENE_0
                    local f22_local9 = 10
                    local f22_local10 = 0
                    local f22_local11 = 0
                    local f22_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local6, f22_local7, f22_local8, successDist2, 0, 0, 0)
                else
                    local f22_local6 = 5
                    local f22_local7 = 3002
                    local f22_local8 = TARGET_ENE_0
                    local f22_local9 = 10
                    local f22_local10 = 0
                    local f22_local11 = 0
                    local f22_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local6, f22_local7, f22_local8, successDist2, 0, 0, 0)
                end
            else
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
            arg2:ClearSubGoal()
            local f22_local4 = arg1:GetDist(TARGET_ENE_0)
            local f22_local5 = arg1:GetRandam_Int(1, 100)
            if f22_local4 <= 5 then
                if f22_local5 <= 80 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                    local f22_local6 = 5
                    local f22_local7 = 3005
                    local f22_local8 = 3006
                    local f22_local9 = TARGET_ENE_0
                    local f22_local10 = 10
                    local f22_local11 = 0
                    local f22_local12 = 0
                    local f22_local13 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local6, f22_local7, f22_local9, successDist2, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local6, f22_local8, f22_local9, successDist2, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 11653) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 11653)
            arg2:ClearSubGoal()
            local f22_local4 = arg1:GetDist(TARGET_ENE_0)
            local f22_local5 = arg1:GetRandam_Int(1, 100)
            if f22_local4 >= 6 then
                if arg1:IsFinishTimer(2) then
                    local f22_local6 = 5
                    local f22_local7 = 3012
                    local f22_local8 = TARGET_ENE_0
                    local f22_local9 = 10
                    local f22_local10 = 0
                    local f22_local11 = 0
                    local f22_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local6, f22_local7, f22_local8, successDist2, 0, 0, 0)
                else
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                    local f22_local6 = 5
                    local f22_local7 = 3011
                    local f22_local8 = TARGET_ENE_0
                    local f22_local9 = 10
                    local f22_local10 = 0
                    local f22_local11 = 0
                    local f22_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local6, f22_local7, f22_local8, successDist2, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
            arg2:ClearSubGoal()
            local f22_local4 = arg1:GetDist(TARGET_ENE_0)
            local f22_local5 = arg1:GetRandam_Int(1, 100)
            if f22_local4 >= 6 then
                if arg1:IsFinishTimer(2) then
                    local f22_local6 = 5
                    local f22_local7 = 3012
                    local f22_local8 = TARGET_ENE_0
                    local f22_local9 = 10
                    local f22_local10 = 0
                    local f22_local11 = 0
                    local f22_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local6, f22_local7, f22_local8, successDist2, 0, 0, 0)
                else
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                    local f22_local6 = 5
                    local f22_local7 = 3011
                    local f22_local8 = TARGET_ENE_0
                    local f22_local9 = 10
                    local f22_local10 = 0
                    local f22_local11 = 0
                    local f22_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local6, f22_local7, f22_local8, successDist2, 0, 0, 0)
                end
                return true
            else
                local f22_local6 = 5
                local f22_local7 = nil
                local f22_local8 = TARGET_ENE_0
                local f22_local9 = 10
                local f22_local10 = 0
                local f22_local11 = 0
                local f22_local12 = 0
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                if f22_local4 <= 6 then
                    f22_local7 = 3005
                elseif f22_local4 <= 3.5 then
                    f22_local7 = 3006
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local6, f22_local7, f22_local8, successDist2, 0, 0, 0)
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) then
        local f22_local4 = arg1:GetDist(TARGET_ENE_0)
        local f22_local5 = arg1:GetRandam_Int(1, 100)
        if arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
            arg2:ClearSubGoal()
            if f22_local4 <= 5 then
                MarikaLineageWomanDagger331010_Act34(arg1, arg2)
            end
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(6992) then
        arg2:ClearSubGoal()
        MarikaLineageWomanDagger331010_Act5(arg1, arg2)
        return true
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        local f22_local4 = arg1:GetDist(TARGET_ENE_0)
        local f22_local5 = arg1:GetRandam_Int(1, 100)
        if f22_local5 < 80 then
            arg2:ClearSubGoal()
            MarikaLineageWomanDagger331010_Act36(arg1, arg2)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local f22_local4 = arg1:GetDist(TARGET_ENE_0)
        local f22_local5 = arg1:GetRandam_Int(1, 100)
        if arg1:HasSpecialEffectId(TARGET_SELF, 11652) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 11652)
            if f22_local5 <= 70 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                local f22_local6 = 5
                local f22_local7 = 3005
                local f22_local8 = 3006
                local f22_local9 = TARGET_ENE_0
                local f22_local10 = 10
                local f22_local11 = 0
                local f22_local12 = 0
                local f22_local13 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local6, f22_local7, f22_local9, successDist2, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local6, f22_local8, f22_local9, successDist2, 0, 0, 0)
            end
        elseif f22_local4 <= 5 and f22_local5 <= 70 and arg1:IsFinishTimer(1) then
            arg2:ClearSubGoal()
            arg1:SetTimer(1, 4)
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 90, 5) then
                arg2:ClearSubGoal()
                MarikaLineageWomanDagger331010_Act33(arg1, arg2)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 150, 90, 5) then
                arg2:ClearSubGoal()
                MarikaLineageWomanDagger331010_Act34(arg1, arg2)
                return true
            else
                arg2:ClearSubGoal()
                MarikaLineageWomanDagger331010_Act34(arg1, arg2)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(83) then
        arg2:ClearSubGoal()
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_MarikaLineageWomanDagger331010_AfterAttackAct, "MarikaLineageWomanDagger331010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MarikaLineageWomanDagger331010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


