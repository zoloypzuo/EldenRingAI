RegisterTableGoal(GOAL_RoamHorseEZ436100_Battle, "RoamHorseEZ436100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamHorseEZ436100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    if f2_local3 >= 8 and arg1:IsFinishTimer(0) == true then
        f2_local0[2] = 100
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
    elseif f2_local3 >= 8 and arg1:IsFinishTimer(0) == false then
        f2_local0[2] = 100
    else
        f2_local0[7] = 100
    end
    f2_local0[4] = SetCoolTime(arg1, arg2, 20006, 30, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 20007, 8, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 20008, 10, f2_local0[6], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RoamHorseEZ436100_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RoamHorseEZ436100_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RoamHorseEZ436100_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RoamHorseEZ436100_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RoamHorseEZ436100_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RoamHorseEZ436100_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, RoamHorseEZ436100_Act07)
    local f2_local5 = REGIST_FUNC(arg1, arg2, RoamHorseEZ436100_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

function RoamHorseEZ436100_Act01(arg0, arg1, arg2)
    if arg0:GetHpRate(TARGET_SELF) >= 0.9 then
        local f3_local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg0:GetRandam_Int(5, 10), TARGET_SELF, true, 0)
        f3_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    else
        local f3_local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg0:GetRandam_Int(18, 22), TARGET_SELF, false, 0)
        f3_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_SELF, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 5)
    end
    arg0:SetTimer(0, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamHorseEZ436100_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(0.5, 1.5), TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamHorseEZ436100_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 1, 10, true, -1, 0, 1, false, false, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamHorseEZ436100_Act04(arg0, arg1, arg2)
    local f6_local0 = 20006
    local f6_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f6_local2 = 0
    local f6_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local0, TARGET_SELF, f6_local1, f6_local2, f6_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamHorseEZ436100_Act05(arg0, arg1, arg2)
    local f7_local0 = 20007
    local f7_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f7_local2 = 0
    local f7_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local0, TARGET_SELF, f7_local1, f7_local2, f7_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamHorseEZ436100_Act06(arg0, arg1, arg2)
    local f8_local0 = 20008
    local f8_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f8_local2 = 0
    local f8_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_SELF, f8_local1, f8_local2, f8_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamHorseEZ436100_Act07(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5160) then
        if arg0:GetHpRate(TARGET_SELF) >= 0.9 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 5, TARGET_ENE_0, arg0:GetRandam_Int(5, 10), TARGET_SELF, true, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
        else
            local f9_local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 5, TARGET_ENE_0, arg0:GetRandam_Int(18, 22), TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
            f9_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_SELF, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 5)
        end
    elseif arg0:GetHpRate(TARGET_SELF) >= 0.9 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Escape, 5, TARGET_ENE_0, arg0:GetRandam_Int(5, 10), TARGET_SELF, true, 1.5)
    else
        local f9_local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Escape, 5, TARGET_ENE_0, arg0:GetRandam_Int(18, 22), TARGET_SELF, false, 1.5)
        f9_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_SELF, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 5)
    end
    arg0:SetTimer(0, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamHorseEZ436100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RoamHorseEZ436100_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f13_local0 = arg1:GetDist(TARGET_ENE_0)
    local f13_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = arg1:GetRandam_Int(1, 100)
    local f13_local3 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5160) then
            arg2:ClearSubGoal()
            local f13_local4 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 5, TARGET_ENE_0, arg1:GetRandam_Int(30, 40), TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
            f13_local4:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
            arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_SELF, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 5)
            arg1:SetTimer(0, 15)
            return true
        else
            arg2:ClearSubGoal()
            local f13_local4 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget_Escape, 5, TARGET_ENE_0, arg1:GetRandam_Int(18, 22), TARGET_SELF, false, 1.5)
            f13_local4:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
            arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_SELF, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 5)
            arg1:SetTimer(0, 15)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_RoamHorseEZ436100_AfterAttackAct, "RoamHorseEZ436100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamHorseEZ436100_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


