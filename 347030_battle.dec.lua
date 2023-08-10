RegisterTableGoal(GOAL_FrogHuman_347030_Battle, "GOAL_FrogHuman_347030_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FrogHuman_347030_Battle, true)
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
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15610) then
            f2_local0[3] = 100
        elseif f2_local3 >= 4 then
            f2_local0[15] = 20
            f2_local0[30] = 60
            f2_local0[17] = 50
        else
            f2_local0[15] = 20
            f2_local0[30] = 80
        end
    else
        if f2_local5 == 1 then
            local f2_local6 = arg1:GetTeamOrder(ORDER_TYPE_Role)
            if f2_local6 == ROLE_TYPE_Torimaki then
                f2_local6 = 0
                local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 15608)
                if f2_local7 then
                    f2_local6 = 1
                end
                f2_local7 = 0
                if arg1:HasSpecialEffectId(TARGET_SELF, 15609) then
                    f2_local7 = 1
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 15610) then
                    f2_local0[3] = 100
                elseif f2_local3 >= 4 then
                    f2_local0[3] = 1
                    f2_local0[30] = 69
                    f2_local0[15] = 10
                    f2_local0[17] = 50
                    f2_local0[19] = 20 * f2_local6
                    f2_local0[20] = 20 * f2_local7
                else
                    f2_local0[3] = 1
                    f2_local0[30] = 89
                    f2_local0[15] = 10
                end
            else
                local f2_local6 = 0
                local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 15608)
                if f2_local7 then
                    f2_local6 = 1
                end
                f2_local7 = 0
                if arg1:HasSpecialEffectId(TARGET_SELF, 15609) then
                    f2_local7 = 1
                end
                if f2_local3 >= 5 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 15610) then
                        f2_local0[3] = 100
                    else
                        f2_local0[17] = 100
                    end
                elseif f2_local3 >= 3 then
                    f2_local0[1] = 45
                    f2_local0[2] = 25
                    f2_local0[3] = 10
                    f2_local0[17] = 20
                    f2_local0[18] = 0 * f2_local6
                    f2_local0[19] = 20 * f2_local6
                    f2_local0[20] = 60 * f2_local7
                else
                    f2_local0[1] = 35
                    f2_local0[2] = 65
                end
            end
        end
        local f2_local6 = 0
        local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 15608)
        if f2_local7 then
            f2_local6 = 1
        end
        f2_local7 = 0
        if arg1:HasSpecialEffectId(TARGET_SELF, 15609) then
            f2_local7 = 1
        end
        if f2_local3 >= 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15610) then
                f2_local0[3] = 100
            else
                f2_local0[17] = 100
            end
        elseif f2_local3 >= 3 then
            f2_local0[1] = 45
            f2_local0[2] = 25
            f2_local0[3] = 10
            f2_local0[17] = 20
            f2_local0[18] = 0 * f2_local6
            f2_local0[19] = 20 * f2_local6
            f2_local0[20] = 60 * f2_local7
        else
            f2_local0[1] = 35
            f2_local0[2] = 65
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3033, 3, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3016, 3, f2_local0[2], 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 15610) then
        f2_local0[3] = SetCoolTime(arg1, arg2, 3020, 0, f2_local0[3], 0)
    else
        f2_local0[3] = SetCoolTime(arg1, arg2, 3020, 20, f2_local0[3], 0)
    end
    if arg1:GetTimer(0) > 0 then
        f2_local0[15] = 0
    end
    f2_local0[18] = SetCoolTime(arg1, arg2, 20011, 15, f2_local0[18], 0)
    f2_local0[19] = SetCoolTime(arg1, arg2, 20012, 15, f2_local0[19], 0)
    f2_local0[20] = SetCoolTime(arg1, arg2, 20013, 10, f2_local0[20], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, FrogHuman_347030_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, FrogHuman_347030_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, FrogHuman_347030_Act03)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, FrogHuman_347030_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, FrogHuman_347030_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, FrogHuman_347030_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, FrogHuman_347030_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, FrogHuman_347030_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, FrogHuman_347030_Act20)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, FrogHuman_347030_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, FrogHuman_347030_Act31)
    local f2_local6 = REGIST_FUNC(arg1, arg2, FrogHuman_347030_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function FrogHuman_347030_Act01(arg0, arg1, arg2)
    local f3_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 0
    local f3_local2 = 999
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3033
    local f3_local8 = 3034
    local f3_local9 = 3035
    local f3_local10 = 2
    local f3_local11 = 3
    local f3_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local13 = 0
    local f3_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local10, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, f3_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local9, TARGET_ENE_0, f3_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347030_Act02(arg0, arg1, arg2)
    local f4_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 0
    local f4_local2 = 999
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3016
    local f4_local8 = 4.4
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347030_Act03(arg0, arg1, arg2)
    local f5_local0 = 3020
    local f5_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 0
    local f5_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local0, TARGET_ENE_0, f5_local1, f5_local2, f5_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347030_Act15(arg0, arg1, arg2)
    local f6_local0 = 5
    local f6_local1 = TARGET_ENE_0
    local f6_local2 = 5
    local f6_local3 = TARGET_ENE_0
    local f6_local4 = true
    local f6_local5 = arg0:GetDist(TARGET_ENE_0)
    local f6_local6 = 0
    local f6_local7 = arg0:GetRandam_Int(1, 100)
    local f6_local8 = -1
    if f6_local7 <= f6_local6 then
        f6_local8 = -1
    end
    arg0:SetTimer(0, 4)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347030_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347030_Act17(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 2
    local f8_local2 = 30
    local f8_local3 = arg0:GetRandam_Int(1, 100)
    local f8_local4 = false
    local f8_local5 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f8_local1, TARGET_ENE_0, f8_local4, f8_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347030_Act18(arg0, arg1, arg2)
    local f9_local0 = 5
    local f9_local1 = 20011
    local f9_local2 = TARGET_ENE_0
    local f9_local3 = 10
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f9_local0, f9_local1, f9_local2, f9_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347030_Act19(arg0, arg1, arg2)
    local f10_local0 = 5
    local f10_local1 = 20012
    local f10_local2 = TARGET_ENE_0
    local f10_local3 = 10
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f10_local0, f10_local1, f10_local2, f10_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347030_Act20(arg0, arg1, arg2)
    local f11_local0 = 5
    local f11_local1 = 20013
    local f11_local2 = TARGET_ENE_0
    local f11_local3 = 10
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f11_local0, f11_local1, f11_local2, f11_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347030_Act30(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetRandam_Int(6, 7)
    local f12_local2 = 999
    local f12_local3 = 0
    local f12_local4 = arg0:GetStringIndexedNumber("c3470_DashRate")
    local f12_local5 = 90
    local f12_local6 = arg0:GetRandam_Int(2, 10)
    local f12_local7 = 0
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    local f12_local8 = arg0:GetRandam_Int(5, 20)
    local f12_local9 = TARGET_ENE_0
    local f12_local10 = arg0:GetRandam_Int(0, 1)
    local f12_local11 = arg0:GetRandam_Int(90, 360)
    local f12_local12 = 2
    local f12_local13 = TARGET_SELF
    local f12_local14 = true
    local f12_local15 = true
    local f12_local16 = arg0:GetDist(TARGET_ENE_0)
    local f12_local17 = 0
    local f12_local18 = arg0:GetRandam_Int(1, 100)
    if f12_local18 <= f12_local17 then
        guardActionId = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f12_local8, f12_local9, f12_local10, f12_local11, f12_local14, -1, f12_local15, guardActionId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347030_Act31(arg0, arg1, arg2)
    local f13_local0 = 10
    local f13_local1 = TARGET_ENE_0
    local f13_local2 = 7
    local f13_local3 = TARGET_ENE_0
    local f13_local4 = true
    local f13_local5 = arg0:GetDist(TARGET_ENE_0)
    local f13_local6 = 0
    local f13_local7 = arg0:GetRandam_Int(1, 100)
    local f13_local8 = -1
    if f13_local7 <= f13_local6 then
        f13_local8 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_FrogHuman_347030_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
    
end

RegisterTableGoal(GOAL_FrogHuman_347030_AfterAttackAct, "GOAL_FrogHuman_347030_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FrogHuman_347030_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


