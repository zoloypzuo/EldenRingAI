RegisterTableGoal(GOAL_Astile462010_Battle, "Astile462010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Astile462010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16720)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16721)
    local f2_local3 = arg1:HasSpecialEffectId(TARGET_SELF, 16741)
    local f2_local4 = arg1:HasSpecialEffectId(TARGET_SELF, 16746)
    local f2_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 16747)
    local f2_local6 = arg1:GetDist(TARGET_ENE_0)
    local f2_local7 = arg1:GetRandam_Int(1, 100)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local9 = arg1:GetEventRequest()
    if f2_local4 == true then
        if f2_local6 > 15 then
            f2_local0[1] = 70
            f2_local0[10] = 50
        else
            f2_local0[4] = 30
            f2_local0[5] = 30
            f2_local0[6] = 30
            f2_local0[10] = 20
        end
    elseif f2_local5 == true then
        if f2_local6 > 15 then
            f2_local0[1] = 70
            f2_local0[10] = 50
        else
            f2_local0[4] = 30
            f2_local0[5] = 30
            f2_local0[6] = 30
            f2_local0[10] = 20
        end
    elseif f2_local6 > 15 then
        f2_local0[1] = 70
        f2_local0[10] = 50
    else
        f2_local0[1] = 20
        f2_local0[4] = 30
        f2_local0[5] = 30
        f2_local0[6] = 30
        f2_local0[10] = 20
    end
    if arg1:GetNumber(1) == 0 then
        f2_local0[10] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3015, 5 + arg1:GetRandam_Int(0, 10), f2_local0[1], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3010, 5 + arg1:GetRandam_Int(3, 7), f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3011, 5 + arg1:GetRandam_Int(3, 7), f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3012, 5 + arg1:GetRandam_Int(3, 7), f2_local0[6], 0)
    if f2_local6 > -3 then
        f2_local0[4] = 0
    end
    if f2_local6 > -1.5 then
        f2_local0[5] = 0
    end
    if f2_local6 > -1.5 then
        f2_local0[6] = 0
    end
    if f2_local6 < -1 then
        f2_local0[1] = 1
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Astile462010_Act01)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Astile462010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Astile462010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Astile462010_Act06)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Astile462010_Act10)
    local f2_local10 = REGIST_FUNC(arg1, arg2, Astile462010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function Astile462010_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = arg0:GetRandam_Int(1, 100)
    local f3_local2 = 3015
    local f3_local3 = 4.5
    local f3_local4 = 0
    local f3_local5 = 0
    arg0:SetNumber(1, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local2, TARGET_ENE_0, f3_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462010_Act04(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = arg0:GetRandam_Int(1, 100)
    local f4_local2 = 3010
    local f4_local3 = 4.5
    local f4_local4 = 2
    local f4_local5 = 120
    arg0:SetNumber(1, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local2, TARGET_ENE_0, f4_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462010_Act05(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = arg0:GetRandam_Int(1, 100)
    local f5_local2 = 3011
    local f5_local3 = 4.5
    local f5_local4 = 2
    local f5_local5 = 120
    arg0:SetNumber(1, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local2, TARGET_ENE_0, f5_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462010_Act06(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = arg0:GetRandam_Int(1, 100)
    local f6_local2 = 3012
    local f6_local3 = 4.5
    local f6_local4 = 2
    local f6_local5 = 120
    arg0:SetNumber(1, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local2, TARGET_ENE_0, f6_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462010_Act10(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(3, 7), TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Astile462010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f11_local0 = arg1:GetRandam_Int(1, 100)
    local f11_local1 = arg1:GetRandam_Int(1, 100)
    local f11_local2 = arg1:GetDist(TARGET_ENE_0)
    local f11_local3 = arg1:GetHpRate(TARGET_SELF)
    local f11_local4 = arg1:GetNumber(0)
    local f11_local5 = arg1:GetNumber(1)
    local f11_local6 = arg1:GetRandam_Int(0, 10)
    local f11_local7 = arg1:GetRandam_Int(0, 5)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then

    else

    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        if f11_local2 > 5 and f11_local0 > 60 then
            arg2:ClearSubGoal()
            Astile462010_Act01(arg1, arg2)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        arg2:ClearSubGoal()
        if f11_local2 > 8 then
            if f11_local0 > 60 then
                arg2:ClearSubGoal()
                Astile462010_Act01(arg1, arg2)
                return true
            end
        else
            arg2:ClearSubGoal()
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Astile462010_AfterAttackAct, "Astile462010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Astile462010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f12_local0 = arg1:GetDist(TARGET_ENE_0)
    local f12_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f12_local0 >= 5 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif f12_local0 >= 2 then
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


