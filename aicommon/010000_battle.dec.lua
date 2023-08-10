RegisterTableGoal(GOAL_ishijunTest10000_Battle, "ishijunTest10000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ishijunTest10000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:SetNumber(1, 0)
    arg1:SetTimer(1, 0)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 150)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    f2_local0[1] = 0
    f2_local0[2] = 0
    f2_local0[3] = 0
    f2_local0[4] = 0
    f2_local0[5] = 0
    f2_local0[6] = 100
    f2_local0[7] = 0
    f2_local0[8] = 0
    f2_local0[9] = 0
    f2_local0[10] = 0
    f2_local0[11] = 0
    f2_local0[12] = 0
    f2_local0[13] = 0
    f2_local0[14] = 0
    f2_local0[15] = 0
    f2_local0[16] = 0
    f2_local0[17] = 0
    f2_local0[18] = 0
    f2_local0[20] = 0
    f2_local0[21] = 0
    f2_local0[22] = 0
    f2_local0[23] = 0
    f2_local0[25] = 0
    f2_local0[26] = 0
    f2_local0[30] = 0
    f2_local0[31] = 0
    f2_local0[32] = 0
    f2_local0[33] = 0
    f2_local0[34] = 0
    f2_local0[35] = 0
    f2_local0[36] = 0
    f2_local0[37] = 0
    f2_local0[38] = 0
    f2_local0[39] = 0
    f2_local0[40] = 0
    f2_local1[1] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act18)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act23)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act26)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act36)
    f2_local1[37] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act37)
    f2_local1[38] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act38)
    f2_local1[39] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act39)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, ishijunTest10000_Act40)
    local f2_local5 = REGIST_FUNC(arg1, arg2, ishijunTest10000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local5)
    
end

function ishijunTest10000_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act06(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 150)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), false, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), false, true, -1)
    
end

function ishijunTest10000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, 90)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, false, -1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, 90)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, 90)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, 90)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act18(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_None, 0)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act26(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act30(arg0, arg1, arg2)
    if arg0:IsBothHandMode(TARGET_ENE_0) == true then
        walk = true
    else
        walk = false
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, walk, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act31(arg0, arg1, arg2)
    if arg0:IsBothHandMode(TARGET_ENE_0) == true then
        walk = true
    else
        walk = false
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 10, TARGET_ENE_0, walk, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act32(arg0, arg1, arg2)
    if arg0:IsBothHandMode(TARGET_ENE_0) == true then
        walk = true
    else
        walk = false
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), walk, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act33(arg0, arg1, arg2)
    if arg0:IsBothHandMode(TARGET_ENE_0) == true then
        walk = true
    else
        walk = false
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), walk, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act34(arg0, arg1, arg2)
    if arg0:IsBothHandMode(TARGET_ENE_0) == true then
        arg1:AddSubGoal(GOAL_COMMON_Guard, 3, 9910, TARGET_ENE_0, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act35(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Guard, 3, 9910, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act36(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    local f33_local0 = arg1:AddSubGoal(GOAL_COMMON_Guard, 3, 9910, TARGET_SELF, true, 0)
    f33_local0:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act37(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    local f34_local0 = arg1:AddSubGoal(GOAL_COMMON_Guard, 3, 9910, TARGET_SELF, true, 0)
    f34_local0:TimingSetNumber(1, 2, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act38(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    local f35_local0 = arg1:AddSubGoal(GOAL_COMMON_Guard, 3, 9910, TARGET_SELF, true, 0)
    f35_local0:TimingSetNumber(1, 3, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act39(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    local f36_local0 = arg1:AddSubGoal(GOAL_COMMON_Guard, 3, 9910, TARGET_SELF, true, 0)
    f36_local0:TimingSetNumber(1, 4, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, 90, 0, 0)
    local f37_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, DIST_None, 0, 0)
    f37_local0:TimingSetTimer(1, 24, AI_TIMING_SET__UPDATE_SUCCESS)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_None, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ishijunTest10000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_ishijunTest10000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f41_local0 = arg1:GetRandam_Int(1, 100)
    local f41_local1 = arg1:GetRandam_Int(1, 100)
    local f41_local2 = arg1:GetRandam_Int(1, 100)
    local f41_local3 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:GetNumber(1) == 1 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:GetNumber(1) == 2 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_OnCreateDamage) and arg1:GetNumber(1) == 3 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
        return true
    end
    if arg1:IsInterupt(INTERUPT_UseItem) and arg1:GetNumber(1) == 4 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, 90)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(150) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_ishijunTest10000_AfterAttackAct, "ishijunTest10000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ishijunTest10000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f42_local0 = arg1:GetDist(TARGET_ENE_0)
    local f42_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f42_local0 >= 5 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif f42_local0 >= 2 then
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


