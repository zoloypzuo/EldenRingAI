RegisterTableGoal(GOAL_Wilddragonfly608000_Battle, "Wilddragonfly608000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Wilddragonfly608000_Battle, true)
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f2_local3 = arg1:GetOffsetY(TARGET_SELF)
    local f2_local4 = arg1:GetDistY(POINT_NEAR_NAVIMESH)
    local f2_local5 = arg1:GetDist(TARGET_ENE_0)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_ENE_0, 150)
    local f2_local8 = arg1:GetAreaHour()
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 11456)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 11457)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 11458)
    if arg1:IsBattleState() then
        if f2_local3 > 1.7 then
            f2_local0[23] = 20
            f2_local0[24] = 20
            f2_local0[1] = 20
            if arg1:IsFinishTimer(0) then
                f2_local0[21] = 50
            end
        elseif f2_local3 == 0 then
            f2_local0[22] = 50
        else
            f2_local0[1] = 20
            f2_local0[22] = 30
            f2_local0[23] = 30
            f2_local0[24] = 30
            f2_local0[10] = 40
        end
    end
    f2_local0[10] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[10], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[22], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Wilddragonfly608000_Act01)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Wilddragonfly608000_Act10)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Wilddragonfly608000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, Wilddragonfly608000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, Wilddragonfly608000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, Wilddragonfly608000_Act24)
    local f2_local12 = REGIST_FUNC(arg1, arg2, Wilddragonfly608000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local12)
    
end

function Wilddragonfly608000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    if f3_local0 < 10 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 2, TARGET_ENE_0, 15, TARGET_SELF, false, -1, 5)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(2, 3.5), TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wilddragonfly608000_Act10(arg0, arg1, arg2)
    local f4_local0 = arg0:GetRandam_Int(1, 100)
    local f4_local1 = arg0:GetAreaHour()
    local f4_local2 = arg0:GetDist(TARGET_ENE_0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f4_local3 = arg0:HasSpecialEffectId(TARGET_SELF, 11458)
    local f4_local4 = true
    if f4_local3 == f4_local4 then
        if f4_local2 < 5 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 2, TARGET_ENE_0, 10, TARGET_SELF, false, -1, 5)
        else
            f4_local4 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
            local f4_local5 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
            local f4_local6 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
            local f4_local7 = 50
            local f4_local8 = 0
            local f4_local9 = 1
            local f4_local10 = 8
            Approach_Act_Flex(arg0, arg1, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8, f4_local9, f4_local10)
        end
    elseif f4_local2 < 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 2, TARGET_ENE_0, 4, TARGET_SELF, false, -1, 5)
    else
        f4_local4 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local5 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local6 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local7 = 50
        local f4_local8 = 0
        local f4_local9 = 1
        local f4_local10 = 8
        Approach_Act_Flex(arg0, arg1, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8, f4_local9, f4_local10)
    end
    f4_local4 = 3000
    local f4_local5 = 3001
    local f4_local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local7 = 0
    local f4_local8 = 0
    local f4_local9 = arg0:HasSpecialEffectId(TARGET_ENE_0, 150)
    if f4_local9 == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, f4_local6, f4_local7, f4_local8, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, f4_local6, f4_local7, f4_local8, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wilddragonfly608000_Act21(arg0, arg1, arg2)
    local f5_local0 = 3010
    local f5_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 0
    local f5_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local0, TARGET_ENE_0, f5_local1, f5_local2, f5_local3, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(2, 3.5), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wilddragonfly608000_Act22(arg0, arg1, arg2)
    local f6_local0 = 3011
    local f6_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 0
    local f6_local3 = 0
    local f6_local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local1, f6_local2, f6_local3, 0, 0)
    if f6_local4 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_R, 3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_L, 3)
    end
    arg0:SetTimer(0, arg0:GetRandam_Int(3, 10))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wilddragonfly608000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(2, 3.5), TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBR, 15)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1.2, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wilddragonfly608000_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(2, 3.5), TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBL, 15)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1.2, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wilddragonfly608000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Wilddragonfly608000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f12_local0 = arg1:GetRandam_Int(1, 100)
    local f12_local1 = arg1:GetRandam_Int(1, 100)
    local f12_local2 = arg1:GetRandam_Int(1, 100)
    local f12_local3 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) and f12_local3 <= 10 then
        if f12_local0 < 30 then
            arg2:ClearSubGoal()
            Wilddragonfly608000_Act21(arg1, arg2, paramTbl)
            return true
        elseif f12_local0 < 70 then
            arg2:ClearSubGoal()
            Wilddragonfly608000_Act25(arg1, arg2, paramTbl)
            return true
        elseif f12_local0 <= 80 then
            arg2:ClearSubGoal()
            Wilddragonfly608000_Act22(arg1, arg2, paramTbl)
            return true
        elseif f12_local0 <= 90 then
            arg2:ClearSubGoal()
            Wilddragonfly608000_Act23(arg1, arg2, paramTbl)
            return true
        else
            arg2:ClearSubGoal()
            Wilddragonfly608000_Act24(arg1, arg2, paramTbl)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 11450) == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 3, 0, 0)
            return true
        else
            return false
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Wilddragonfly608000_AfterAttackAct, "Wilddragonfly608000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Wilddragonfly608000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f13_local0 = arg1:GetDist(TARGET_ENE_0)
    local f13_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f13_local0 >= 5 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif f13_local0 >= 2 then
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


