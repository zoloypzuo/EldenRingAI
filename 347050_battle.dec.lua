RegisterTableGoal(GOAL_FrogHuman_347050_Battle, "GOAL_FrogHuman_347050_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FrogHuman_347050_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3026)
    arg1:EnableUnfavorableAttackCheck(0, 3027)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3029)
    arg1:EnableUnfavorableAttackCheck(0, 3030)
    arg1:EnableUnfavorableAttackCheck(0, 3031)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    arg1:EnableUnfavorableAttackCheck(0, 3033)
    arg1:EnableUnfavorableAttackCheck(0, 3034)
    arg1:EnableUnfavorableAttackCheck(0, 3035)
    arg1:EnableUnfavorableAttackCheck(0, 3036)
    arg1:EnableUnfavorableAttackCheck(0, 3037)
    arg1:EnableUnfavorableAttackCheck(0, 3038)
    arg1:EnableUnfavorableAttackCheck(0, 3039)
    arg1:EnableUnfavorableAttackCheck(1, 3000)
    arg1:EnableUnfavorableAttackCheck(1, 3001)
    arg1:EnableUnfavorableAttackCheck(1, 3002)
    arg1:EnableUnfavorableAttackCheck(1, 3005)
    arg1:EnableUnfavorableAttackCheck(1, 3016)
    arg1:EnableUnfavorableAttackCheck(1, 3010)
    arg1:EnableUnfavorableAttackCheck(1, 3011)
    arg1:EnableUnfavorableAttackCheck(1, 3012)
    arg1:EnableUnfavorableAttackCheck(1, 3020)
    arg1:EnableUnfavorableAttackCheck(1, 3021)
    arg1:EnableUnfavorableAttackCheck(1, 3022)
    arg1:EnableUnfavorableAttackCheck(1, 3024)
    arg1:EnableUnfavorableAttackCheck(1, 3025)
    arg1:EnableUnfavorableAttackCheck(1, 3026)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    arg1:SetStringIndexedNumber("c3470_DashRate", 0)
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 4 then
            f2_local0[7] = 10
            f2_local0[8] = 10
            f2_local0[30] = 30
            f2_local0[15] = 0
            f2_local0[18] = 50
        else
            f2_local0[7] = 20
            f2_local0[8] = 20
            f2_local0[15] = 20
            f2_local0[30] = 40
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 6 then
            f2_local0[2] = 30
            f2_local0[3] = 10
            f2_local0[7] = 20
            f2_local0[8] = 20
            f2_local0[15] = 0
            f2_local0[18] = 20
        else
            f2_local0[1] = 10
            f2_local0[7] = 20
            f2_local0[8] = 20
            f2_local0[15] = 20
            f2_local0[30] = 30
        end
    else
        local f2_local6 = arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180)
        if f2_local6 then
            f2_local6 = 1
            if arg1:HasSpecialEffectId(TARGET_SELF, 15607) then
                f2_local6 = 0
            end
            if f2_local3 <= 6.5 then
                f2_local0[2] = 70
                f2_local0[17] = 30
            else
                f2_local0[17] = 30
            end
        else
            f2_local6 = 1
            if arg1:HasSpecialEffectId(TARGET_SELF, 15607) then
                f2_local6 = 0
            end
            if f2_local3 >= 10 then
                f2_local0[3] = 20 * f2_local6
                f2_local0[18] = 80
            elseif f2_local3 >= 5 then
                f2_local0[1] = 40
                f2_local0[2] = 25
                f2_local0[3] = 20 * f2_local6
                f2_local0[5] = 15
            elseif f2_local3 >= 2 then
                f2_local0[1] = 30
                f2_local0[4] = 50
                f2_local0[5] = 20
            else
                f2_local0[1] = 20
                f2_local0[4] = 35
                f2_local0[5] = 15
                f2_local0[15] = 30
            end
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3024, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3025, 5, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3026, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3020, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3022, 15, f2_local0[5], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3003, 7, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3004, 7, f2_local0[8], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, FrogHuman_347050_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, FrogHuman_347050_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, FrogHuman_347050_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, FrogHuman_347050_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, FrogHuman_347050_Act05)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, FrogHuman_347050_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, FrogHuman_347050_Act08)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, FrogHuman_347050_Act15)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, FrogHuman_347050_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, FrogHuman_347050_Act18)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, FrogHuman_347050_Act25)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, FrogHuman_347050_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, FrogHuman_347050_Act31)
    local f2_local6 = REGIST_FUNC(arg1, arg2, FrogHuman_347050_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function FrogHuman_347050_Act01(arg0, arg1, arg2)
    local f3_local0 = 4.5
    local f3_local1 = 100
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3024
    local f3_local8 = 6
    local f3_local9 = 0
    local f3_local10 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347050_Act02(arg0, arg1, arg2)
    local f4_local0 = 6
    local f4_local1 = 100
    local f4_local2 = 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3025
    local f4_local8 = 6
    local f4_local9 = 0
    local f4_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347050_Act03(arg0, arg1, arg2)
    local f5_local0 = 12
    local f5_local1 = 100
    local f5_local2 = 999
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3026
    local f5_local8 = 6
    local f5_local9 = 0
    local f5_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347050_Act04(arg0, arg1, arg2)
    local f6_local0 = 4
    local f6_local1 = 100
    local f6_local2 = 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3020
    local f6_local8 = 6
    local f6_local9 = 7
    local f6_local10 = 0
    local f6_local11 = 180
    local f6_local12 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local0, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347050_Act05(arg0, arg1, arg2)
    local f7_local0 = 4.5
    local f7_local1 = 100
    local f7_local2 = 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3022
    local f7_local8 = 4.5
    local f7_local9 = 0
    local f7_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347050_Act07(arg0, arg1, arg2)
    local f8_local0 = 20
    local f8_local1 = 100
    local f8_local2 = 999
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3003
    local f8_local8 = 5
    local f8_local9 = 0
    local f8_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347050_Act08(arg0, arg1, arg2)
    local f9_local0 = 20
    local f9_local1 = 100
    local f9_local2 = 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3004
    local f9_local8 = 5
    local f9_local9 = 0
    local f9_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347050_Act15(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 4
    local f10_local2 = 0
    local f10_local3 = 0
    local f10_local4 = arg0:GetRandam_Int(1, 100)
    local f10_local5 = -1
    if f10_local4 <= f10_local3 then
        f10_local5 = 9910
    end
    arg0:SetTimer(0, 6)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, f10_local1, TARGET_ENE_0, true, f10_local5)
    
end

function FrogHuman_347050_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347050_Act18(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 3
    local f12_local2 = 30
    local f12_local3 = arg0:GetRandam_Int(1, 100)
    local f12_local4 = true
    local f12_local5 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f12_local1, TARGET_ENE_0, f12_local4, f12_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347050_Act30(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetRandam_Int(4, 8)
    local f13_local2 = 999
    local f13_local3 = 0
    local f13_local4 = arg0:GetStringIndexedNumber("c3470_DashRate")
    local f13_local5 = 0
    local f13_local6 = arg0:GetRandam_Int(2, 10)
    local f13_local7 = 0
    Approach_Act_Flex(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    local f13_local8 = arg0:GetRandam_Int(2, 5)
    local f13_local9 = TARGET_ENE_0
    local f13_local10 = arg0:GetRandam_Int(0, 1)
    local f13_local11 = arg0:GetRandam_Int(90, 360)
    local f13_local12 = 2
    local f13_local13 = TARGET_SELF
    local f13_local14 = true
    local f13_local15 = true
    local f13_local16 = arg0:GetDist(TARGET_ENE_0)
    local f13_local17 = 0
    local f13_local18 = arg0:GetRandam_Int(1, 100)
    local f13_local19 = -1
    if f13_local18 <= f13_local17 then
        f13_local19 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f13_local8, f13_local9, f13_local10, f13_local11, f13_local14, -1, f13_local15, f13_local19)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347050_Act31(arg0, arg1, arg2)
    local f14_local0 = 10
    local f14_local1 = TARGET_ENE_0
    local f14_local2 = 7
    local f14_local3 = TARGET_ENE_0
    local f14_local4 = true
    local f14_local5 = arg0:GetDist(TARGET_ENE_0)
    local f14_local6 = 0
    local f14_local7 = arg0:GetRandam_Int(1, 100)
    local f14_local8 = -1
    if f14_local7 <= f14_local6 then
        f14_local8 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347050_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_FrogHuman_347050_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f18_local0 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15607) == false then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
                local f18_local1 = arg1:GetDist(TARGET_ENE_0)
                if f18_local1 >= 3 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 99, 0, 0, 0)
                    return true
                elseif f18_local1 <= 5 and f18_local0 <= 30 and arg1:GetAttackPassedTime(3020) >= 10 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3020, TARGET_ENE_0, 5, 0, 180, 0, 0)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                    return true
                elseif f18_local1 <= 5 and f18_local0 <= 60 and arg1:GetAttackPassedTime(3022) >= 10 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3022, TARGET_ENE_0, 5, 0, 180, 0, 0)
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
                local f18_local1 = arg1:GetDist(TARGET_ENE_0)
                if f18_local1 <= 4 and f18_local0 <= 70 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 99, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 99, 0, 0, 0)
                    return true
                end
            end
            return false
        end
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local f18_local1 = arg1:GetDist(TARGET_ENE_0)
        if f18_local1 <= 5.5 and arg1:GetAttackPassedTime(3025) >= 10 and f18_local0 <= 75 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 99, 0, 0, 0, 0, 0)
            return true
        end
        return false
    end
    return false
    
end

RegisterTableGoal(GOAL_FrogHuman_347050_AfterAttackAct, "GOAL_FrogHuman_347050_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FrogHuman_347050_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


