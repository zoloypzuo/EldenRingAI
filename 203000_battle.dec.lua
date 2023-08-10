RegisterTableGoal(GOAL_ProlificRenala203000_Battle, "ProlificRenala203000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ProlificRenala203000_Battle, true)
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
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if arg1:HasSpecialEffectId(TARGET_SELF, 14357) and arg1:HasSpecialEffectId(TARGET_SELF, 14358) == false then
        f2_local0[3] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14358) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14357) then
            f2_local0[1] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14356) then
            f2_local0[4] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14359) then
        if arg1:GetTimer(0) <= 0 then
            f2_local0[2] = 100
        else
            f2_local0[20] = 100
        end
    else
        f2_local0[20] = 100
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, ProlificRenala203000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, ProlificRenala203000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, ProlificRenala203000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, ProlificRenala203000_Act04)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, ProlificRenala203000_Act20)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, ProlificRenala203000_Act30)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, ProlificRenala203000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, ProlificRenala203000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, ProlificRenala203000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, ProlificRenala203000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, ProlificRenala203000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, ProlificRenala203000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, ProlificRenala203000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, ProlificRenala203000_Act47)
    local f2_local7 = REGIST_FUNC(arg1, arg2, ProlificRenala203000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function ProlificRenala203000_Act01(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203000_Act02(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f4_local0 = 40
    local f4_local1 = 3000
    local f4_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 0
    local f4_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local0, f4_local1, TARGET_ENE_0, f4_local2, f4_local3, f4_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203000_Act03(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f5_local0 = 12
    local f5_local1 = 20001
    local f5_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 0
    local f5_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f5_local0, f5_local1, TARGET_ENE_0, f5_local2, f5_local3, f5_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203000_Act04(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f6_local0 = 12
    local f6_local1 = 3011
    local f6_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 0
    local f6_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local1, TARGET_ENE_0, f6_local2, f6_local3, f6_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203000_Act20(arg0, arg1, arg2)
    local f7_local0 = arg0:GetMovePointNumber()
    local f7_local1 = true
    if f7_local0 >= 0 then
        arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhereSmooth, 1.5, POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, f7_local1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Stay, 10, 0, TARGET_ENE_0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203000_Act30(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f8_local0 = 40
    local f8_local1 = 3000
    local f8_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 0
    local f8_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local0, f8_local1, TARGET_ENE_0, f8_local2, f8_local3, f8_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203000_Act40(arg0, arg1, arg2)
    local f9_local0 = 2
    local f9_local1 = 2
    local f9_local2 = true
    local f9_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f9_local0, TARGET_ENE_0, f9_local1, TARGET_SELF, f9_local2, f9_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203000_Act41(arg0, arg1, arg2)
    local f10_local0 = 2
    local f10_local1 = 8
    local f10_local2 = false
    local f10_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f10_local0, TARGET_ENE_0, f10_local1, TARGET_SELF, f10_local2, f10_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203000_Act43(arg0, arg1, arg2)
    local f12_local0 = 1
    local f12_local1 = 0
    local f12_local2 = 100
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = TARGET_ENE_0
    local f12_local6 = 1
    local f12_local7 = 0
    local f12_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7, f12_local8)
    local f12_local9 = arg0:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203000_Act44(arg0, arg1, arg2)
    local f13_local0 = arg0:GetRandam_Int(0, 1)
    local f13_local1 = 2
    local f13_local2 = TARGET_ENE_0
    local f13_local3 = f13_local0
    local f13_local4 = 15
    local f13_local5 = true
    local f13_local6 = -1
    local f13_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f13_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, isLifeSuccess, f13_local6, f13_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203000_Act45(arg0, arg1, arg2)
    local f14_local0 = 6
    local f14_local1 = 15
    local f14_local2 = true
    local f14_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f14_local0, TARGET_ENE_0, f14_local1, TARGET_SELF, f14_local2, f14_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203000_Act46(arg0, arg1, arg2)
    local f15_local0 = 3
    local f15_local1 = TARGET_ENE_0
    local f15_local2 = 8
    local f15_local3 = TARGET_ENE_0
    local f15_local4 = true
    local f15_local5 = -1
    local f15_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f15_local7 = false
    local f15_local8 = 1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7, f15_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203000_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, 10, 0.2, 20, true, -1, 3, 4, false, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_ProlificRenala203000_AfterAttackAct, 10)
    
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
    local f20_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = 0
    local f20_local2 = 20
    local f20_local3 = arg1:GetDist(TARGET_ENE_0)
    local f20_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_Damaged) then

    else

    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            arg1:SetTimer(0, 40)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            arg2:ClearSubGoal()
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_ProlificRenala203000_AfterAttackAct, "ProlificRenala203000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ProlificRenala203000_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


