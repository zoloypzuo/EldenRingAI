RegisterTableGoal(GOAL_LossRaceSoldierSpear300020_Battle, "LossRaceSoldierSpear300020_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LossRaceSoldierSpear300020_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(2000000, 3000)
    arg1:EnableUnfavorableAttackCheck(2000000, 3001)
    arg1:EnableUnfavorableAttackCheck(2000000, 3002)
    arg1:EnableUnfavorableAttackCheck(2000000, 3003)
    arg1:EnableUnfavorableAttackCheck(2000000, 3004)
    arg1:EnableUnfavorableAttackCheck(2000000, 3010)
    arg1:EnableUnfavorableAttackCheck(2000000, 3011)
    
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 10859)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDist(TARGET_FRI_0)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 11139) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 10166) == false then
            f2_local0[17] = 100
        else
            f2_local0[9] = 100
        end
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 7 then
            f2_local0[42] = 0
            f2_local0[45] = 90
        elseif f2_local3 >= 5 then
            f2_local0[42] = 15
            f2_local0[44] = 0
            f2_local0[45] = 80
        elseif f2_local3 >= 2 then
            f2_local0[1] = 1
            f2_local0[42] = 20
            f2_local0[45] = 69
        else
            f2_local0[1] = 0
            f2_local0[42] = 50
            f2_local0[44] = 40
        end
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 7 then
            f2_local0[5] = 5
            f2_local0[6] = 5
            f2_local0[45] = 90
            f2_local0[30] = 10
            f2_local0[31] = 10
        elseif f2_local3 >= 5 then
            f2_local0[1] = 10
            f2_local0[3] = 10
            f2_local0[5] = 5
            f2_local0[6] = 5
            f2_local0[42] = 20
            f2_local0[45] = 50
            f2_local0[30] = 10
            f2_local0[31] = 10
        elseif f2_local3 >= 2 then
            if arg1:GetRelativeAngleFromTarget(TARGET_ENE_0) >= 90 and arg1:GetRelativeAngleFromTarget(TARGET_ENE_0) <= 270 then
                f2_local0[1] = 20
                f2_local0[2] = 5
                f2_local0[3] = 20
                f2_local0[5] = 5
                f2_local0[6] = 5
                f2_local0[42] = 15
                f2_local0[45] = 30
                f2_local0[31] = 15
                f2_local0[32] = 15
            else
                f2_local0[1] = 1
                f2_local0[3] = 1
                f2_local0[42] = 20
                f2_local0[45] = 68
                f2_local0[31] = 15
                f2_local0[32] = 15
            end
        else
            f2_local0[1] = 1
            f2_local0[3] = 4
            f2_local0[42] = 50
            f2_local0[44] = 45
            f2_local0[31] = 15
            f2_local0[32] = 15
        end
    elseif f2_local3 >= 7 then
        f2_local0[42] = 20
        f2_local0[45] = 30
        f2_local0[1] = 10
        f2_local0[3] = 10
        f2_local0[4] = 5
        f2_local0[5] = 10
        f2_local0[6] = 10
        f2_local0[7] = 5
        f2_local0[30] = 20
        f2_local0[31] = 20
    elseif f2_local3 >= 5 then
        f2_local0[42] = 10
        f2_local0[45] = 15
        f2_local0[1] = 20
        f2_local0[3] = 20
        f2_local0[4] = 10
        f2_local0[5] = 10
        f2_local0[6] = 10
        f2_local0[7] = 5
        f2_local0[30] = 20
        f2_local0[31] = 20
    elseif f2_local3 >= 2 then
        f2_local0[1] = 20
        f2_local0[2] = 10
        f2_local0[3] = 20
        f2_local0[4] = 10
        f2_local0[5] = 10
        f2_local0[6] = 10
        f2_local0[7] = 5
        f2_local0[42] = 5
        f2_local0[44] = 10
        f2_local0[31] = 20
        f2_local0[32] = 20
    else
        f2_local0[3] = 40
        f2_local0[4] = 40
        f2_local0[40] = 10
        f2_local0[42] = 10
        f2_local0[31] = 20
        f2_local0[32] = 20
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3100, 2, f2_local0[1], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3101, 3, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3101, 3, f2_local0[4], 0)
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
    f2_local1[1] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act09)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act17)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act24)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act32)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act45)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_Act48)
    local f2_local8 = REGIST_FUNC(arg1, arg2, LossRaceSoldierSpear300020_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function LossRaceSoldierSpear300020_Act01(arg0, arg1, arg2)
    local f3_local0 = 2.5
    local f3_local1 = 0
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 100
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3100
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act02(arg0, arg1, arg2)
    local f4_local0 = 3.5
    local f4_local1 = 999
    local f4_local2 = 0
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 3002
    local f4_local9 = 3003
    local f4_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local11 = 0
    local f4_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local10, f4_local11, f4_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local8, TARGET_ENE_0, f4_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local9, TARGET_ENE_0, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act03(arg0, arg1, arg2)
    local f5_local0 = 2
    local f5_local1 = 0
    local f5_local2 = 999
    local f5_local3 = 0
    local f5_local4 = 100
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3101
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act04(arg0, arg1, arg2)
    local f6_local0 = 2
    local f6_local1 = 0
    local f6_local2 = 999
    local f6_local3 = 0
    local f6_local4 = 100
    local f6_local5 = 4
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3101
    local f6_local8 = 3102
    local f6_local9 = 3
    local f6_local10 = 0
    local f6_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local8, TARGET_ENE_0, f6_local9, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act05(arg0, arg1, arg2)
    local f7_local0 = 2.5
    local f7_local1 = 999
    local f7_local2 = 0
    local f7_local3 = 0
    local f7_local4 = 100
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3100
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act06(arg0, arg1, arg2)
    local f8_local0 = 2
    local f8_local1 = 999
    local f8_local2 = 0
    local f8_local3 = 0
    local f8_local4 = 100
    local f8_local5 = 4
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3101
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act07(arg0, arg1, arg2)
    local f9_local0 = 2
    local f9_local1 = 999
    local f9_local2 = 0
    local f9_local3 = 0
    local f9_local4 = 100
    local f9_local5 = 4
    local f9_local6 = 8
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3101
    local f9_local8 = 3102
    local f9_local9 = 3
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f9_local8, TARGET_ENE_0, f9_local9, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act08(arg0, arg1, arg2)
    local f10_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f10_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    local f10_local7 = 3002
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act09(arg0, arg1, arg2)
    local f11_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f11_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 8
    local f11_local7 = 3010
    local f11_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local9 = 0
    local f11_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act16(arg0, arg1, arg2)
    local f12_local0 = 3101
    local f12_local1 = 3100
    local f12_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local3 = 0
    local f12_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local0, TARGET_ENE_0, f12_local2, f12_local3, f12_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f12_local1, TARGET_ENE_0, f12_local2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act17(arg0, arg1, arg2)
    local f13_local0 = 3101
    local f13_local1 = 3001
    local f13_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = 0
    local f13_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local0, TARGET_ENE_0, f13_local2, f13_local3, f13_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f13_local1, TARGET_ENE_0, f13_local2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act20(arg0, arg1, arg2)
    local f14_local0 = 0.5
    local f14_local1 = 0
    local f14_local2 = 0
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 4
    local f14_local6 = 8
    local f14_local7 = 20000
    local f14_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local9 = 2
    local f14_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 30, TARGET_FRI_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_F, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act22(arg0, arg1, arg2)
    local f16_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 4
    local f16_local6 = 8
    local f16_local7 = 3020
    local f16_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local9 = 0
    local f16_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f16_local7, TARGET_ENE_0, f16_local8, f16_local9, f16_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act23(arg0, arg1, arg2)
    local f17_local0 = 20000
    local f17_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 0
    local f17_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f17_local0, TARGET_ENE_0, f17_local1, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act24(arg0, arg1, arg2)
    local f18_local0 = 20000
    local f18_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = 0
    local f18_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10166)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, DistToAtt2, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act30(arg0, arg1, arg2)
    local f19_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act31(arg0, arg1, arg2)
    local f20_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    if f20_local0 > 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act32(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f21_local0 = arg0:GetRandam_Int(1, 100)
    local f21_local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6011, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act40(arg0, arg1, arg2)
    local f22_local0 = 3
    local f22_local1 = arg0:GetRandam_Int(1, 100)
    local f22_local2 = 100
    local f22_local3 = -1
    if f22_local1 <= f22_local2 then
        f22_local3 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, f22_local0, TARGET_ENE_0, true, f22_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act41(arg0, arg1, arg2)
    local f23_local0 = arg0:GetRandam_Int(1, 100)
    local f23_local1 = 0
    local f23_local2 = -1
    if f23_local0 <= f23_local1 then
        f23_local2 = 9910
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10170)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) then
        if f23_local0 < 50 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_R, 4)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f23_local2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act42(arg0, arg1, arg2)
    local f24_local0 = arg0:GetRandam_Int(1, 100)
    local f24_local1 = 100
    local f24_local2 = -1
    if f24_local0 <= f24_local1 then
        f24_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f24_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act43(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10170)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act44(arg0, arg1, arg2)
    local f26_local0 = 100
    local f26_local1 = arg0:GetRandam_Int(1, 100)
    local f26_local2 = -1
    if f26_local1 <= f26_local0 then
        f26_local2 = 9910
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10170)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 1, TARGET_SELF, true, f26_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act45(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10170)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 2, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_NONE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierSpear300020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_LossRaceSoldierSpear300020_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f32_local0 = arg1:GetRandam_Int(1, 100)
    local f32_local1 = arg1:GetRandam_Int(1, 100)
    local f32_local2 = arg1:GetDist(TARGET_ENE_0)
    local f32_local3 = arg1:GetHpRate(TARGET_SELF)
    local f32_local4 = arg1:GetNumber(0)
    local f32_local5 = arg1:GetNumber(1)
    local f32_local6 = arg1:GetRandam_Int(0, 10)
    local f32_local7 = arg1:GetRandam_Int(0, 5)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:GetNumber(10) == 0 then
        arg1:SetNumber(10, 1)
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5029) == true and arg1:HasSpecialEffectId(TARGET_ENE_0, 10859) == false then
        local f32_local8 = arg1:GetDist(TARGET_ENE_0)
        local f32_local9 = arg1:GetRandam_Int(1, 100)
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
        local f32_local10 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
        local f32_local11 = 0
        local f32_local12 = 0
        local f32_local13 = arg1:GetMapHitRadius(TARGET_SELF)
        local f32_local14 = arg1:GetDist(TARGET_ENE_0)
        local f32_local15 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToB, warpDist_x + f32_local13, f32_local13, 0) <= warpDist_x then
            selectFate_ToB = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_x + f32_local13, f32_local13, 0) <= warpDist_x then
            selectFate_ToBL = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_x + f32_local13, f32_local13, 0) <= warpDist_x then
            selectFate_ToBR = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, warpDist_x + f32_local13, f32_local13, 0) <= warpDist_x then
            selectFate_ToL = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, warpDist_x + f32_local13, f32_local13, 0) <= warpDist_x then
            selectFate_ToR = 0
        end
        local f32_local16 = arg1:GetRandam_Int(0, selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR)
        local f32_local17 = AI_DIR_TYPE_ToB
        local f32_local18 = 0
        local f32_local19 = TARGET_ENE_0
        if 0 == selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
            arg1:SetNumber(15, 5)
        elseif 0 ~= AI_DIR_TYPE_ToB and f32_local16 <= selectFate_ToB then
            f32_local17 = AI_DIR_TYPE_ToB
            f32_local18 = warpDist_x
            f32_local19 = TARGET_ENE_0
        elseif 0 ~= selectFate_2 and f32_local16 <= selectFate_ToB + selectFate_ToBL then
            f32_local17 = AI_DIR_TYPE_ToBL
            f32_local18 = warpDist_x
            f32_local19 = TARGET_ENE_0
        elseif 0 ~= selectFate_3 and f32_local16 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR then
            f32_local17 = AI_DIR_TYPE_ToBR
            f32_local18 = warpDist_x
            f32_local19 = TARGET_ENE_0
        elseif 0 ~= selectFate_4 and f32_local16 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL then
            f32_local17 = AI_DIR_TYPE_ToL
            f32_local18 = warpDist_x
            f32_local19 = TARGET_ENE_0
        elseif 0 ~= selectFate_4 and f32_local16 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
            f32_local17 = AI_DIR_TYPE_ToR
            f32_local18 = warpDist_x
            f32_local19 = TARGET_ENE_0
        end
        if arg1:GetNumber(15) == 5 then
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f32_local17, f32_local18, f32_local19, 5, -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        else
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f32_local17, f32_local18, f32_local19, 5, -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(5030) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3100, TARGET_ENE_0, 10, 0, 0, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptId(10170) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 10, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) and arg1:GetAttackPassedTime(3100) >= 2 and arg1:GetAttackPassedTime(3101) >= 2 then
        if f32_local2 < 2.5 then
            if f32_local0 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3101, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 2, 3101, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 2, 3102, TARGET_ENE_0, 3.5, 0, 0)
                return true
            end
        elseif f32_local2 > 3 and f32_local2 < 4 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3100, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:GetAttackPassedTime(3100) >= 2 and arg1:GetAttackPassedTime(3101) >= 2 then
        if f32_local2 < 2.5 then
            if f32_local0 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3101, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 2, 3101, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 2, 3102, TARGET_ENE_0, 3.5, 0, 0)
                return true
            end
        elseif f32_local2 > 3 and f32_local2 < 4 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3100, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(10166) and f32_local2 < 1 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 10, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptType(0) == 83 then
        arg2:ClearSubGoal()
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 180, 6) then
            if f32_local0 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 2, TARGET_ENE_0, true, 9910)
                return true
            end
        elseif f32_local2 < 2.5 and 15 + f32_local7 <= arg1:GetAttackPassedTime(3101) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3101, TARGET_ENE_0, 4, 0, 0, 0, 0)
            return true
        elseif f32_local2 < 2.5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
            return true
        elseif f32_local2 > 4.5 and f32_local2 < 8 then
            if f32_local0 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 3, TARGET_SELF, true, 9910)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_LossRaceSoldierSpear300021_AfterAttackAct, "LossRaceSoldierSpear300021_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LossRaceSoldierSpear300021_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


