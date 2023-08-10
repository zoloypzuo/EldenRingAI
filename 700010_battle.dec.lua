RegisterTableGoal(GOAL_BuddyStandardShield700010_Battle, "BuddyStandardShield700010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BuddyStandardShield700010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3101)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_HOSTPLAYER, 83)
    arg1:AddObserveSpecialEffectAttribute(TARGET_HOSTPLAYER, 90)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10312) and arg1:HasSpecialEffectId(TARGET_SELF, 10317) then
        f2_local0[10] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10312) and arg1:HasSpecialEffectId(TARGET_SELF, 10318) then
        f2_local0[10] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10312) and f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 20 then
            f2_local0[16] = 100
        elseif f2_local3 >= 3 then
            f2_local0[9] = 10
            f2_local0[15] = 70
            f2_local0[21] = 20
        else
            f2_local0[11] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10312) and f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 20 then
            f2_local0[16] = 100
        elseif f2_local3 >= 3 then
            f2_local0[9] = 20
            f2_local0[15] = 50
            f2_local0[21] = 30
        else
            f2_local0[15] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10350) == false then
        f2_local0[19] = 100
    elseif f2_local3 >= 6 then
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 20
        f2_local0[15] = 0
        f2_local0[16] = 30
        f2_local0[18] = 0
        f2_local0[21] = 50
    elseif f2_local3 >= 2 then
        f2_local0[5] = 20
        f2_local0[6] = 0
        f2_local0[7] = 30
        f2_local0[15] = 20
        f2_local0[16] = 30
        f2_local0[18] = 0
    else
        f2_local0[5] = 35
        f2_local0[6] = 0
        f2_local0[7] = 20
        f2_local0[15] = 35
        f2_local0[16] = 0
        f2_local0[18] = 10
    end
    if arg1:IsFinishTimer(5) == false then
        f2_local0[9] = 0
    end
    f2_local1[5] = REGIST_FUNC(arg1, arg2, BuddyStandardShield700010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, BuddyStandardShield700010_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, BuddyStandardShield700010_Act07)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, BuddyStandardShield700010_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, BuddyStandardShield700010_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, BuddyStandardShield700010_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, BuddyStandardShield700010_Act12)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, BuddyStandardShield700010_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, BuddyStandardShield700010_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, BuddyStandardShield700010_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, BuddyStandardShield700010_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, BuddyStandardShield700010_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, BuddyStandardShield700010_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, BuddyStandardShield700010_Act21)
    local f2_local6 = REGIST_FUNC(arg1, arg2, BuddyStandardShield700010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function BuddyStandardShield700010_Act05(arg0, arg1, arg2)
    local f3_local0 = 3
    local f3_local1 = 4
    local f3_local2 = 10
    local f3_local3 = 50
    local f3_local4 = 100
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3100
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_Act06(arg0, arg1, arg2)
    local f4_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f4_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f4_local3 = 50
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3006
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_Act07(arg0, arg1, arg2)
    local f5_local0 = 10
    local f5_local1 = 0
    local f5_local2 = 4
    local f5_local3 = 50
    local f5_local4 = 100
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3101
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_Act09(arg0, arg1, arg2)
    local f6_local0 = 5
    local f6_local1 = 3023
    local f6_local2 = 3101
    local f6_local3 = TARGET_ENE_0
    local f6_local4 = 30
    local f6_local5 = 0
    local f6_local6 = 0
    local f6_local7 = 0
    arg0:SetTimer(5, 30)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f6_local8 = arg0:GetDist(TARGET_ENE_0)
    if f6_local8 >= 4 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local1, f6_local3, f6_local4, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local2, f6_local3, f6_local4, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_Act10(arg0, arg1, arg2)
    local f7_local0 = 5
    local f7_local1 = 3025
    local f7_local2 = 3101
    local f7_local3 = TARGET_ENE_0
    local f7_local4 = 30
    local f7_local5 = 0
    local f7_local6 = 0
    local f7_local7 = 0
    arg0:SetTimer(5, 30)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f7_local8 = arg0:GetDist(TARGET_ENE_0)
    if f7_local8 >= 4 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, f7_local3, f7_local4, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local2, f7_local3, f7_local4, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_Act11(arg0, arg1, arg2)
    local f8_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f8_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f8_local3 = 50
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3011
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_Act12(arg0, arg1, arg2)
    local f9_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f9_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f9_local3 = 50
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3012
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_Act15(arg0, arg1, arg2)
    local f10_local0 = 100
    local f10_local1 = arg0:GetRandam_Int(1, 100)
    local f10_local2 = -1
    if f10_local1 <= f10_local0 then
        f10_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f10_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, arg0:GetRandam_Float(1.5, 2.5), TARGET_SELF, false, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_Act18(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Guard, 5, 9910, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_Act19(arg0, arg1, arg2)
    local f14_local0 = 3007
    local f14_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 0
    local f14_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 6, TARGET_SELF, false, 9910)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_Act20(arg0, arg1, arg2)
    local f15_local0 = 3012
    local f15_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 0
    local f15_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local1, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_Act21(arg0, arg1, arg2)
    local f16_local0 = 5
    local f16_local1 = 3031
    local f16_local2 = TARGET_ENE_0
    local f16_local3 = 10
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local0, f16_local1, f16_local2, f16_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_Act22(arg0, arg1, arg2)
    local f17_local0 = 3020
    local f17_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 0
    local f17_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local0, TARGET_ENE_0, f17_local1, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_Act23(arg0, arg1, arg2)
    local f18_local0 = 3021
    local f18_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = 0
    local f18_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local0, TARGET_ENE_0, f18_local1, f18_local2, f18_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_Act40(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetRandam_Int(1, 100)
    local f19_local2 = arg0:GetDist(TARGET_HOSTPLAYER)
    if f19_local2 <= 2.5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_HOSTPLAYER, 3, TARGET_HOSTPLAYER, true, -1)
    elseif f19_local2 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_HOSTPLAYER, 4, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_HOSTPLAYER, 4, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_Act50(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.1, 1.5), TARGET_NONE, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, arg0:GetRandam_Int(3031, 3033), TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardShield700010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BuddyStandardShield700010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f24_local0 = arg1:GetDist(TARGET_ENE_0)
    local f24_local1 = arg1:GetRandam_Int(1, 100)
    local f24_local2 = arg1:GetDist(TARGET_HOSTPLAYER)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(83) and f24_local2 <= 5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_HOSTPLAYER, 0.5, TARGET_SELF, false, 9910)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3012, TARGET_ENE_0, 0.5, 0, 0, 0, 0)
            return true
        end
        if arg1:GetSpecialEffectActivateInterruptId(90) and f24_local2 <= 5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_HOSTPLAYER, 0.5, TARGET_SELF, false, 9910)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3012, TARGET_ENE_0, 0.5, 0, 0, 0, 0)
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            arg2:ClearSubGoal()
            local f24_local3 = arg1:GetDist(TARGET_ENE_0)
            if f24_local3 <= 4 then
                local f24_local4 = 5
                local f24_local5 = 3101
                local f24_local6 = TARGET_ENE_0
                local f24_local7 = 10
                local f24_local8 = 0
                local f24_local9 = 0
                local f24_local10 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local4, f24_local5, f24_local6, f24_local7, 0, 0, 0)
            else
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                local f24_local4 = 25
                local f24_local5 = 3031
                local f24_local6 = TARGET_ENE_0
                local f24_local7 = 30
                local f24_local8 = 0
                local f24_local9 = 0
                local f24_local10 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local4, f24_local5, f24_local6, f24_local7, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local4, f24_local5, f24_local6, f24_local7, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local4, f24_local5, f24_local6, f24_local7, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local4, f24_local5, f24_local6, f24_local7, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local4, f24_local5, f24_local6, f24_local7, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            local f24_local3 = arg1:GetDist(TARGET_ENE_0)
            if f24_local3 <= 4 then
                arg2:ClearSubGoal()
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_BuddyStandardShield700010_AfterAttackAct, "BuddyStandardShield700010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BuddyStandardShield700010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


