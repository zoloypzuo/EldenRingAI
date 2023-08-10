RegisterTableGoal(GOAL_WatchdogSword426000_Battle, "WatchdogSword426000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WatchdogSword426000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 0)
    arg1:SetTimer(10, 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:GetStringIndexedNumber("Loop_Cnt")
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 13408) == false then
        f2_local0[28] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5880) and arg1:GetTimer(10) > 5 then
        f2_local0[45] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13430) and arg1:GetNumber(1) ~= 1 then
        f2_local0[10] = 60
    elseif f2_local3 < 1 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 6) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13410) then
                f2_local0[7] = 30
                f2_local0[9] = 10
                f2_local0[21] = 50
                f2_local0[24] = 40
            else
                f2_local0[7] = 50
                f2_local0[9] = 40
                f2_local0[21] = 50
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 6) then
            f2_local0[4] = 30
            f2_local0[6] = 50
            f2_local0[7] = 10
            f2_local0[9] = 10
            f2_local0[22] = 50
            f2_local0[21] = 999
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 6) then
            f2_local0[3] = 30
            f2_local0[5] = 50
            f2_local0[7] = 10
            f2_local0[9] = 10
            f2_local0[22] = 50
            f2_local0[21] = 999
        else
            f2_local0[1] = 30
            f2_local0[2] = 20
            f2_local0[7] = 20
            f2_local0[9] = 10
            f2_local0[21] = 5
            f2_local0[22] = 50
        end
    elseif f2_local3 < 3 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 6) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13410) then
                f2_local0[7] = 30
                f2_local0[9] = 30
                f2_local0[10] = 60
                f2_local0[21] = 30
                f2_local0[24] = 40
            else
                f2_local0[7] = 40
                f2_local0[9] = 40
                f2_local0[10] = 60
                f2_local0[21] = 40
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 6) then
            f2_local0[4] = 40
            f2_local0[6] = 50
            f2_local0[9] = 10
            f2_local0[10] = 60
            f2_local0[21] = 999
            f2_local0[22] = 50
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 6) then
            f2_local0[3] = 40
            f2_local0[5] = 50
            f2_local0[9] = 10
            f2_local0[10] = 60
            f2_local0[21] = 999
            f2_local0[22] = 50
        else
            f2_local0[1] = 45
            f2_local0[2] = 20
            f2_local0[9] = 10
            f2_local0[10] = 60
            f2_local0[22] = 50
        end
    elseif f2_local3 < 5 then
        f2_local0[1] = 50
        f2_local0[2] = 30
        f2_local0[8] = 20
        f2_local0[10] = 60
        f2_local0[29] = 10
        f2_local0[22] = 50
    elseif f2_local3 < 8 then
        f2_local0[8] = 40
        f2_local0[10] = 60
        f2_local0[29] = 40
        f2_local0[41] = 10
        f2_local0[22] = 50
        if arg1:HasSpecialEffectId(TARGET_SELF, 13421) == false then
            f2_local0[22] = 0
        end
    else
        f2_local0[8] = 40
        f2_local0[10] = 60
        f2_local0[29] = 40
        f2_local0[41] = 20
        f2_local0[22] = 150
        if arg1:HasSpecialEffectId(TARGET_SELF, 13421) == false then
            f2_local0[22] = 0
        end
    end
    f2_local0[10] = SetCoolTime(arg1, arg2, 3029, 10 + arg1:GetRandam_Int(0, 10), f2_local0[10], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3015, 10 + arg1:GetRandam_Int(0, 5), f2_local0[13], 0)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3016, 10 + arg1:GetRandam_Int(0, 5), f2_local0[14], 0)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3006, 30 + arg1:GetRandam_Int(0, 5), f2_local0[21], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3009, 10 + arg1:GetRandam_Int(0, 5), f2_local0[22], 0)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3007, 10 + arg1:GetRandam_Int(0, 5), f2_local0[22], 0)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3030, 10 + arg1:GetRandam_Int(0, 5), f2_local0[22], 0)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3031, 10 + arg1:GetRandam_Int(0, 5), f2_local0[22], 0)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3032, 10 + arg1:GetRandam_Int(0, 5), f2_local0[22], 0)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3033, 10 + arg1:GetRandam_Int(0, 5), f2_local0[22], 0)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3038, 10 + arg1:GetRandam_Int(0, 5), f2_local0[22], 5)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3039, 10 + arg1:GetRandam_Int(0, 5), f2_local0[22], 5)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3008, 10 + arg1:GetRandam_Int(0, 5), f2_local0[23], 0)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3005, 15 + arg1:GetRandam_Int(0, 5), f2_local0[24], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3030, 15 + arg1:GetRandam_Int(0, 5), f2_local0[24], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3031, 15 + arg1:GetRandam_Int(0, 5), f2_local0[24], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3017, 15 + arg1:GetRandam_Int(0, 5), f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3002, 5 + arg1:GetRandam_Int(0, 5), f2_local0[8], 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 13422) then
        f2_local0[10] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act10)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act24)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act29)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act42)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act45)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, WatchdogSword426000_Act48)
    local f2_local7 = REGIST_FUNC(arg1, arg2, WatchdogSword426000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function WatchdogSword426000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = arg0:GetRandam_Int(1, 100)
    local f3_local2 = 3.5
    local f3_local3 = 0
    local f3_local4 = 999
    local f3_local5 = 0
    local f3_local6 = 0
    local f3_local7 = 1.5
    local f3_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8)
    local f3_local9 = 3000
    local f3_local10 = 3001
    local f3_local11 = 3002
    local f3_local12 = 3013
    local f3_local13 = 3003
    local f3_local14 = 3004
    local f3_local15 = 3.5
    local f3_local16 = 0
    local f3_local17 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local9, TARGET_ENE_0, f3_local15, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = arg0:GetRandam_Int(1, 100)
    local f4_local2 = 3
    local f4_local3 = 0
    local f4_local4 = 999
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 1.5
    local f4_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8)
    local f4_local9 = 3013
    local f4_local10 = 3001
    local f4_local11 = 3002
    local f4_local12 = 3003
    local f4_local13 = 3004
    local f4_local14 = 3.5
    local f4_local15 = 0
    local f4_local16 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local9, TARGET_ENE_0, f4_local14, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = arg0:GetRandam_Int(1, 100)
    local f5_local2 = 3010
    local f5_local3 = 3001
    local f5_local4 = 3002
    local f5_local5 = 3013
    local f5_local6 = 3003
    local f5_local7 = 3004
    local f5_local8 = 3.5
    local f5_local9 = 0
    local f5_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local2, TARGET_ENE_0, f5_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = arg0:GetRandam_Int(1, 100)
    local f6_local2 = 3011
    local f6_local3 = 3001
    local f6_local4 = 3002
    local f6_local5 = 3013
    local f6_local6 = 3003
    local f6_local7 = 3004
    local f6_local8 = 3.5
    local f6_local9 = 0
    local f6_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local2, TARGET_ENE_0, f6_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = arg0:GetRandam_Int(1, 100)
    local f7_local2 = 3.5
    local f7_local3 = 0
    local f7_local4 = 999
    local f7_local5 = 0
    local f7_local6 = 0
    local f7_local7 = 3
    local f7_local8 = 3
    Approach_Act_Flex(arg0, arg1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7, f7_local8)
    local f7_local9 = 3015
    local f7_local10 = 3018
    local f7_local11 = 4
    local f7_local12 = 0
    local f7_local13 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local9, TARGET_ENE_0, f7_local11, 0, 0, 0, 0)
    if f7_local1 <= 60 and arg0:GetAttackPassedTime(3018) >= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local10, TARGET_ENE_0, f7_local11, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = arg0:GetRandam_Int(1, 100)
    local f8_local2 = 3.5
    local f8_local3 = 0
    local f8_local4 = 999
    local f8_local5 = 0
    local f8_local6 = 0
    local f8_local7 = 3
    local f8_local8 = 3
    Approach_Act_Flex(arg0, arg1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7, f8_local8)
    local f8_local9 = 3016
    local f8_local10 = 3019
    local f8_local11 = 4
    local f8_local12 = 0
    local f8_local13 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local9, TARGET_ENE_0, f8_local11, 0, 0, 0, 0)
    if f8_local1 <= 60 and arg0:GetAttackPassedTime(3019) >= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local10, TARGET_ENE_0, f8_local11, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = arg0:GetRandam_Int(1, 100)
    local f9_local2 = 1
    local f9_local3 = 0
    local f9_local4 = 999
    local f9_local5 = 0
    local f9_local6 = 0
    local f9_local7 = 3
    local f9_local8 = 3
    Approach_Act_Flex(arg0, arg1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7, f9_local8)
    local f9_local9 = 3017
    local f9_local10 = 4
    local f9_local11 = 0
    local f9_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local9, TARGET_ENE_0, f9_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = arg0:GetRandam_Int(1, 100)
    local f10_local2 = 6.5
    local f10_local3 = 0
    local f10_local4 = 999
    local f10_local5 = 0
    local f10_local6 = 0
    local f10_local7 = 1.5
    local f10_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7, f10_local8)
    local f10_local9 = 3002
    local f10_local10 = 3003
    local f10_local11 = 3004
    local f10_local12 = 5
    local f10_local13 = 0
    local f10_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local9, TARGET_ENE_0, f10_local12, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetRandam_Int(1, 100)
    local f11_local2 = 6.5
    local f11_local3 = 0
    local f11_local4 = 999
    local f11_local5 = 0
    local f11_local6 = 0
    local f11_local7 = 1.5
    local f11_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7, f11_local8)
    local f11_local9 = 3024
    local f11_local10 = 3003
    local f11_local11 = 3004
    local f11_local12 = 5
    local f11_local13 = 0
    local f11_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local9, TARGET_ENE_0, f11_local12, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act10(arg0, arg1, arg2)
    Loop_Cnt = 0
    arg0:SetNumber(1, 1)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetRandam_Int(1, 100)
    local f12_local2 = 25
    local f12_local3 = 0
    local f12_local4 = 999
    local f12_local5 = 0
    local f12_local6 = 0
    local f12_local7 = 3
    local f12_local8 = 3
    Approach_Act_Flex(arg0, arg1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7, f12_local8)
    local f12_local9 = 3027
    local f12_local10 = 5
    local f12_local11 = 0
    local f12_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local9, TARGET_ENE_0, f12_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act16(arg0, arg1, arg2)
    local f13_local0 = 3
    local f13_local1 = 0
    local f13_local2 = 999
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 5
    local f13_local6 = 5
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3004
    local f13_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 0
    local f13_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3014, TARGET_ENE_0, f13_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, f13_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act17(arg0, arg1, arg2)
    local f14_local0 = 3
    local f14_local1 = 0
    local f14_local2 = 999
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 5
    local f14_local6 = 5
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3004
    local f14_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local9 = 0
    local f14_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, f14_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, f14_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act18(arg0, arg1, arg2)
    local f15_local0 = 3
    local f15_local1 = 0
    local f15_local2 = 999
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 5
    local f15_local6 = 5
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 3004
    local f15_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local9 = 0
    local f15_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3018, TARGET_ENE_0, f15_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, f15_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, f15_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, f15_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, f15_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, f15_local8, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act19(arg0, arg1, arg2)
    local f16_local0 = 3000
    local f16_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 1.5, TARGET_SELF, true, 9920)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act20(arg0, arg1, arg2)
    local f17_local0 = 3020
    local f17_local1 = 999
    local f17_local2 = 0
    local f17_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local0, TARGET_ENE_0, f17_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act21(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 7
    local f18_local2 = 0
    local f18_local3 = 999
    local f18_local4 = 0
    local f18_local5 = 0
    local f18_local6 = 0.5
    local f18_local7 = 0.5
    Approach_Act_Flex(arg0, arg1, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6, f18_local7)
    local f18_local8 = 3006
    local f18_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local10 = 0
    local f18_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local8, TARGET_ENE_0, f18_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act22(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 3007
    local f19_local2 = 3038
    local f19_local3 = 3032
    local f19_local4 = 3009
    local f19_local5 = 3039
    local f19_local6 = 3033
    local f19_local7 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local8 = 0
    local f19_local9 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13411) then
        if arg0:HasSpecialEffectId(TARGET_SELF, 13420) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local4, TARGET_ENE_0, f19_local7, f19_local8, f19_local9, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13421) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local5, TARGET_ENE_0, f19_local7, f19_local8, f19_local9, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13422) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local6, TARGET_ENE_0, f19_local7, f19_local8, f19_local9, 0, 0)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13420) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local1, TARGET_ENE_0, f19_local7, f19_local8, f19_local9, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13421) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local2, TARGET_ENE_0, f19_local7, f19_local8, f19_local9, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13422) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local3, TARGET_ENE_0, f19_local7, f19_local8, f19_local9, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act23(arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = 999
    local f20_local2 = 0
    local f20_local3 = 999
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 1
    local f20_local7 = 1
    Approach_Act_Flex(arg0, arg1, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7)
    local f20_local8 = 3008
    local f20_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local10 = 0
    local f20_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local8, TARGET_ENE_0, f20_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act24(arg0, arg1, arg2)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = 7
    local f21_local2 = 0
    local f21_local3 = 999
    local f21_local4 = 0
    local f21_local5 = 0
    local f21_local6 = 0.5
    local f21_local7 = 0.5
    Approach_Act_Flex(arg0, arg1, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6, f21_local7)
    local f21_local8 = 3005
    local f21_local9 = 3030
    local f21_local10 = 3031
    local f21_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local12 = 0
    local f21_local13 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13420) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f21_local8, TARGET_ENE_0, f21_local11, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13421) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f21_local9, TARGET_ENE_0, f21_local11, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13422) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f21_local10, TARGET_ENE_0, f21_local11, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act28(arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = 3023
    local f22_local2 = 3036
    local f22_local3 = 3037
    local f22_local4 = 3022
    local f22_local5 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local6 = 0
    local f22_local7 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13410) then
        if arg0:HasSpecialEffectId(TARGET_SELF, 13420) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f22_local1, TARGET_ENE_0, f22_local5, f22_local6, f22_local7, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13421) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f22_local2, TARGET_ENE_0, f22_local5, f22_local6, f22_local7, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13422) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f22_local3, TARGET_ENE_0, f22_local5, f22_local6, f22_local7, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f22_local4, TARGET_ENE_0, f22_local5, f22_local6, f22_local7, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act29(arg0, arg1, arg2)
    local f23_local0 = arg0:GetDist(TARGET_ENE_0)
    local f23_local1 = 13
    local f23_local2 = 0
    local f23_local3 = 999
    local f23_local4 = 0
    local f23_local5 = 0
    local f23_local6 = 0.5
    local f23_local7 = 0.5
    Approach_Act_Flex(arg0, arg1, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6, f23_local7)
    local f23_local8 = 3025
    local f23_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local10 = 0
    local f23_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f23_local8, TARGET_ENE_0, f23_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act41(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 4, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act45(arg0, arg1, arg2)
    local f27_local0 = arg0:GetDist(TARGET_ENE_0)
    local f27_local1 = arg0:GetRandam_Float(8, 10)
    local f27_local2 = arg0:GetRandam_Float(8, 10)
    local f27_local3 = 999
    local f27_local4 = 0
    local f27_local5 = arg0:GetRandam_Int(1, 100)
    local f27_local6 = arg0:GetRandam_Float(1, 1.8)
    if f27_local1 <= f27_local0 then
        Approach_Act(arg0, arg1, f27_local1, f27_local3, f27_local4, f27_local6)
    elseif f27_local5 > 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f27_local6, TARGET_ENE_0, f27_local2, TARGET_ENE_0, true, IsGuard)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WatchdogSword426000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_WatchdogSword426000_AfterAttackAct, 10)
    
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
    local f32_local5 = arg1:GetRandam_Int(0, 10)
    local f32_local6 = arg1:GetRandam_Int(0, 5)
    if arg1:IsInterupt(INTERUPT_FindAttack) and f32_local2 < 5 and arg1:HasSpecialEffectId(TARGET_SELF, 5880) == true and arg1:GetTimer(10) <= 0 then
        arg1:SetTimer(10, 20)
        return true
    end
    if arg1:GetTimer(10) <= 0 then
        if arg1:IsLadderAct(TARGET_SELF) then
            return false
        end
        if arg1:IsInterupt(INTERUPT_Shoot) then
            if f32_local2 < 5 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13420) and arg1:GetAttackPassedTime(3007) >= 30 and arg1:GetAttackPassedTime(3009) >= 30 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13411) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 0, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13421) and arg1:GetAttackPassedTime(3038) >= 30 and arg1:GetAttackPassedTime(3039) >= 30 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13411) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3039, TARGET_ENE_0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, 0, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13422) and arg1:GetAttackPassedTime(3032) >= 30 and arg1:GetAttackPassedTime(3033) >= 30 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13411) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 0, 0, 0)
                        return true
                    end
                elseif arg1:GetAttackPassedTime(3025) >= 15 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3025, TARGET_ENE_0, 10, 0, 0, 0, 0)
                    return true
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 50, 8) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 0, 0, 0)
                    return true
                end
            elseif f32_local2 > 3 then
                if f32_local2 < 6 and arg1:GetAttackPassedTime(3002) >= 5 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 10, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3025, TARGET_ENE_0, 10, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, 0, 0, 0)
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            if 5 < Loop_Cnt then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, 50, 7) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                Loop_Cnt = Loop_Cnt + 1
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, 0, 0, 0)
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
            if Loop_Cnt < 2 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 50, 7) and f32_local0 < 30 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, 50, 7) and f32_local0 < 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, 0, 0, 0)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 50, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13420) and arg1:GetAttackPassedTime(3007) >= 30 and arg1:GetAttackPassedTime(3009) >= 20 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13411) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 0, 0, 0)
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13421) and arg1:GetAttackPassedTime(3038) >= 30 and arg1:GetAttackPassedTime(3039) >= 20 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13411) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3039, TARGET_ENE_0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, 0, 0, 0)
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13422) and arg1:GetAttackPassedTime(3032) >= 30 and arg1:GetAttackPassedTime(3033) >= 20 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13411) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 0, 0, 0)
                    return true
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5028) and f32_local2 < 10 and f32_local0 <= 80 then
            arg2:ClearSubGoal()
            arg1:SetNumber(0, f32_local4 + 1)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5029) and f32_local2 < 10 then
            if arg1:GetNumber(0) < 2 then
                if f32_local0 <= 70 then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(0, f32_local4 + 1)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                end
            elseif arg1:GetNumber(0) < 3 and f32_local0 <= 20 then
                arg2:ClearSubGoal()
                arg1:SetNumber(0, f32_local4 + 2)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            if f32_local2 < 4 then
                if f32_local2 < 1 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 30, 50, 6) then
                    if arg1:GetAttackPassedTime(3017) >= 3 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 10, 0, 0, 0)
                        return true
                    end
                elseif f32_local2 > 1 and f32_local2 < 4 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 30, 50, 6) then
                    if f32_local0 <= 70 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10, 0, 0, 0)
                        return true
                    elseif arg1:GetAttackPassedTime(3013) >= 10 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 10, 0, 0, 0)
                        return true
                    elseif f32_local1 <= 50 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 10, 0, 0, 0)
                        return true
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 50, 6) then
                    if arg1:GetAttackPassedTime(3024) >= 20 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 10, 0, 0, 0)
                        return true
                    elseif arg1:GetAttackPassedTime(3015) >= 10 then
                        if f32_local0 <= 30 then
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 10, 0, 0, 0)
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 10, 0, 0, 0)
                            return true
                        else
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 10, 0, 0, 0)
                            return true
                        end
                    elseif arg1:GetAttackPassedTime(3010) >= 15 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                        return true
                    elseif arg1:GetAttackPassedTime(3006) >= 15 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 10, 0, 0, 0)
                        return true
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 50, 6) then
                    if arg1:GetAttackPassedTime(3024) >= 20 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 10, 0, 0, 0)
                        return true
                    elseif arg1:GetAttackPassedTime(3016) >= 10 then
                        if f32_local0 <= 30 then
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 10, 0, 0, 0)
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 10, 0, 0, 0)
                            return true
                        else
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 10, 0, 0, 0)
                            return true
                        end
                    elseif arg1:GetAttackPassedTime(3011) >= 15 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 10, 0, 0, 0)
                        return true
                    elseif arg1:GetAttackPassedTime(3006) >= 15 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 10, 0, 0, 0)
                        return true
                    end
                end
            elseif f32_local2 > 4 and f32_local2 < 6 and arg1:GetAttackPassedTime(3002) >= 5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 50, 10) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_WatchdogSword426000_AfterAttackAct, "WatchdogSword426000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WatchdogSword426000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f33_local0 = arg1:GetDist(TARGET_ENE_0)
    local f33_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f33_local0 >= 5 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif f33_local0 >= 2 then
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


