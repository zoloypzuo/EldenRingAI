RegisterTableGoal(GOAL_DaemonBloodLaity355000_Battle, "DaemonBloodLaity355000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DaemonBloodLaity355000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3026)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 11705)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 51)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 11702) == true and arg1:HasSpecialEffectId(TARGET_SELF, 11703) == false then
        f2_local0[22] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 11704) then
        f2_local0[27] = 100
        f2_local0[48] = 1
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 11702) == false or arg1:HasSpecialEffectId(TARGET_SELF, 11703) == true then
        if f2_local3 < 1.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 160, 50, 4) then
                f2_local0[21] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 160, 50, 4) then
                f2_local0[20] = 100
            else
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[23] = 30
                f2_local0[43] = 50
            end
        elseif f2_local3 < 3 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 50, 6) then
                f2_local0[21] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 50, 6) then
                f2_local0[20] = 100
            elseif arg1:IsTargetGuard(TARGET_ENE_0) then
                f2_local0[23] = 30
                f2_local0[25] = 30
                f2_local0[43] = 40
            else
                f2_local0[23] = 30
                f2_local0[43] = 70
            end
        elseif f2_local3 < 5 then
            f2_local0[1] = 60
            f2_local0[24] = 30
            f2_local0[40] = 5
            f2_local0[41] = 5
        elseif f2_local3 < 8 then
            f2_local0[2] = 30
            f2_local0[24] = 30
            f2_local0[26] = 20
            f2_local0[40] = 5
            f2_local0[41] = 15
        elseif f2_local3 < 15 then
            f2_local0[24] = 50
            f2_local0[26] = 30
            f2_local0[41] = 20
        else
            f2_local0[42] = 75
            f2_local0[48] = 10
        end
    else
        f2_local0[48] = 0
    end
    f2_local0[2] = SetCoolTime(arg1, arg2, 3004, 5 + arg1:GetRandam_Int(0, 5), f2_local0[2], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 5 + arg1:GetRandam_Int(0, 5), f2_local0[4], 0)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3019, 20 + arg1:GetRandam_Int(0, 5), f2_local0[23], 0)
    f2_local0[25] = SetCoolTime(arg1, arg2, 3011, 20 + arg1:GetRandam_Int(0, 5), f2_local0[25], 0)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3018, 15 + arg1:GetRandam_Int(0, 5), f2_local0[24], 0)
    f2_local0[26] = SetCoolTime(arg1, arg2, 3020, 15 + arg1:GetRandam_Int(0, 5), f2_local0[26], 0)
    f2_local0[27] = SetCoolTime(arg1, arg2, 3021, 5 + arg1:GetRandam_Int(0, 5), f2_local0[27], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_Act03)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_Act27)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_Act43)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_Act48)
    local f2_local7 = REGIST_FUNC(arg1, arg2, DaemonBloodLaity355000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function DaemonBloodLaity355000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 3.5
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 1
    local f3_local7 = 1
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 3013
    local f3_local9 = 3
    local f3_local10 = 0
    local f3_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local8, TARGET_ENE_0, f3_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DaemonBloodLaity355000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 7
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 0.5
    local f4_local7 = 0.5
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 3004
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 0
    local f4_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local8, TARGET_ENE_0, f4_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DaemonBloodLaity355000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 7
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 0.5
    local f5_local7 = 0.5
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 3017
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 0
    local f5_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local8, TARGET_ENE_0, f5_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DaemonBloodLaity355000_Act19(arg0, arg1, arg2)
    local f6_local0 = 3000
    local f6_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 0
    local f6_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 1, TARGET_SELF, true, 9920)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DaemonBloodLaity355000_Act20(arg0, arg1, arg2)
    local f7_local0 = 3005
    local f7_local1 = 3008
    local f7_local2 = 4
    local f7_local3 = 0
    local f7_local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local0, TARGET_ENE_0, f7_local2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DaemonBloodLaity355000_Act21(arg0, arg1, arg2)
    local f8_local0 = 3006
    local f8_local1 = 3009
    local f8_local2 = 4
    local f8_local3 = 0
    local f8_local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local0, TARGET_ENE_0, f8_local2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DaemonBloodLaity355000_Act22(arg0, arg1, arg2)
    local f9_local0 = 3010
    local f9_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 0
    local f9_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DaemonBloodLaity355000_Act23(arg0, arg1, arg2)
    local f10_local0 = 3019
    local f10_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 0
    local f10_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local1, f10_local2, f10_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DaemonBloodLaity355000_Act24(arg0, arg1, arg2)
    local f11_local0 = 3018
    local f11_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 0
    local f11_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local1, f11_local2, f11_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DaemonBloodLaity355000_Act25(arg0, arg1, arg2)
    local f12_local0 = 3011
    local f12_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 0
    local f12_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local0, TARGET_ENE_0, f12_local1, f12_local2, f12_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DaemonBloodLaity355000_Act26(arg0, arg1, arg2)
    local f13_local0 = 3020
    local f13_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 0
    local f13_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local0, TARGET_ENE_0, f13_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DaemonBloodLaity355000_Act27(arg0, arg1, arg2)
    local f14_local0 = 3020
    local f14_local1 = 3021
    local f14_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local3 = 0
    local f14_local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local2, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f14_local1, TARGET_ENE_0, 6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DaemonBloodLaity355000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DaemonBloodLaity355000_Act41(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DaemonBloodLaity355000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 4, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DaemonBloodLaity355000_Act43(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    if arg0:IsFinishTimer(0) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 4, TARGET_ENE_0, true, 9920)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DaemonBloodLaity355000_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DaemonBloodLaity355000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DaemonBloodLaity355001_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f23_local0 = arg1:GetRandam_Int(1, 100)
    local f23_local1 = arg1:GetRandam_Int(1, 100)
    local f23_local2 = arg1:GetDist(TARGET_ENE_0)
    local f23_local3 = arg1:GetHpRate(TARGET_SELF)
    local f23_local4 = arg1:GetNumber(0)
    local f23_local5 = arg1:GetNumber(1)
    local f23_local6 = arg1:GetRandam_Int(0, 10)
    local f23_local7 = arg1:GetRandam_Int(0, 5)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:GetHpRate(TARGET_SELF) < 0.9 and f23_local2 < 2.5 then
        arg1:SetNumber(0, f23_local4 + 1)
        if arg1:GetAttackPassedTime(3007) >= 10 then
            arg1:SetNumber(0, 0)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 2, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif f23_local0 <= 40 and arg1:GetNumber(0) >= 4 then
            arg1:SetNumber(0, 0)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 2, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif f23_local2 < 3 and arg1:GetAttackPassedTime(3005) >= 5 and arg1:GetAttackPassedTime(3006) >= 5 then
            if f23_local0 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 2, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 2, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    local f23_local8 = 7
    local f23_local9 = 180
    local f23_local10 = 5.5
    local f23_local11 = 180
    if Parry_Act(arg1, arg2, f23_local8, f23_local9, f23_local10, f23_local11) then
        return true
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        if f23_local2 < 5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 0, 0, 0)
            return true
        elseif f23_local2 > 5 then
            if arg1:GetAttackPassedTime(3018) >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 0, 0, 0)
                return true
            elseif arg1:GetAttackPassedTime(3017) >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 3, TARGET_SELF, false, -1)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
        if f23_local2 < 3 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 30, 50, 6) then
                if f23_local2 < 1.5 and arg1:GetAttackPassedTime(3019) >= 20 and arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif arg1:GetAttackPassedTime(3011) >= 5 and arg1:IsTargetGuard(TARGET_ENE_0) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 330, 50, 6) and arg1:GetAttackPassedTime(3005) >= 8 and arg1:GetAttackPassedTime(3006) >= 8 then
                if f23_local0 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 4, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 4, 0, 0, 0, 0)
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 50, 10) then
            if arg1:GetAttackPassedTime(3004) >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            elseif arg1:GetAttackPassedTime(3018) >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            elseif arg1:GetAttackPassedTime(3017) >= 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
        if f23_local2 < 3.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 30, 50, 6) then
                if f23_local2 < 1.5 and arg1:GetAttackPassedTime(3019) >= 20 and arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif arg1:GetAttackPassedTime(3011) >= 5 and arg1:IsTargetGuard(TARGET_ENE_0) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 330, 50, 6) and arg1:GetAttackPassedTime(3005) >= 3 and arg1:GetAttackPassedTime(3006) >= 3 then
                if f23_local0 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 4, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 4, 0, 0, 0, 0)
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 50, 10) then
            if arg1:GetAttackPassedTime(3004) >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            elseif arg1:GetAttackPassedTime(3018) >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            elseif arg1:GetAttackPassedTime(3017) >= 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        if f23_local2 > 4 and f23_local2 < 6 then
            if arg1:GetAttackPassedTime(3004) >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 0, 0, 0)
                return true
            end
        elseif f23_local2 < 3 then
            if f23_local0 <= 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5036) and f23_local2 < 2.5 and arg1:GetTimer(10) < 1 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
        if f23_local0 > 30 then
            arg2:ClearSubGoal()
            arg1:SetTimer(0, 5)
            arg1:SetTimer(10, 3.5)
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3.5, TARGET_ENE_0, 0, TARGET_ENE_0, true, 9920)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5034) then
        if f23_local0 > 30 then
            arg2:ClearSubGoal()
            arg1:SetTimer(0, 5)
            arg1:SetTimer(10, 3.5)
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3.5, TARGET_ENE_0, 0, TARGET_ENE_0, true, 9920)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
        if f23_local0 <= 70 and f23_local2 < 2.5 and arg1:IsFinishTimer(0) == true then
            if f23_local1 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 4, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 4, 0, 0, 0, 0)
                return true
            end
        elseif f23_local2 > 4 then
            if arg1:IsFinishTimer(0) == false then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_TurnAround, 2.5, TARGET_ENE_0, AI_DIR_TYPE_B, 10, true, false, 9920)
                return true
            elseif f23_local1 <= 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5035) and f23_local2 < 3 then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 50, 10) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 4, 0, 0, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 50, 10) and arg1:GetAttackPassedTime(3015) >= 10 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 4, 0, 0, 0, 0)
            return true
        elseif arg1:GetAttackPassedTime(3005) >= 10 and arg1:GetAttackPassedTime(3006) >= 10 then
            if f23_local0 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 4, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 4, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5031) and f23_local0 <= 30 and f23_local2 > 1.5 and f23_local2 < 3 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 4, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
        if f23_local2 < 1.5 and arg1:GetAttackPassedTime(3005) >= 5 and arg1:GetAttackPassedTime(3006) >= 5 then
            if f23_local0 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 4, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 4, 0, 0, 0, 0)
                return true
            end
        elseif f23_local0 <= 40 and f23_local2 > 1.5 and f23_local2 < 3 then
            if f23_local1 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 4, 0, 0, 0, 0)
                return true
            elseif arg1:GetAttackPassedTime(3019) >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 4, 0, 0, 0, 0)
                return true
            end
        elseif f23_local2 > 4 and f23_local2 < 7 and arg1:GetAttackPassedTime(3004) >= 10 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 4, 0, 0, 0, 0)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_DaemonBloodLaity355000_AfterAttackAct, "DaemonBloodLaity355001_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DaemonBloodLaity35501_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f24_local0 = arg1:GetDist(TARGET_ENE_0)
    local f24_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f24_local0 >= 5 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif f24_local0 >= 2 then
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


