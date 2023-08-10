RegisterTableGoal(GOAL_RuneHunterKnightHorse316000_Battle, "RuneHunterKnightHorse316000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneHunterKnightHorse316000_Battle, true)
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
    f2_local0[16] = 100
    f2_local1[15] = REGIST_FUNC(arg1, arg2, RuneHunterKnightHorse316000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, RuneHunterKnightHorse316000_Act16)
    local f2_local5 = REGIST_FUNC(arg1, arg2, RuneHunterKnightHorse316000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

function RuneHunterKnightHorse316000_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightHorse316000_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneHunterKnightHorse316000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RuneHunterKnightHorse316000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f8_local0 = arg1:GetDist(TARGET_ENE_0)
    local f8_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = arg1:GetRandam_Int(1, 100)
    local f8_local3 = arg1:GetHpRate(TARGET_SELF)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 40, TARGET_SELF, false, 0)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_RuneHunterKnightHorse316000_AfterAttackAct, "RuneHunterKnightHorse316000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneHunterKnightHorse316000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


