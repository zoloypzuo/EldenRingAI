RegisterTableGoal(GOAL_AncestorBelieverFemale337000_Battle, "AncestorBelieverFemale337000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_AncestorBelieverFemale337000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:GetStringIndexedNumber("FirstAct_Flg")
    arg1:GetStringIndexedNumber("GoBack_Flg")
    arg1:SetStringIndexedNumber("GoBack_Flg", 0)
    arg1:SetStringIndexedNumber("FirstAct_Flg", 0)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f2_local7 = 0
    if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 90) or arg1:HasSpecialEffectId(TARGET_ENE_0, 6992) then
        f2_local7 = 1
    else
        f2_local7 = 0
    end
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13185) and arg1:GetTimer(0) <= 0 then
            f2_local0[3] = 30
            f2_local0[49] = 70
        else
            f2_local0[49] = 100
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 < 8 or f2_local3 > 12 then
            f2_local0[49] = 100
        else
            f2_local0[4] = 25
            f2_local0[49] = 75
            if arg1:HasSpecialEffectId(TARGET_SELF, 13185) and arg1:GetTimer(0) <= 0 then
                f2_local0[3] = 40
            end
        end
    else
        if arg1:HasSpecialEffectId(TARGET_SELF, 13185) and arg1:GetStringIndexedNumber("FirstAct_Flg") == 0 then
            f2_local0[3] = 100
        elseif arg1:GetTimer(1) > 0 then
            f2_local0[49] = 100
        elseif f2_local3 > 40 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, -1, -1) then
                f2_local0[40] = 20
                f2_local0[41] = 0
                f2_local0[6] = 80
            else
                f2_local0[40] = 20
                f2_local0[41] = 0
                f2_local0[42] = 80
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, -1, 40 + arg1:GetMapHitRadius(TARGET_SELF)) then
            if f2_local3 > 20 then
                f2_local0[40] = 20
                f2_local0[41] = 0
                f2_local0[6] = 80
            elseif f2_local3 > 8 then
                f2_local0[40] = 20
                f2_local0[6] = 80
            else
                f2_local0[1] = 50
                f2_local0[4] = 30
                f2_local0[6] = 20
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[49] = 20
                if f2_local7 == 1 and f2_local3 > 3 then
                    f2_local0[6] = 200
                end
                if f2_local3 < 4 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 150) then
                    f2_local0[6] = 0
                    f2_local0[5] = 20
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, -1, 40) then
            if f2_local3 > 4 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
                    f2_local0[5] = 80
                    f2_local0[6] = 0
                    f2_local0[42] = 10
                    f2_local0[44] = 10
                elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
                    f2_local0[5] = 0
                    f2_local0[6] = 80
                    f2_local0[42] = 10
                    f2_local0[44] = 10
                else
                    f2_local0[42] = 100
                end
            else
                f2_local0[42] = 100
            end
        end
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 160, -1, 10) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, -1, 10) and f2_local3 > 0.5 then
            f2_local0[5] = 50
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 160, -1, 10) and f2_local3 > 0.5 then
            f2_local0[6] = 50
        end
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
            f2_local0[6] = 0
        end
        if arg1:GetTimer(5) > 0 then
            f2_local0[1] = 11000000
            f2_local0[4] = 13000000
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[2], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 999, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 5, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[6], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, AncestorBelieverFemale337000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, AncestorBelieverFemale337000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, AncestorBelieverFemale337000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, AncestorBelieverFemale337000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, AncestorBelieverFemale337000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, AncestorBelieverFemale337000_Act06)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, AncestorBelieverFemale337000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, AncestorBelieverFemale337000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, AncestorBelieverFemale337000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, AncestorBelieverFemale337000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, AncestorBelieverFemale337000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, AncestorBelieverFemale337000_Act45)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, AncestorBelieverFemale337000_Act49)
    local f2_local8 = REGIST_FUNC(arg1, arg2, AncestorBelieverFemale337000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function AncestorBelieverFemale337000_Act01(arg0, arg1, arg2)
    local f3_local0 = 2.8 + 1
    local f3_local1 = 1
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
    if arg0:GetTimer(5) > 0 then
        f3_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f3_local7 = 2.6
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverFemale337000_Act02(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f4_local0 = 4.9
    local f4_local1 = 3002
    local f4_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 0
    local f4_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local0, f4_local1, TARGET_ENE_0, f4_local2, f4_local3, f4_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverFemale337000_Act03(arg0, arg1, arg2)
    if arg0:CheckDoesExistPath(TARGET_SELF, AI_DIR_TYPE_F, 4) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        local f5_local0 = 2
        local f5_local1 = 3003
        local f5_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f5_local3 = 0
        local f5_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local0, f5_local1, TARGET_ENE_0, f5_local2, f5_local3, f5_local4, 0, 0)
        if arg0:GetStringIndexedNumber("FirstAct_Flg") == 0 then
            arg0:SetStringIndexedNumber("FirstAct_Flg", 1)
            arg0:SetStringIndexedNumber("GoBack_Flg", 1)
            arg0:SetTimer(1, 10)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        arg0:SetTimer(0, 5)
        arg0:Replaning()
    end
    
end

function AncestorBelieverFemale337000_Act04(arg0, arg1, arg2)
    local f6_local0 = 3.3 + 1
    local f6_local1 = 1
    local f6_local2 = 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 2
    if arg0:GetTimer(5) > 0 then
        f6_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f6_local7 = 3
    local f6_local8 = 3004
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 0
    local f6_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local7, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverFemale337000_Act05(arg0, arg1, arg2)
    local f7_local0 = 12
    local f7_local1 = 1
    local f7_local2 = 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 5
    local f7_local6 = 5
    if arg0:GetTimer(5) > 0 then
        f7_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f7_local7 = 4.9
    local f7_local8 = 3005
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 0
    local f7_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local7, f7_local8, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverFemale337000_Act06(arg0, arg1, arg2)
    local f8_local0 = 12
    local f8_local1 = 1
    local f8_local2 = 999
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 5
    local f8_local6 = 5
    if arg0:GetTimer(5) > 0 then
        f8_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f8_local7 = 4.9
    local f8_local8 = 3006
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 0
    local f8_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local7, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverFemale337000_Act40(arg0, arg1, arg2)
    local f9_local0 = 2
    local f9_local1 = 7
    local f9_local2 = true
    local f9_local3 = -1
    if 1 == doAdmirer and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f9_local1 = 15
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f9_local0, TARGET_ENE_0, f9_local1, TARGET_SELF, f9_local2, f9_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverFemale337000_Act41(arg0, arg1, arg2)
    local f10_local0 = 2
    local f10_local1 = 15
    local f10_local2 = false
    local f10_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f10_local0, TARGET_ENE_0, f10_local1, TARGET_SELF, f10_local2, f10_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverFemale337000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverFemale337000_Act43(arg0, arg1, arg2)
    local f12_local0 = 3
    local f12_local1 = 0
    local f12_local2 = 100
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = TARGET_ENE_0
    local f12_local6 = 11
    local f12_local7 = -1
    local f12_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7, f12_local8)
    local f12_local9 = arg0:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverFemale337000_Act44(arg0, arg1, arg2)
    local f13_local0 = arg0:GetRandam_Int(0, 1)
    local f13_local1 = 3
    local f13_local2 = TARGET_ENE_0
    local f13_local3 = 12
    local f13_local4 = TARGET_ENE_0
    local f13_local5 = true
    local f13_local6 = -1
    local f13_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f13_local8 = false
    local f13_local9 = 1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7, f13_local8, f13_local9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverFemale337000_Act45(arg0, arg1, arg2)
    local f14_local0 = arg0:GetRandam_Int(0, 1)
    local f14_local1 = 2
    local f14_local2 = TARGET_ENE_0
    local f14_local3 = f14_local0
    local f14_local4 = 15
    local f14_local5 = true
    local f14_local6 = -1
    local f14_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f14_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, isLifeSuccess, f14_local6, f14_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverFemale337000_Act49(arg0, arg1, arg2)
    local f15_local0 = 8
    local f15_local1 = 12
    local f15_local2 = -1
    local f15_local3 = true
    local f15_local4 = 1
    local f15_local5 = 10
    local f15_local6 = 1.5
    local f15_local7 = 0.5
    local f15_local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, f15_local4)
    local f15_local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, f15_local4)
    local f15_local10 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, f15_local4)
    local f15_local11 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, f15_local4)
    local f15_local12 = arg0:GetDist(TARGET_ENE_0)
    local f15_local13 = arg0:GetRandam_Int(0, 1)
    if f15_local9 == true and f15_local8 == true then

    elseif f15_local9 == true and f15_local8 == false then
        f15_local13 = 0
    elseif f15_local9 == false and f15_local8 == true then
        f15_local13 = 1
    elseif f15_local9 == false and f15_local8 == false then
        f15_local13 = 2
    end
    if f15_local1 < f15_local12 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_local5, TARGET_ENE_0, arg0:GetRandam_Float(f15_local0, f15_local1), TARGET_SELF, false, f15_local2)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f15_local12 <= f15_local1 and f15_local0 <= f15_local12 then
        if f15_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f15_local6, TARGET_ENE_0, f15_local13, 100, f15_local3, false, f15_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f15_local12 < f15_local0 then
        if f15_local11 == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f15_local7, TARGET_ENE_0, arg0:GetRandam_Float(f15_local0, f15_local1), TARGET_ENE_0, f15_local3, f15_local2, GUARD_GOAL_DESIRE_RET_Success)
        elseif f15_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f15_local6, TARGET_ENE_0, f15_local13, 100, f15_local3, false, f15_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 1.5, TARGET_ENE_0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AncestorBelieverFemale337000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_AncestorBelieverFemale337000_AfterAttackAct, 10)
    
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
    local f19_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = 0
    local f19_local2 = 20
    local f19_local3 = arg1:GetDist(TARGET_ENE_0)
    local f19_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:GetTimer(1) > 0 then
        arg1:SetTimer(1, 0)
        arg1:Replaning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        arg1:SetTimer(5, 5)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 80, 3 + arg1:GetMapHitRadius(TARGET_SELF)) then
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 1.5, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_AncestorBelieverFemale337000_AfterAttackAct, "AncestorBelieverFemale337000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_AncestorBelieverFemale337000_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


