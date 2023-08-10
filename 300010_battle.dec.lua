RegisterTableGoal(GOAL_LossRaceSoldierSword300010_Battle, "LossRaceSoldierSword300010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LossRaceSoldierSword300010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10191)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 10859)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    local f2_local7 = 1
    if arg1:GetNumber(5) == 1 then
        f2_local7 = 2
        arg1:SetNumber(5, 0)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 19007) then
        if f2_local3 >= 7 then
            f2_local0[42] = 10
        else
            f2_local0[42] = 10
            f2_local0[46] = 3
            f2_local0[47] = 3
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 5 then
            if arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
                f2_local0[26] = 30
                f2_local0[40] = 55
            elseif arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
                f2_local0[27] = 30
                f2_local0[40] = 55
            else
                f2_local0[43] = 30
                f2_local0[40] = 55
            end
        elseif f2_local3 >= 3 then
            if arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
                f2_local0[6] = 5
                f2_local0[3] = 5
                f2_local0[45] = 25
                f2_local0[26] = 55
            elseif arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
                f2_local0[6] = 5
                f2_local0[3] = 5
                f2_local0[45] = 25
                f2_local0[27] = 55
            else
                f2_local0[6] = 5
                f2_local0[3] = 5
                f2_local0[5] = 5
                f2_local0[45] = 20
                f2_local0[43] = 55
            end
        else
            f2_local0[45] = 90
            f2_local0[43] = 5
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 5 then
            if arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
                f2_local0[3] = 5
                f2_local0[26] = 25
                f2_local0[40] = 60
                f2_local0[30] = 10
                f2_local0[31] = 10
            elseif arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
                f2_local0[3] = 5
                f2_local0[27] = 25
                f2_local0[40] = 60
                f2_local0[30] = 10
                f2_local0[31] = 10
            else
                f2_local0[3] = 5
                f2_local0[42] = 5
                f2_local0[43] = 25
                f2_local0[40] = 60
                f2_local0[30] = 10
                f2_local0[31] = 10
            end
        elseif f2_local3 >= 3 then
            if arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
                f2_local0[6] = 20
                f2_local0[3] = 5
                f2_local0[45] = 25
                f2_local0[26] = 35
                f2_local0[31] = 10
            elseif arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
                f2_local0[6] = 20
                f2_local0[3] = 5
                f2_local0[45] = 25
                f2_local0[27] = 35
                f2_local0[31] = 10
            else
                f2_local0[6] = 35
                f2_local0[3] = 5
                f2_local0[45] = 20
                f2_local0[43] = 25
                f2_local0[31] = 10
            end
        else
            f2_local0[1] = 5
            f2_local0[5] = 50
            f2_local0[45] = 40
            f2_local0[43] = 5
            f2_local0[32] = 10
        end
    elseif f2_local3 >= 7 then
        f2_local0[3] = 20
        f2_local0[4] = 10
        f2_local0[6] = 15
        f2_local0[7] = 20
        f2_local0[18] = 15 * f2_local7
        f2_local0[41] = 10
        f2_local0[43] = 10
        f2_local0[30] = 10
    elseif f2_local3 >= 5 then
        f2_local0[1] = 30
        f2_local0[3] = 15
        f2_local0[4] = 10
        f2_local0[6] = 15
        f2_local0[7] = 5
        f2_local0[18] = 20 * f2_local7
        f2_local0[42] = 15
        f2_local0[30] = 10
        f2_local0[31] = 10
    elseif f2_local3 >= 3 then
        f2_local0[1] = 15
        f2_local0[2] = 30
        f2_local0[3] = 10
        f2_local0[4] = 15
        f2_local0[6] = 5
        f2_local0[18] = 15 * f2_local7
        f2_local0[42] = 10
        f2_local0[47] = 5
        f2_local0[31] = 10
        f2_local0[32] = 10
    else
        f2_local0[2] = 5
        f2_local0[5] = 30
        f2_local0[8] = 20
        f2_local0[9] = 10
        f2_local0[42] = 10
        f2_local0[46] = 5
        f2_local0[47] = 5
        f2_local0[32] = 10
    end
    arg1:SetNumber(2, 0)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[2], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 5, f2_local0[5], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[18], 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10880) == false then
        f2_local0[30] = 0
        f2_local0[31] = 0
        f2_local0[32] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10859) then
        f2_local0[30] = 0
        f2_local0[31] = 0
        f2_local0[32] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act11)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act18)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act27)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act32)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act47)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_Act48)
    local f2_local8 = REGIST_FUNC(arg1, arg2, LossRaceSoldierSword300010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function LossRaceSoldierSword300010_Act01(arg0, arg1, arg2)
    local f3_local0 = 4
    local f3_local1 = 0
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 1.5
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3001
    local f3_local9 = 3002
    local f3_local10 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local12 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local14 = 0
    local f3_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local14, f3_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f3_local8, TARGET_ENE_0, f3_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local9, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act02(arg0, arg1, arg2)
    local f4_local0 = 2.5
    local f4_local1 = 0
    local f4_local2 = 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 1.5
    local f4_local6 = 1.5
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3002
    local f4_local8 = 3005
    local f4_local9 = 3001
    local f4_local10 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local11 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local12 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local14 = 0
    local f4_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local10, f4_local14, f4_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local8, TARGET_ENE_0, f4_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local9, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act03(arg0, arg1, arg2)
    local f5_local0 = 4
    local f5_local1 = 999
    local f5_local2 = 0
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 1.5
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3000
    local f5_local8 = 3001
    local f5_local9 = 3002
    local f5_local10 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local11 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local12 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local14 = 0
    local f5_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local10, f5_local14, f5_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f5_local8, TARGET_ENE_0, f5_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local9, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act04(arg0, arg1, arg2)
    local f6_local0 = 2.5
    local f6_local1 = 999
    local f6_local2 = 0
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 1.5
    local f6_local6 = 1.5
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3002
    local f6_local8 = 3005
    local f6_local9 = 3001
    local f6_local10 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local11 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local12 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local14 = 0
    local f6_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local10, f6_local14, f6_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f6_local8, TARGET_ENE_0, f6_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local9, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act05(arg0, arg1, arg2)
    local f7_local0 = 3004
    local f7_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 0
    local f7_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:SetNumber(5, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local0, TARGET_ENE_0, f7_local1, f7_local2, f7_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act06(arg0, arg1, arg2)
    local f8_local0 = 6
    local f8_local1 = 0
    local f8_local2 = 999
    local f8_local3 = 0
    local f8_local4 = 100
    local f8_local5 = 4
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3003
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act07(arg0, arg1, arg2)
    local f9_local0 = 6.5
    local f9_local1 = 999
    local f9_local2 = 0
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3003
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act08(arg0, arg1, arg2)
    local f10_local0 = 3
    local f10_local1 = 0
    local f10_local2 = 999
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 1.5
    local f10_local6 = 1.5
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3005
    local f10_local8 = 3001
    local f10_local9 = 3002
    local f10_local10 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local11 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local12 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local14 = 0
    local f10_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local10, f10_local14, f10_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f10_local8, TARGET_ENE_0, f10_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f10_local9, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act09(arg0, arg1, arg2)
    local f11_local0 = 4
    local f11_local1 = 999
    local f11_local2 = 0
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 1.5
    local f11_local6 = 1.5
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3005
    local f11_local8 = 3001
    local f11_local9 = 3002
    local f11_local10 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local11 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local12 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local14 = 0
    local f11_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local10, f11_local14, f11_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f11_local8, TARGET_ENE_0, f11_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local9, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act10(arg0, arg1, arg2)
    local f12_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = -999
    local f12_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 4
    local f12_local6 = 8
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3010
    local f12_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 0
    local f12_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act11(arg0, arg1, arg2)
    local f13_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = 50
    local f13_local4 = 0
    local f13_local5 = 4
    local f13_local6 = 8
    local f13_local7 = 3015
    local f13_local8 = 3014
    local f13_local9 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local10 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local12 = 0
    local f13_local13 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local9, f13_local12, f13_local13, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f13_local8, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act18(arg0, arg1, arg2)
    local f14_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10186)
    local f14_local1 = 7.5
    local f14_local2 = 0
    local f14_local3 = 999
    local f14_local4 = 0
    local f14_local5 = 0
    local f14_local6 = 1.5
    local f14_local7 = 1.5
    Approach_Act_Flex(arg0, arg1, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7)
    local f14_local8 = 3017
    local f14_local9 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local11 = 0
    local f14_local12 = 0
    local f14_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local8, TARGET_ENE_0, f14_local9, f14_local11, f14_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act20(arg0, arg1, arg2)
    local f15_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 4
    local f15_local6 = 8
    local f15_local7 = 3010
    local f15_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local9 = 0
    local f15_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if arg0:HasSpecialEffectId(TARGET_SELF, 10193) and arg0:HasSpecialEffectId(TARGET_SELF, 10190) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act21(arg0, arg1, arg2)
    local f16_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local3 = 50
    local f16_local4 = 0
    local f16_local5 = 4
    local f16_local6 = 8
    local f16_local7 = 3011
    local f16_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local9 = 0
    local f16_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local7, TARGET_ENE_0, f16_local8, f16_local9, f16_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act22(arg0, arg1, arg2)
    local f17_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 4
    local f17_local6 = 8
    local f17_local7 = 3012
    local f17_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local9 = 0
    local f17_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local7, TARGET_ENE_0, f17_local8, f17_local9, f17_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act23(arg0, arg1, arg2)
    local f18_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local3 = 50
    local f18_local4 = 0
    local f18_local5 = 4
    local f18_local6 = 8
    local f18_local7 = 3013
    local f18_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local9 = 0
    local f18_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local7, TARGET_ENE_0, f18_local8, f18_local9, f18_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act24(arg0, arg1, arg2)
    local f19_local0 = 3008
    local f19_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local2 = 0
    local f19_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local0, TARGET_ENE_0, f19_local1, f19_local2, f19_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act25(arg0, arg1, arg2)
    local f20_local0 = 3009
    local f20_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local2 = 0
    local f20_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local0, TARGET_ENE_0, f20_local1, f20_local2, f20_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act26(arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Int(1, 100)
    local f21_local1 = 0
    local f21_local2 = -1
    if f21_local0 <= f21_local1 then
        f21_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, f21_local2)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act27(arg0, arg1, arg2)
    local f22_local0 = arg0:GetRandam_Int(1, 100)
    local f22_local1 = 0
    local f22_local2 = -1
    if f22_local0 <= f22_local1 then
        f22_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, f22_local2)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act30(arg0, arg1, arg2)
    local f23_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act31(arg0, arg1, arg2)
    local f24_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    if f24_local0 > 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act32(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f25_local0 = arg0:GetRandam_Int(1, 100)
    local f25_local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6011, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 2, TARGET_SELF, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act41(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 4, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act42(arg0, arg1, arg2)
    arg0:SetNumber(5, 1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3.5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act43(arg0, arg1, arg2)
    arg0:SetNumber(5, 1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act44(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:SetNumber(5, 1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 5, TARGET_ENE_0, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act45(arg0, arg1, arg2)
    arg0:SetNumber(5, 1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act46(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, 1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act47(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_Act48(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSword300010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_UncoverTombNobleManRapier430011_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f38_local0 = arg1:GetRandam_Int(1, 100)
    local f38_local1 = arg1:GetRandam_Int(1, 100)
    local f38_local2 = arg1:GetDist(TARGET_ENE_0)
    local f38_local3 = arg1:GetHpRate(TARGET_SELF)
    local f38_local4 = arg1:GetNumber(0)
    local f38_local5 = arg1:GetNumber(1)
    local f38_local6 = arg1:GetRandam_Int(0, 10)
    local f38_local7 = arg1:GetRandam_Int(0, 5)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:GetNumber(10) == 0 then
        arg1:SetNumber(10, 1)
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5029) == true and arg1:HasSpecialEffectId(TARGET_ENE_0, 10859) == false then
        local f38_local8 = arg1:GetDist(TARGET_ENE_0)
        local f38_local9 = arg1:GetRandam_Int(1, 100)
        selectFate_ToB = 1
        selectFate_ToBL = 1
        selectFate_ToBR = 1
        selectFate_ToL = 1
        selectFate_ToR = 1
        warpDist_x = arg1:GetRandam_Int(3, 5)
        if arg1:GetNumber(15) == 1 then
            selectFate_ToBL = 0
            selectFate_ToBR = 0
            selectFate_ToL = 0
            selectFate_ToR = 0
        elseif arg1:GetNumber(15) == 2 then
            selectFate_ToB = 0
            warpDist_x = arg1:GetRandam_Int(7, 10)
        elseif arg1:GetNumber(15) == 3 then
            selectFate_ToB = 0
            selectFate_ToBR = 0
            selectFate_ToR = 0
        elseif arg1:GetNumber(15) == 4 then
            selectFate_ToB = 0
            selectFate_ToBL = 0
            selectFate_ToL = 0
        end
        local f38_local10 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
        local f38_local11 = 0
        local f38_local12 = 0
        local f38_local13 = arg1:GetMapHitRadius(TARGET_SELF)
        local f38_local14 = arg1:GetDist(TARGET_ENE_0)
        local f38_local15 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToB, warpDist_x + f38_local13, f38_local13, 0) <= warpDist_x then
            selectFate_ToB = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_x + f38_local13, f38_local13, 0) <= warpDist_x then
            selectFate_ToBL = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_x + f38_local13, f38_local13, 0) <= warpDist_x then
            selectFate_ToBR = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, warpDist_x + f38_local13, f38_local13, 0) <= warpDist_x then
            selectFate_ToL = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, warpDist_x + f38_local13, f38_local13, 0) <= warpDist_x then
            selectFate_ToR = 0
        end
        local f38_local16 = arg1:GetRandam_Int(0, selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR)
        local f38_local17 = AI_DIR_TYPE_ToB
        local f38_local18 = 0
        local f38_local19 = TARGET_ENE_0
        if 0 == selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
            arg1:SetNumber(15, 5)
        elseif 0 ~= AI_DIR_TYPE_ToB and f38_local16 <= selectFate_ToB then
            f38_local17 = AI_DIR_TYPE_ToB
            f38_local18 = warpDist_x
            f38_local19 = TARGET_ENE_0
        elseif 0 ~= selectFate_2 and f38_local16 <= selectFate_ToB + selectFate_ToBL then
            f38_local17 = AI_DIR_TYPE_ToBL
            f38_local18 = warpDist_x
            f38_local19 = TARGET_ENE_0
        elseif 0 ~= selectFate_3 and f38_local16 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR then
            f38_local17 = AI_DIR_TYPE_ToBR
            f38_local18 = warpDist_x
            f38_local19 = TARGET_ENE_0
        elseif 0 ~= selectFate_4 and f38_local16 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL then
            f38_local17 = AI_DIR_TYPE_ToL
            f38_local18 = warpDist_x
            f38_local19 = TARGET_ENE_0
        elseif 0 ~= selectFate_4 and f38_local16 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
            f38_local17 = AI_DIR_TYPE_ToR
            f38_local18 = warpDist_x
            f38_local19 = TARGET_ENE_0
        end
        if arg1:GetNumber(15) == 5 then
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f38_local17, f38_local18, f38_local19, 5, -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        else
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f38_local17, f38_local18, f38_local19, 5, -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) and arg1:HasSpecialEffectId(TARGET_SELF, 19007) then
        if f38_local2 < 1.5 then
            if f38_local0 < 20 then
                arg2:ClearSubGoal()
            elseif f38_local0 < 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
            else
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 3, 0, false)
            end
        elseif f38_local2 < 3 then
            if f38_local0 < 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
                return true
            elseif f38_local0 < 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 0, 0, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 5, 0, 0)
            else
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 3, 0, false)
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 10191) and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false and f38_local2 < 1.5 then
        if f38_local0 < 20 then
            arg2:ClearSubGoal()
        else
            arg2:ClearSubGoal()
            arg1:SetNumber(5, 1)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 0, 0, 0)
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(10186) then
        local f38_local8 = arg1:GetDist(TARGET_ENE_0)
        local f38_local9 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and f38_local8 <= 8 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
        if 10 + f38_local7 <= arg1:GetAttackPassedTime(6002) and 10 + f38_local7 <= arg1:GetAttackPassedTime(6003) then
            if f38_local0 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, false)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, false)
                return true
            end
        elseif f38_local0 <= 50 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, true, 9910)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
        if f38_local2 < 1.5 then
            if 10 + f38_local7 <= arg1:GetAttackPassedTime(6002) and 10 + f38_local7 <= arg1:GetAttackPassedTime(6003) then
                if f38_local0 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, false)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, false)
                    return true
                end
            elseif 5 + f38_local7 <= arg1:GetAttackPassedTime(3004) then
                arg2:ClearSubGoal()
                arg1:SetNumber(5, 1)
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 0, 0, 0)
                return true
            elseif f38_local0 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, true, 9910)
                return true
            end
        elseif f38_local2 > 4 and f38_local2 < 6 then
            if 10 + f38_local7 <= arg1:GetAttackPassedTime(3003) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 0, 0, 0)
                return true
            end
        elseif f38_local2 > 5 and f38_local0 <= 50 then
            if f38_local1 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 4, TARGET_SELF, true, 9910)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 180, 6) then
            if 10 + f38_local7 <= arg1:GetAttackPassedTime(6002) and 10 + f38_local7 <= arg1:GetAttackPassedTime(6003) then
                if f38_local0 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, false)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, false)
                    return true
                end
            elseif 5 + f38_local7 <= arg1:GetAttackPassedTime(3004) then
                arg2:ClearSubGoal()
                arg1:SetNumber(5, 1)
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                return true
            end
        elseif f38_local2 < 1.5 then
            if 10 + f38_local7 <= arg1:GetAttackPassedTime(6002) and 10 + f38_local7 <= arg1:GetAttackPassedTime(6003) then
                if f38_local0 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, false)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, false)
                    return true
                end
            elseif 5 + f38_local7 <= arg1:GetAttackPassedTime(3004) then
                arg2:ClearSubGoal()
                arg1:SetNumber(5, 1)
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 0, 0, 0)
                return true
            elseif f38_local0 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, true, 9910)
                return true
            end
        elseif f38_local2 > 4 and f38_local2 < 6 then
            if 10 + f38_local7 <= arg1:GetAttackPassedTime(3003) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 0, 0, 0)
                return true
            end
        elseif f38_local2 > 5 and f38_local0 <= 50 then
            if f38_local1 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 4, TARGET_SELF, true, 9910)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_LossRaceSoldierSword300011_AfterAttackAct, "LossRaceSoldierSword300011_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LossRaceSoldierSword300011_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    actPerArr[1] = 5
    actPerArr[8] = 50
    actPerArr[12] = 40
    actPerArr[13] = 5
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


