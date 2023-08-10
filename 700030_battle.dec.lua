RegisterTableGoal(GOAL_BuddyStandardSword700030_Battle, "BuddyStandardSword700030_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BuddyStandardSword700030_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
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
    arg1:DeleteObserve(1)
    arg1:AddObserveSpecialEffectAttribute(TARGET_HOSTPLAYER, PLAN_SP_EFFECT_BUDDY_ORDER_TRIGGER)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10315)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10317)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10318)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10319)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10312) and arg1:HasSpecialEffectId(TARGET_SELF, 10317) then
        f2_local0[8] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10312) and arg1:HasSpecialEffectId(TARGET_SELF, 10318) then
        f2_local0[8] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10312) and f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 6 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[7] = 300
            f2_local0[15] = 300
            f2_local0[16] = 400
            if arg1:HasSpecialEffectId(TARGET_SELF, 10313) then

            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10314) then
                f2_local0[5] = 0
                f2_local0[6] = 0
            end
        elseif f2_local3 >= 3 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[15] = 600
            f2_local0[16] = 400
            if arg1:HasSpecialEffectId(TARGET_SELF, 10313) then

            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10314) then
                f2_local0[5] = 0
                f2_local0[6] = 0
            end
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[15] = 900
            f2_local0[16] = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 10313) then

            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10314) then
                f2_local0[5] = 50
                f2_local0[6] = 50
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10312) and f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 6 then
            f2_local0[1] = 50
            f2_local0[2] = 50
            f2_local0[3] = 0
            f2_local0[7] = 300
            f2_local0[15] = 100
            f2_local0[16] = 400
            if arg1:HasSpecialEffectId(TARGET_SELF, 10313) then

            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10314) then
                f2_local0[5] = 0
                f2_local0[6] = 0
            end
        elseif f2_local3 >= 3 then
            f2_local0[1] = 50
            f2_local0[2] = 100
            f2_local0[3] = 50
            f2_local0[7] = 100
            f2_local0[15] = 400
            f2_local0[16] = 300
            if arg1:HasSpecialEffectId(TARGET_SELF, 10313) then

            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10314) then
                f2_local0[5] = 100
                f2_local0[6] = 0
            end
        else
            f2_local0[1] = 100
            f2_local0[2] = 0
            f2_local0[3] = 100
            f2_local0[15] = 700
            f2_local0[16] = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 10313) then

            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10314) then
                f2_local0[5] = 100
                f2_local0[6] = 0
            end
        end
    elseif InsideRange(arg1, arg2, 180, 120, 0, 999) then
        if f2_local3 >= 3 then
            f2_local0[20] = 100
        else
            if arg1:HasSpecialEffectId(TARGET_SELF, 10314) then
                f2_local0[6] = 900
            end
            f2_local0[20] = 100
        end
    elseif f2_local3 >= 6 then
        f2_local0[1] = 300
        f2_local0[2] = 500
        f2_local0[3] = 100
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
        if arg1:HasSpecialEffectId(TARGET_SELF, 10313) then

        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10314) then
            f2_local0[5] = 100
            f2_local0[6] = 0
        end
    elseif f2_local3 >= 3 then
        f2_local0[1] = 400
        f2_local0[2] = 100
        f2_local0[3] = 300
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
        if arg1:HasSpecialEffectId(TARGET_SELF, 10313) then

        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10314) then
            f2_local0[5] = 200
            f2_local0[6] = 0
        end
    else
        f2_local0[1] = 500
        f2_local0[2] = 0
        f2_local0[3] = 200
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[15] = 100
        f2_local0[16] = 0
        if arg1:HasSpecialEffectId(TARGET_SELF, 10313) then

        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10314) then
            f2_local0[5] = 400
            f2_local0[6] = 100
        end
    end
    if 1.5 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local3 then
        f2_local0[6] = 0
    end
    if arg1:IsFinishTimer(0) == false then
        f2_local0[7] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3013, 8, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3016, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3017, 8, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3027, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3028, 8, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3023, 30, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3025, 30, f2_local0[7], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, BuddyStandardSword700030_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, BuddyStandardSword700030_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, BuddyStandardSword700030_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, BuddyStandardSword700030_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, BuddyStandardSword700030_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, BuddyStandardSword700030_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, BuddyStandardSword700030_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, BuddyStandardSword700030_Act08)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, BuddyStandardSword700030_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, BuddyStandardSword700030_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, BuddyStandardSword700030_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, BuddyStandardSword700030_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, BuddyStandardSword700030_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, BuddyStandardSword700030_Act20)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, BuddyStandardSword700030_Act40)
    f2_local1[50] = REGIST_FUNC(arg1, arg2, BuddyStandardSword700030_Act50)
    local f2_local6 = REGIST_FUNC(arg1, arg2, BuddyStandardSword700030_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function BuddyStandardSword700030_Act01(arg0, arg1, arg2)
    local f3_local0 = 2.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 2.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 2.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = 50
    local f3_local4 = 50
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3013
    local f3_local8 = 3014
    local f3_local9 = 3015
    local f3_local10 = 1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local13 = 0
    local f3_local14 = 0
    local f3_local15 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local13, f3_local14, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, f3_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local9, TARGET_ENE_0, f3_local12, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardSword700030_Act02(arg0, arg1, arg2)
    local f4_local0 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 50
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    local f4_local7 = 3016
    local f4_local8 = 3018
    local f4_local9 = 3019
    local f4_local10 = ATT3016_DIST_MAX
    local f4_local11 = 0
    local f4_local12 = 0
    local f4_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, 999, f4_local11, 0, 0, 0)
    f4_local13:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f4_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local8, TARGET_ENE_0, 999, 0, 0)
    f4_local13:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f4_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local8, TARGET_ENE_0, 999, 0, 0)
    f4_local13:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f4_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local8, TARGET_ENE_0, 999, 0, 0)
    f4_local13:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f4_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local8, TARGET_ENE_0, 999, 0, 0)
    f4_local13:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f4_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local9, TARGET_ENE_0, 999, 0, 0)
    f4_local13:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local9, TARGET_ENE_0, f4_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardSword700030_Act03(arg0, arg1, arg2)
    local f5_local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 50
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3017
    local f5_local8 = ATT3003_DIST_MAX
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardSword700030_Act04(arg0, arg1, arg2)
    local f6_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 50
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3005
    local f6_local8 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardSword700030_Act05(arg0, arg1, arg2)
    local f7_local0 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local1 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 50
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3027
    local f7_local8 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardSword700030_Act06(arg0, arg1, arg2)
    local f8_local0 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    local f8_local7 = 3028
    local f8_local8 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local7, TARGET_ENE_0, 999, f8_local9, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardSword700030_Act07(arg0, arg1, arg2)
    local f9_local0 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    local f9_local7 = 3023
    local f9_local8 = 3016
    local f9_local9 = 3018
    local f9_local10 = 3019
    local f9_local11 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local12 = 0
    local f9_local13 = 0
    arg0:SetTimer(5, 30)
    local f9_local14 = arg1:AddSubGoal(GOAL_COMMON_Turn, 0.3, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    f9_local14:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f9_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local7, TARGET_ENE_0, 999, f9_local12, 0, 0, 0)
    f9_local14:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f9_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f9_local8, TARGET_ENE_0, 999, 0, 0)
    f9_local14:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f9_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f9_local9, TARGET_ENE_0, 999, 0, 0)
    f9_local14:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f9_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f9_local9, TARGET_ENE_0, 999, 0, 0)
    f9_local14:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f9_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f9_local9, TARGET_ENE_0, 999, 0, 0)
    f9_local14:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f9_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f9_local9, TARGET_ENE_0, 999, 0, 0)
    f9_local14:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f9_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f9_local9, TARGET_ENE_0, 999, 0, 0)
    f9_local14:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f9_local10, TARGET_ENE_0, f9_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardSword700030_Act08(arg0, arg1, arg2)
    local f10_local0 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    local f10_local7 = 3025
    local f10_local8 = 3016
    local f10_local9 = 3018
    local f10_local10 = 3019
    local f10_local11 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local12 = 0
    local f10_local13 = 0
    arg0:SetTimer(0, 25)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 0.3, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    if arg0:HasSpecialEffectId(TARGET_SELF, 10317) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local7, TARGET_ENE_0, 999, f10_local12, 0, 0, 0)
    end
    local f10_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f10_local8, TARGET_ENE_0, 999, 0, 0)
    f10_local14:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f10_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f10_local9, TARGET_ENE_0, 999, 0, 0)
    f10_local14:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f10_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f10_local9, TARGET_ENE_0, 999, 0, 0)
    f10_local14:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f10_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f10_local9, TARGET_ENE_0, 999, 0, 0)
    f10_local14:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f10_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f10_local9, TARGET_ENE_0, 999, 0, 0)
    f10_local14:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f10_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f10_local9, TARGET_ENE_0, 999, 0, 0)
    f10_local14:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f10_local10, TARGET_ENE_0, f10_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BuddyStandardSword700030_Act15(arg0, arg1, arg2)
    local f11_local0 = 30
    local f11_local1 = arg0:GetRandam_Int(1, 100)
    local f11_local2 = -1
    if arg0:HasSpecialEffectId(TARGET_SELF, 10313) and f11_local1 <= f11_local0 then
        f11_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f11_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardSword700030_Act16(arg0, arg1, arg2)
    local f12_local0 = -1
    local f12_local1 = arg0:GetRandam_Int(0, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 10313) and f12_local1 <= 30 then
        f12_local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, arg0:GetRandam_Float(2, 4), TARGET_SELF, false, f12_local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardSword700030_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardSword700030_Act18(arg0, arg1, arg2)
    local f14_local0 = 3020
    local f14_local1 = ATT3011_DIST_MAX
    local f14_local2 = 0
    local f14_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardSword700030_Act19(arg0, arg1, arg2)
    local f15_local0 = 3021
    local f15_local1 = ATT3012_DIST_MAX
    local f15_local2 = 0
    local f15_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local1, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardSword700030_Act20(arg0, arg1, arg2)
    local f16_local0 = -1
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, arg0:GetRandam_Int(15, 20), f16_local0, GUARD_GOAL_DESIRE_RET_Continue, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardSword700030_Act40(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = arg0:GetRandam_Int(1, 100)
    local f17_local2 = arg0:GetDist(TARGET_HOSTPLAYER)
    if f17_local2 <= 2.5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_HOSTPLAYER, 3, TARGET_HOSTPLAYER, true, -1)
    elseif f17_local2 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_HOSTPLAYER, 4, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_HOSTPLAYER, 4, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardSword700030_Act50(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.1, 1.5), TARGET_NONE, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, arg0:GetRandam_Int(3031, 3033), TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyStandardSword700030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BuddyStandardSword700030_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f22_local0 = arg1:GetDist(TARGET_ENE_0)
    local f22_local1 = arg1:GetRandam_Int(1, 100)
    local f22_local2 = arg1:GetDist(TARGET_HOSTPLAYER)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(PLAN_SP_EFFECT_BUDDY_ORDER_TRIGGER) then
            arg1:SetTimer(0, 0)
            arg1:SetNumber(0, 1)
            arg1:SetNumber(1, 1)
            arg1:SetNumber(2, 0)
            if arg1:HasSpecialEffectId(TARGET_HOSTPLAYER, PLAN_SP_EFFECT_BUDDY_ORDER_GO) then
                arg1:SetNumber(2, 1)
                arg2:ClearSubGoal()
                return true
            elseif arg1:HasSpecialEffectId(TARGET_HOSTPLAYER, PLAN_SP_EFFECT_BUDDY_ORDER_COME) then
                arg1:SetTimer(0, 10)
                arg2:ClearSubGoal()
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(10315) then
            arg1:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 3.1 - arg1:GetMapHitRadius(TARGET_SELF) + 2)
        elseif arg1:GetSpecialEffectActivateInterruptId(10317) and arg1:HasSpecialEffectId(TARGET_SELF, 10319) == false then
            arg2:ClearSubGoal()
            arg1:Replaning()
        elseif arg1:GetSpecialEffectActivateInterruptId(10318) and arg1:HasSpecialEffectId(TARGET_SELF, 10319) == false then
            arg2:ClearSubGoal()
            arg1:Replaning()
        end
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(1) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3019, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) then

    else

    end
    return false
    
end

RegisterTableGoal(GOAL_BuddyStandardSword700030_AfterAttackAct, "BuddyStandardSword700030_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BuddyStandardSword700030_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


