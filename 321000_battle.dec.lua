RegisterTableGoal(GOAL_RedEyeGypsyDonkey321000_Battle, "RedEyeGypsyDonkey321000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RedEyeGypsyDonkey321000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetHpRate(TARGET_SELF)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    if f2_local3 >= 15 and arg1:IsFinishTimer(0) == true then
        f2_local0[1] = 90
        f2_local0[21] = 10
    elseif f2_local3 >= 15 and arg1:IsFinishTimer(0) == false then
        f2_local0[21] = 100
    elseif f2_local3 >= 3 then
        f2_local0[2] = 90
        f2_local0[21] = 10
    else
        f2_local0[26] = 100
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3015, 30, f2_local0[1], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3016, 30, f2_local0[2], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RedEyeGypsyDonkey321000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RedEyeGypsyDonkey321000_Act02)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RedEyeGypsyDonkey321000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, RedEyeGypsyDonkey321000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, RedEyeGypsyDonkey321000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, RedEyeGypsyDonkey321000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, RedEyeGypsyDonkey321000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, RedEyeGypsyDonkey321000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, RedEyeGypsyDonkey321000_Act26)
    local f2_local6 = REGIST_FUNC(arg1, arg2, RedEyeGypsyDonkey321000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function RedEyeGypsyDonkey321000_Act01(arg0, arg1, arg2)
    local f3_local0 = 3015
    local f3_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f3_local2 = 0
    local f3_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f3_local0, TARGET_ENE_0, f3_local1, f3_local2, f3_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsyDonkey321000_Act02(arg0, arg1, arg2)
    local f4_local0 = 3016
    local f4_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f4_local2 = 0
    local f4_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f4_local0, TARGET_ENE_0, f4_local1, f4_local2, f4_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsyDonkey321000_Act20(arg0, arg1, arg2)
    if arg0:GetHpRate(TARGET_SELF) >= 0.9 then
        local f5_local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg0:GetRandam_Int(5, 10), TARGET_SELF, false, 0)
        f5_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    else
        local f5_local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg0:GetRandam_Int(16, 20), TARGET_SELF, false, 0)
        f5_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_SELF, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 5)
    end
    arg0:SetTimer(0, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsyDonkey321000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsyDonkey321000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, 5, 3, 5, true, -1, 0, -1, false, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsyDonkey321000_Act23(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = arg0:GetRandam_Int(AI_DIR_TYPE_ToBL, AI_DIR_TYPE_ToBR)
    if f8_local0 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 10, TARGET_ENE_0, 1, TARGET_SELF, false, -1, f8_local1, 7.5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 10, TARGET_ENE_0, 1, TARGET_SELF, true, -1, f8_local1, 7.5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsyDonkey321000_Act24(arg0, arg1, arg2)
    local f9_local0 = 3039
    local f9_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f9_local2 = 0
    local f9_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3, 0, 0)
    arg0:SetTimer(0, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsyDonkey321000_Act25(arg0, arg1, arg2)
    if arg0:GetHpRate(TARGET_SELF) >= 0.9 then
        local f10_local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg0:GetRandam_Int(5, 10), TARGET_SELF, false, 0)
        f10_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    else
        local f10_local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg0:GetRandam_Int(18, 20), TARGET_SELF, false, 0)
        f10_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_SELF, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsyDonkey321000_Act26(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5160) then
        if arg0:GetHpRate(TARGET_SELF) >= 0.9 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 5, TARGET_ENE_0, arg0:GetRandam_Int(5, 10), TARGET_SELF, true, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
        else
            local f11_local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 5, TARGET_ENE_0, arg0:GetRandam_Int(18, 22), TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
            f11_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_SELF, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 5)
        end
    elseif arg0:GetHpRate(TARGET_SELF) >= 0.9 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Escape, 5, TARGET_ENE_0, arg0:GetRandam_Int(5, 10), TARGET_SELF, true, 1.5)
    else
        local f11_local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Escape, 5, TARGET_ENE_0, arg0:GetRandam_Int(18, 22), TARGET_SELF, false, 1.5)
        f11_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_SELF, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 5)
    end
    arg0:SetTimer(0, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsyDonkey321000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RedEyeGypsyDonkey321000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f15_local0 = arg1:GetDist(TARGET_ENE_0)
    local f15_local1 = arg1:GetDist(TARGET_FRI_0)
    local f15_local2 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f15_local3 = arg1:GetRandam_Int(1, 100)
    local f15_local4 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        arg2:ClearSubGoal()
        if f15_local1 >= 0 and f15_local1 <= 20 then
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_FRI_0, 1.2, TARGET_SELF, false, -1)
            arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_SELF, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 5)
            arg1:SetTimer(0, 15)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5160) then
            local f15_local5 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 5, TARGET_ENE_0, arg1:GetRandam_Int(25, 35), TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
            f15_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
            arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_SELF, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 5)
            arg1:SetTimer(0, 15)
            return true
        else
            local f15_local5 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget_Escape, 5, TARGET_ENE_0, arg1:GetRandam_Int(25, 35), TARGET_SELF, false, 1.5)
            f15_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
            arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_SELF, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 5)
            arg1:SetTimer(0, 15)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_RedEyeGypsyDonkey321000_AfterAttackAct, "RedEyeGypsyDonkey321000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RedEyeGypsyDonkey321000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


