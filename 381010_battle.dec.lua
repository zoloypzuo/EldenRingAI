RegisterTableGoal(GOAL_RottenKin381010_Battle, "RottenKin381010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RottenKin381010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 17351) then
        f2_local0[8] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 17353) then
        f2_local0[8] = 99
        f2_local0[40] = 1
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 < 3 then
            f2_local0[21] = 25
            f2_local0[20] = 25
            f2_local0[1] = 1
            f2_local0[2] = 1
            f2_local0[4] = 10
            f2_local0[40] = 30
        elseif f2_local3 < 7 then
            f2_local0[21] = 10
            f2_local0[20] = 10
            f2_local0[6] = 1
            f2_local0[7] = 1
            f2_local0[42] = 20
            f2_local0[40] = 60
        else
            f2_local0[42] = 20
            f2_local0[40] = 80
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 < 3 then
            f2_local0[21] = 20
            f2_local0[20] = 20
            f2_local0[1] = 10
            f2_local0[2] = 5
            f2_local0[4] = 5
            f2_local0[40] = 40
        elseif f2_local3 < 7 then
            f2_local0[21] = 15
            f2_local0[20] = 15
            f2_local0[6] = 15
            f2_local0[7] = 15
            f2_local0[42] = 10
            f2_local0[40] = 30
        else
            f2_local0[42] = 40
            f2_local0[40] = 60
        end
    elseif f2_local3 < 1.5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 120, 50, 2.5) then
            f2_local0[1] = 10
            f2_local0[21] = 25
            f2_local0[20] = 25
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 120, 50, 2.5) then
            f2_local0[1] = 10
            f2_local0[20] = 25
            f2_local0[21] = 25
        elseif arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 5, proxi_size, proxi_size) then
            f2_local0[1] = 15
            f2_local0[2] = 5
            f2_local0[4] = 10
            f2_local0[20] = 15
            f2_local0[21] = 15
        else
            f2_local0[1] = 15
            f2_local0[2] = 5
            f2_local0[20] = 15
            f2_local0[21] = 15
        end
    elseif f2_local3 < 3 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 120, 50, 2.5) then
            f2_local0[1] = 30
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 120, 50, 2.5) then
            f2_local0[1] = 30
        elseif arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 5, proxi_size, proxi_size) then
            f2_local0[1] = 20
            f2_local0[2] = 10
            f2_local0[4] = 5
        else
            f2_local0[1] = 20
            f2_local0[2] = 10
        end
    elseif f2_local3 < 5.5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 50, 10) then
            f2_local0[1] = 40
        else
            f2_local0[1] = 20
            f2_local0[42] = 35
        end
    elseif f2_local3 < 7 then
        f2_local0[4] = 30
        f2_local0[42] = 70
    elseif f2_local3 < 10 then
        f2_local0[6] = 20
        f2_local0[7] = 20
        f2_local0[42] = 60
    elseif f2_local3 < 15 then
        f2_local0[42] = 40
    else
        f2_local0[42] = 100
    end
    f2_local0[4] = SetCoolTime(arg1, arg2, 3006, 10 + arg1:GetRandam_Int(0, 5), f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3007, 30 + arg1:GetRandam_Int(0, 5), f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3008, 20 + arg1:GetRandam_Int(0, 5), f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3009, 20 + arg1:GetRandam_Int(0, 5), f2_local0[7], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3010, 10 + arg1:GetRandam_Int(0, 5), f2_local0[8], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3017, 3, f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3021, 5 + arg1:GetRandam_Int(0, 5), f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3022, 5 + arg1:GetRandam_Int(0, 5), f2_local0[12], 0)
    f2_local0[20] = SetCoolTime(arg1, arg2, 6002, 20 + arg1:GetRandam_Int(0, 5), f2_local0[20], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 6003, 20 + arg1:GetRandam_Int(0, 5), f2_local0[21], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act23)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act42)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, RottenKin381010_Act48)
    local f2_local7 = REGIST_FUNC(arg1, arg2, RottenKin381010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function RottenKin381010_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = arg0:GetRandam_Int(1, 100)
    local f3_local2 = 3.4
    local f3_local3 = 999
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 0
    local f3_local7 = 1
    local f3_local8 = 1
    Approach_Act_Flex(arg0, arg1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8)
    local f3_local9 = 3000
    local f3_local10 = 3
    local f3_local11 = 0
    local f3_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local9, TARGET_ENE_0, f3_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 2
    local f4_local2 = 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 0.5
    local f4_local7 = 0.5
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 3001
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 0
    local f4_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local8, TARGET_ENE_0, f4_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 4
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 0.5
    local f5_local7 = 0.5
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 3003
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 0
    local f5_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local8, TARGET_ENE_0, f5_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 3006
    local f6_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 0
    local f6_local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local1, TARGET_ENE_0, f6_local2, f6_local3, f6_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 7
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 0.5
    local f7_local7 = 0.5
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 3007
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 0
    local f7_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local8, TARGET_ENE_0, f7_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 8.5
    local f8_local2 = 999
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 3
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local8 = 3008
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 0
    local f8_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local8, TARGET_ENE_0, f8_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 8.5
    local f9_local2 = 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 3
    local f9_local7 = 3
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    local f9_local8 = 3009
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 0
    local f9_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local8, TARGET_ENE_0, f9_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = arg0:GetRandam_Int(1, 100)
    local f10_local2 = 3010
    local f10_local3 = 10
    local f10_local4 = 0
    local f10_local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local2, TARGET_ENE_0, f10_local3, 0, 0, 0, 0)
    if f10_local1 <= 50 then
        arg0:SetNumber(0, 1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 3, 0, 0)
        return true
    else
        arg0:SetNumber(0, 1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 3, 0, 0)
        return true
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetRandam_Int(1, 100)
    local f11_local2 = 6
    local f11_local3 = 999
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 0
    local f11_local7 = 3
    local f11_local8 = 3
    Approach_Act_Flex(arg0, arg1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7, f11_local8)
    local f11_local9 = 3015
    local f11_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local11 = 0
    local f11_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local9, TARGET_ENE_0, f11_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetRandam_Int(1, 100)
    local f12_local2 = 3.5
    local f12_local3 = 999
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 0
    local f12_local7 = 1
    local f12_local8 = 1
    Approach_Act_Flex(arg0, arg1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7, f12_local8)
    local f12_local9 = 3017
    local f12_local10 = 3018
    local f12_local11 = 2
    local f12_local12 = 0
    local f12_local13 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local9, TARGET_ENE_0, f12_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f12_local10, TARGET_ENE_0, 6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetRandam_Int(1, 100)
    local f13_local2 = 2
    local f13_local3 = 999
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 0
    local f13_local7 = 3
    local f13_local8 = 3
    Approach_Act_Flex(arg0, arg1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7, f13_local8)
    local f13_local9 = 3021
    local f13_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local11 = 0
    local f13_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local9, TARGET_ENE_0, f13_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    local f14_local2 = 3022
    local f14_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local4 = 0
    local f14_local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local2, TARGET_ENE_0, f14_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act13(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = arg0:GetRandam_Int(1, 100)
    local f15_local2 = 3023
    local f15_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local4 = 0
    local f15_local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local2, TARGET_ENE_0, f15_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act14(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = arg0:GetRandam_Int(1, 100)
    local f16_local2 = 3024
    local f16_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local4 = 0
    local f16_local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local2, TARGET_ENE_0, f16_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act15(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = arg0:GetRandam_Int(1, 100)
    local f17_local2 = 3025
    local f17_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local4 = 0
    local f17_local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local2, TARGET_ENE_0, f17_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act16(arg0, arg1, arg2)
    local f18_local0 = 3
    local f18_local1 = 0
    local f18_local2 = 999
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = 5
    local f18_local6 = 5
    Approach_Act_Flex(arg0, arg1, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    local f18_local7 = 3004
    local f18_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local9 = 0
    local f18_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3014, TARGET_ENE_0, f18_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, f18_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act17(arg0, arg1, arg2)
    local f19_local0 = 3
    local f19_local1 = 0
    local f19_local2 = 999
    local f19_local3 = 0
    local f19_local4 = 0
    local f19_local5 = 5
    local f19_local6 = 5
    Approach_Act_Flex(arg0, arg1, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6)
    local f19_local7 = 3004
    local f19_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local9 = 0
    local f19_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, f19_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, f19_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act18(arg0, arg1, arg2)
    local f20_local0 = 3
    local f20_local1 = 0
    local f20_local2 = 999
    local f20_local3 = 0
    local f20_local4 = 0
    local f20_local5 = 5
    local f20_local6 = 5
    Approach_Act_Flex(arg0, arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local f20_local7 = 3004
    local f20_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local9 = 0
    local f20_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3018, TARGET_ENE_0, f20_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, f20_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, f20_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, f20_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, f20_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, f20_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act19(arg0, arg1, arg2)
    local f21_local0 = 3000
    local f21_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local2 = 0
    local f21_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 1.5, TARGET_SELF, true, 9920)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act20(arg0, arg1, arg2)
    local f22_local0 = 3012
    local f22_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local2 = 0
    local f22_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg0:SetNumber(0, 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act21(arg0, arg1, arg2)
    local f23_local0 = 3013
    local f23_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local2 = 0
    local f23_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg0:SetNumber(0, 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act22(arg0, arg1, arg2)
    local f24_local0 = 6001
    local f24_local1 = AI_DIR_TYPE_B
    local f24_local2 = 4
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f24_local0, TARGET_ENE_0, -1, f24_local1, f24_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act23(arg0, arg1, arg2)
    local f25_local0 = -1
    local f25_local1 = -1
    local f25_local2 = 50
    local f25_local3 = 50
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, f25_local0, f25_local1, f25_local2, f25_local3, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act41(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RottenKin381010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RottenKin381011_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f33_local0 = arg1:GetRandam_Int(1, 100)
    local f33_local1 = arg1:GetDist(TARGET_ENE_0)
    local f33_local2 = arg1:GetHpRate(TARGET_SELF)
    local f33_local3 = arg1:GetNumber(0)
    local f33_local4 = arg1:GetRandam_Int(0, 10)
    local f33_local5 = arg1:GetRandam_Int(0, 5)
    local f33_local6 = arg1:GetMapHitRadius(TARGET_SELF)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and f33_local1 > 4 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 50, 15) then
        if f33_local0 <= 50 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, 10, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 10, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and f33_local1 < 3 and 3 + f33_local5 <= arg1:GetAttackPassedTime(3012) and 3 + f33_local5 <= arg1:GetAttackPassedTime(3013) then
        if f33_local0 <= 50 and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 3, f33_local6, f33_local6) then
            arg2:ClearSubGoal()
            arg1:SetNumber(0, f33_local3 + 1)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 6, 0, 0)
            return true
        elseif arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 3, f33_local6, f33_local6) then
            arg2:ClearSubGoal()
            arg1:SetNumber(0, f33_local3 + 1)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 6, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5026) and f33_local1 < 5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 50, 10) then
        if arg1:IsTargetGuard(TARGET_ENE_0) == true then
            if f33_local0 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 10, 0, 0, 0, 0)
                return true
            elseif f33_local1 < 1.5 then
                if f33_local0 <= 50 then
                    if 10 + f33_local5 <= arg1:GetAttackPassedTime(3012) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 3, f33_local6, f33_local6) then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(0, f33_local3 + 1)
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 6, 0, 0)
                        return true
                    end
                elseif 10 + f33_local5 <= arg1:GetAttackPassedTime(3013) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 3, f33_local6, f33_local6) then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(0, f33_local3 + 1)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 6, 0, 0)
                    return true
                end
            end
        elseif f33_local0 <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 10, 0, 0, 0, 0)
            return true
        elseif f33_local1 < 1.5 then
            if f33_local0 <= 50 then
                if 10 + f33_local5 <= arg1:GetAttackPassedTime(3012) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 3, f33_local6, f33_local6) then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(0, f33_local3 + 1)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 6, 0, 0)
                    return true
                end
            elseif 10 + f33_local5 <= arg1:GetAttackPassedTime(3013) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 3, f33_local6, f33_local6) then
                arg2:ClearSubGoal()
                arg1:SetNumber(0, f33_local3 + 1)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 6, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5030) and f33_local1 < 5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 50, 10) then
        if arg1:IsTargetGuard(TARGET_ENE_0) == true then
            if f33_local0 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 6, 0, 0)
                return true
            elseif f33_local1 < 1.5 then
                if f33_local0 <= 50 then
                    if 10 + f33_local5 <= arg1:GetAttackPassedTime(3012) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 3, f33_local6, f33_local6) then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(0, f33_local3 + 1)
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 6, 0, 0)
                        return true
                    end
                elseif 10 + f33_local5 <= arg1:GetAttackPassedTime(3013) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 3, f33_local6, f33_local6) then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(0, f33_local3 + 1)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 6, 0, 0)
                    return true
                end
            end
        elseif f33_local0 <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 6, 0, 0)
            return true
        elseif f33_local1 < 1.5 then
            if f33_local0 <= 50 then
                if 10 + f33_local5 <= arg1:GetAttackPassedTime(3012) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 3, f33_local6, f33_local6) then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(0, f33_local3 + 1)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 6, 0, 0)
                    return true
                end
            elseif 10 + f33_local5 <= arg1:GetAttackPassedTime(3013) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 3, f33_local6, f33_local6) then
                arg2:ClearSubGoal()
                arg1:SetNumber(0, f33_local3 + 1)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 6, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5027) and f33_local1 < 5 and f33_local1 > 0 then
        if arg1:IsTargetGuard(TARGET_ENE_0) == true then
            if f33_local0 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 6, 0, 0)
                return true
            end
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 6, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5028) and f33_local1 < 5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 50, 10) then
        if arg1:IsTargetGuard(TARGET_ENE_0) == true then
            if f33_local0 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 6, 0, 0)
                return true
            elseif f33_local1 < 1.5 then
                if f33_local0 <= 50 then
                    if 10 + f33_local5 <= arg1:GetAttackPassedTime(3012) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 3, f33_local6, f33_local6) then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(0, f33_local3 + 1)
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 6, 0, 0)
                        return true
                    end
                elseif 10 + f33_local5 <= arg1:GetAttackPassedTime(3013) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 3, f33_local6, f33_local6) then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(0, f33_local3 + 1)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 6, 0, 0)
                    return true
                end
            end
        elseif f33_local0 <= 90 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 6, 0, 0)
            return true
        elseif f33_local1 < 1.5 then
            if f33_local0 <= 50 then
                if 10 + f33_local5 <= arg1:GetAttackPassedTime(3012) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 3, f33_local6, f33_local6) then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(0, f33_local3 + 1)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 6, 0, 0)
                    return true
                end
            elseif 10 + f33_local5 <= arg1:GetAttackPassedTime(3013) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 3, f33_local6, f33_local6) then
                arg2:ClearSubGoal()
                arg1:SetNumber(0, f33_local3 + 1)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 6, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5029) and f33_local1 < 5 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 6, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5032) and arg1:GetNumber(0) < 2 and (f33_local0 <= 20 or arg1:GetNumber(0) == 0) then
        if f33_local0 <= 50 then
            if 10 + f33_local5 <= arg1:GetAttackPassedTime(3012) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 3, f33_local6, f33_local6) then
                arg2:ClearSubGoal()
                arg1:SetNumber(0, f33_local3 + 1)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 6, 0, 0)
                return true
            end
        elseif 10 + f33_local5 <= arg1:GetAttackPassedTime(3013) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 3, f33_local6, f33_local6) then
            arg2:ClearSubGoal()
            arg1:SetNumber(0, f33_local3 + 1)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 6, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5033) and f33_local1 < 3 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, 6, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5034) and f33_local1 < 3 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, 6, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        if f33_local1 < 1 then
            if 20 + f33_local5 <= arg1:GetAttackPassedTime(3006) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 5, f33_local6, f33_local6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 3.5, 0, 0)
                return true
            elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                if f33_local0 <= 60 then
                    if f33_local0 < 50 then
                        if 10 + f33_local5 <= arg1:GetAttackPassedTime(3012) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 3, f33_local6, f33_local6) then
                            arg2:ClearSubGoal()
                            arg1:SetNumber(0, f33_local3 + 1)
                            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 3, 0, 0)
                            return true
                        end
                    elseif 10 + f33_local5 <= arg1:GetAttackPassedTime(3013) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 3, f33_local6, f33_local6) then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(0, f33_local3 + 1)
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 3, 0, 0)
                        return true
                    end
                end
            elseif f33_local0 < 50 then
                if 10 + f33_local5 <= arg1:GetAttackPassedTime(3012) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 3, f33_local6, f33_local6) then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(0, f33_local3 + 1)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 3, 0, 0)
                    return true
                end
            elseif 10 + f33_local5 <= arg1:GetAttackPassedTime(3013) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 3, f33_local6, f33_local6) then
                arg2:ClearSubGoal()
                arg1:SetNumber(0, f33_local3 + 1)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 3, 0, 0)
                return true
            end
        elseif f33_local1 > 5 then
            if f33_local1 < 6.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 3.5, 0, 0)
                return true
            elseif 40 + f33_local5 <= arg1:GetAttackPassedTime(3009) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 3.5, 0, 0)
                return true
            elseif 40 + f33_local5 <= arg1:GetAttackPassedTime(3008) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 7, f33_local6, f33_local6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 3.5, 0, 0)
                return true
            else
                local f33_local7 = 4
                local f33_local8 = 0
                local f33_local9 = 999
                local f33_local10 = 0
                local f33_local11 = 0
                local f33_local12 = 3
                local f33_local13 = 3
                Approach_Act_Flex(arg1, arg2, f33_local7, f33_local8, f33_local9, f33_local10, f33_local11, f33_local12, f33_local13)
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_RottenKin381010_AfterAttackAct, "RottenKin381011_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RottenKin381011_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f34_local0 = arg1:GetDist(TARGET_ENE_0)
    local f34_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f34_local0 >= 5 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif f34_local0 >= 2 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 5)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 15)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


