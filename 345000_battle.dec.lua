RegisterTableGoal(GOAL_ChimeraJsBasetype345000_Battle, "ChimeraJsBasetype345000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ChimeraJsBasetype345000_Battle, true)
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
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(1, 3003)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = 1
    if arg1:IsTargetGuard(TARGET_ENE_0) then
        f2_local6 = 3
    end
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 15 then
            f2_local0[15] = 100
        else
            f2_local0[1] = 20
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[15] = 0
            f2_local0[16] = 60
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[19] = 20
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 15 then
            f2_local0[15] = 100
        else
            f2_local0[1] = 20
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[15] = 0
            f2_local0[16] = 40
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[19] = 30
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13076) then
        f2_local0[16] = 70
        f2_local0[18] = 0
        f2_local0[19] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if f2_local3 >= 5 then
            f2_local0[17] = 100
        else
            f2_local0[17] = 70
            f2_local0[18] = 30
        end
    elseif f2_local3 >= 6 then
        f2_local0[1] = 50
        f2_local0[2] = 10
        f2_local0[3] = 0
        f2_local0[4] = 30
        f2_local0[5] = 0
        f2_local0[6] = 10
        f2_local0[7] = 0
        f2_local0[8] = 0
    elseif f2_local3 >= 3 then
        f2_local0[1] = 0
        f2_local0[2] = 10
        f2_local0[3] = 0
        f2_local0[4] = 30
        f2_local0[5] = 0
        f2_local0[6] = 30
        f2_local0[7] = 20 * f2_local6
        f2_local0[8] = 10
    else
        f2_local0[1] = 0
        f2_local0[2] = 30
        f2_local0[3] = 10
        f2_local0[4] = 0
        f2_local0[5] = 20
        f2_local0[6] = 10
        f2_local0[7] = 20 * f2_local6
        f2_local0[8] = 20
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[17] = 0
        f2_local0[18] = 0
        f2_local0[19] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3020, 10, f2_local0[7], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3023, 10, f2_local0[8], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, radagonnokora_basetype345000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, radagonnokora_basetype345000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, radagonnokora_basetype345000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, radagonnokora_basetype345000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, radagonnokora_basetype345000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, radagonnokora_basetype345000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, radagonnokora_basetype345000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, radagonnokora_basetype345000_Act08)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, radagonnokora_basetype345000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, radagonnokora_basetype345000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, radagonnokora_basetype345000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, radagonnokora_basetype345000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, radagonnokora_basetype345000_Act19)
    local f2_local7 = REGIST_FUNC(arg1, arg2, ChimeraJsBasetype345000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function radagonnokora_basetype345000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 5.5
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 3
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
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

function radagonnokora_basetype345000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 2.5
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 3
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 5
    local f4_local9 = 3001
    local f4_local10 = 3002
    local f4_local11 = TARGET_ENE_0
    local f4_local12 = 3
    local f4_local13 = 0
    local f4_local14 = 0
    local f4_local15 = 0
    if f4_local0 >= 2.5 then
        f4_local9 = 3009
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local8, f4_local9, f4_local11, f4_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f4_local8, f4_local10, f4_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function radagonnokora_basetype345000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 2.5
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 3
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 5
    local f5_local9 = 3003
    local f5_local10 = 3004
    local f5_local11 = TARGET_ENE_0
    local f5_local12 = 3
    local f5_local13 = 0
    local f5_local14 = 0
    local f5_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local8, f5_local9, f5_local11, f5_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f5_local8, f5_local10, f5_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function radagonnokora_basetype345000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 5.5
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 3
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 5
    local f6_local9 = 3008
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 10
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function radagonnokora_basetype345000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 2.5
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 3
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 5
    local f7_local9 = 3005
    local f7_local10 = 3007
    local f7_local11 = TARGET_ENE_0
    local f7_local12 = 7
    local f7_local13 = 0
    local f7_local14 = 0
    local f7_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local8, f7_local9, f7_local11, f7_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f7_local8, f7_local10, f7_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function radagonnokora_basetype345000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 3.5
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 100
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 3
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local8 = 5
    local f8_local9 = 3006
    local f8_local10 = 3022
    local f8_local11 = TARGET_ENE_0
    local f8_local12 = 5
    local f8_local13 = 0
    local f8_local14 = 0
    local f8_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local8, f8_local9, f8_local11, f8_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f8_local8, f8_local10, f8_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function radagonnokora_basetype345000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 5.5
    local f9_local2 = 0
    local f9_local3 = 999
    local f9_local4 = 100
    local f9_local5 = 0
    local f9_local6 = 3
    local f9_local7 = 3
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    local f9_local8 = 5
    local f9_local9 = 3020
    local f9_local10 = 3021
    local f9_local11 = TARGET_ENE_0
    local f9_local12 = 5
    local f9_local13 = 0
    local f9_local14 = 0
    local f9_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local8, f9_local9, f9_local11, f9_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f9_local8, f9_local10, f9_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function radagonnokora_basetype345000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 3
    local f10_local2 = 0
    local f10_local3 = 999
    local f10_local4 = 100
    local f10_local5 = 0
    local f10_local6 = 3
    local f10_local7 = 3
    Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    local f10_local8 = 5
    local f10_local9 = 3023
    local f10_local10 = TARGET_ENE_0
    local f10_local11 = 10
    local f10_local12 = 0
    local f10_local13 = 0
    local f10_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local8, f10_local9, f10_local10, f10_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function radagonnokora_basetype345000_Act15(arg0, arg1, arg2)
    local f11_local0 = 10
    local f11_local1 = TARGET_ENE_0
    local f11_local2 = 15
    local f11_local3 = TARGET_SELF
    local f11_local4 = false
    local f11_local5 = arg0:GetDist(TARGET_ENE_0)
    local f11_local6 = 0
    local f11_local7 = arg0:GetRandam_Int(1, 100)
    local f11_local8 = -1
    if f11_local7 <= f11_local6 then
        f11_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function radagonnokora_basetype345000_Act16(arg0, arg1, arg2)
    local f12_local0 = arg0:GetRandam_Int(1, 2)
    local f12_local1 = TARGET_ENE_0
    local f12_local2 = arg0:GetRandam_Int(0, 1)
    local f12_local3 = arg0:GetRandam_Int(30, 45)
    local f12_local4 = 3
    local f12_local5 = TARGET_SELF
    local f12_local6 = true
    local f12_local7 = true
    local f12_local8 = arg0:GetDist(TARGET_ENE_0)
    local f12_local9 = 0
    local f12_local10 = arg0:GetRandam_Int(1, 100)
    local f12_local11 = -1
    if f12_local10 <= f12_local9 then
        f12_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f12_local0, f12_local1, f12_local2, f12_local3, f12_local6, f12_local7, f12_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function radagonnokora_basetype345000_Act17(arg0, arg1, arg2)
    local f13_local0 = 2
    local f13_local1 = TARGET_ENE_0
    local f13_local2 = 45
    local f13_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f13_local4 = true
    local f13_local5 = 0
    local f13_local6 = arg0:GetRandam_Int(1, 100)
    local f13_local7 = -1
    if f13_local6 <= f13_local5 then
        f13_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f13_local0, f13_local1, f13_local2, f13_local7, f13_local3, f13_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function radagonnokora_basetype345000_Act18(arg0, arg1, arg2)
    local f14_local0 = 5
    local f14_local1 = -1
    local f14_local2 = -1
    local f14_local3 = 1
    local f14_local4 = 1
    local f14_local5 = TARGET_ENE_0
    local f14_local6 = 3
    local f14_local7 = 0
    local f14_local8 = true
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f14_local0, f14_local1, 2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7, f14_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f14_local0, f14_local1, f14_local2, 1, -1, f14_local5, f14_local6, f14_local7, f14_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f14_local0, f14_local1, f14_local2, -1, 1, f14_local5, f14_local6, f14_local7, f14_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function radagonnokora_basetype345000_Act19(arg0, arg1, arg2)
    local f15_local0 = 5
    local f15_local1 = -1
    local f15_local2 = -1
    local f15_local3 = 1
    local f15_local4 = 1
    local f15_local5 = TARGET_ENE_0
    local f15_local6 = 3
    local f15_local7 = 0
    local f15_local8 = true
    local f15_local9 = arg0:GetRandam_Int(1, 2)
    if f15_local9 == 1 then
        f15_local4 = 1
        f15_local3 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7, f15_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function _ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_ChimeraJsBasetype345000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        return true
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) then
        local f19_local0 = arg1:GetDist(TARGET_ENE_0)
        local f19_local1 = arg1:GetRandam_Int(1, 100)
        local f19_local2 = arg1:GetRandam_Int(1, 100)
        if f19_local0 <= 5 and f19_local1 <= 40 then
            arg2:ClearSubGoal()
            radagonnokora_basetype345000_Act18(arg1, arg2)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local f19_local0 = arg1:GetDist(TARGET_ENE_0)
        local f19_local1 = arg1:GetRandam_Int(1, 100)
        local f19_local2 = arg1:GetRandam_Int(1, 100)
        if f19_local0 <= 5 and f19_local1 <= 30 then
            arg2:ClearSubGoal()
            radagonnokora_basetype345000_Act03(arg1, arg2)
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_ChimeraJsBasetype345000_AfterAttackAct, "ChimeraJsBasetype345000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ChimeraJsBasetype345000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


