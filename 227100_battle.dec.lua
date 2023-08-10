RegisterTableGoal(GOAL_CrabMini227100_Battle, "GOAL_CrabMini227100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrabMini227100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:GetStringIndexedNumber("FirstSet")
    arg1:GetStringIndexedNumber("EscapeLevel")
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 2)
    arg1:SetStringIndexedNumber("Dist_BackStep", 2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 8730)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    if arg1:GetStringIndexedNumber("FirstSet") == 0 then
        arg1:SetNumber(0, 0)
        arg1:SetStringIndexedNumber("EscapeLevel", 0)
        arg1:SetStringIndexedNumber("FirstSet", 1)
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f2_local3 < 2 then
        f2_local0[4] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and f2_local3 < 2 then
        f2_local0[5] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f2_local3 >= 2 then
        f2_local0[21] = 90
        f2_local0[1] = 10
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and f2_local3 >= 2 then
        f2_local0[22] = 90
        f2_local0[2] = 10
    elseif f2_local3 >= 3 then
        f2_local0[1] = 1
        f2_local0[2] = 1
        f2_local0[3] = 1
    else
        f2_local0[1] = 1
        f2_local0[2] = 1
        f2_local0[3] = 1
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[3], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3015, 20, f2_local0[31], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, CrabMini227100_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, CrabMini227100_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, CrabMini227100_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, CrabMini227100_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, CrabMini227100_Act05)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, CrabMini227100_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, CrabMini227100_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, CrabMini227100_Act22)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, CrabMini227100_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, CrabMini227100_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, CrabMini227100_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, CrabMini227100_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, CrabMini227100_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, CrabMini227100_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, CrabMini227100_Act36)
    f2_local1[37] = REGIST_FUNC(arg1, arg2, CrabMini227100_Act37)
    local f2_local7 = REGIST_FUNC(arg1, arg2, CrabMini227100_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function CrabMini227100_Act01(arg0, arg1, arg2)
    local f3_local0 = 0.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 0.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local2 = 0.3 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f3_local3 = 50
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 4
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrabMini227100_Act02(arg0, arg1, arg2)
    local f4_local0 = 0.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 0.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local2 = 0.3 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f4_local3 = 50
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 4
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrabMini227100_Act03(arg0, arg1, arg2)
    local f5_local0 = 0.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 0.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local2 = 0.8 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f5_local3 = 50
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 4
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3002
    local f5_local8 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrabMini227100_Act04(arg0, arg1, arg2)
    local f6_local0 = 0.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 0.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local2 = 0.4 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f6_local3 = 50
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 4
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3003
    local f6_local8 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrabMini227100_Act05(arg0, arg1, arg2)
    local f7_local0 = 0.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 0.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local2 = 0.4 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f7_local3 = 50
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 4
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3004
    local f7_local8 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrabMini227100_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrabMini227100_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrabMini227100_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrabMini227100_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(1, 3), TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrabMini227100_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ExecAction, -1, 2000)
    local f12_local0 = 3015
    local f12_local1 = 999
    local f12_local2 = 0
    local f12_local3 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local0, TARGET_SELF, f12_local1, f12_local2, f12_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrabMini227100_Act32(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 6002, TARGET_SELF, 0, AI_DIR_TYPE_B, 0.1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 6003, TARGET_SELF, 0, AI_DIR_TYPE_B, 0.1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrabMini227100_Act33(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 80, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrabMini227100_Act34(arg0, arg1, arg2)
    local f15_local0 = arg0:GetRandam_Int(1, 100)
    if f15_local0 >= 60 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_FRI_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(90, 150), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_FRI_0, arg0:GetRandam_Int(1, 5), TARGET_SELF, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrabMini227100_Act35(arg0, arg1, arg2)
    local f16_local0 = 3011
    local f16_local1 = 3012
    local f16_local2 = 999
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, 0, 360)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrabMini227100_Act36(arg0, arg1, arg2)
    local f17_local0 = 3021
    local f17_local1 = 999
    local f17_local2 = 0
    local f17_local3 = 60
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrabMini227100_Act37(arg0, arg1, arg2)
    local f18_local0 = 3012
    local f18_local1 = 999
    local f18_local2 = 0
    local f18_local3 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local0, TARGET_ENE_0, f18_local1, f18_local2, f18_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrabMini227100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f22_local0 = arg1:GetDist(TARGET_ENE_0)
    local f22_local1 = arg1:GetRandam_Int(1, 100)
    local f22_local2 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f22_local3 = arg1:GetDist(TARGET_LOCALPLAYER)
    local f22_local4 = arg1:GetPrevTargetState()
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(8730) then
        local f22_local5 = arg1:GetRandam_Float(8, 17)
        arg2:ClearSubGoal()
        if arg1:GetStringIndexedNumber("EscapeLevel") == 0 then
            arg1:SetStringIndexedNumber("EscapeLevel", 1)
            arg1:SetTimer(1, f22_local5)
        end
        return true
    end
    
end

RegisterTableGoal(GOAL_CrabMini227100_AfterAttackAct, "GOAL_CrabMini227100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrabMini227100_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


