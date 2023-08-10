RegisterTableGoal(GOAL_MarikaLineageSlime332000_Battle, "MarikaLineageSlime332000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MarikaLineageSlime332000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 11657)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 16311) == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 11657) then
            f2_local0[4] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) then
            f2_local0[24] = 100
        elseif f2_local3 >= 6 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 80
            f2_local0[4] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 20
        elseif f2_local3 >= 4 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 60
            f2_local0[4] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 20
            f2_local0[23] = 20
        else
            f2_local0[1] = 50
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 50
            f2_local0[23] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16300) == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 11657) then
            f2_local0[4] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) then
            f2_local0[24] = 100
        elseif f2_local3 >= 6 then
            f2_local0[1] = 20
            f2_local0[2] = 80
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        elseif f2_local3 >= 4 then
            f2_local0[1] = 20
            f2_local0[2] = 50
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 30
        else
            f2_local0[1] = 80
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 20
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16300) == false then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) then
            f2_local0[24] = 100
        else
            f2_local0[5] = 100
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 4, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 4, f2_local0[2], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act15)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, MarikaLineageSlime332000_Act26)
    local f2_local7 = REGIST_FUNC(arg1, arg2, HoundOfBorus_419000_Act02_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function MarikaLineageSlime332000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 3.2
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 3
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = 3003
    local f3_local11 = TARGET_ENE_0
    local f3_local12 = 10
    local f3_local13 = 0
    local f3_local14 = 0
    local f3_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local8, f3_local9, f3_local11, f3_local12, 0, 0, 0)
    local f3_local16 = arg0:GetRandam_Int(1, 100)
    if f3_local16 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f3_local8, f3_local10, f3_local11, successDist2, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 4.7
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 3
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 5
    local f4_local9 = 3001
    local f4_local10 = TARGET_ENE_0
    local f4_local11 = 10
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local8, f4_local9, f4_local10, f4_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 30.5
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 3
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
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

