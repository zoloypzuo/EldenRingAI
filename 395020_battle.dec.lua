RegisterTableGoal(GOAL_GhoulChildrenScepter395020_Battle, "GhoulChildrenScepter395020_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GhoulChildrenScepter395020_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:GetStringIndexedNumber("MagicLoop_Cnt")
    arg1:GetStringIndexedNumber("ForceGreatMagic_Flg")
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
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[49] = 100
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 > 22 or f2_local3 < 10 then
            f2_local0[49] = 100
        else
            f2_local0[1] = 10
            f2_local0[2] = 20
            f2_local0[49] = 70
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, -1, 40 + arg1:GetMapHitRadius(TARGET_SELF)) then
        if f2_local3 > 30 then
            if ForceGreatMagic_Flg == 1 then
                f2_local0[2] = 30
            else
                f2_local0[2] = 30
                f2_local0[1] = 60
                f2_local0[41] = 0
                f2_local0[49] = 10
            end
        elseif f2_local3 > 20 then
            if ForceGreatMagic_Flg == 1 then
                f2_local0[2] = 30
            else
                f2_local0[1] = 60
                f2_local0[2] = 10
                f2_local0[41] = 0
                f2_local0[49] = 20
            end
        elseif f2_local3 > 3.5 then
            if ForceGreatMagic_Flg == 1 then
                f2_local0[2] = 30
            else
                f2_local0[1] = 80
                f2_local0[2] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[49] = 20
            end
        elseif ForceGreatMagic_Flg == 1 then
            ForceGreatMagic_Flg = 0
        else
            f2_local0[3] = 80
            f2_local0[49] = 20
        end
    elseif f2_local3 < 8 then
        f2_local0[42] = 10
        f2_local0[46] = 90
    else
        f2_local0[42] = 100
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, GhoulChildrenScepter395020_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, GhoulChildrenScepter395020_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, GhoulChildrenScepter395020_Act03)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, GhoulChildrenScepter395020_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, GhoulChildrenScepter395020_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, GhoulChildrenScepter395020_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, GhoulChildrenScepter395020_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, GhoulChildrenScepter395020_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, GhoulChildrenScepter395020_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, GhoulChildrenScepter395020_Act46)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, GhoulChildrenScepter395020_Act49)
    local f2_local7 = REGIST_FUNC(arg1, arg2, GhoulChildrenScepter395020_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function GhoulChildrenScepter395020_Act01(arg0, arg1, arg2)
    local f3_local0 = 30
    local f3_local1 = 0
    local f3_local2 = 0
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    MagicLoop_Cnt = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f3_local7 = 3
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 1.5
    local f3_local11 = 60
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenScepter395020_Act02(arg0, arg1, arg2)
    local f4_local0 = 40
    local f4_local1 = 0
    local f4_local2 = 0
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 2
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    ForceGreatMagic_Flg = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f4_local7 = 3
    local f4_local8 = 3004
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 1.5
    local f4_local11 = 60
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local7, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenScepter395020_Act03(arg0, arg1, arg2)
    local f5_local0 = 4
    local f5_local1 = 0
    local f5_local2 = 0
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f5_local7 = 5
    local f5_local8 = 3003
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local7, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenScepter395020_Act40(arg0, arg1, arg2)
    local f6_local0 = 2
    local f6_local1 = 25
    local f6_local2 = true
    local f6_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f6_local0, TARGET_ENE_0, f6_local1, TARGET_SELF, f6_local2, f6_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenScepter395020_Act41(arg0, arg1, arg2)
    local f7_local0 = 2
    local f7_local1 = 25
    local f7_local2 = false
    local f7_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f7_local0, TARGET_ENE_0, f7_local1, TARGET_SELF, f7_local2, f7_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenScepter395020_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenScepter395020_Act43(arg0, arg1, arg2)
    local f9_local0 = 1
    local f9_local1 = 0
    local f9_local2 = 100
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = TARGET_ENE_0
    local f9_local6 = 1
    local f9_local7 = -1
    local f9_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7, f9_local8)
    local f9_local9 = arg0:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenScepter395020_Act44(arg0, arg1, arg2)
    local f10_local0 = arg0:GetRandam_Int(0, 1)
    local f10_local1 = 2
    local f10_local2 = TARGET_ENE_0
    local f10_local3 = f10_local0
    local f10_local4 = 15
    local f10_local5 = true
    local f10_local6 = -1
    local f10_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f10_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, isLifeSuccess, f10_local6, f10_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenScepter395020_Act45(arg0, arg1, arg2)
    local f11_local0 = arg0:GetRandam_Int(0, 1)
    local f11_local1 = 3
    local f11_local2 = TARGET_ENE_0
    local f11_local3 = 10
    local f11_local4 = TARGET_ENE_0
    local f11_local5 = true
    local f11_local6 = -1
    local f11_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f11_local8 = false
    local f11_local9 = 2
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7, f11_local8, f11_local9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenScepter395020_Act46(arg0, arg1, arg2)
    local f12_local0 = 3
    local f12_local1 = 100
    local f12_local2 = -1
    local f12_local3 = -1
    local f12_local4 = -1
    local f12_local5 = TARGET_ENE_0
    local f12_local6 = 3
    local f12_local7 = 0
    local f12_local8 = false
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f12_local0, 6000, f12_local5, 0, AI_DIR_TYPE_F, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenScepter395020_Act49(arg0, arg1, arg2)
    local f13_local0 = 10
    local f13_local1 = 22
    local f13_local2 = -1
    local f13_local3 = true
    local f13_local4 = 1
    local f13_local5 = 10
    local f13_local6 = 1.5
    local f13_local7 = 2
    local f13_local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, f13_local4)
    local f13_local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, f13_local4)
    local f13_local10 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, f13_local4)
    local f13_local11 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, f13_local4)
    local f13_local12 = arg0:GetDist(TARGET_ENE_0)
    local f13_local13 = arg0:GetRandam_Int(0, 1)
    if f13_local9 == true and f13_local8 == true then

    elseif f13_local9 == true and f13_local8 == false then
        f13_local13 = 0
    elseif f13_local9 == false and f13_local8 == true then
        f13_local13 = 1
    elseif f13_local9 == false and f13_local8 == false then
        f13_local13 = 2
    end
    if f13_local1 < f13_local12 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f13_local5, TARGET_ENE_0, arg0:GetRandam_Float(f13_local0, f13_local1), TARGET_SELF, false, f13_local2)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f13_local12 <= f13_local1 and f13_local0 <= f13_local12 then
        if f13_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f13_local6, TARGET_ENE_0, f13_local13, 100, f13_local3, false, f13_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f13_local12 < f13_local0 then
        if f13_local11 == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f13_local7, TARGET_ENE_0, arg0:GetRandam_Float(f13_local0, f13_local1), TARGET_ENE_0, f13_local3, f13_local2, GUARD_GOAL_DESIRE_RET_Success)
        elseif f13_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f13_local6, TARGET_ENE_0, f13_local13, 100, f13_local3, false, f13_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenScepter395020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_GhoulChildrenScepter395020_AfterAttackAct, 10)
    
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
    local f17_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 0
    local f17_local2 = 20
    local f17_local3 = arg1:GetDist(TARGET_ENE_0)
    local f17_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            MagicLoop_Cnt = MagicLoop_Cnt + 1
            if f17_local3 < 3.5 then
                return false
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, -1, 40) and 5 > MagicLoop_Cnt then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 1.6, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif 5 <= MagicLoop_Cnt then
                ForceGreatMagic_Flg = 1
                arg2:ClearSubGoal()
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            MagicLoop_Cnt = MagicLoop_Cnt + 1
            if f17_local3 < 3.5 then
                return false
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, -1, 40) and 5 > MagicLoop_Cnt then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 1.6, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif 5 <= MagicLoop_Cnt then
                ForceGreatMagic_Flg = 1
                arg2:ClearSubGoal()
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3.5, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
        return false
    end
    
end

RegisterTableGoal(GOAL_GhoulChildrenScepter395020_AfterAttackAct, "GhoulChildrenScepter395020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GhoulChildrenScepter395020_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


