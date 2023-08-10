RegisterTableGoal(GOAL_Skeleton_351002_Battle, "Skeleton_351002_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Skeleton_351002_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3026)
    arg1:EnableUnfavorableAttackCheck(0, 3027)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3029)
    arg1:SetNumber(1, 0)
    
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
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 17210)
    if f2_local8 == true and arg1:GetNumber(1) ~= 1 then
        f2_local0[8] = 50
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[21] = 50
        f2_local0[28] = 50
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[21] = 40
        f2_local0[28] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local0[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        f2_local0[20] = 30
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        f2_local0[20] = 30
    elseif f2_local3 >= 8 then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[4] = 10
        f2_local0[5] = 20
        f2_local0[6] = 10
        f2_local0[7] = 10
        f2_local0[21] = 10
        f2_local0[24] = 10
        f2_local0[25] = 0
    elseif f2_local3 >= 5 then
        f2_local0[1] = 15
        f2_local0[2] = 15
        f2_local0[3] = 15
        f2_local0[4] = 20
        f2_local0[5] = 5
        f2_local0[6] = 15
        f2_local0[7] = 15
        f2_local0[21] = 0
    elseif f2_local3 >= 2.5 then
        f2_local0[1] = 20
        f2_local0[2] = 20
        f2_local0[3] = 20
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 20
        f2_local0[7] = 20
        f2_local0[21] = 0
    else
        f2_local0[1] = 30
        f2_local0[2] = 20
        f2_local0[3] = 25
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 15
        f2_local0[21] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3020, 6, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3023, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3024, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3026, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3027, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3028, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3029, 10, f2_local0[7], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Skeleton_351002_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Skeleton_351002_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Skeleton_351002_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Skeleton_351002_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Skeleton_351002_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Skeleton_351002_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Skeleton_351002_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, Skeleton_351002_Act08)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, Skeleton_351002_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Skeleton_351002_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, Skeleton_351002_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, Skeleton_351002_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, Skeleton_351002_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, Skeleton_351002_Act25)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, Skeleton_351002_Act28)
    local f2_local9 = REGIST_FUNC(arg1, arg2, Skeleton_351002_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function Skeleton_351002_Act01(arg0, arg1, arg2)
    local f3_local0 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local3 = 70
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 4
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3020
    local f3_local8 = 3021
    local f3_local9 = 3022
    local f3_local10 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local11 = 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local12 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local13 = 0
    local f3_local14 = 0
    local f3_local15 = arg0:GetRandam_Int(1, 100)
    if f3_local15 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local12, f3_local13, f3_local14, 0, 0)
    elseif f3_local15 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local13, f3_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, f3_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local13, f3_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, f3_local11, f3_local13, f3_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local9, TARGET_ENE_0, f3_local12, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Skeleton_351002_Act02(arg0, arg1, arg2)
    local f4_local0 = 1.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 1.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local3 = 70
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 4
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3023
    local f4_local8 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Skeleton_351002_Act03(arg0, arg1, arg2)
    local f5_local0 = 1.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 1.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 1.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local3 = 70
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 4
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3024
    local f5_local8 = 3025
    local f5_local9 = 1.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local10 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local11 = 0
    local f5_local12 = 0
    local f5_local13 = arg0:GetRandam_Int(1, 100)
    if f5_local13 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local10, f5_local11, f5_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local9, f5_local11, f5_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local8, TARGET_ENE_0, f5_local10, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Skeleton_351002_Act04(arg0, arg1, arg2)
    local f6_local0 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local3 = 70
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 4
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3026
    local f6_local8 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Skeleton_351002_Act05(arg0, arg1, arg2)
    local f7_local0 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local3 = 70
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 4
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3027
    local f7_local8 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Skeleton_351002_Act06(arg0, arg1, arg2)
    local f8_local0 = 10.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 10.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 10.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f8_local3 = 70
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 4
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3028
    local f8_local8 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Skeleton_351002_Act07(arg0, arg1, arg2)
    local f9_local0 = 10.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 10.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 10.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local3 = 70
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 4
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3029
    local f9_local8 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Skeleton_351002_Act08(arg0, arg1, arg2)
    local f10_local0 = ATT3008_DIST_MAX
    local f10_local1 = arg0:GetRandam_Int(1, 100)
    local f10_local2 = arg0:GetDist(TARGET_ENE_0)
    if f10_local2 > 5 then
        local f10_local3 = 9
        local f10_local4 = 0
        local f10_local5 = 999
        local f10_local6 = 100
        local f10_local7 = 0
        local f10_local8 = 5
        local f10_local9 = 5
        Approach_Act_Flex(arg0, arg1, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7, f10_local8, f10_local9)
        arg0:SetNumber(1, 1)
        local f10_local10 = 3028
        local f10_local11 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
        local f10_local12 = 2
        local f10_local13 = 120
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local10, TARGET_ENE_0, f10_local11, f10_local12, f10_local13, 0, 0)
    else
        local f10_local3 = 4
        local f10_local4 = 0
        local f10_local5 = 999
        local f10_local6 = 100
        local f10_local7 = 0
        local f10_local8 = 5
        local f10_local9 = 5
        Approach_Act_Flex(arg0, arg1, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7, f10_local8, f10_local9)
        local f10_local10 = 3020
        local f10_local11 = 3021
        local f10_local12 = 3022
        local f10_local13 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
        local f10_local14 = 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
        local f10_local15 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
        local f10_local16 = 0
        local f10_local17 = 0
        local f10_local18 = arg0:GetRandam_Int(1, 100)
        arg0:SetNumber(1, 1)
        if f10_local18 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local10, TARGET_ENE_0, f10_local15, f10_local16, f10_local17, 0, 0)
        elseif f10_local18 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local10, TARGET_ENE_0, f10_local13, f10_local16, f10_local17, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f10_local11, TARGET_ENE_0, f10_local15, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local10, TARGET_ENE_0, f10_local13, f10_local16, f10_local17, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f10_local11, TARGET_ENE_0, f10_local14, f10_local16, f10_local17, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f10_local12, TARGET_ENE_0, f10_local15, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Skeleton_351002_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351002_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351002_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 4, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351002_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 4, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351002_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 4, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351002_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 4, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351002_Act28(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 10
    local f17_local2 = 12
    local f17_local3 = 0
    if f17_local1 <= f17_local0 then
        Approach_Act(arg0, arg1, f17_local1, f17_local2, f17_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, f17_local1, TARGET_ENE_0, true, -1)
    
end

function Skeleton_351002_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Skeleton_351002_AfterAttackAct, 10)
    
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
    return false
    
end

RegisterTableGoal(GOAL_Skeleton_351002_AfterAttackAct, "Skeleton_351002_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Skeleton_351002_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f22_local0 = arg1:GetDist(TARGET_ENE_0)
    local f22_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -99)
    arg1:SetStringIndexedNumber("DistMax_AAA", 15)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", -99)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 15)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f22_local0 >= 7 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif f22_local0 >= 4 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 20)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


