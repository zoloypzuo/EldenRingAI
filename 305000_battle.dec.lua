RegisterTableGoal(GOAL_OldGeneral_305000_Battle, "OldGeneral_305000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldGeneral_305000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetTimer(10, 20)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetEventRequest()
    local f2_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 11100)
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 11130)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 11131)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 11122)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 11123)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 11135)
    arg1:SetStringIndexedNumber("c3050_DashRate", 0)
    if f2_local6 == true then
        arg1:SetStringIndexedNumber("c3050_DashRate", 100)
    end
    local f2_local12 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 11160)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 11161)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_TRUNK_COLLAPSE)
    local f2_local13 = arg1:GetEventRequest()
    if f2_local9 == true then
        if arg1:GetHpRate(TARGET_SELF) < 0.6 and f2_local6 == false then
            f2_local0[31] = 100
        elseif f2_local9 == true and f2_local11 == true and f2_local6 == false then
            f2_local0[31] = 100
        elseif f2_local6 == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 4.5 - arg1:GetMapHitRadius(TARGET_SELF)) then
                f2_local0[21] = 1
                f2_local0[15] = 10
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 70, 90, 4.5 - arg1:GetMapHitRadius(TARGET_SELF)) then
                    f2_local0[5] = 90
                end
            elseif f2_local3 >= 15 then
                f2_local0[16] = 15
                f2_local0[17] = 15
                f2_local0[26] = 10
            elseif f2_local3 >= 8 then
                f2_local0[3] = 0
                f2_local0[13] = 15
                f2_local0[16] = 15
                f2_local0[17] = 15
                f2_local0[24] = 15
                f2_local0[26] = 10
            elseif f2_local3 >= 5 then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 5
                f2_local0[13] = 15
                f2_local0[16] = 15
                f2_local0[17] = 15
                f2_local0[26] = 30
            else
                f2_local0[1] = 10
                f2_local0[3] = 10
                f2_local0[13] = 10
                f2_local0[26] = 30
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 4.5 - arg1:GetMapHitRadius(TARGET_SELF)) then
            f2_local0[21] = 1
            f2_local0[15] = 10
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 70, 90, 4.5 - arg1:GetMapHitRadius(TARGET_SELF)) then
                f2_local0[5] = 90
            else
                f2_local0[6] = 90
            end
        elseif arg1:IsTargetGuard(TARGET_ENE_0) == true and f2_local4 <= 70 then
            if 12.2 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local3 then
                f2_local0[7] = 100
            elseif 5.2 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local3 then
                f2_local0[11] = 100
            else
                f2_local0[8] = 100
            end
        elseif f2_local3 >= 15 then
            f2_local0[4] = 10
            f2_local0[7] = 40
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 40
            f2_local0[13] = 0
            f2_local0[22] = 10
        elseif f2_local3 >= 8 then
            f2_local0[1] = 5
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[7] = 40
            f2_local0[11] = 20
            f2_local0[13] = 0
            f2_local0[22] = 10
            f2_local0[25] = 20
        elseif f2_local3 >= 5 then
            f2_local0[1] = 15
            f2_local0[2] = 15
            f2_local0[3] = 5
            f2_local0[7] = 20
            f2_local0[9] = 10
            f2_local0[10] = 15
            f2_local0[11] = 10
            f2_local0[25] = 20
        else
            f2_local0[1] = 25
            f2_local0[3] = 10
            f2_local0[7] = 10
            f2_local0[9] = 20
            f2_local0[10] = 20
            f2_local0[11] = 10
            f2_local0[25] = 20
        end
    elseif f2_local10 == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 11130) == false and arg1:HasSpecialEffectId(TARGET_SELF, 11131) == false then
            f2_local0[18] = 1000
            f2_local0[26] = 1
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 11130) == true and arg1:HasSpecialEffectId(TARGET_SELF, 11131) == false and arg1:GetHpRate(TARGET_SELF) <= 0.4 then
            f2_local0[18] = 1000
            f2_local0[26] = 1
        elseif f2_local12 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 70, 90, 4.5 - arg1:GetMapHitRadius(TARGET_SELF)) then
                f2_local0[5] = 90
            elseif arg1:IsTargetGuard(TARGET_ENE_0) == true and f2_local4 <= 70 then
                if 12.2 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local3 then
                    f2_local0[7] = 100
                else
                    f2_local0[8] = 100
                end
            elseif f2_local3 >= 15 then
                f2_local0[4] = 10
                f2_local0[7] = 40
                f2_local0[8] = 0
                f2_local0[13] = 0
                f2_local0[22] = 10
            elseif f2_local3 >= 8 then
                f2_local0[1] = 5
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 10
                f2_local0[7] = 40
                f2_local0[13] = 0
                f2_local0[22] = 10
                f2_local0[25] = 20
            elseif f2_local3 >= 5 then
                f2_local0[1] = 15
                f2_local0[2] = 15
                f2_local0[3] = 5
                f2_local0[7] = 20
                f2_local0[25] = 20
            else
                f2_local0[1] = 25
                f2_local0[3] = 10
                f2_local0[7] = 10
                f2_local0[25] = 20
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 4.5 - arg1:GetMapHitRadius(TARGET_SELF)) then
            f2_local0[21] = 1
            f2_local0[15] = 10
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 70, 90, 4.5 - arg1:GetMapHitRadius(TARGET_SELF)) then
                f2_local0[5] = 90
            end
        elseif f2_local3 >= 15 then
            f2_local0[16] = 15
            f2_local0[17] = 15
            f2_local0[26] = 10
        elseif f2_local3 >= 8 then
            f2_local0[3] = 0
            f2_local0[13] = 15
            f2_local0[16] = 15
            f2_local0[17] = 15
            f2_local0[24] = 15
            f2_local0[26] = 10
        elseif f2_local3 >= 5 then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 5
            f2_local0[13] = 15
            f2_local0[16] = 15
            f2_local0[17] = 15
        else
            f2_local0[1] = 15
            f2_local0[3] = 10
            f2_local0[13] = 15
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3005, 20, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3006, 20, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3008, 8, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3009, 8, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3012, 5, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3013, 10, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3014, 10, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3015, 10, f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3024, 30, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3025, 60, f2_local0[13], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3023, 7, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3030, 50, f2_local0[16], 0)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3031, 50, f2_local0[17], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 20010, 10, f2_local0[18], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 20011, 10, f2_local0[18], 0)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6002, 25, f2_local0[25], 0)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6003, 25, f2_local0[25], 0)
    if f2_local6 == false then
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[13] = 0
        f2_local0[25] = 0
    end
    if arg1:GetTimer(10) > 1 then
        f2_local0[15] = 0
        f2_local0[16] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act13)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act18)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act26)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act31)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, OldGeneral_305000_Act47)
    local f2_local14 = REGIST_FUNC(arg1, arg2, OldGeneral_305000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local14, f2_local2)
    
