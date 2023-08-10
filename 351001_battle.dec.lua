RegisterTableGoal(GOAL_Skeleton_351001_Battle, "Skeleton_351001_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Skeleton_351001_Battle, true)
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
    local f2_local0 = arg1:HasSpecialEffectId(TARGET_SELF, 17210)
    local f2_local1 = {}
    local f2_local2 = {}
    local f2_local3 = {}
    Common_Clear_Param(f2_local1, f2_local2, f2_local3)
    local f2_local4 = arg1:GetDist(TARGET_ENE_0)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = arg1:GetEventRequest()
    local f2_local8 = arg1:GetNumber(0)
    if f2_local0 == true and arg1:GetNumber(1) ~= 1 then
        f2_local1[7] = 50
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local1[21] = 50
        f2_local1[28] = 50
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local1[1] = 10
        f2_local1[2] = 10
        f2_local1[21] = 40
        f2_local1[28] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local1[20] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        f2_local1[20] = 30
        f2_local1[23] = 70
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        f2_local1[20] = 30
        f2_local1[22] = 70
    elseif f2_local4 >= 8 then
        f2_local1[1] = 10
        f2_local1[2] = 10
        f2_local1[3] = 10
        f2_local1[4] = 10
        f2_local1[5] = 20
        f2_local1[21] = 10
        f2_local1[24] = 10
        f2_local1[25] = 0
    elseif f2_local4 >= 5 then
        f2_local1[1] = 20
        f2_local1[2] = 20
        f2_local1[3] = 20
        f2_local1[4] = 20
        f2_local1[5] = 10
        f2_local1[21] = 0
        f2_local1[24] = 0
        f2_local1[25] = 0
    elseif f2_local4 >= 2.5 then
        f2_local1[1] = 25
        f2_local1[2] = 25
        f2_local1[3] = 25
        f2_local1[4] = 25
        f2_local1[5] = 0
        f2_local1[21] = 0
        f2_local1[24] = 0
        f2_local1[25] = 0
    else
        f2_local1[1] = 35
        f2_local1[2] = 25
        f2_local1[3] = 15
        f2_local1[4] = 15
        f2_local1[5] = 0
        f2_local1[21] = 0
        f2_local1[24] = 0
    end
    f2_local1[1] = SetCoolTime(arg1, arg2, 3000, 6, f2_local1[1], 1)
    f2_local1[2] = SetCoolTime(arg1, arg2, 3003, 10, f2_local1[2], 1)
    f2_local1[3] = SetCoolTime(arg1, arg2, 3004, 10, f2_local1[3], 1)
    f2_local1[4] = SetCoolTime(arg1, arg2, 3005, 10, f2_local1[4], 1)
    f2_local1[5] = SetCoolTime(arg1, arg2, 3008, 10, f2_local1[5], 1)
    f2_local1[6] = SetCoolTime(arg1, arg2, 3010, 10, f2_local1[6], 1)
    f2_local2[1] = REGIST_FUNC(arg1, arg2, Skeleton_351001_Act01)
    f2_local2[2] = REGIST_FUNC(arg1, arg2, Skeleton_351001_Act02)
    f2_local2[3] = REGIST_FUNC(arg1, arg2, Skeleton_351001_Act03)
    f2_local2[4] = REGIST_FUNC(arg1, arg2, Skeleton_351001_Act04)
    f2_local2[5] = REGIST_FUNC(arg1, arg2, Skeleton_351001_Act05)
    f2_local2[6] = REGIST_FUNC(arg1, arg2, Skeleton_351001_Act06)
    f2_local2[7] = REGIST_FUNC(arg1, arg2, Skeleton_351001_Act07)
    f2_local2[20] = REGIST_FUNC(arg1, arg2, Skeleton_351001_Act20)
    f2_local2[21] = REGIST_FUNC(arg1, arg2, Skeleton_351001_Act21)
    f2_local2[22] = REGIST_FUNC(arg1, arg2, Skeleton_351001_Act22)
    f2_local2[23] = REGIST_FUNC(arg1, arg2, Skeleton_351001_Act23)
    f2_local2[24] = REGIST_FUNC(arg1, arg2, Skeleton_351001_Act24)
    f2_local2[25] = REGIST_FUNC(arg1, arg2, Skeleton_351001_Act25)
    f2_local2[28] = REGIST_FUNC(arg1, arg2, Skeleton_351001_Act28)
    f2_local2[30] = REGIST_FUNC(arg1, arg2, Skeleton_351001_Act30)
    local f2_local9 = REGIST_FUNC(arg1, arg2, Skeleton_351001_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local1, f2_local2, f2_local9, f2_local3)
    
end

function Skeleton_351001_Act01(arg0, arg1, arg2)
    local f3_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = arg0:GetRandam_Int(1, 100)
    local f3_local2 = arg0:GetDist(TARGET_ENE_0)
    if f3_local1 <= 50 then
        if f3_local0 + 5 <= f3_local2 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f3_local0, TARGET_SELF, 1, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f3_local0, TARGET_SELF, 0, 0)
        end
    elseif f3_local0 + 5 <= f3_local2 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f3_local0, TARGET_SELF, false, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f3_local0, TARGET_SELF, true, 9910)
    end
    local f3_local3 = 3000
    local f3_local4 = 3001
    local f3_local5 = 3002
    local f3_local6 = 3011
    local f3_local7 = 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local8 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local9 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local10 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 0
    local f3_local12 = 0
    local f3_local13 = arg0:GetRandam_Int(1, 100)
    if f3_local13 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local3, TARGET_ENE_0, f3_local10, f3_local11, f3_local12, 0, 0)
    elseif f3_local13 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local3, TARGET_ENE_0, f3_local7, f3_local11, f3_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local4, TARGET_ENE_0, f3_local10, 0, 0)
    elseif f3_local13 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local3, TARGET_ENE_0, f3_local7, f3_local11, f3_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local4, TARGET_ENE_0, f3_local8, f3_local11, f3_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local5, TARGET_ENE_0, f3_local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local3, TARGET_ENE_0, f3_local7, f3_local11, f3_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local4, TARGET_ENE_0, f3_local9, f3_local11, f3_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local6, TARGET_ENE_0, f3_local10, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Skeleton_351001_Act02(arg0, arg1, arg2)
    local f4_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = arg0:GetRandam_Int(1, 100)
    local f4_local2 = arg0:GetDist(TARGET_ENE_0)
    if f4_local1 <= 50 then
        if f4_local0 + 5 <= f4_local2 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f4_local0, TARGET_SELF, 1, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f4_local0, TARGET_SELF, 0, 0)
        end
    elseif f4_local0 + 5 <= f4_local2 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f4_local0, TARGET_SELF, 1, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f4_local0, TARGET_SELF, 0, 9910)
    end
    local f4_local3 = 3003
    local f4_local4 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local5 = 0
    local f4_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local3, TARGET_ENE_0, f4_local4, f4_local5, f4_local6, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Skeleton_351001_Act03(arg0, arg1, arg2)
    local f5_local0 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = arg0:GetRandam_Int(1, 100)
    local f5_local2 = arg0:GetDist(TARGET_ENE_0)
    if f5_local1 <= 50 then
        if f5_local0 + 5 <= f5_local2 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f5_local0, TARGET_SELF, 1, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f5_local0, TARGET_SELF, 0, 0)
        end
    elseif f5_local0 + 5 <= f5_local2 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f5_local0, TARGET_SELF, 1, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f5_local0, TARGET_SELF, 0, 9910)
    end
    local f5_local3 = 3004
    local f5_local4 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local5 = 0
    local f5_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local3, TARGET_ENE_0, f5_local4, f5_local5, f5_local6, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Skeleton_351001_Act04(arg0, arg1, arg2)
    local f6_local0 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = arg0:GetRandam_Int(1, 100)
    local f6_local2 = arg0:GetDist(TARGET_ENE_0)
    if f6_local1 <= 50 then
        if f6_local0 + 5 <= f6_local2 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f6_local0, TARGET_SELF, 1, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f6_local0, TARGET_SELF, 0, 0)
        end
    elseif f6_local0 + 5 <= f6_local2 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f6_local0, TARGET_SELF, 1, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f6_local0, TARGET_SELF, 0, 9910)
    end
    local f6_local3 = 3005
    local f6_local4 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local5 = 0
    local f6_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local3, TARGET_ENE_0, f6_local4, f6_local5, f6_local6, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Skeleton_351001_Act05(arg0, arg1, arg2)
    local f7_local0 = 8.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = arg0:GetRandam_Int(1, 100)
    local f7_local2 = arg0:GetDist(TARGET_ENE_0)
    if f7_local1 <= 50 then
        if f7_local0 + 5 <= f7_local2 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f7_local0, TARGET_SELF, 1, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f7_local0, TARGET_SELF, 0, 0)
        end
    elseif f7_local0 + 5 <= f7_local2 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f7_local0, TARGET_SELF, 1, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f7_local0, TARGET_SELF, 0, 9910)
    end
    local f7_local3 = 3008
    local f7_local4 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local5 = 0
    local f7_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local3, TARGET_ENE_0, f7_local4, f7_local5, f7_local6, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Skeleton_351001_Act06(arg0, arg1, arg2)
    local f8_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = arg0:GetRandam_Int(1, 100)
    local f8_local2 = arg0:GetDist(TARGET_ENE_0)
    if f8_local1 <= 50 then
        if f8_local0 + 5 <= f8_local2 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f8_local0, TARGET_SELF, 1, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f8_local0, TARGET_SELF, 0, 0)
        end
    elseif f8_local0 + 5 <= f8_local2 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f8_local0, TARGET_SELF, 1, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, f8_local0, TARGET_SELF, 0, 9910)
    end
    local f8_local3 = 3010
    local f8_local4 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f8_local5 = 0
    local f8_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local3, TARGET_ENE_0, f8_local4, f8_local5, f8_local6, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Skeleton_351001_Act07(arg0, arg1, arg2)
    local f9_local0 = 8.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = arg0:GetRandam_Int(1, 100)
    local f9_local2 = arg0:GetDist(TARGET_ENE_0)
    if f9_local2 > 5 then
        local f9_local3 = 9
        local f9_local4 = 0
        local f9_local5 = 999
        local f9_local6 = 100
        local f9_local7 = 0
        local f9_local8 = 5
        local f9_local9 = 5
        Approach_Act_Flex(arg0, arg1, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7, f9_local8, f9_local9)
        local f9_local10 = 3008
        local f9_local11 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
        local f9_local12 = 2
        local f9_local13 = 120
        arg0:SetNumber(1, 1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local10, TARGET_ENE_0, f9_local11, f9_local12, f9_local13, 0, 0)
    else
        local f9_local3 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f9_local4 = arg0:GetRandam_Int(1, 100)
        local f9_local5 = arg0:GetDist(TARGET_ENE_0)
        local f9_local6 = 3.5
        local f9_local7 = 0
        local f9_local8 = 999
        local f9_local9 = 100
        local f9_local10 = 0
        local f9_local11 = 5
        local f9_local12 = 5
        Approach_Act_Flex(arg0, arg1, f9_local6, f9_local7, f9_local8, f9_local9, f9_local10, f9_local11, f9_local12)
        local f9_local13 = 3000
        local f9_local14 = 3001
        local f9_local15 = 3002
        local f9_local16 = 3011
        local f9_local17 = 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
        local f9_local18 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
        local f9_local19 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
        local f9_local20 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
        local f9_local21 = 2
        local f9_local22 = 120
        local f9_local23 = arg0:GetRandam_Int(1, 100)
        arg0:SetNumber(1, 1)
        if f9_local23 <= 10 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local13, TARGET_ENE_0, f9_local20, f9_local21, f9_local22, 0, 0)
        elseif f9_local23 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local13, TARGET_ENE_0, f9_local17, f9_local21, f9_local22, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f9_local14, TARGET_ENE_0, f9_local20, 0, 0)
        elseif f9_local23 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local13, TARGET_ENE_0, f9_local17, f9_local21, f9_local22, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f9_local14, TARGET_ENE_0, f9_local18, f9_local21, f9_local22, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f9_local15, TARGET_ENE_0, f9_local20, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local13, TARGET_ENE_0, f9_local17, f9_local21, f9_local22, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f9_local14, TARGET_ENE_0, f9_local19, f9_local21, f9_local22, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f9_local16, TARGET_ENE_0, f9_local20, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Skeleton_351001_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351001_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351001_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 4, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351001_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 4, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351001_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 4, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351001_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 4, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351001_Act28(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 10
    local f16_local2 = 12
    local f16_local3 = 0
    if f16_local1 <= f16_local0 then
        Approach_Act(arg0, arg1, f16_local1, f16_local2, f16_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, f16_local1, TARGET_ENE_0, true, -1)
    
end

function Skeleton_351001_Act30(arg0, arg1, arg2)
    Watching_Parry_Chance_Act(arg0, arg1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Skeleton_351001_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Skeleton_351001_AfterAttackAct, 10)
    
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
    local f21_local0 = 4.5
    local f21_local1 = 50
    local f21_local2 = arg1:GetDist(TARGET_ENE_0)
    local f21_local3 = arg1:GetRandam_Int(1, 100)
    if Damaged_Act(arg1, arg2, f21_local0, f21_local1) then
        if f21_local2 >= 8 then
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, 3, TARGET_SELF, 1, 9910)
        elseif f21_local2 >= 3 then
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 7, TARGET_ENE_0, 3, TARGET_SELF, 0, 9910)
        elseif f21_local3 <= 60 then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
            return true
        else

        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Skeleton_351001_AfterAttackAct, "Skeleton_351001_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Skeleton_351001_AfterAttackAct, true)
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
    arg1:SetStringIndexedNumber("Odds_Guard_AAA", 50)
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


