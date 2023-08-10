RegisterTableGoal(GOAL_BeastProgenyLarge397010_Battle, "BeastProgenyLarge397010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BeastProgenyLarge397010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 0)
    arg1:SetNumber(2, 0)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3031)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    arg1:EnableUnfavorableAttackCheck(1, 3000)
    arg1:EnableUnfavorableAttackCheck(1, 3001)
    arg1:EnableUnfavorableAttackCheck(1, 3002)
    arg1:EnableUnfavorableAttackCheck(1, 3003)
    arg1:EnableUnfavorableAttackCheck(1, 3004)
    arg1:EnableUnfavorableAttackCheck(1, 3013)
    arg1:EnableUnfavorableAttackCheck(1, 3014)
    arg1:EnableUnfavorableAttackCheck(1, 3015)
    arg1:EnableUnfavorableAttackCheck(1, 3016)
    arg1:EnableUnfavorableAttackCheck(1, 3017)
    arg1:EnableUnfavorableAttackCheck(1, 3031)
    arg1:EnableUnfavorableAttackCheck(1, 3036)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetRandam_Int(1, 100)
    local f2_local4 = arg1:GetEventRequest()
    local f2_local5 = arg1:GetDist(TARGET_ENE_0)
    local f2_local6 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 90, 30)
    local f2_local7 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 90, 30)
    local f2_local8 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 90, 30)
    local f2_local9 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 90, 30)
    local f2_local10 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_TRUNK_COLLAPSE)
    if f2_local10 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local5 >= 12 then
            f2_local0[22] = 100
        elseif f2_local5 >= 5 then
            f2_local0[3] = 20
            f2_local0[24] = 30
            f2_local0[26] = 50
        else
            f2_local0[23] = 40
            f2_local0[25] = 30
            f2_local0[26] = 30
        end
    elseif f2_local10 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local5 >= 12 then
            f2_local0[22] = 100
        elseif f2_local5 >= 5 then
            f2_local0[3] = 20
            f2_local0[24] = 30
            f2_local0[26] = 50
        else
            f2_local0[23] = 40
            f2_local0[25] = 30
            f2_local0[26] = 30
        end
    else
        if f2_local9 == true then
            f2_local0[21] = 40
            f2_local0[23] = 40
            f2_local0[26] = 20
        elseif f2_local5 >= 10 then
            f2_local0[1] = 0
            f2_local0[3] = 50
            f2_local0[4] = 50
        elseif f2_local5 >= 6 then
            f2_local0[1] = 0
            f2_local0[2] = 30
            f2_local0[3] = 40
            f2_local0[5] = 30
            f2_local0[22] = 0
        elseif f2_local5 >= 3.5 then
            f2_local0[1] = 10
            f2_local0[2] = 30
            f2_local0[4] = 20
            f2_local0[5] = 20
            f2_local0[26] = 20
        else
            f2_local0[1] = 30
            f2_local0[2] = 30
            f2_local0[4] = 30
            f2_local0[5] = 0
            f2_local0[23] = 10
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14663) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14661) then
                f2_local0[7] = 1000
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14662) then
                f2_local0[6] = 1000
            end
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 15, f2_local0[5], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3005, 15, f2_local0[11], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3031, 10, f2_local0[17], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 6001, 5, f2_local0[23], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[23], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[23], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6001, 5, f2_local0[26], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[26], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[26], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act07)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act11)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act17)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act26)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act31)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_Act47)
    local f2_local11 = REGIST_FUNC(arg1, arg2, BeastProgenyLarge397010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local11, f2_local2)
    
end

