RegisterTableGoal(GOAL_Skeleton_351003_Battle, "Skeleton_351003_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Skeleton_351003_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 4)
    arg1:SetStringIndexedNumber("Dist_BackStep", 4)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    local f2_local7 = arg1:GetNumber(0)
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[21] = 50
        f2_local0[26] = 50
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 30 then
            f2_local0[27] = 100
        elseif f2_local3 >= 3 then
            f2_local0[1] = 80
            f2_local0[27] = 20
        else
            f2_local0[2] = 40
            f2_local0[26] = 60
        end
    elseif f2_local3 >= 30 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            f2_local0[20] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            f2_local0[20] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            f2_local0[20] = 100
        else
            f2_local0[27] = 100
        end
    elseif f2_local3 >= 3 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            f2_local0[20] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            f2_local0[20] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            f2_local0[20] = 100
        else
            f2_local0[1] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local0[20] = 50
        f2_local0[24] = 30
        f2_local0[26] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        f2_local0[20] = 100
        f2_local0[23] = 30
        f2_local0[24] = 30
        f2_local0[26] = 20
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        f2_local0[20] = 50
        f2_local0[22] = 30
        f2_local0[24] = 30
        f2_local0[26] = 20
    else
        f2_local0[2] = 100
        f2_local0[25] = 50
        f2_local0[26] = 20
    end
    f2_local0[2] = SetCoolTime(arg1, arg2, 3031, 5, f2_local0[2], 20)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Skeleton_351003_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Skeleton_351003_Act02)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, Skeleton_351003_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Skeleton_351003_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, Skeleton_351003_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, Skeleton_351003_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, Skeleton_351003_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, Skeleton_351003_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, Skeleton_351003_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, Skeleton_351003_Act27)
    local f2_local8 = REGIST_FUNC(arg1, arg2, Skeleton_351003_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function Skeleton_351003_Act01(arg0, arg1, arg2)
    local f3_local0 = 3030
    local f3_local1 = 25 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local2 = 0
    local f3_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local1, f3_local2, f3_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Skeleton_351003_Act02(arg0, arg1, arg2)
    local f4_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f4_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f4_local3 = 50
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 4
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3031
    local f4_local8 = 25 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local9 = 2
    local f4_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Skeleton_351003_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(35, 45), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351003_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351003_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 4, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351003_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 4, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351003_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 4, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351003_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 4, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351003_Act26(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 10
    local f11_local2 = 12
    local f11_local3 = 0
    if f11_local1 <= f11_local0 then
        Approach_Act(arg0, arg1, f11_local1, f11_local2, f11_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, f11_local1, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351003_Act27(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351003_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Skeleton_351003_AfterAttackAct, 10)
    
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
    local f16_local0 = 3
    local f16_local1 = 60
    local f16_local2 = 4
    local f16_local3 = 60
    if Parry_Act(arg1, arg2, f16_local0, f16_local1, f16_local2, f16_local3) then
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_Skeleton_351003_AfterAttackAct, "Skeleton_351003_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Skeleton_351003_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f17_local0 = arg1:GetDist(TARGET_ENE_0)
    local f17_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -99)
    arg1:SetStringIndexedNumber("DistMax_AAA", 40)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", -99)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 40)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f17_local0 >= 15 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_BitWait_AAA", 80)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 55)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 15)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 4)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


