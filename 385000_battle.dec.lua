RegisterTableGoal(GOAL_BalloonDoll_385000_Battle, "GOAL_BalloonDoll_385000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BalloonDoll_385000_Battle, true)
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
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 14061) and f2_local3 > 5 then
        f2_local0[30] = 30
        f2_local0[2] = 70
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 15 then
            f2_local0[2] = 70
            f2_local0[30] = 30
        else
            f2_local0[2] = 70
            f2_local0[30] = 30
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 15 then
            f2_local0[2] = 70
            f2_local0[30] = 30
        else
            f2_local0[2] = 70
            f2_local0[30] = 30
        end
    elseif f2_local3 >= 3 then
        f2_local0[1] = 0
        f2_local0[2] = 70
        f2_local0[3] = 30
    else
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 100
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == false then
        if arg1:GetHpRate(TARGET_SELF) < 0.5 then
            f2_local0[4] = 300
        elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
            f2_local0[4] = 50
        elseif arg1:GetHpRate(TARGET_SELF) < 1 then
            f2_local0[4] = 30
        end
    end
    f2_local0[4] = SetCoolTime(arg1, arg2, 3023, 20, f2_local0[4], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, BalloonDoll_385000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, BalloonDoll_385000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, BalloonDoll_385000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, BalloonDoll_385000_Act04)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, BalloonDoll_385000_Act30)
    local f2_local6 = REGIST_FUNC(arg1, arg2, BalloonDoll_385000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function BalloonDoll_385000_Act01(arg0, arg1, arg2)
    local f3_local0 = 20.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 0
    local f3_local2 = 0
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3020
    local f3_local8 = 20
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385000_Act02(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14061) == false then
        local f4_local0 = 20.2 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local1 = f4_local0 + 0
        local f4_local2 = 0
        local f4_local3 = 0
        local f4_local4 = 0
        local f4_local5 = 4
        local f4_local6 = 8
        Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    end
    local f4_local0 = 3020
    local f4_local1 = 3021
    local f4_local2 = 20
    local f4_local3 = 20
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local0, TARGET_ENE_0, AppDist, f4_local4, f4_local5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local1, TARGET_ENE_0, f4_local2, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385000_Act03(arg0, arg1, arg2)
    local f5_local0 = 3022
    local f5_local1 = 10.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 0
    local f5_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local0, TARGET_ENE_0, f5_local1, f5_local2, f5_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385000_Act04(arg0, arg1, arg2)
    local f6_local0 = 3023
    local f6_local1 = 10.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 0
    local f6_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local0, TARGET_ENE_0, f6_local1, f6_local2, f6_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385000_Act15(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 10
    local f7_local2 = 12
    local f7_local3 = 50
    local f7_local4 = arg0:GetRandam_Int(1, 100)
    local f7_local5 = -1
    if f7_local4 <= f7_local3 then
        f7_local5 = 9910
    end
    if f7_local1 <= f7_local0 then
        Approach_Act(arg0, arg1, f7_local1, f7_local2, f7_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, f7_local1, TARGET_ENE_0, true, f7_local5)
    
end

function BalloonDoll_385000_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BalloonDoll_385000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f12_local0 = arg1:GetRandam_Int(1, 100)
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true and arg1:IsInterupt(INTERUPT_Damaged) then
        if f12_local0 < 30 then
            arg2:ClearSubGoal()
            BalloonDoll_385000_Act04(arg1, arg2)
            return true
        elseif f12_local0 < 60 and arg1:GetDist(TARGET_ENE_0) <= 6 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetRandam_Float(1.5, 3), TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_BalloonDoll_385000_AfterAttackAct, "GOAL_BalloonDoll_385000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BalloonDoll_385000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


