RegisterTableGoal(GOAL_Wyvern450010_Battle, "Wyvern450010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Wyvern450010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetEventRequest()
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[2] = 30
    elseif f2_local4 == 10 then
        f2_local0[12] = 50
    elseif f2_local4 == 20 then
        f2_local0[11] = 50
    elseif f2_local3 <= 5 then
        f2_local0[6] = 50
    else
        f2_local0[10] = 50
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Wyvern450010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Wyvern450010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Wyvern450010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Wyvern450010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Wyvern450010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Wyvern450010_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Wyvern450010_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, Wyvern450010_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Wyvern450010_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Wyvern450010_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Wyvern450010_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Wyvern450010_Act12)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, Wyvern450010_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Wyvern450010_Act21)
    local f2_local5 = REGIST_FUNC(arg1, arg2, Wyvern450010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

function Wyvern450010_Act01(arg0, arg1, arg2)
    local f3_local0 = 3002
    local f3_local1 = 3003
    local f3_local2 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f3_local0, TARGET_ENE_0, f3_local2, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f3_local1, TARGET_ENE_0, f3_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wyvern450010_Act02(arg0, arg1, arg2)
    local f4_local0 = 3004
    local f4_local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 0
    local f4_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local0, TARGET_ENE_0, f4_local1, f4_local2, f4_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wyvern450010_Act03(arg0, arg1, arg2)
    local f5_local0 = 3005
    local f5_local1 = 3006
    local f5_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    if f5_local3 >= 5 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local1, TARGET_ENE_0, f5_local2, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local0, TARGET_ENE_0, f5_local2, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wyvern450010_Act04(arg0, arg1, arg2)
    local f6_local0 = 3007
    local f6_local1 = 3008
    local f6_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    if f6_local3 <= -5 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local1, TARGET_ENE_0, f6_local2, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local2, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wyvern450010_Act05(arg0, arg1, arg2)
    local f7_local0 = 3009
    local f7_local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f7_local0, TARGET_ENE_0, f7_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wyvern450010_Act06(arg0, arg1, arg2)
    local f8_local0 = 3010
    local f8_local1 = 3011
    local f8_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    if f8_local3 <= -5 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local1, TARGET_ENE_0, f8_local2, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local2, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wyvern450010_Act07(arg0, arg1, arg2)
    local f9_local0 = 3012
    local f9_local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local0, TARGET_ENE_0, f9_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wyvern450010_Act08(arg0, arg1, arg2)
    local f10_local0 = 3004
    local f10_local1 = 3001
    local f10_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local2, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local1, TARGET_ENE_0, f10_local2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wyvern450010_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, 3000, TARGET_ENE_0, DIST_None, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wyvern450010_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_None, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wyvern450010_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, DIST_None, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wyvern450010_Act12(arg0, arg1, arg2)
    local f14_local0 = 3012
    local f14_local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, f14_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wyvern450010_Act20(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 8
    local f15_local2 = 8
    local f15_local3 = 0
    local f15_local4 = arg0:GetRandam_Int(1, 100)
    local f15_local5 = -1
    if f15_local4 <= f15_local3 then
        f15_local5 = 9910
    end
    if f15_local1 <= f15_local0 then
        Approach_Act(arg0, arg1, f15_local1, f15_local2, f15_local3, 3)
    end
    
end

function Wyvern450010_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wyvern450010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Wyvern450010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ForgetTarget) and arg1:GetAttackPassedTime(3023) >= 12 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 90)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_Wyvern450010_AfterAttackAct, "Wyvern450010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Wyvern450010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


