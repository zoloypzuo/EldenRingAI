RegisterTableGoal(GOAL_InsectGolem_308010_Battle, "InsectGolem_308010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_InsectGolem_308010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
    arg1:EnableUnfavorableAttackCheck(1000000, 3003)
    arg1:EnableUnfavorableAttackCheck(1000000, 3004)
    arg1:EnableUnfavorableAttackCheck(1000000, 3005)
    arg1:EnableUnfavorableAttackCheck(1000000, 3006)
    arg1:SetTimer(10, 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 4)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 5880) and arg1:GetTimer(10) > 5 then
        if f2_local3 < 5 then
            f2_local0[10] = 80
            f2_local0[13] = 5
            f2_local0[14] = 10
            f2_local0[11] = 1
        else
            f2_local0[10] = 40
            f2_local0[11] = 40
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[10] = 50
        f2_local0[11] = 50
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[10] = 40
        f2_local0[11] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and f2_local3 <= 1 and f2_local4 <= 40 then
        f2_local0[14] = 100
    elseif f2_local3 >= 8 then
        f2_local0[1] = 10
        f2_local0[2] = 5
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 45
        f2_local0[6] = 30
        f2_local0[12] = 0
        f2_local0[13] = 10
        f2_local0[14] = 0
    elseif f2_local3 >= 5 then
        f2_local0[1] = 20
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[4] = 0
        f2_local0[5] = 30
        f2_local0[6] = 20
        f2_local0[12] = 0
        f2_local0[13] = 10
        f2_local0[14] = 0
    elseif f2_local3 >= 2.5 then
        f2_local0[1] = 20
        f2_local0[2] = 10
        f2_local0[3] = 20
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[12] = 0
        f2_local0[13] = 10
        f2_local0[14] = 10
    elseif f2_local3 >= 1 then
        f2_local0[1] = 15
        f2_local0[2] = 10
        f2_local0[3] = 15
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[12] = 0
        f2_local0[13] = 10
        f2_local0[14] = 10
    else
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[4] = 25
        f2_local0[12] = 0
        f2_local0[13] = 10
        f2_local0[14] = 10
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[4], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[12], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, InsectGolem_308010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, InsectGolem_308010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, InsectGolem_308010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, InsectGolem_308010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, InsectGolem_308010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, InsectGolem_308010_Act06)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, InsectGolem_308010_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, InsectGolem_308010_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, InsectGolem_308010_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, InsectGolem_308010_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, InsectGolem_308010_Act14)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, InsectGolem_308010_Act20)
    local f2_local7 = REGIST_FUNC(arg1, arg2, InsectGolem_308010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function InsectGolem_308010_Act01(arg0, arg1, arg2)
    local f3_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 5
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3001
    local f3_local9 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local10 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 0
    local f3_local12 = 20
    local f3_local13 = arg0:GetRandam_Int(1, 100)
    if f3_local13 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local11, f3_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local9, f3_local11, f3_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, f3_local10, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function InsectGolem_308010_Act02(arg0, arg1, arg2)
    local f4_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 5
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3002
    local f4_local8 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local9 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 0
    local f4_local11 = 20
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function InsectGolem_308010_Act03(arg0, arg1, arg2)
    local f5_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 5
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3003
    local f5_local8 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 20
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function InsectGolem_308010_Act04(arg0, arg1, arg2)
    local f6_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 5
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3004
    local f6_local8 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 20
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function InsectGolem_308010_Act05(arg0, arg1, arg2)
    local f7_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 5
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3005
    local f7_local8 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 20
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function InsectGolem_308010_Act06(arg0, arg1, arg2)
    local f8_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 5
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3006
    local f8_local8 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 20
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function InsectGolem_308010_Act10(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 10
    local f9_local2 = 12
    if f9_local1 <= f9_local0 then
        Approach_Act(arg0, arg1, f9_local1, f9_local2, Odds_Guard, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, f9_local1, TARGET_ENE_0, true, -1)
    
end

function InsectGolem_308010_Act11(arg0, arg1, arg2)
    local f10_local0 = arg0:GetRandam_Int(0, 1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, f10_local0, arg0:GetRandam_Int(30, 45), true, true, -1)
    
end

function InsectGolem_308010_Act12(arg0, arg1, arg2)
    local f11_local0 = ATT3011_DIST_MAX
    local f11_local1 = ATT3011_DIST_MAX + 0.9
    local f11_local2 = ATT3011_DIST_MAX + 4
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 5
    local f11_local6 = 0
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3011
    local f11_local8 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local9 = 0
    local f11_local10 = 20
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function InsectGolem_308010_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, arg0:GetRandam_Float(1, 100), arg0:GetRandam_Float(1, 100), TARGET_ENE_0, 5, 0, true)
    
end

function InsectGolem_308010_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    
end

function InsectGolem_308010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function InsectGolem_308010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_InsectGolem_308010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    local f18_local0 = 4.5
    local f18_local1 = 50
    local f18_local2 = arg1:GetRandam_Int(1, 100)
    local f18_local3 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsInterupt(INTERUPT_FindAttack) and f18_local3 < 5 and arg1:HasSpecialEffectId(TARGET_SELF, 5880) == true and arg1:GetTimer(10) <= 0 then
        arg2:ClearSubGoal()
        arg1:SetTimer(10, 20)
        InsectGolem_308010_Act14(arg1, arg2, paramTbl)
        return true
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and f18_local3 < 10 and arg1:HasSpecialEffectId(TARGET_SELF, 5880) == true and arg1:GetTimer(10) <= 0 then
        arg2:ClearSubGoal()
        arg1:SetTimer(10, 20)
        InsectGolem_308010_Act13(arg1, arg2, paramTbl)
        return true
    end
    if Damaged_Act(arg1, arg2, f18_local0, f18_local1) then
        if arg1:GetHpRate(TARGET_SELF) <= 0.3 then
            InsectGolem_308010_Act14(arg1, arg2, paramTbl)
            return true
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and f18_local3 <= 1 then
            InsectGolem_308010_Act04(arg1, arg2, paramTbl)
            return true
        else

        end
    end
    local f18_local4 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        InsectGolem_308010_Act20(arg1, arg2, paramTbl)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_InsectGolem_308010_AfterAttackAct, "InsectGolem_308010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_InsectGolem_308010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f19_local0 = arg1:GetDist(TARGET_ENE_0)
    local f19_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", 2)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 3)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 8)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f19_local0 >= 5 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 60)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
    elseif f19_local0 >= 2 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 40)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 10)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 5)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 5)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