function BeastProgenyLarge397010_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 2.5
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 3
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = TARGET_ENE_0
    local f3_local11 = 10
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f3_local8, f3_local9, f3_local10, f3_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 2.5
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 3
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 5
    local f4_local9 = 3001
    local f4_local10 = 3013
    local f4_local11 = 3014
    local f4_local12 = TARGET_ENE_0
    local f4_local13 = 10
    local f4_local14 = 0
    local f4_local15 = 0
    local f4_local16 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f4_local8, f4_local9, f4_local12, f4_local13, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f4_local10, TARGET_ENE_0, DistToAtt2, 0, 0, 180)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local11, TARGET_ENE_0, SuccessDist, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 12
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 3
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 5
    local f5_local9 = 3002
    local f5_local10 = TARGET_ENE_0
    local f5_local11 = 10
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f5_local8, f5_local9, f5_local10, f5_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 2.5
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 3
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 5
    local f6_local9 = 3003
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 10
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 3
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 3
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 5
    local f7_local9 = 3004
    local f7_local10 = TARGET_ENE_0
    local f7_local11 = 10
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f7_local8, f7_local9, f7_local10, f7_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    if f8_local0 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    local f8_local1 = 5
    local f8_local2 = 3009
    local f8_local3 = TARGET_ENE_0
    local f8_local4 = 10
    local f8_local5 = 0
    local f8_local6 = 0
    local f8_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local1, f8_local2, f8_local3, f8_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    if f9_local0 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    local f9_local1 = 5
    local f9_local2 = 3006
    local f9_local3 = TARGET_ENE_0
    local f9_local4 = 10
    local f9_local5 = 0
    local f9_local6 = 0
    local f9_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local1, f9_local2, f9_local3, f9_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act11(arg0, arg1, arg2)
    local f10_local0 = 5
    local f10_local1 = 3005
    local f10_local2 = TARGET_ENE_0
    local f10_local3 = 10
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f10_local0, f10_local1, f10_local2, f10_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act17(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 3.5
    local f11_local2 = 0
    local f11_local3 = 999
    local f11_local4 = 100
    local f11_local5 = 0
    local f11_local6 = 3
    local f11_local7 = 3
    Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    local f11_local8 = 5
    local f11_local9 = 3031
    local f11_local10 = TARGET_ENE_0
    local f11_local11 = 10
    local f11_local12 = 0
    local f11_local13 = 0
    local f11_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f11_local8, f11_local9, f11_local10, f11_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act21(arg0, arg1, arg2)
    local f12_local0 = 2
    local f12_local1 = TARGET_ENE_0
    local f12_local2 = 45
    local f12_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f12_local4 = true
    local f12_local5 = 0
    local f12_local6 = arg0:GetRandam_Int(1, 100)
    local f12_local7 = -1
    if f12_local6 <= f12_local5 then
        f12_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f12_local0, f12_local1, f12_local2, f12_local7, f12_local3, f12_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act22(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 5.5
    local f13_local2 = 25
    local f13_local3 = 0
    local f13_local4 = arg0:GetRandam_Int(1, 100)
    local f13_local5 = false
    local f13_local6 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f13_local1, TARGET_ENE_0, f13_local5, f13_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act23(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act24(arg0, arg1, arg2)
    local f15_local0 = 0
    local f15_local1 = arg0:GetRandam_Int(1, 100)
    local f15_local2 = -1
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f15_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act25(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act26(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = arg0:GetRandam_Int(6002, 6003)
    local f17_local2 = AI_DIR_TYPE_L
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 90, 30) then
        f17_local1 = 6003
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 90, 30) then
        f17_local1 = 6002
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f17_local1, TARGET_ENE_0, 0, f17_local2, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyLarge397010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BeastProgenyLarge397010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f25_local0 = arg1:GetDist(TARGET_ENE_0)
    local f25_local1 = arg1:GetDist(TARGET_FRI_0)
    local f25_local2 = arg1:GetRandam_Int(1, 100)
    local f25_local3 = arg1:GetPrevTargetState()
    local f25_local4 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    local f25_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 14650)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            if f25_local0 <= 1.5 or arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 1.5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 5, 0, 0)
            elseif f25_local0 <= 7 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 10, 0, 0)
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if f25_local0 <= 1.5 or arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 1.5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 5, 0, 0)
            elseif f25_local0 <= 7 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 10, 0, 0)
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            if f25_local0 <= 3 and arg1:GetAttackPassedTime(3003) >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 10, 0, 0)
            elseif f25_local0 <= 5 and arg1:GetAttackPassedTime(3001) >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10, 0, 0)
            elseif f25_local0 > 5 and f25_local0 <= 8 and arg1:GetAttackPassedTime(3004) >= 15 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0)
            elseif f25_local0 > 8 and f25_local0 <= 12 and arg1:GetAttackPassedTime(3002) >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 20, 0, 0)
            end
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        if f25_local0 < 5 then
            BeastProgenyLarge397010_Act02(arg1, arg2)
        elseif f25_local0 <= 12 and f25_local0 >= 5 then
            BeastProgenyLarge397010_Act03(arg1, arg2)
        else
            BeastProgenyLarge397010_Act22(arg1, arg2)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        if f25_local0 <= 3 and f25_local2 <= 50 and arg1:GetAttackPassedTime(3005) >= 10 then
            arg2:ClearSubGoal()
            BeastProgenyLarge397010_Act11(arg1, arg2)
        elseif f25_local0 <= 2.5 and f25_local2 <= 60 and arg1:GetAttackPassedTime(3003) >= 10 then
            arg2:ClearSubGoal()
            BeastProgenyLarge397010_Act04(arg1, arg2)
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_BeastProgenyLarge397010_AfterAttackAct, "BeastProgenyLarge397010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BeastProgenyLarge397010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


