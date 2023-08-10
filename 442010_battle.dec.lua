RegisterTableGoal(GOAL_ZariganiHasEggs_442010_Battle, "ZariganiHasEggs_442010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ZariganiHasEggs_442010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16409)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16411)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local0[24] = 100
    elseif f2_local3 >= 6 then
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 40
        f2_local0[13] = 60
        f2_local0[14] = 0
    elseif f2_local3 >= 3 then
        f2_local0[10] = 40
        f2_local0[11] = 20
        f2_local0[12] = 20
        f2_local0[13] = 0
        f2_local0[14] = 20
    else
        f2_local0[10] = 20
        f2_local0[11] = 0
        f2_local0[12] = 30
        f2_local0[13] = 0
        f2_local0[14] = 50
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act15)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_Act26)
    local f2_local6 = REGIST_FUNC(arg1, arg2, ZariganiHasEggs_442010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function ZariganiHasEggs_442010_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 2.5
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 3
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = arg0:GetRandam_Float(0.1, 2)
    local f3_local9 = TARGET_ENE_0
    local f3_local10 = arg0:GetRandam_Int(0, 1)
    local f3_local11 = arg0:GetRandam_Int(30, 45)
    local f3_local12 = 1
    local f3_local13 = TARGET_SELF
    local f3_local14 = true
    local f3_local15 = true
    local f3_local16 = arg0:GetDist(TARGET_ENE_0)
    local f3_local17 = 100
    local f3_local18 = arg0:GetRandam_Int(1, 100)
    local f3_local19 = -1
    if f3_local18 <= f3_local17 then
        f3_local19 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f3_local8, f3_local9, f3_local10, f3_local11, f3_local14, f3_local15, f3_local19)
    local f3_local20 = 5
    local f3_local21 = 3000
    local f3_local22 = 3001
    local f3_local23 = TARGET_ENE_0
    local f3_local24 = 10
    local f3_local25 = 0
    local f3_local26 = 0
    local f3_local27 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local20, f3_local21, f3_local23, f3_local24, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f3_local20, f3_local22, f3_local23, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act02(arg0, arg1, arg2)
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
    local f4_local9 = 3000
    local f4_local10 = 3001
    local f4_local11 = TARGET_ENE_0
    local f4_local12 = 10
    local f4_local13 = 0
    local f4_local14 = 0
    local f4_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local8, f4_local9, f4_local11, f4_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f4_local8, f4_local10, f4_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 2.5
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 3
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 5
    local f5_local9 = 3000
    local f5_local10 = 3001
    local f5_local11 = TARGET_ENE_0
    local f5_local12 = 10
    local f5_local13 = 0
    local f5_local14 = 0
    local f5_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local8, f5_local9, f5_local11, f5_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f5_local8, f5_local10, f5_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act04(arg0, arg1, arg2)
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
    local f6_local9 = 3000
    local f6_local10 = 3001
    local f6_local11 = TARGET_ENE_0
    local f6_local12 = 10
    local f6_local13 = 0
    local f6_local14 = 0
    local f6_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local8, f6_local9, f6_local11, f6_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f6_local8, f6_local10, f6_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act05(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 0.5
    local f7_local2 = 99
    local f7_local3 = 999
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 3
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act06(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act07(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act10(arg0, arg1, arg2)
    local f10_local0 = 5
    local f10_local1 = 3000
    local f10_local2 = 3001
    local f10_local3 = TARGET_ENE_0
    local f10_local4 = TARGET_SELF
    local f10_local5 = 10
    local f10_local6 = 0
    local f10_local7 = 0
    local f10_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f10_local0, f10_local1, f10_local3, f10_local5, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f10_local0, f10_local2, f10_local3, successDist2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act11(arg0, arg1, arg2)
    local f11_local0 = 5
    local f11_local1 = TARGET_LowHp_Friend
    local f11_local2 = 5
    local f11_local3 = TARGET_LowHp_Friend
    local f11_local4 = false
    local f11_local5 = arg0:GetDist(TARGET_ENE_0)
    local f11_local6 = 0
    local f11_local7 = arg0:GetRandam_Int(1, 100)
    local f11_local8 = -1
    if f11_local7 <= f11_local6 then
        f11_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local8)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14406) == false then
        local f11_local9 = 5
        local f11_local10 = 3003
        local f11_local11 = TARGET_LowHp_Friend
        local f11_local12 = 2.5
        local f11_local13 = 0
        local f11_local14 = 0
        local f11_local15 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local9, f11_local10, f11_local11, f11_local12, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act12(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act13(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act14(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act15(arg0, arg1, arg2)
    local f15_local0 = 10
    local f15_local1 = TARGET_ENE_0
    local f15_local2 = 4
    local f15_local3 = true
    local f15_local4 = arg0:GetDist(TARGET_ENE_0)
    local f15_local5 = 0
    local f15_local6 = arg0:GetRandam_Int(1, 100)
    local f15_local7 = -1
    if f15_local6 <= f15_local5 then
        f15_local7 = 9910
    end
    if f15_local2 <= f15_local4 then
        local f15_local8 = TARGET_SELF
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_local0, f15_local1, f15_local2, f15_local8, f15_local3, f15_local7)
    else
        local f15_local8 = TARGET_ENE_0
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f15_local0, f15_local1, f15_local2, f15_local8, f15_local3, f15_local7)
    end
    local f15_local8 = arg0:GetRandam_Float(0.1, 2)
    local f15_local9 = TARGET_ENE_0
    local f15_local10 = arg0:GetRandam_Int(0, 1)
    local f15_local11 = arg0:GetRandam_Int(30, 45)
    local f15_local12 = 1
    local f15_local13 = TARGET_SELF
    local f15_local14 = true
    local f15_local15 = true
    local f15_local16 = arg0:GetDist(TARGET_ENE_0)
    local f15_local17 = 0
    local f15_local18 = arg0:GetRandam_Int(1, 100)
    local f15_local19 = -1
    if f15_local18 <= f15_local17 then
        f15_local19 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f15_local8, f15_local9, f15_local10, f15_local11, f15_local14, f15_local15, f15_local19)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act20(arg0, arg1, arg2)
    local f16_local0 = 10
    local f16_local1 = TARGET_ENE_0
    local f16_local2 = 5
    local f16_local3 = TARGET_SELF
    local f16_local4 = false
    local f16_local5 = arg0:GetDist(TARGET_ENE_0)
    local f16_local6 = 100
    local f16_local7 = arg0:GetRandam_Int(1, 100)
    local f16_local8 = -1
    if f16_local7 <= f16_local6 then
        f16_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act21(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 3
    local f17_local2 = TARGET_ENE_0
    local f17_local3 = 1
    local f17_local4 = TARGET_SELF
    local f17_local5 = true
    local f17_local6 = arg0:GetRandam_Int(5, 20)
    local f17_local7 = 100
    local f17_local8 = arg0:GetRandam_Int(1, 100)
    local f17_local9 = -1
    if f17_local8 <= f17_local7 then
        f17_local9 = 9910
    end
    local f17_local10 = 50
    local f17_local11 = arg0:GetRandam_Int(0, 100)
    local f17_local12 = AI_DIR_TYPE_ToR
    if f17_local11 <= f17_local10 then
        f17_local12 = AI_DIR_TYPE_ToL
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local9, f17_local12, f17_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act22(arg0, arg1, arg2)
    local f18_local0 = arg0:GetRandam_Int(1, 3)
    local f18_local1 = TARGET_ENE_0
    local f18_local2 = 10
    local f18_local3 = TARGET_ENE_0
    local f18_local4 = true
    local f18_local5 = arg0:GetDist(TARGET_ENE_0)
    local f18_local6 = 100
    local f18_local7 = arg0:GetRandam_Int(1, 100)
    local f18_local8 = -1
    if f18_local7 <= f18_local6 then
        f18_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act23(arg0, arg1, arg2)
    local f19_local0 = arg0:GetRandam_Int(1, 2)
    local f19_local1 = TARGET_ENE_0
    local f19_local2 = arg0:GetRandam_Int(0, 1)
    local f19_local3 = arg0:GetRandam_Int(30, 45)
    local f19_local4 = 3
    local f19_local5 = TARGET_SELF
    local f19_local6 = true
    local f19_local7 = true
    local f19_local8 = arg0:GetDist(TARGET_ENE_0)
    local f19_local9 = 100
    local f19_local10 = arg0:GetRandam_Int(1, 100)
    local f19_local11 = -1
    if f19_local10 <= f19_local9 then
        f19_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local0, f19_local1, f19_local2, f19_local3, f19_local6, f19_local7, f19_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act24(arg0, arg1, arg2)
    local f20_local0 = 2
    local f20_local1 = TARGET_ENE_0
    local f20_local2 = 45
    local f20_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f20_local4 = true
    local f20_local5 = 100
    local f20_local6 = arg0:GetRandam_Int(1, 100)
    local f20_local7 = -1
    if f20_local6 <= f20_local5 then
        f20_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f20_local0, f20_local1, f20_local2, f20_local7, f20_local3, f20_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act25(arg0, arg1, arg2)
    local f21_local0 = 5
    local f21_local1 = -1
    local f21_local2 = -1
    local f21_local3 = 1
    local f21_local4 = 1
    local f21_local5 = TARGET_ENE_0
    local f21_local6 = 3
    local f21_local7 = 0
    local f21_local8 = true
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f21_local0, f21_local1, 2, f21_local3, f21_local4, f21_local5, f21_local6, f21_local7, f21_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f21_local0, f21_local1, f21_local2, 1, -1, f21_local5, f21_local6, f21_local7, f21_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f21_local0, f21_local1, f21_local2, -1, 1, f21_local5, f21_local6, f21_local7, f21_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act26(arg0, arg1, arg2)
    local f22_local0 = 5
    local f22_local1 = -1
    local f22_local2 = -1
    local f22_local3 = 1
    local f22_local4 = 1
    local f22_local5 = TARGET_ENE_0
    local f22_local6 = 3
    local f22_local7 = 0
    local f22_local8 = true
    local f22_local9 = arg0:GetRandam_Int(1, 2)
    if f22_local9 == 1 then
        f22_local4 = 1
        f22_local3 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6, f22_local7, f22_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_Act27(arg0, arg1, arg2)
    local f23_local0 = TORIMAKI_MIN_DIST
    local f23_local1 = TORIMAKI_MAX_DIST
    local f23_local2 = -1
    local f23_local3 = true
    local f23_local4 = 1
    local f23_local5 = 10
    local f23_local6 = 1.5
    local f23_local7 = 0.5
    local f23_local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, f23_local4)
    local f23_local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, f23_local4)
    local f23_local10 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, f23_local4)
    local f23_local11 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, f23_local4)
    local f23_local12 = arg0:GetDist(TARGET_ENE0)
    local f23_local13 = arg0:GetRandam_Int(0, 1)
    if f23_local9 == true and f23_local8 == true then

    elseif f23_local9 == true and f23_local8 == false then
        f23_local13 = 0
    elseif f23_local9 == false and f23_local8 == true then
        f23_local13 = 1
    elseif f23_local9 == false and f23_local8 == false then
        f23_local13 = 2
    end
    if f23_local1 < f23_local12 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f23_local5, TARGET_ENE_0, arg0:GetRandam_Float(f23_local0, f23_local1), TARGET_SELF, f23_local3, f23_local2)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f23_local12 <= f23_local1 and f23_local0 <= f23_local12 then
        if f23_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f23_local6, TARGET_ENE_0, f23_local13, 100, f23_local3, false, f23_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    elseif f23_local12 < f23_local0 then
        if f23_local11 == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f23_local7, TARGET_ENE_0, arg0:GetRandam_Float(f23_local0, f23_local1), TARGET_ENE_0, f23_local3, f23_local2, GUARD_GOAL_DESIRE_RET_Success)
        elseif f23_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f23_local6, TARGET_ENE_0, f23_local13, 100, f23_local3, false, f23_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ZariganiHasEggs_442010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_ZariganiHasEggs_442010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            arg2:ClearSubGoal()
            local f27_local0 = arg1:GetDist(TARGET_ENE_0)
            local f27_local1 = arg1:GetRandam_Int(1, 100)
            if f27_local0 <= 3 then
                local f27_local2 = 0
                if arg1:IsTargetGuard(TARGET_ENE_0) then
                    f27_local2 = 30
                end
                if f27_local1 <= 15 + f27_local2 then
                    local f27_local3 = 5
                    local f27_local4 = 3000
                    local f27_local5 = TARGET_ENE_0
                    local f27_local6 = 10
                    local f27_local7 = 0
                    local f27_local8 = 0
                    local f27_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local3, f27_local4, f27_local5, successDist2, 0, 0, 0)
                else
                    local f27_local3 = 5
                    local f27_local4 = 3001
                    local f27_local5 = TARGET_ENE_0
                    local f27_local6 = 10
                    local f27_local7 = 0
                    local f27_local8 = 0
                    local f27_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local3, f27_local4, f27_local5, successDist2, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            arg2:ClearSubGoal()
            local f27_local0 = arg1:GetDist(TARGET_ENE_0)
            local f27_local1 = arg1:GetRandam_Int(1, 100)
            if f27_local0 <= 3 then
                if f27_local1 <= 25 then
                    local f27_local2 = 5
                    local f27_local3 = 3000
                    local f27_local4 = 3001
                    local f27_local5 = TARGET_ENE_0
                    local f27_local6 = 10
                    local f27_local7 = 0
                    local f27_local8 = 0
                    local f27_local9 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f27_local2, f27_local3, f27_local5, f27_local6, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local2, f27_local4, f27_local5, successDist2, 0, 0, 0)
                elseif f27_local1 <= 50 then
                    local f27_local2 = arg1:IsFinishTimer(0)
                    if f27_local2 then
                        f27_local2 = 5
                        local f27_local3 = 3000
                        local f27_local4 = 3001
                        local f27_local5 = TARGET_ENE_0
                        local f27_local6 = 10
                        local f27_local7 = 0
                        local f27_local8 = 0
                        local f27_local9 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f27_local2, f27_local3, f27_local5, f27_local6, 0, 0, 0)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local2, f27_local4, f27_local5, successDist2, 0, 0, 0)
                        arg1:SetTimer(0, 10)
                    else

                    end
                end
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local f27_local0 = arg1:GetDist(TARGET_ENE_0)
        local f27_local1 = arg1:GetRandam_Int(1, 100)
        local f27_local2 = arg1:GetRandam_Int(1, 100)
        if f27_local0 <= 6 and f27_local1 <= 100 then
            arg2:ClearSubGoal()
            if f27_local2 <= 25 then
                ZariganiHasEggs_442010_Act22(arg1, arg2)
            elseif f27_local2 <= 60 then
                ZariganiHasEggs_442010_Act25(arg1, arg2)
            else
                if arg1:IsFinishTimer(1) then

                else

                end
                arg1:SetTimer(1, 2)
            end
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) then
        local f27_local0 = arg1:GetDist(TARGET_ENE_0)
        local f27_local1 = arg1:GetRandam_Int(1, 100)
        local f27_local2 = arg1:GetRandam_Int(1, 100)
        if f27_local0 <= 5 and f27_local1 <= 40 then
            arg2:ClearSubGoal()
            if f27_local2 <= 60 then
                local f27_local3 = arg1:GetRandam_Int(1, 2)
                local f27_local4 = TARGET_ENE_0
                local f27_local5 = arg1:GetRandam_Int(0, 1)
                local f27_local6 = arg1:GetRandam_Int(30, 45)
                local f27_local7 = 3
                local f27_local8 = TARGET_SELF
                local f27_local9 = true
                local f27_local10 = true
                local f27_local11 = arg1:GetDist(TARGET_ENE_0)
                local f27_local12 = 100
                local f27_local13 = arg1:GetRandam_Int(1, 100)
                local f27_local14 = -1
                if f27_local13 <= f27_local12 then
                    f27_local14 = 9910
                end
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f27_local3, f27_local4, f27_local5, f27_local6, f27_local9, f27_local10, f27_local14)
            else
                local f27_local3 = 5
                local f27_local4 = 3000
                local f27_local5 = 3001
                local f27_local6 = TARGET_ENE_0
                local f27_local7 = 10
                local f27_local8 = 0
                local f27_local9 = 0
                local f27_local10 = 0
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f27_local3, f27_local4, f27_local6, f27_local7, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f27_local3, f27_local5, f27_local6, successDist2, 0, 0, 0)
            end
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        arg2:ClearSubGoal()
    elseif arg1:IsInterupt(INTERUPT_SuccessParr) then
        arg2:ClearSubGoal()
        return true
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) then
        arg2:ClearSubGoal()
        return true
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        local f27_local0 = arg1:GetDist(TARGET_ENE_0)
        local f27_local1 = arg1:GetRandam_Int(1, 100)
        local f27_local2 = arg1:GetRandam_Int(1, 100)
        if f27_local1 <= 75 then
            arg2:ClearSubGoal()
            if f27_local0 <= 2.5 then
                ZariganiHasEggs_442010_Act01(arg1, arg2)
            elseif f27_local0 <= 12 then
                local f27_local3, f27_local4 = nil
                if f27_local1 <= 75 then
                    f27_local3 = 5
                    f27_local4 = 3007
                else
                    f27_local3 = 10.5
                    f27_local4 = 3006
                end
                local f27_local5 = arg1:GetDist(TARGET_ENE_0)
                local f27_local6 = 0
                local f27_local7 = 999
                local f27_local8 = 100
                local f27_local9 = 100
                local f27_local10 = 0
                local f27_local11 = 3
                Approach_Act_Flex(arg1, arg2, f27_local3, f27_local6, f27_local7, f27_local8, f27_local9, f27_local10, f27_local11)
                local f27_local12 = 5
                local f27_local13 = TARGET_ENE_0
                local f27_local14 = 10
                local f27_local15 = 0
                local f27_local16 = 0
                local f27_local17 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f27_local12, f27_local4, f27_local13, f27_local14, 0, 0, 0)
            else
                local f27_local3 = 10
                local f27_local4 = TARGET_ENE_0
                local f27_local5 = 5
                local f27_local6 = TARGET_SELF
                local f27_local7 = false
                local f27_local8 = arg1:GetDist(TARGET_ENE_0)
                local f27_local9 = 100
                local f27_local10 = arg1:GetRandam_Int(1, 100)
                local f27_local11 = -1
                if f27_local10 <= f27_local9 then
                    f27_local11 = 9910
                end
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, f27_local3, f27_local4, f27_local5, f27_local6, f27_local7, f27_local11)
            end
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_GuardBreak) then
        arg2:ClearSubGoal()
        ZariganiHasEggs_442010_Act03(arg1, arg2)
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
        local f27_local0 = arg1:GetRandam_Int(1, 100)
        local f27_local1 = arg1:GetDist(TARGET_ENE_0)
        if f27_local1 <= 5 then
            arg2:ClearSubGoal()
            ZariganiHasEggs_442010_Act25(arg1, arg2)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_ZariganiHasEggs_442010_AfterAttackAct, "ZariganiHasEggs_442010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ZariganiHasEggs_442010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


