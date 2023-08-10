RegisterTableGoal(GOAL_BalloonDoll_385020_Battle, "GOAL_BalloonDoll_385020_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BalloonDoll_385020_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
    arg1:EnableUnfavorableAttackCheck(1000000, 3003)
    arg1:EnableUnfavorableAttackCheck(1000000, 3004)
    arg1:EnableUnfavorableAttackCheck(1000000, 3005)
    arg1:EnableUnfavorableAttackCheck(1000000, 3006)
    arg1:EnableUnfavorableAttackCheck(1000000, 3007)
    arg1:EnableUnfavorableAttackCheck(1000000, 3008)
    arg1:EnableUnfavorableAttackCheck(1000000, 3009)
    arg1:EnableUnfavorableAttackCheck(1000000, 3010)
    arg1:EnableUnfavorableAttackCheck(1000000, 3011)
    arg1:EnableUnfavorableAttackCheck(1000000, 3012)
    
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
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 15 then
            f2_local0[31] = 100
        else
            f2_local0[30] = 100
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 15 then
            f2_local0[31] = 100
        else
            f2_local0[1] = 20
            f2_local0[30] = 80
        end
    elseif f2_local3 >= 6.5 then
        f2_local0[1] = 20
        f2_local0[2] = 10
        f2_local0[3] = 70
    elseif f2_local3 >= 3 then
        if InsideRange(arg1, arg2, 0, 180, 0, 99) then
            f2_local0[1] = 80
            f2_local0[2] = 10
            f2_local0[8] = 10
        else
            f2_local0[17] = 100
        end
    elseif f2_local3 >= 2 then
        if InsideRange(arg1, arg2, 0, 180, 0, 99) then
            f2_local0[1] = 1
            f2_local0[11] = 75
            f2_local0[14] = 25
        else
            f2_local0[17] = 1
            f2_local0[11] = 75
            f2_local0[14] = 25
        end
    elseif InsideRange(arg1, arg2, 0, 160, 0, 99) then
        f2_local0[1] = 1
        f2_local0[11] = 75
        f2_local0[14] = 25
    else
        f2_local0[17] = 1
        f2_local0[11] = 75
        f2_local0[14] = 25
    end
    if arg1:GetHpRate(TARGET_SELF) < 0.5 then
        f2_local0[7] = 300
    elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
        f2_local0[7] = 50
    elseif arg1:GetHpRate(TARGET_SELF) < 1 then
        f2_local0[7] = 30
    end
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[2], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3009, 20, f2_local0[7], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[9], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3007, 20, f2_local0[15], 0)
    if arg1:GetTimer(0) > 0 then
        f2_local0[14] = 0
        f2_local0[11] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act15)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act17)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_Act31)
    local f2_local6 = REGIST_FUNC(arg1, arg2, BalloonDoll_385020_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function BalloonDoll_385020_Act01(arg0, arg1, arg2)
    local f3_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 50
    local f3_local3 = 50
    local f3_local4 = 0
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, WalkLife, RunLife)
    local f3_local5 = 3000
    local f3_local6 = 3001
    local f3_local7 = 5.5
    local f3_local8 = 5.5
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local5, TARGET_ENE_0, f3_local7, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local6, TARGET_ENE_0, f3_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local6, TARGET_ENE_0, f3_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local6, TARGET_ENE_0, f3_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local6, TARGET_ENE_0, f3_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local6, TARGET_ENE_0, f3_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act02(arg0, arg1, arg2)
    local f4_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 50
    local f4_local3 = 50
    local f4_local4 = 0
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, WalkLife, RunLife)
    local f4_local5 = 3003
    local f4_local6 = 3004
    local f4_local7 = 2
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local5, TARGET_ENE_0, f4_local7, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local6, TARGET_ENE_0, f4_local8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act03(arg0, arg1, arg2)
    local f5_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 50
    local f5_local3 = 50
    local f5_local4 = 0
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, WalkLife, RunLife)
    local f5_local5 = 3008
    local f5_local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local7 = 0
    local f5_local8 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local5, TARGET_ENE_0, DistToAtt1, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act04(arg0, arg1, arg2)
    local f6_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 50
    local f6_local3 = 50
    local f6_local4 = 0
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, WalkLife, RunLife)
    local f6_local5 = 3005
    local f6_local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local7 = 0
    local f6_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local5, TARGET_ENE_0, f6_local6, f6_local7, f6_local8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act05(arg0, arg1, arg2)
    local f7_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 50
    local f7_local3 = 50
    local f7_local4 = 0
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, WalkLife, RunLife)
    local f7_local5 = 3006
    local f7_local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local7 = 0
    local f7_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local5, TARGET_ENE_0, f7_local6, f7_local7, f7_local8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act06(arg0, arg1, arg2)
    local f8_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 50
    local f8_local3 = 50
    local f8_local4 = 0
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, WalkLife, RunLife)
    local f8_local5 = 3002
    local f8_local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local7 = 0
    local f8_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local5, TARGET_ENE_0, f8_local6, f8_local7, f8_local8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act07(arg0, arg1, arg2)
    local f9_local0 = 3009
    local f9_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 0
    local f9_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act08(arg0, arg1, arg2)
    local f10_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 50
    local f10_local3 = 50
    local f10_local4 = 0
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, WalkLife, RunLife)
    local f10_local5 = 3010
    local f10_local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local7 = 0
    local f10_local8 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local5, TARGET_ENE_0, f10_local6, f10_local7, f10_local8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act09(arg0, arg1, arg2)
    local f11_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 0
    local f11_local2 = 0
    local f11_local3 = 50
    local f11_local4 = 0
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, WalkLife, RunLife)
    local f11_local5 = 3012
    local f11_local6 = 5.5
    local f11_local7 = 0
    local f11_local8 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local5, TARGET_ENE_0, f11_local6, f11_local7, f11_local8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act10(arg0, arg1, arg2)
    local f12_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 50
    local f12_local3 = 50
    local f12_local4 = 0
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, WalkLife, RunLife)
    local f12_local5 = 3001
    local f12_local6 = 5.5
    local f12_local7 = 0
    local f12_local8 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local5, TARGET_ENE_0, f12_local6, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local5, TARGET_ENE_0, f12_local6, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local5, TARGET_ENE_0, f12_local6, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local5, TARGET_ENE_0, f12_local6, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local5, TARGET_ENE_0, f12_local6, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local5, TARGET_ENE_0, f12_local6, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local5, TARGET_ENE_0, f12_local6, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local5, TARGET_ENE_0, f12_local6, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local5, TARGET_ENE_0, f12_local6, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local5, TARGET_ENE_0, f12_local6, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local5, TARGET_ENE_0, f12_local6, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local5, TARGET_ENE_0, f12_local6, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local5, TARGET_ENE_0, f12_local6, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local5, TARGET_ENE_0, f12_local6, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local5, TARGET_ENE_0, f12_local6, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local5, TARGET_ENE_0, f12_local6, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act11(arg0, arg1, arg2)
    local f13_local0 = 2
    local f13_local1 = -1
    local f13_local2 = 99
    local f13_local3 = -1
    local f13_local4 = -1
    local f13_local5 = TARGET_ENE_0
    local f13_local6 = 1
    local f13_local7 = 0
    local f13_local8 = true
    arg0:SetTimer(0, 3)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7, f13_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act12(arg0, arg1, arg2)
    local f14_local0 = 5
    local f14_local1 = -1
    local f14_local2 = -1
    local f14_local3 = 1
    local f14_local4 = -1
    local f14_local5 = TARGET_ENE_0
    local f14_local6 = 1
    local f14_local7 = 0
    local f14_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7, f14_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act13(arg0, arg1, arg2)
    local f15_local0 = 5
    local f15_local1 = -1
    local f15_local2 = -1
    local f15_local3 = -1
    local f15_local4 = 1
    local f15_local5 = TARGET_ENE_0
    local f15_local6 = 1
    local f15_local7 = 0
    local f15_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7, f15_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act14(arg0, arg1, arg2)
    local f16_local0 = 3
    local f16_local1 = TARGET_ENE_0
    local f16_local2 = 3
    local f16_local3 = TARGET_ENE_0
    local f16_local4 = true
    local f16_local5 = arg0:GetDist(TARGET_ENE_0)
    local f16_local6 = 0
    local f16_local7 = arg0:GetRandam_Int(1, 100)
    local f16_local8 = -1
    if f16_local7 <= f16_local6 then
        f16_local8 = -1
    end
    arg0:SetTimer(0, 5)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act15(arg0, arg1, arg2)
    local f17_local0 = 3007
    local f17_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 0
    local f17_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local0, TARGET_ENE_0, f17_local1, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act16(arg0, arg1, arg2)
    local f18_local0 = 50
    local f18_local1 = arg0:GetRandam_Int(1, 100)
    local f18_local2 = -1
    if f18_local1 <= f18_local0 then
        f18_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f18_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_Act31(arg0, arg1, arg2)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = arg0:GetRandam_Float(2, 4)
    local f21_local2 = arg0:GetRandam_Float(9, 14)
    local f21_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f21_local1, TARGET_ENE_0, f21_local2, TARGET_SELF, true, f21_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BalloonDoll_385020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BalloonDoll_385020_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local f25_local0 = arg1:GetRandam_Int(1, 100)
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 140, 3) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3005, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 140, 3) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif InsideRange(arg1, arg2, 0, 180, 0, 2.2) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 2.2, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        else

        end
    end
    if arg1:GetSpecialEffectActivateInterruptId(5027) then
        local f25_local0 = arg1:GetDist(TARGET_ENE_0)
        local f25_local1 = arg1:GetRandam_Int(1, 100)
        if f25_local1 <= 20 and arg1:GetRemainingAttackCoolTime(3012) == 0 and f25_local0 <= 5.5 then
            arg2:ClearSubGoal()
            BalloonDoll_385020_Act09(arg1, arg2)
        else

        end
        return true
    end
    if arg1:GetSpecialEffectActivateInterruptId(5028) then
        local f25_local0 = arg1:GetDist(TARGET_ENE_0)
        local f25_local1 = arg1:GetRandam_Int(1, 100)
        if f25_local1 <= 100 and f25_local0 <= 5.5 then
            arg2:ClearSubGoal()
            BalloonDoll_385020_Act10(arg1, arg2)
        end
        return true
    end
    if arg1:GetSpecialEffectActivateInterruptId(5029) then
        local f25_local0 = arg1:GetDist(TARGET_ENE_0)
        local f25_local1 = arg1:GetRandam_Int(1, 100)
        if arg1:GetHpRate(TARGET_SELF) < 1 then

        else

        end
    end
    return true
    
end

RegisterTableGoal(GOAL_BalloonDoll_385020_AfterAttackAct, "GOAL_BalloonDoll_385020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BalloonDoll_385020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


