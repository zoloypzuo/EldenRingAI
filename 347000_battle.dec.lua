RegisterTableGoal(GOAL_FrogHuman_347000_Battle, "GOAL_FrogHuman_347000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FrogHuman_347000_Battle, true)
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15610) then
            f2_local0[8] = 100
        elseif f2_local3 >= 4 then
            f2_local0[14] = 50
            f2_local0[30] = 40
            f2_local0[22] = 10
        else
            f2_local0[2] = 30
            f2_local0[3] = 30
            f2_local0[30] = 20
            f2_local0[20] = 20
        end
    else
        if f2_local5 == 1 then
            local f2_local6 = arg1:GetTeamOrder(ORDER_TYPE_Role)
            if f2_local6 == ROLE_TYPE_Torimaki then
                f2_local6 = 0
                if arg1:HasSpecialEffectId(TARGET_SELF, 15608) then
                    f2_local6 = 1
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 15610) then
                    f2_local0[8] = 100
                elseif f2_local3 >= 6 then
                    f2_local0[8] = 20
                    f2_local0[13] = 10
                    f2_local0[14] = 20
                    f2_local0[22] = 30
                    f2_local0[30] = 20
                    f2_local0[19] = 20 * f2_local6
                else
                    f2_local0[14] = 40
                    f2_local0[30] = 20
                    f2_local0[20] = 40
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 180, 4) then
                    f2_local0[14] = 40
                    f2_local0[21] = 60
                elseif f2_local3 >= 8 then
                    f2_local0[13] = 30
                    f2_local0[14] = 70
                    f2_local0[22] = 0
                elseif f2_local3 >= 5 then
                    f2_local0[8] = 20
                    f2_local0[10] = 0
                    f2_local0[13] = 20
                    f2_local0[14] = 60
                    f2_local0[22] = 0
                elseif f2_local3 >= 2 then
                    f2_local0[1] = 20
                    f2_local0[10] = 0
                    f2_local0[13] = 40
                    f2_local0[14] = 40
                else
                    f2_local0[1] = 10
                    f2_local0[4] = 20
                    f2_local0[7] = 0
                    f2_local0[9] = 20
                    f2_local0[10] = 0
                    f2_local0[13] = 50
                end
            else
                local f2_local6 = arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 180, 4)
                if f2_local6 then
                    f2_local6 = 1
                    if arg1:HasSpecialEffectId(TARGET_SELF, 15607) then
                        f2_local6 = 0
                    end
                    f2_local0[14] = 40 * f2_local6
                    f2_local0[21] = 60
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
                    if f2_local3 >= 8 then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 15610) then
                            f2_local0[8] = 100
                        else
                            f2_local0[8] = 20
                            f2_local0[13] = 10 * f2_local6
                            f2_local0[14] = 20 * f2_local6
                            f2_local0[22] = 50
                            f2_local0[15] = 80 * f2_local8
                            f2_local0[18] = 80 * f2_local7
                            f2_local0[19] = 0 * f2_local7
                        end
                    elseif f2_local3 >= 5 then
                        f2_local0[8] = 10
                        f2_local0[10] = 0
                        f2_local0[13] = 20 * f2_local6
                        f2_local0[14] = 50 * f2_local6
                        f2_local0[22] = 20
                        f2_local0[15] = 60 * f2_local8
                        f2_local0[18] = 60 * f2_local7
                        f2_local0[19] = 10 * f2_local7
                    elseif f2_local3 >= 2 then
                        f2_local0[1] = 35
                        f2_local0[10] = 15
                        f2_local0[13] = 10 * f2_local6
                        f2_local0[14] = 40 * f2_local6
                        f2_local0[18] = 0 * f2_local7
                        f2_local0[19] = 20 * f2_local7
                    else
                        f2_local0[1] = 30
                        f2_local0[4] = 20
                        f2_local0[7] = 20
                        f2_local0[9] = 10
                        f2_local0[10] = 20
                    end
                end
            end
        end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 180, 4) then
                f2_local0[14] = 40
                f2_local0[21] = 60
            elseif f2_local3 >= 8 then
                f2_local0[13] = 30
                f2_local0[14] = 70
                f2_local0[22] = 0
            elseif f2_local3 >= 5 then
                f2_local0[8] = 20
                f2_local0[10] = 0
                f2_local0[13] = 20
                f2_local0[14] = 60
                f2_local0[22] = 0
            elseif f2_local3 >= 2 then
                f2_local0[1] = 20
                f2_local0[10] = 0
                f2_local0[13] = 40
                f2_local0[14] = 40
            else
                f2_local0[1] = 10
                f2_local0[4] = 20
                f2_local0[7] = 0
                f2_local0[9] = 20
                f2_local0[10] = 0
                f2_local0[13] = 50
            end
        else
            local f2_local6 = arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 180, 4)
            if f2_local6 then
                f2_local6 = 1
                if arg1:HasSpecialEffectId(TARGET_SELF, 15607) then
                    f2_local6 = 0
                end
                f2_local0[14] = 40 * f2_local6
                f2_local0[21] = 60
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
                if f2_local3 >= 8 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 15610) then
                        f2_local0[8] = 100
                    else
                        f2_local0[8] = 20
                        f2_local0[13] = 10 * f2_local6
                        f2_local0[14] = 20 * f2_local6
                        f2_local0[22] = 50
                        f2_local0[15] = 80 * f2_local8
                        f2_local0[18] = 80 * f2_local7
                        f2_local0[19] = 0 * f2_local7
                    end
                elseif f2_local3 >= 5 then
                    f2_local0[8] = 10
                    f2_local0[10] = 0
                    f2_local0[13] = 20 * f2_local6
                    f2_local0[14] = 50 * f2_local6
                    f2_local0[22] = 20
                    f2_local0[15] = 60 * f2_local8
                    f2_local0[18] = 60 * f2_local7
                    f2_local0[19] = 10 * f2_local7
                elseif f2_local3 >= 2 then
                    f2_local0[1] = 35
                    f2_local0[10] = 15
                    f2_local0[13] = 10 * f2_local6
                    f2_local0[14] = 40 * f2_local6
                    f2_local0[18] = 0 * f2_local7
                    f2_local0[19] = 20 * f2_local7
                else
                    f2_local0[1] = 30
                    f2_local0[4] = 20
                    f2_local0[7] = 20
                    f2_local0[9] = 10
                    f2_local0[10] = 20
                end
            end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 15611) then
        f2_local0[30] = 0
        f2_local0[31] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[2], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[2], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3006, 8, f2_local0[2], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3007, 8, f2_local0[2], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[3], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[3], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3006, 8, f2_local0[3], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3007, 8, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3010, 7, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3010, 7, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3010, 7, f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[7], 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 15610) then
        f2_local0[8] = SetCoolTime(arg1, arg2, 3020, 0, f2_local0[8], 0)
    else
        f2_local0[8] = SetCoolTime(arg1, arg2, 3020, 40, f2_local0[8], 0)
    end
    f2_local0[9] = SetCoolTime(arg1, arg2, 3010, 7, f2_local0[9], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[10], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3006, 8, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3007, 8, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 20013, 15, f2_local0[15], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 20011, 25, f2_local0[18], 0)
    f2_local0[19] = SetCoolTime(arg1, arg2, 20012, 15, f2_local0[19], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act10)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act14)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act17)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act15)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act22)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, FrogHuman_347000_Act31)
    local f2_local6 = REGIST_FUNC(arg1, arg2, FrogHuman_347000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function FrogHuman_347000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 100
    local f3_local3 = 999
    local f3_local4 = 0
    local f3_local5 = 70
    local f3_local6 = 6
    local f3_local7 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f3_local5 = 0
    end
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 3000
    local f3_local9 = 3001
    local f3_local10 = 3002
    local f3_local11 = 5
    local f3_local12 = 5
    local f3_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local14 = 0
    local f3_local15 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local8, TARGET_ENE_0, f3_local11, f3_local14, f3_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local9, TARGET_ENE_0, f3_local12, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local10, TARGET_ENE_0, f3_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act02(arg0, arg1, arg2)
    local f4_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 100
    local f4_local2 = 999
    local f4_local3 = 0
    local f4_local4 = 70
    local f4_local5 = 6
    local f4_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f4_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3003
    local f4_local8 = 2.5
    local f4_local9 = 0
    local f4_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act03(arg0, arg1, arg2)
    local f5_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 100
    local f5_local2 = 999
    local f5_local3 = 0
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
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act04(arg0, arg1, arg2)
    local f6_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 100
    local f6_local2 = 999
    local f6_local3 = 0
    local f6_local4 = 70
    local f6_local5 = 4
    local f6_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f6_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3010
    local f6_local8 = 3005
    local f6_local9 = 2.3
    local f6_local10 = 7
    local f6_local11 = 0
    local f6_local12 = 180
    local f6_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local0, f6_local11, f6_local12, 0, 0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 15607) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local8, TARGET_ENE_0, f6_local9, 90)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act05(arg0, arg1, arg2)
    local f7_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 100
    local f7_local2 = 999
    local f7_local3 = 0
    local f7_local4 = 70
    local f7_local5 = 4
    local f7_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f7_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3010
    local f7_local8 = 3003
    local f7_local9 = 2.3
    local f7_local10 = 7
    local f7_local11 = 0
    local f7_local12 = 180
    local f7_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local0, f7_local11, f7_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local8, TARGET_ENE_0, f7_local9, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act06(arg0, arg1, arg2)
    local f8_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 100
    local f8_local2 = 999
    local f8_local3 = 0
    local f8_local4 = 70
    local f8_local5 = 4
    local f8_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f8_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3010
    local f8_local8 = 3004
    local f8_local9 = 2.3
    local f8_local10 = 7
    local f8_local11 = 0
    local f8_local12 = 180
    local f8_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local0, f8_local11, f8_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local8, TARGET_ENE_0, f8_local9, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act07(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) == false then
        local f9_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f9_local1 = 100
        local f9_local2 = 999
        local f9_local3 = 0
        local f9_local4 = 0
        local f9_local5 = 4
        local f9_local6 = 8
        Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
        local f9_local7 = 3011
        local f9_local8 = 2.5
        local f9_local9 = 0
        local f9_local10 = 180
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
        f9_local4 = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act08(arg0, arg1, arg2)
    local f10_local0 = 3020
    local f10_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 0
    local f10_local3 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local1, f10_local2, f10_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act09(arg0, arg1, arg2)
    local f11_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 100
    local f11_local2 = 999
    local f11_local3 = 0
    local f11_local4 = 70
    local f11_local5 = 4
    local f11_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f11_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3010
    local f11_local8 = 3020
    local f11_local9 = 7
    local f11_local10 = 7
    local f11_local11 = 0
    local f11_local12 = 180
    local f11_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local0, f11_local11, f11_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local8, TARGET_ENE_0, f11_local9, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act10(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) == false then
        local f12_local0 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF)
        local f12_local1 = 100
        local f12_local2 = 999
        local f12_local3 = 0
        local f12_local4 = 70
        local f12_local5 = 4
        local f12_local6 = 8
        if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
            f12_local4 = 0
        end
        Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
        local f12_local7 = 3000
        local f12_local8 = 3001
        local f12_local9 = 3011
        local f12_local10 = 5
        local f12_local11 = 4
        local f12_local12 = 5
        local f12_local13 = 0
        local f12_local14 = 180
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local10, f12_local13, f12_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local8, TARGET_ENE_0, f12_local11, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f12_local9, TARGET_ENE_0, f12_local12, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function FrogHuman_347000_Act12(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) == false then
        local f13_local0 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF)
        local f13_local1 = 100
        local f13_local2 = 999
        local f13_local3 = 0
        local f13_local4 = 70
        local f13_local5 = 4
        local f13_local6 = 8
        if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
            f13_local4 = 0
        end
        Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
        local f13_local7 = 3000
        local f13_local8 = 3001
        local f13_local9 = 3011
        local f13_local10 = 3005
        local f13_local11 = 2
        local f13_local12 = 3
        local f13_local13 = 7
        local f13_local14 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f13_local15 = 0
        local f13_local16 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local11, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f13_local8, TARGET_ENE_0, f13_local12, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f13_local9, TARGET_ENE_0, f13_local12, 0, 0, 0, 0)
        if arg0:HasSpecialEffectId(TARGET_SELF, 15607) == false then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f13_local10, TARGET_ENE_0, f13_local14, 0, 0)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function FrogHuman_347000_Act13(arg0, arg1, arg2)
    local f14_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 100
    local f14_local2 = 999
    local f14_local3 = 0
    local f14_local4 = 70
    local f14_local5 = 4
    local f14_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f14_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3005
    local f14_local8 = 2.5
    local f14_local9 = 0
    local f14_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act14(arg0, arg1, arg2)
    local f15_local0 = 15
    local f15_local1 = 100
    local f15_local2 = 999
    local f15_local3 = 0
    local f15_local4 = 70
    local f15_local5 = 4
    local f15_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f15_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 3006
    local f15_local8 = 5
    local f15_local9 = 0
    local f15_local10 = 180
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        f15_local7 = 3007
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    else
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act15(arg0, arg1, arg2)
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