function MarikaLineageSlime332000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 8.5
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 3
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 5
    local f6_local9 = 3010
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 10
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act05(arg0, arg1, arg2)
    local f7_local0 = 5
    local f7_local1 = TARGET_ENE_0
    local f7_local2 = TARGET_SELF
    local f7_local3 = 10
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 0
    local f7_local7 = nil
    if arg0:HasSpecialEffectId(TARGET_SELF, 16301) == true then
        f7_local7 = 20010
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 16302) == true then
        f7_local7 = 20013
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f7_local0, f7_local7, f7_local1, f7_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act06(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act07(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act10(arg0, arg1, arg2)
    local f10_local0 = 5
    local f10_local1 = 3000
    local f10_local2 = 3001
    local f10_local3 = TARGET_ENE_0
    local f10_local4 = TARGET_SELF
    local f10_local5 = 10
    local f10_local6 = 0
    local f10_local7 = 0
    local f10_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f10_local0, f10_local1, f10_local3, f10_local5, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f10_local0, f10_local2, f10_local3, successDist2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act11(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act12(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act13(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act14(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act15(arg0, arg1, arg2)
    local f15_local0 = 10
    local f15_local1 = TARGET_ENE_0
    local f15_local2 = 4
    local f15_local3 = true
    local f15_local4 = arg0:GetDist(TARGET_ENE_0)
    local f15_local5 = 100
    local f15_local6 = arg0:GetRandam_Int(1, 100)
    local f15_local7 = -1
    if f15_local6 <= f15_local5 then
        f15_local7 = 9910
    end
    if f15_local2 <= f15_local4 then
        local f15_local8 = TARGET_SELF
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_local0, f15_local1, f15_local2, f15_local8, f15_local3, f15_local7)
    else
        local f15_local8 = TARGET_ENE_0
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f15_local0, f15_local1, f15_local2, f15_local8, f15_local3, f15_local7)
    end
    local f15_local8 = arg0:GetRandam_Int(0, 2)
    local f15_local9 = TARGET_ENE_0
    local f15_local10 = arg0:GetRandam_Int(0, 1)
    local f15_local11 = arg0:GetRandam_Int(30, 45)
    local f15_local12 = 1
    local f15_local13 = TARGET_SELF
    local f15_local14 = true
    local f15_local15 = true
    local f15_local16 = arg0:GetDist(TARGET_ENE_0)
    local f15_local17 = 100
    local f15_local18 = arg0:GetRandam_Int(1, 100)
    local f15_local19 = -1
    if f15_local18 <= f15_local17 then
        f15_local19 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f15_local8, f15_local9, f15_local10, f15_local11, f15_local14, f15_local15, f15_local19)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act20(arg0, arg1, arg2)
    local f16_local0 = 10
    local f16_local1 = TARGET_ENE_0
    local f16_local2 = 5
    local f16_local3 = TARGET_SELF
    local f16_local4 = false
    local f16_local5 = arg0:GetDist(TARGET_ENE_0)
    local f16_local6 = 0
    local f16_local7 = arg0:GetRandam_Int(1, 100)
    local f16_local8 = -1
    if f16_local7 <= f16_local6 then
        f16_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act21(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 3
    local f17_local2 = TARGET_ENE_0
    local f17_local3 = 1
    local f17_local4 = TARGET_SELF
    local f17_local5 = true
    local f17_local6 = arg0:GetRandam_Int(5, 20)
    local f17_local7 = 100
    local f17_local8 = arg0:GetRandam_Int(1, 100)
    local f17_local9 = -1
    if f17_local8 <= f17_local7 then
        f17_local9 = 9910
    end
    local f17_local10 = 50
    local f17_local11 = arg0:GetRandam_Int(0, 100)
    local f17_local12 = AI_DIR_TYPE_ToR
    if f17_local11 <= f17_local10 then
        f17_local12 = AI_DIR_TYPE_ToL
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, 9910, f17_local12, f17_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act22(arg0, arg1, arg2)
    local f18_local0 = arg0:GetRandam_Int(1, 3)
    local f18_local1 = TARGET_ENE_0
    local f18_local2 = 10
    local f18_local3 = TARGET_ENE_0
    local f18_local4 = true
    local f18_local5 = arg0:GetDist(TARGET_ENE_0)
    local f18_local6 = 0
    local f18_local7 = arg0:GetRandam_Int(1, 100)
    local f18_local8 = -1
    if f18_local7 <= f18_local6 then
        f18_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act23(arg0, arg1, arg2)
    local f19_local0 = arg0:GetRandam_Int(2, 4)
    local f19_local1 = TARGET_ENE_0
    local f19_local2 = arg0:GetRandam_Int(0, 1)
    local f19_local3 = arg0:GetRandam_Int(30, 45)
    local f19_local4 = 2.5
    local f19_local5 = TARGET_SELF
    local f19_local6 = true
    local f19_local7 = true
    local f19_local8 = arg0:GetDist(TARGET_ENE_0)
    local f19_local9 = 0
    local f19_local10 = arg0:GetRandam_Int(1, 100)
    local f19_local11 = -1
    if f19_local10 <= f19_local9 then
        f19_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local0, f19_local1, f19_local2, f19_local3, f19_local6, f19_local7, f19_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act24(arg0, arg1, arg2)
    local f20_local0 = 2
    local f20_local1 = TARGET_ENE_0
    local f20_local2 = 45
    local f20_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f20_local4 = true
    local f20_local5 = 0
    local f20_local6 = arg0:GetRandam_Int(1, 100)
    local f20_local7 = -1
    if f20_local6 <= f20_local5 then
        f20_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f20_local0, f20_local1, f20_local2, f20_local7, f20_local3, f20_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act25(arg0, arg1, arg2)
    local f21_local0 = 5
    local f21_local1 = -1
    local f21_local2 = -1
    local f21_local3 = 1
    local f21_local4 = 2
    local f21_local5 = TARGET_ENE_0
    local f21_local6 = 3
    local f21_local7 = 0
    local f21_local8 = true
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f21_local0, f21_local1, 1, f21_local3, f21_local4, f21_local5, f21_local6, f21_local7, f21_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f21_local0, f21_local1, f21_local2, 1, -1, f21_local5, f21_local6, f21_local7, f21_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f21_local0, f21_local1, f21_local2, -1, 1, f21_local5, f21_local6, f21_local7, f21_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_Act26(arg0, arg1, arg2)
    local f22_local0 = 5
    local f22_local1 = -1
    local f22_local2 = -1
    local f22_local3 = 1
    local f22_local4 = 1
    local f22_local5 = TARGET_ENE_0
    local f22_local6 = 3
    local f22_local7 = 0
    local f22_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6, f22_local7, f22_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageSlime332000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MarikaLineageSlime332000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 11657) then
            arg2:ClearSubGoal()
            local f26_local0 = 5
            local f26_local1 = 3010
            local f26_local2 = TARGET_ENE_0
            local f26_local3 = 10
            local f26_local4 = 0
            local f26_local5 = 0
            local f26_local6 = 0
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f26_local0, f26_local1, f26_local2, f26_local3, 0, 0, 0)
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_MarikaLineageSlime332000_AfterAttackAct, "MarikaLineageSlime332000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MarikaLineageSlime332000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


