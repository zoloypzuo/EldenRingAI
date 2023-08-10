RegisterTableGoal(GOAL_FrogHuman_347025_Battle, "GOAL_FrogHuman_347025_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FrogHuman_347025_Battle, true)
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
    arg1:SetStringIndexedNumber("c3470_DashRate", 0)
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15610) then
            f2_local0[6] = 100
        elseif f2_local3 >= 4 then
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[30] = 2
            f2_local0[20] = 0
            f2_local0[22] = 0
            f2_local0[10] = 49
            f2_local0[11] = 49
        else
            f2_local0[10] = 40
            f2_local0[11] = 40
            f2_local0[30] = 0
            f2_local0[20] = 20
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
                if f2_local3 >= 4 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 15610) then
                        f2_local0[6] = 100
                    else
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[6] = 0
                        f2_local0[9] = 0
                        f2_local0[30] = 1
                        f2_local0[20] = 1
                        f2_local0[22] = 0
                        f2_local0[10] = 49
                        f2_local0[11] = 49
                        f2_local0[17] = 20 * f2_local7
                        f2_local0[19] = 20 * f2_local6
                    end
                else
                    f2_local0[2] = 40
                    f2_local0[3] = 40
                    f2_local0[6] = 0
                    f2_local0[9] = 0
                    f2_local0[30] = 0
                    f2_local0[20] = 20
                end
            else
                local f2_local6 = arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 180, 4)
                if f2_local6 then
                    if f2_local4 <= 70 then
                        f2_local0[5] = 100
                    end
                else
                    f2_local6 = 0
                    if arg1:HasSpecialEffectId(TARGET_SELF, 15608) then
                        f2_local6 = 1
                    end
                    if f2_local3 >= 5 then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 15610) then
                            f2_local0[6] = 100
                        else
                            f2_local0[1] = 10
                            f2_local0[2] = 40
                            f2_local0[3] = 40
                            f2_local0[22] = 10
                            f2_local0[18] = 80 * f2_local6
                            f2_local0[19] = 0 * f2_local6
                        end
                    elseif f2_local3 >= 4 then
                        f2_local0[1] = 10
                        f2_local0[10] = 25
                        f2_local0[11] = 25
                        f2_local0[4] = 0
                        f2_local0[6] = 15
                        f2_local0[9] = 15
                        f2_local0[22] = 10
                        f2_local0[17] = 80 * SnowCR
                        f2_local0[18] = 60 * f2_local6
                        f2_local0[19] = 10 * f2_local6
                    elseif f2_local3 >= 2 then
                        f2_local0[1] = 30
                        f2_local0[10] = 10
                        f2_local0[11] = 10
                        f2_local0[12] = 5
                        f2_local0[5] = 34
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 10
                        f2_local0[30] = 1
                        f2_local0[17] = 30 * SnowCR
                        f2_local0[18] = 10 * f2_local6
                        f2_local0[19] = 20 * f2_local6
                    else
                        f2_local0[1] = 44
                        f2_local0[5] = 35
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[12] = 20
                        f2_local0[30] = 1
                    end
                end
            end
        end
        local f2_local6 = arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 180, 4)
        if f2_local6 then
            if f2_local4 <= 70 then
                f2_local0[5] = 100
            end
        else
            f2_local6 = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 15608) then
                f2_local6 = 1
            end
            if f2_local3 >= 5 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 15610) then
                    f2_local0[6] = 100
                else
                    f2_local0[1] = 10
                    f2_local0[2] = 40
                    f2_local0[3] = 40
                    f2_local0[22] = 10
                    f2_local0[18] = 80 * f2_local6
                    f2_local0[19] = 0 * f2_local6
                end
            elseif f2_local3 >= 4 then
                f2_local0[1] = 10
                f2_local0[10] = 25
                f2_local0[11] = 25
                f2_local0[4] = 0
                f2_local0[6] = 15
                f2_local0[9] = 15
                f2_local0[22] = 10
                f2_local0[17] = 80 * SnowCR
                f2_local0[18] = 60 * f2_local6
                f2_local0[19] = 10 * f2_local6
            elseif f2_local3 >= 2 then
                f2_local0[1] = 30
                f2_local0[10] = 10
                f2_local0[11] = 10
                f2_local0[12] = 5
                f2_local0[5] = 34
                f2_local0[6] = 0
                f2_local0[8] = 0
                f2_local0[9] = 10
                f2_local0[30] = 1
                f2_local0[17] = 30 * SnowCR
                f2_local0[18] = 10 * f2_local6
                f2_local0[19] = 20 * f2_local6
            else
                f2_local0[1] = 44
                f2_local0[5] = 35
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 20
                f2_local0[30] = 1
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 15611) then
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[25] = 0
        f2_local0[30] = 0
        f2_local0[31] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3028, 10, f2_local0[1], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[2], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 5, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3014, 10, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3015, 10, f2_local0[5], 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 15610) then
        f2_local0[6] = SetCoolTime(arg1, arg2, 3020, 0, f2_local0[6], 0)
    else
        f2_local0[6] = SetCoolTime(arg1, arg2, 3020, 20, f2_local0[6], 0)
    end
    f2_local0[8] = SetCoolTime(arg1, arg2, 3029, 10, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3005, 20, f2_local0[9], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3031, 5, f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3032, 5, f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3014, 10, f2_local0[12], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[13], 0)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3018, 10, f2_local0[14], 0)
    if arg1:GetTimer(0) > 0 then
        f2_local0[10] = 0
        f2_local0[11] = 0
    end
    f2_local0[17] = SetCoolTime(arg1, arg2, 20013, 10, f2_local0[17], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 20011, 25, f2_local0[18], 0)
    f2_local0[19] = SetCoolTime(arg1, arg2, 20012, 15, f2_local0[19], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act06)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act14)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act22)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act25)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, FrogHuman_347025_Act31)
    local f2_local6 = REGIST_FUNC(arg1, arg2, FrogHuman_347025_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function FrogHuman_347025_Act01(arg0, arg1, arg2)
    local f3_local0 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 50
    local f3_local3 = arg0:GetStringIndexedNumber("c3470_DashRate")
    local f3_local4 = 70
    local f3_local5 = 4
    local f3_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f3_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3028
    local f3_local8 = 3029
    local f3_local9 = 3030
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

function FrogHuman_347025_Act02(arg0, arg1, arg2)
    local f4_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 50
    local f4_local3 = arg0:GetStringIndexedNumber("c3470_DashRate")
    local f4_local4 = 70
    local f4_local5 = 4
    local f4_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f4_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3003
    local f4_local8 = 2.5
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act03(arg0, arg1, arg2)
    local f5_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 50
    local f5_local3 = arg0:GetStringIndexedNumber("c3470_DashRate")
    local f5_local4 = 70
    local f5_local5 = 4
    local f5_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f5_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3004
    local f5_local8 = 2.5
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act04(arg0, arg1, arg2)
    local f6_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 50
    local f6_local3 = arg0:GetStringIndexedNumber("c3470_DashRate")
    local f6_local4 = 70
    local f6_local5 = 4
    local f6_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f6_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3014
    local f6_local8 = 4.4
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act05(arg0, arg1, arg2)
    local f7_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 50
    local f7_local3 = arg0:GetStringIndexedNumber("c3470_DashRate")
    local f7_local4 = 70
    local f7_local5 = 4
    local f7_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f7_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3015
    local f7_local8 = 2.5
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act06(arg0, arg1, arg2)
    local f8_local0 = 3020
    local f8_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 0
    local f8_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act08(arg0, arg1, arg2)
    local f9_local0 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 50
    local f9_local3 = arg0:GetStringIndexedNumber("c3470_DashRate")
    local f9_local4 = 70
    local f9_local5 = 4
    local f9_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f9_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3029
    local f9_local8 = 3030
    local f9_local9 = 3015
    local f9_local10 = 2
    local f9_local11 = 3
    local f9_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local13 = 0
    local f9_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local10, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f9_local8, TARGET_ENE_0, f9_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f9_local9, TARGET_ENE_0, f9_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act09(arg0, arg1, arg2)
    local f10_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 50
    local f10_local3 = arg0:GetStringIndexedNumber("c3470_DashRate")
    local f10_local4 = 70
    local f10_local5 = 4
    local f10_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f10_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3005
    local f10_local8 = 6
    local f10_local9 = 0
    local f10_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act10(arg0, arg1, arg2)
    local f11_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 50
    local f11_local3 = arg0:GetStringIndexedNumber("c3470_DashRate")
    local f11_local4 = 70
    local f11_local5 = 4
    local f11_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f11_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3031
    local f11_local8 = 2.5
    local f11_local9 = 0
    local f11_local10 = 0
    arg0:SetTimer(0, 20)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act11(arg0, arg1, arg2)
    local f12_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 50
    local f12_local3 = arg0:GetStringIndexedNumber("c3470_DashRate")
    local f12_local4 = 70
    local f12_local5 = 4
    local f12_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f12_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3032
    local f12_local8 = 2.5
    local f12_local9 = 0
    local f12_local10 = 0
    arg0:SetTimer(0, 20)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act12(arg0, arg1, arg2)
    local f13_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 50
    local f13_local3 = arg0:GetStringIndexedNumber("c3470_DashRate")
    local f13_local4 = 70
    local f13_local5 = 4
    local f13_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f13_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3014
    local f13_local8 = 3017
    local f13_local9 = 3018
    local f13_local10 = 2
    local f13_local11 = 3
    local f13_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local13 = 0
    local f13_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local10, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f13_local8, TARGET_ENE_0, f13_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f13_local9, TARGET_ENE_0, f13_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act13(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 0
    local f14_local2 = 0
    local f14_local3 = 100
    local f14_local4 = arg0:GetRandam_Int(1, 100)
    local f14_local5 = 9910
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f14_local5 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_Guard, 15, 30, TARGET_ENE_0, resultTypeIfGuardSuccess, true)
    
end

function FrogHuman_347025_Act14(arg0, arg1, arg2)
    local f15_local0 = arg0:GetRandam_Int(1, 100)
    local f15_local1 = 100
    local f15_local2 = -1
    local f15_local3 = 9910
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f15_local3 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f15_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act17(arg0, arg1, arg2)
    local f16_local0 = 5
    local f16_local1 = 20013
    local f16_local2 = TARGET_ENE_0
    local f16_local3 = 10
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f16_local0, f16_local1, f16_local2, f16_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act18(arg0, arg1, arg2)
    local f17_local0 = 5
    local f17_local1 = 20011
    local f17_local2 = TARGET_ENE_0
    local f17_local3 = 10
    local f17_local4 = 0
    local f17_local5 = 0
    local f17_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f17_local0, f17_local1, f17_local2, f17_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act19(arg0, arg1, arg2)
    local f18_local0 = 5
    local f18_local1 = 20012
    local f18_local2 = TARGET_ENE_0
    local f18_local3 = 10
    local f18_local4 = 0
    local f18_local5 = 0
    local f18_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f18_local0, f18_local1, f18_local2, f18_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act20(arg0, arg1, arg2)
    local f19_local0 = 5
    local f19_local1 = TARGET_ENE_0
    local f19_local2 = 5
    local f19_local3 = TARGET_ENE_0
    local f19_local4 = true
    local f19_local5 = arg0:GetDist(TARGET_ENE_0)
    local f19_local6 = 0
    local f19_local7 = arg0:GetRandam_Int(1, 100)
    local f19_local8 = 9910
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f19_local8 = -1
    end
    arg0:SetTimer(0, 4)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act22(arg0, arg1, arg2)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = 5
    local f21_local2 = 30
    local f21_local3 = arg0:GetRandam_Int(1, 100)
    local f21_local4 = true
    local f21_local5 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f21_local1, TARGET_ENE_0, f21_local4, f21_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act30(arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = arg0:GetRandam_Int(6, 7)
    local f22_local2 = 999
    local f22_local3 = 0
    local f22_local4 = arg0:GetStringIndexedNumber("c3470_DashRate")
    local f22_local5 = 90
    local f22_local6 = arg0:GetRandam_Int(2, 3)
    local f22_local7 = 0
    Approach_Act_Flex(arg0, arg1, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6, f22_local7)
    local f22_local8 = arg0:GetRandam_Int(5, 7)
    local f22_local9 = TARGET_ENE_0
    local f22_local10 = arg0:GetRandam_Int(0, 1)
    local f22_local11 = arg0:GetRandam_Int(90, 360)
    local f22_local12 = 2
    local f22_local13 = TARGET_SELF
    local f22_local14 = true
    local f22_local15 = true
    local f22_local16 = arg0:GetDist(TARGET_ENE_0)
    local f22_local17 = 9910
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f22_local17 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f22_local8, f22_local9, f22_local10, f22_local11, f22_local14, -1, f22_local15, f22_local17)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_Act31(arg0, arg1, arg2)
    local f23_local0 = 10
    local f23_local1 = TARGET_ENE_0
    local f23_local2 = 7
    local f23_local3 = TARGET_ENE_0
    local f23_local4 = true
    local f23_local5 = arg0:GetDist(TARGET_ENE_0)
    local f23_local6 = 0
    local f23_local7 = arg0:GetRandam_Int(1, 100)
    local f23_local8 = 9910
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f23_local8 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347025_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_FrogHuman_347025_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
    
end

RegisterTableGoal(GOAL_FrogHuman_347025_AfterAttackAct, "GOAL_FrogHuman_347025_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FrogHuman_347025_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


