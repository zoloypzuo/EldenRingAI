RegisterTableGoal(GOAL_Wisp215000_Battle, "GOAL_Wisp215000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Wisp215000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:HasSpecialEffectId(TARGET_SELF, 19101) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5000) then
            f2_local0[2] = 100
        else
            f2_local0[1] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 19102) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5000) then
            f2_local0[4] = 100
        else
            f2_local0[3] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5000) then
        f2_local0[2] = 100
    else
        f2_local0[1] = 100
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Wisp215000_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Wisp215000_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Wisp215000_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Wisp215000_Act4)
    local f2_local5 = REGIST_FUNC(arg1, arg2, Wisp215000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

function Wisp215000_Act1(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wisp215000_Act2(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wisp215000_Act3(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wisp215000_Act4(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wisp215000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Wisp215000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt_Damaged = function (arg0, arg1, arg2)
    
end