function FrogHuman_347000_Act16(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 0
    local f17_local2 = 0
    local f17_local3 = 100
    local f17_local4 = arg0:GetRandam_Int(1, 100)
    local f17_local5 = -1
    local f17_local6 = 9910
    if f17_local4 <= f17_local3 then
        f17_local6 = 9910
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f17_local6 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_Guard, 15, 30, TARGET_ENE_0, resultTypeIfGuardSuccess, true)
    
end

function FrogHuman_347000_Act17(arg0, arg1, arg2)
    local f18_local0 = arg0:GetRandam_Int(1, 100)
    local f18_local1 = 100
    local f18_local2 = -1
    if f18_local0 <= f18_local1 then
        f18_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f18_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act18(arg0, arg1, arg2)
    local f19_local0 = 5
    local f19_local1 = 20011
    local f19_local2 = TARGET_ENE_0
    local f19_local3 = 10
    local f19_local4 = 0
    local f19_local5 = 0
    local f19_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f19_local0, f19_local1, f19_local2, f19_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act19(arg0, arg1, arg2)
    local f20_local0 = 5
    local f20_local1 = 20012
    local f20_local2 = TARGET_ENE_0
    local f20_local3 = 10
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f20_local0, f20_local1, f20_local2, f20_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act20(arg0, arg1, arg2)
    local f21_local0 = 5
    local f21_local1 = TARGET_ENE_0
    local f21_local2 = 5
    local f21_local3 = TARGET_ENE_0
    local f21_local4 = true
    local f21_local5 = arg0:GetDist(TARGET_ENE_0)
    local f21_local6 = 0
    local f21_local7 = arg0:GetRandam_Int(1, 100)
    local f21_local8 = -1
    if f21_local7 <= f21_local6 then
        f21_local8 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f21_local0, f21_local1, f21_local2, f21_local3, f21_local4, f21_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act22(arg0, arg1, arg2)
    local f23_local0 = arg0:GetRandam_Int(1.5, 3)
    local f23_local1 = 100
    local f23_local2 = 999
    local f23_local3 = 0
    local f23_local4 = 100
    local f23_local5 = 4
    local f23_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f23_local4 = 0
    end
    Approach_Act_Flex(arg0, arg1, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6)
    local f23_local7 = arg0:GetDist(TARGET_ENE_0)
    local f23_local8 = true
    local f23_local9 = arg0:GetRandam_Int(2, 3.5)
    local f23_local10 = arg0:GetRandam_Int(0, 1)
    local f23_local11 = arg0:GetRandam_Int(90, 360)
    local f23_local12 = 9910
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f23_local12 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f23_local9, f23_local7, f23_local10, f23_local11, f23_local8, f23_local12)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act30(arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = arg0:GetRandam_Int(5, 6)
    local f24_local2 = 999
    local f24_local3 = 0
    local f24_local4 = 0
    local f24_local5 = 90
    local f24_local6 = arg0:GetRandam_Int(2, 3)
    local f24_local7 = 0
    Approach_Act_Flex(arg0, arg1, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6, f24_local7)
    local f24_local8 = arg0:GetRandam_Int(5, 7)
    local f24_local9 = TARGET_ENE_0
    local f24_local10 = arg0:GetRandam_Int(0, 1)
    local f24_local11 = arg0:GetRandam_Int(90, 360)
    local f24_local12 = 2
    local f24_local13 = TARGET_SELF
    local f24_local14 = true
    local f24_local15 = true
    local f24_local16 = arg0:GetDist(TARGET_ENE_0)
    local f24_local17 = 100
    local f24_local18 = arg0:GetRandam_Int(1, 100)
    local f24_local19 = 9910
    if arg0:HasSpecialEffectId(TARGET_SELF, 15611) then
        f24_local19 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local8, f24_local9, f24_local10, f24_local11, f24_local14, -1, f24_local15, f24_local19)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_Act31(arg0, arg1, arg2)
    local f25_local0 = 10
    local f25_local1 = TARGET_ENE_0
    local f25_local2 = 7
    local f25_local3 = TARGET_ENE_0
    local f25_local4 = true
    local f25_local5 = arg0:GetDist(TARGET_ENE_0)
    local f25_local6 = 0
    local f25_local7 = arg0:GetRandam_Int(1, 100)
    local f25_local8 = -1
    if f25_local7 <= f25_local6 then
        f25_local8 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f25_local0, f25_local1, f25_local2, f25_local3, f25_local4, f25_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FrogHuman_347000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_FrogHuman_347000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f29_local0 = arg1:GetDist(TARGET_ENE_0)
    local f29_local1 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15607) == false then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
                if arg1:GetDist(TARGET_ENE_0) <= 4.5 and f29_local1 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 99, 0, 0, 0)
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
                local f29_local2 = arg1:GetDist(TARGET_ENE_0)
                if f29_local2 <= 4.5 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 99, 0, 0, 0)
                    return true
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
                if arg1:GetDist(TARGET_ENE_0) <= 4.5 and f29_local1 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 99, 0, 0, 0)
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
                local f29_local2 = arg1:GetDist(TARGET_ENE_0)
                if f29_local2 <= 4.5 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 99, 0, 0, 0)
                    return true
                end
            end
            return false
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            local f29_local2 = arg1:GetDist(TARGET_ENE_0)
            if f29_local2 <= 3 or f29_local1 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 5, 0, 0, 180)
                return true
            end
            return false
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_FrogHuman_347000_AfterAttackAct, "GOAL_FrogHuman_347000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FrogHuman_347000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


