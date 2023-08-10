RegisterTableGoal(GOAL_FrogHuman_347040_Battle, "GOAL_FrogHuman_347040_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FrogHuman_347040_Battle, true)
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
                if f2_local3 >= 6 then
                    f2_local0[3] = 10
                    f2_local0[5] = 30
                    f2_local0[7] = 20
                    f2_local0[8] = 20
                    f2_local0[15] = 0
                    f2_local0[16] = 20 * f2_local7
                    f2_local0[18] = 20
                    f2_local0[20] = 20 * f2_local6
                else
                    f2_local0[1] = 10
                    f2_local0[7] = 20
                    f2_local0[8] = 20
                    f2_local0[15] = 20
                    f2_local0[30] = 30
                end
            else
                local f2_local6 = arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 180, 4)
                if f2_local6 then
                    f2_local6 = 1
                    if arg1:HasSpecialEffectId(TARGET_SELF, 15607) then
                        f2_local6 = 0
                    end
                    f2_local0[7] = 20 * f2_local6
                    f2_local0[8] = 20 * f2_local6
                    f2_local0[17] = 60
                else
                    f2_local6 = 1
                    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 15607)
                    if f2_local7 then
                        f2_local6 = 0
                    end
                    f2_local7 = 0
                    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 15608)
                    if f2_local8 then
                        f2_local7 = 1
                    end
                    f2_local8 = 0
                    if arg1:HasSpecialEffectId(TARGET_SELF, 15609) then
                        f2_local8 = 1
                    end
                    if f2_local3 >= 10 then
                        f2_local0[3] = 20 * f2_local6
                        f2_local0[16] = 60 * f2_local8
                        f2_local0[18] = 80
                    elseif f2_local3 >= 5 then
                        f2_local0[1] = 20
                        f2_local0[3] = 20 * f2_local6
                        f2_local0[5] = 40
                        f2_local0[7] = 10 * f2_local6
                        f2_local0[8] = 10 * f2_local6
                        f2_local0[16] = 80 * f2_local8
                        f2_local0[19] = 80 * f2_local7
                        f2_local0[20] = 0 * f2_local7
                    elseif f2_local3 >= 3.5 then
                        f2_local0[1] = 10
                        f2_local0[2] = 20
                        f2_local0[4] = 20
                        f2_local0[5] = 30
                        f2_local0[6] = 20
                        f2_local0[19] = 0 * f2_local7
                        f2_local0[20] = 20 * f2_local7
                    else
                        f2_local0[1] = 20
                        f2_local0[4] = 40
                        f2_local0[6] = 30
                        f2_local0[15] = 10
                    end
                end
            end
        end
        local f2_local6 = arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 180, 4)
        if f2_local6 then
            f2_local6 = 1
            if arg1:HasSpecialEffectId(TARGET_SELF, 15607) then
                f2_local6 = 0
            end
            f2_local0[7] = 20 * f2_local6
            f2_local0[8] = 20 * f2_local6
            f2_local0[17] = 60
        else
            f2_local6 = 1
            local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 15607)
            if f2_local7 then
                f2_local6 = 0
            end
            f2_local7 = 0
            local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 15608)
            if f2_local8 then
                f2_local7 = 1
            end
            f2_local8 = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 15609) then
                f2_local8 = 1
            end
            if f2_local3 >= 10 then
                f2_local0[3] = 20 * f2_local6
                f2_local0[16] = 60 * f2_local8
                f2_local0[18] = 80
            elseif f2_local3 >= 5 then
                f2_local0[1] = 20
                f2_local0[3] = 20 * f2_local6
                f2_local0[5] = 40
                f2_local0[7] = 10 * f2_local6
                f2_local0[8] = 10 * f2_local6
                f2_local0[16] = 80 * f2_local8
                f2_local0[19] = 80 * f2_local7
                f2_local0[20] = 0 * f2_local7
            elseif f2_local3 >= 3.5 then
                f2_local0[1] = 10
                f2_local0[2] = 20
                f2_local0[4] = 20
                f2_local0[5] = 30
                f2_local0[6] = 20
                f2_local0[19] = 0 * f2_local7
                f2_local0[20] = 20 * f2_local7
            else
                f2_local0[1] = 20
                f2_local0[4] = 40
                f2_local0[6] = 30
                f2_local0[15] = 10
            end
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3012, 5, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3020, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[8], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 20011, 25, f2_local0[19], 0)
    f2_local0[20] = SetCoolTime(arg1, arg2, 20012, 15, f2_local0[20], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, FrogHuman_347040_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, FrogHuman_347040_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, FrogHuman_347040_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, FrogHuman_347040_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, FrogHuman_347040_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, FrogHuman_347040_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, FrogHuman_347040_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, FrogHuman_347040_Act08)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, FrogHuman_347040_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, FrogHuman_347040_Act15)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, FrogHuman_347040_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, FrogHuman_347040_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, FrogHuman_347040_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, FrogHuman_347040_Act20)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, FrogHuman_347040_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, FrogHuman_347040_Act31)
    local f2_local6 = REGIST_FUNC(arg1, arg2, FrogHuman_347040_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function FrogHuman_347040_Act01(arg0, arg1, arg2)
    local f3_local0 = 3.1
    local f3_local1 = 100
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 6
    local f3_local9 = 0
    local f3_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347040_Act02(arg0, arg1, arg2)
    local f4_local0 = 6
    local f4_local1 = 100
    local f4_local2 = 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 6
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347040_Act03(arg0, arg1, arg2)
    local f5_local0 = 12
    local f5_local1 = 100
    local f5_local2 = 999
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3002
    local f5_local8 = 2.5
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347040_Act04(arg0, arg1, arg2)
    local f6_local0 = 3.5
    local f6_local1 = 100
    local f6_local2 = 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3010
    local f6_local8 = 3011
    local f6_local9 = 7
    local f6_local10 = 7
    local f6_local11 = 0
    local f6_local12 = 0
    local f6_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, 4, f6_local11, f6_local12, 0, 0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 15607) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local8, TARGET_ENE_0, f6_local9, 90)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347040_Act05(arg0, arg1, arg2)
    local f7_local0 = 6
    local f7_local1 = 100
    local f7_local2 = 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3012
    local f7_local8 = 2.5
    local f7_local9 = 0
    local f7_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347040_Act06(arg0, arg1, arg2)
    local f8_local0 = 4
    local f8_local1 = 100
    local f8_local2 = 999
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3020
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347040_Act07(arg0, arg1, arg2)
    local f9_local0 = 20
    local f9_local1 = 100
    local f9_local2 = 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3003
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347040_Act08(arg0, arg1, arg2)
    local f10_local0 = 20
    local f10_local1 = 100
    local f10_local2 = 999
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3004
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347040_Act15(arg0, arg1, arg2)
    local f11_local0 = 2
    local f11_local1 = TARGET_ENE_0
    local f11_local2 = 5
    local f11_local3 = TARGET_ENE_0
    local f11_local4 = true
    local f11_local5 = arg0:GetDist(TARGET_ENE_0)
    local f11_local6 = 0
    local f11_local7 = arg0:GetRandam_Int(1, 100)
    local f11_local8 = -1
    if f11_local7 <= f11_local6 then
        f11_local8 = -1
    end
    arg0:SetTimer(0, 4)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347040_Act16(arg0, arg1, arg2)
    local f12_local0 = 5
    local f12_local1 = 20013
    local f12_local2 = TARGET_ENE_0
    local f12_local3 = 10
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f12_local0, f12_local1, f12_local2, f12_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347040_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347040_Act18(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 3
    local f14_local2 = 30
    local f14_local3 = arg0:GetRandam_Int(1, 100)
    local f14_local4 = true
    local f14_local5 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f14_local1, TARGET_ENE_0, f14_local4, f14_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347040_Act19(arg0, arg1, arg2)
    local f15_local0 = 5
    local f15_local1 = 20011
    local f15_local2 = TARGET_ENE_0
    local f15_local3 = 10
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f15_local0, f15_local1, f15_local2, f15_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347040_Act20(arg0, arg1, arg2)
    local f16_local0 = 5
    local f16_local1 = 20012
    local f16_local2 = TARGET_ENE_0
    local f16_local3 = 10
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f16_local0, f16_local1, f16_local2, f16_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347040_Act30(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = arg0:GetRandam_Int(6, 8)
    local f17_local2 = 999
    local f17_local3 = 0
    local f17_local4 = arg0:GetStringIndexedNumber("c3470_DashRate")
    local f17_local5 = 0
    local f17_local6 = arg0:GetRandam_Int(2, 10)
    local f17_local7 = 0
    Approach_Act_Flex(arg0, arg1, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6, f17_local7)
    local f17_local8 = arg0:GetRandam_Int(5, 20)
    local f17_local9 = TARGET_ENE_0
    local f17_local10 = arg0:GetRandam_Int(0, 1)
    local f17_local11 = arg0:GetRandam_Int(90, 360)
    local f17_local12 = 2
    local f17_local13 = TARGET_SELF
    local f17_local14 = true
    local f17_local15 = true
    local f17_local16 = arg0:GetDist(TARGET_ENE_0)
    local f17_local17 = 0
    local f17_local18 = arg0:GetRandam_Int(1, 100)
    local f17_local19 = -1
    if f17_local18 <= f17_local17 then
        f17_local19 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local8, f17_local9, f17_local10, f17_local11, f17_local14, -1, f17_local15, f17_local19)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347040_Act31(arg0, arg1, arg2)
    local f18_local0 = 10
    local f18_local1 = TARGET_ENE_0
    local f18_local2 = 7
    local f18_local3 = TARGET_ENE_0
    local f18_local4 = true
    local f18_local5 = arg0:GetDist(TARGET_ENE_0)
    local f18_local6 = 0
    local f18_local7 = arg0:GetRandam_Int(1, 100)
    local f18_local8 = -1
    if f18_local7 <= f18_local6 then
        f18_local8 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347040_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_FrogHuman_347040_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f22_local0 = arg1:GetRandam_Int(1, 100)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        local f22_local1 = arg1:GetDist(TARGET_ENE_0)
        if f22_local1 >= 3 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 99, 0, 0, 0)
            return true
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
        local f22_local1 = arg1:GetDist(TARGET_ENE_0)
        if f22_local1 <= 4 and f22_local0 <= 70 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 99, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 99, 0, 0, 0)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_FrogHuman_347040_AfterAttackAct, "GOAL_FrogHuman_347040_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FrogHuman_347040_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