end

function OldGeneral_305000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetRandam_Int(1, 100)
    local f3_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 11100)
    local f3_local2 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local4 = 7 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f3_local5 = arg0:GetStringIndexedNumber("c3050_DashRate")
    local f3_local6 = 0
    local f3_local7 = 4
    local f3_local8 = 8
    Approach_Act_Flex(arg0, arg1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8)
    local f3_local9 = 3000
    local f3_local10 = 3033
    local f3_local11 = 3034
    local f3_local12 = 3007
    local f3_local13 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local14 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local15 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local16 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local17 = 0
    local f3_local18 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f3_local9, TARGET_ENE_0, f3_local2 + 2, f3_local17, f3_local18, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f3_local10, TARGET_ENE_0, f3_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetRandam_Int(1, 100)
    local f4_local1 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 7 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f4_local4 = arg0:GetStringIndexedNumber("c3050_DashRate")
    local f4_local5 = 0
    local f4_local6 = 4
    local f4_local7 = 8
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 3002
    local f4_local9 = 3003
    local f4_local10 = 3004
    local f4_local11 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local12 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local14 = 0
    local f4_local15 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f4_local8, TARGET_ENE_0, f4_local11, f4_local14, f4_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f4_local9, TARGET_ENE_0, f4_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetRandam_Int(1, 100)
    local f5_local1 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f5_local4 = arg0:GetStringIndexedNumber("c3050_DashRate")
    local f5_local5 = 0
    local f5_local6 = 4
    local f5_local7 = 8
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 3005
    local f5_local9 = 3007
    local f5_local10 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local12 = 0
    local f5_local13 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f5_local8, TARGET_ENE_0, f5_local1 + 1.5, f5_local12, f5_local13, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f5_local9, TARGET_ENE_0, f5_local10 + 5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetRandam_Int(1, 100)
    local f6_local1 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f6_local4 = arg0:GetStringIndexedNumber("c3050_DashRate")
    local f6_local5 = 0
    local f6_local6 = 4
    local f6_local7 = 8
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 3006
    local f6_local9 = 3007
    local f6_local10 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local12 = 0
    local f6_local13 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f6_local8, TARGET_ENE_0, f6_local1 + 1.5, f6_local12, f6_local13, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f6_local9, TARGET_ENE_0, f6_local10 + 5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act05(arg0, arg1, arg2)
    local f7_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f7_local3 = arg0:GetStringIndexedNumber("c3050_DashRate")
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3008
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act06(arg0, arg1, arg2)
    local f8_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f8_local3 = arg0:GetStringIndexedNumber("c3050_DashRate")
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3009
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 120
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetRandam_Int(1, 100)
    local f9_local1 = 15.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 15.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 15.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f9_local4 = arg0:GetStringIndexedNumber("c3050_DashRate")
    local f9_local5 = 0
    local f9_local6 = 4
    local f9_local7 = 8
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    local f9_local8 = 3010
    local f9_local9 = 3039
    local f9_local10 = 3011
    local f9_local11 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local13 = 0
    local f9_local14 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f9_local9, TARGET_ENE_0, DIST_None)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f9_local10, TARGET_ENE_0, f9_local11 + 5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act08(arg0, arg1, arg2)
    local f10_local0 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f10_local3 = arg0:GetStringIndexedNumber("c3050_DashRate")
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3012
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 0
    local f10_local10 = 90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act09(arg0, arg1, arg2)
    local f11_local0 = 6.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 6.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 6.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f11_local3 = arg0:GetStringIndexedNumber("c3050_DashRate")
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 8
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3013
    local f11_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local9 = 0
    local f11_local10 = 90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act10(arg0, arg1, arg2)
    local f12_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f12_local3 = arg0:GetStringIndexedNumber("c3050_DashRate")
    local f12_local4 = 0
    local f12_local5 = 4
    local f12_local6 = 8
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3014
    local f12_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 0
    local f12_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act11(arg0, arg1, arg2)
    local f13_local0 = 12.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 12.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 12.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f13_local3 = arg0:GetStringIndexedNumber("c3050_DashRate")
    local f13_local4 = 0
    local f13_local5 = 4
    local f13_local6 = 8
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3015
    local f13_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 0
    local f13_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, DIST_None, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act13(arg0, arg1, arg2)
    local f15_local0 = arg0:GetRandam_Int(1, 100)
    local f15_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 11100)
    local f15_local2 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local3 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local4 = 30 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f15_local5 = arg0:GetStringIndexedNumber("c3050_DashRate")
    local f15_local6 = 0
    local f15_local7 = 4
    local f15_local8 = 8
    local f15_local9 = 3025
    local f15_local10 = 3026
    local f15_local11 = 3027
    local f15_local12 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local13 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local14 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local15 = 0
    local f15_local16 = 180
    arg0:SetTimer(3, 30)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f15_local9, TARGET_ENE_0, DIST_None)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local10, TARGET_ENE_0, DIST_None)
    if f15_local1 == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f15_local11, TARGET_ENE_0, DIST_None)
    end
    arg0:SetTimer(FINISHER_TIME_SLOT, arg0:GetRandam_Int(30, 60))
    if arg0:IsFinishTimer(1) == true and arg0:GetStringIndexedNumber("c3050flag_summon01") == 0 then
        arg0:SetTimer(1, arg0:GetRandam_Int(5, 15))
        arg0:SetStringIndexedNumber("c3050flag_summon01", 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act15(arg0, arg1, arg2)
    local f16_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f16_local3 = arg0:GetStringIndexedNumber("c3050_DashRate")
    local f16_local4 = 0
    local f16_local5 = 4
    local f16_local6 = 8
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 3023
    local f16_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local9 = 0
    local f16_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f16_local7, TARGET_ENE_0, f16_local8, f16_local9, f16_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act16(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 3030
    local f17_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local3 = 2
    local f17_local4 = 50
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f17_local1, TARGET_ENE_0, f17_local2, f17_local3, f17_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act17(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 3031
    local f18_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local3 = 2
    local f18_local4 = 50
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f18_local1, TARGET_ENE_0, f18_local2, f18_local3, f18_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act18(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 20010
    local f19_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local3 = 0
    local f19_local4 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 11130) == true then
        local f19_local5 = 20011
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f19_local5, TARGET_ENE_0, f19_local2, f19_local3, f19_local4, 0, 0)
    else
        local f19_local5 = 20010
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f19_local5, TARGET_ENE_0, f19_local2, f19_local3, f19_local4, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_ActCP1(arg0, arg1, arg2)
    local f20_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f20_local3 = 100
    local f20_local4 = 0
    local f20_local5 = 4
    local f20_local6 = 8
    Approach_Act_Flex(arg0, arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local f20_local7 = 3000
    local f20_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local9 = 0
    local f20_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f20_local7, TARGET_ENE_0, f20_local8, f20_local9, f20_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_ActCP2(arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Int(1, 100)
    local f21_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f21_local4 = 100
    local f21_local5 = 0
    local f21_local6 = 4
    local f21_local7 = 8
    Approach_Act_Flex(arg0, arg1, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6, f21_local7)
    local f21_local8 = 3001
    local f21_local9 = 3002
    local f21_local10 = 3003
    local f21_local11 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local12 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local14 = 0
    local f21_local15 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f21_local8, TARGET_ENE_0, f21_local11, f21_local14, f21_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f21_local9, TARGET_ENE_0, f21_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f21_local10, TARGET_ENE_0, f21_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act22(arg0, arg1, arg2)
    local f23_local0 = arg0:GetDist(TARGET_ENE_0)
    local f23_local1 = 6
    local f23_local2 = 20
    local f23_local3 = true
    local f23_local4 = arg0:GetRandam_Int(1, 100)
    local f23_local5 = -1
    if arg0:GetStringIndexedNumber("c3010_DashRate") >= 100 then
        f23_local3 = false
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f23_local1, TARGET_ENE_0, f23_local3, f23_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act23(arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = 10
    local f24_local2 = 20
    local f24_local3 = 100
    local f24_local4 = true
    local f24_local5 = arg0:GetRandam_Int(1, 100)
    local f24_local6 = -1
    if arg0:GetStringIndexedNumber("c3010_DashRate") >= 100 then
        f24_local4 = false
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act24(arg0, arg1, arg2)
    local f25_local0 = arg0:GetRandam_Int(1, 100)
    local f25_local1 = -1
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(2, 4), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f25_local1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act25(arg0, arg1, arg2)
    local f26_local0 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local f26_local1 = arg0:GetRandam_Int(1, 100)
    local f26_local2 = -1
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, 1, TARGET_ENE_0, 5, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act26(arg0, arg1, arg2)
    local f27_local0 = arg0:GetDist(TARGET_ENE_0)
    local f27_local1 = 9
    local f27_local2 = 20
    local f27_local3 = false
    local f27_local4 = arg0:GetRandam_Int(1, 100)
    local f27_local5 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f27_local1, TARGET_ENE_0, f27_local3, f27_local5)
    if f27_local0 >= 12 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, arg0:GetRandam_Float(9, 11.5), TARGET_ENE_0, true, 9910)
    elseif f27_local0 <= 6 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 9, TARGET_ENE_0, true, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act31(arg0, arg1, arg2)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_ActCP3(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldGeneral_305000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_OldGeneral_305000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f36_local0 = arg1:GetDist(TARGET_ENE_0)
    local f36_local1 = arg1:GetDist(TARGET_FRI_0)
    local f36_local2 = arg1:GetRandam_Int(1, 100)
    local f36_local3 = arg1:GetPrevTargetState()
    local f36_local4 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    local f36_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 11100)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(11160) then
            local f36_local6 = arg1:GetDist(TARGET_ENE_0)
            local f36_local7 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                if f36_local6 <= 5 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 999, 180, 180, 180, 180)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif f36_local6 <= 5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(11161) then
            local f36_local6 = arg1:GetDist(TARGET_ENE_0)
            local f36_local7 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                if f36_local6 <= 5 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 999, 180, 180, 180, 180)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif f36_local6 <= 5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptType(0) == PLAN_SP_EFFECT_TRUNK_COLLAPSE then
            if f36_local5 == true and arg1:IsFinishTimer(3) == true and f36_local0 <= 6.2 - arg1:GetMapHitRadius(TARGET_SELF) then
                arg2:ClearSubGoal()
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 70, 90, 8) then
                    OldGeneral_305000_Act05(arg1, arg2)
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 70, 90, 8) then
                    OldGeneral_305000_Act06(arg1, arg2)
                else
                    OldGeneral_305000_Act09(arg1, arg2)
                end
                return true
            elseif arg1:IsFinishTimer(3) == true and f36_local0 <= 5.2 - arg1:GetMapHitRadius(TARGET_SELF) then
                arg2:ClearSubGoal()
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 140, 90, 8) then
                    OldGeneral_305000_Act05(arg1, arg2)
                else
                    OldGeneral_305000_Act08(arg1, arg2)
                end
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(5026) then
            if arg1:IsTargetGuard(TARGET_ENE_0) == true and f36_local0 <= 2.5 - arg1:GetMapHitRadius(TARGET_SELF) + 0.5 and f36_local2 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3001, TARGET_ENE_0, 2.5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 90, 6.2 - arg1:GetMapHitRadius(TARGET_SELF) + 1) and f36_local5 == true and f36_local2 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3016, TARGET_ENE_0, 6.2 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(5027) then
            if arg1:IsTargetGuard(TARGET_ENE_0) == true and f36_local2 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3004, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 140, 90, 4.5 - arg1:GetMapHitRadius(TARGET_SELF) + 2.5) and f36_local5 == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3017, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 90, 5.5 - arg1:GetMapHitRadius(TARGET_SELF) + 1.5) and f36_local2 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3034, TARGET_ENE_0, 10 - arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3007, TARGET_ENE_0, 4.5 - arg1:GetMapHitRadius(TARGET_SELF) + 5, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3019, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
            end
            return true
        end
        if arg1:GetSpecialEffectActivateInterruptId(5028) and f36_local0 <= 30 - arg1:GetMapHitRadius(TARGET_SELF) then
            arg2:ClearSubGoal()
            if f36_local0 <= 6.2 - arg1:GetMapHitRadius(TARGET_SELF) + 1 and f36_local2 <= 50 then
                OldGeneral_305000_Act09(arg1, arg2)
            elseif f36_local0 <= 12.2 - arg1:GetMapHitRadius(TARGET_SELF) + 1.5 and f36_local2 <= 70 then
                OldGeneral_305000_Act11(arg1, arg2)
            else
                OldGeneral_305000_Act07(arg1, arg2)
            end
            return true
        end
        if arg1:GetSpecialEffectActivateInterruptId(5029) and f36_local0 <= 8.3 - arg1:GetMapHitRadius(TARGET_SELF) + 2 then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3018, TARGET_ENE_0, 5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
            return true
        end
        if arg1:GetSpecialEffectActivateInterruptId(5033) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        arg1:SetStringIndexedNumber("c3010_DashRate", 100)
        if f36_local5 == true and f36_local2 <= 80 then
            if 12.2 - arg1:GetMapHitRadius(TARGET_SELF) <= f36_local0 then
                OldGeneral_305000_Act07(arg1, arg2)
            else
                OldGeneral_305000_Act11(arg1, arg2)
            end
        elseif f36_local2 <= 70 then
            OldGeneral_305000_Act04(arg1, arg2)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:GetHpRate(TARGET_SELF) < 0.85 and arg1:GetStringIndexedNumber("c3050flag_finisher") == 0 then
        arg2:ClearSubGoal()
        OldGeneral_305000_Act13(arg1, arg2)
        arg1:SetStringIndexedNumber("c3050flag_finisher", 1)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_OldGeneral_305000_AfterAttackAct, "OldGeneral_305000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldGeneral_305000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


