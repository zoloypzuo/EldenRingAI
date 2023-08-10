RegisterTableGoal(GOAL_ChimeraJsScaletype345100_Battle, "ChimeraJsScaletype345100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ChimeraJsScaletype345100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(2, 3000)
    arg1:EnableUnfavorableAttackCheck(2, 3001)
    arg1:EnableUnfavorableAttackCheck(2, 3002)
    arg1:EnableUnfavorableAttackCheck(2, 3003)
    arg1:EnableUnfavorableAttackCheck(2, 3004)
    arg1:EnableUnfavorableAttackCheck(2, 3005)
    arg1:EnableUnfavorableAttackCheck(2, 3006)
    arg1:EnableUnfavorableAttackCheck(2, 3007)
    arg1:EnableUnfavorableAttackCheck(2, 3008)
    arg1:EnableUnfavorableAttackCheck(2, 3009)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 15 then
            f2_local0[14] = 100
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[6] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 70
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 15 then
            f2_local0[14] = 100
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[6] = 20
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 50
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if f2_local3 >= 5 then
            f2_local0[17] = 100
        else
            f2_local0[2] = 10
            f2_local0[3] = 20
            f2_local0[6] = 30
            f2_local0[17] = 40
        end
    elseif f2_local3 >= 6.5 then
        f2_local0[1] = 10
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 50
        f2_local0[5] = 30
        f2_local0[6] = 10
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
    elseif f2_local3 >= 4 then
        f2_local0[1] = 20
        f2_local0[2] = 0
        f2_local0[3] = 30
        f2_local0[4] = 0
        f2_local0[5] = 40
        f2_local0[6] = 10
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
    else
        f2_local0[1] = 40
        f2_local0[2] = 0
        f2_local0[3] = 20
        f2_local0[4] = 0
        f2_local0[5] = 20
        f2_local0[6] = 30
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 8, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 6000, 8, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 8, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3008, 8, f2_local0[6], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, ChimeraJsScaletype345100_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, ChimeraJsScaletype345100_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, ChimeraJsScaletype345100_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, ChimeraJsScaletype345100_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, ChimeraJsScaletype345100_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, ChimeraJsScaletype345100_Act06)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, ChimeraJsScaletype345100_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, ChimeraJsScaletype345100_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, ChimeraJsScaletype345100_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, ChimeraJsScaletype345100_Act17)
    local f2_local6 = REGIST_FUNC(arg1, arg2, ChimeraJsScaletype345100ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function ChimeraJsScaletype345100_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 3
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 3
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = 3002
    local f3_local11 = 3003
    local f3_local12 = TARGET_ENE_0
    local f3_local13 = 10
    local f3_local14 = 0
    local f3_local15 = 0
    local f3_local16 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local8, f3_local9, f3_local12, f3_local13, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f3_local8, f3_local10, f3_local12, f3_local13, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f3_local8, f3_local11, f3_local12, f3_local13, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsScaletype345100_Act02(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f4_local0 = 5
    local f4_local1 = 3001
    local f4_local2 = TARGET_ENE_0
    local f4_local3 = TARGET_SELF
    local f4_local4 = 10
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f4_local0, f4_local1, f4_local2, f4_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsScaletype345100_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 6
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 3
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f5_local8 = 5
    local f5_local9 = 3004
    local f5_local10 = TARGET_ENE_0
    local f5_local11 = 10
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local8, f5_local9, f5_local10, f5_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsScaletype345100_Act04(arg0, arg1, arg2)
    local f6_local0 = 5
    local f6_local1 = 6000
    local f6_local2 = 3005
    local f6_local3 = TARGET_ENE_0
    local f6_local4 = 10
    local f6_local5 = 0
    local f6_local6 = 0
    local f6_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local1, f6_local3, f6_local4, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f6_local0, f6_local2, f6_local3, f6_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsScaletype345100_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 5
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 3
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 5
    local f7_local9 = 3006
    local f7_local10 = 3007
    local f7_local11 = TARGET_ENE_0
    local f7_local12 = 10
    local f7_local13 = 0
    local f7_local14 = 0
    local f7_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local8, f7_local9, f7_local11, f7_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f7_local8, f7_local10, f7_local11, f7_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsScaletype345100_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 3
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 100
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 3
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local8 = 5
    local f8_local9 = 3008
    local f8_local10 = 3007
    local f8_local11 = TARGET_ENE_0
    local f8_local12 = 10
    local f8_local13 = 0
    local f8_local14 = 0
    local f8_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local8, f8_local9, f8_local11, f8_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f8_local8, f8_local10, f8_local11, f8_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsScaletype345100_Act14(arg0, arg1, arg2)
    local f9_local0 = 10
    local f9_local1 = TARGET_ENE_0
    local f9_local2 = 15
    local f9_local3 = TARGET_SELF
    local f9_local4 = false
    local f9_local5 = arg0:GetDist(TARGET_ENE_0)
    local f9_local6 = 0
    local f9_local7 = arg0:GetRandam_Int(1, 100)
    local f9_local8 = -1
    if f9_local7 <= f9_local6 then
        f9_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsScaletype345100_Act15(arg0, arg1, arg2)
    local f10_local0 = 3
    local f10_local1 = TARGET_ENE_0
    local f10_local2 = 8
    local f10_local3 = TARGET_ENE_0
    local f10_local4 = true
    local f10_local5 = arg0:GetDist(TARGET_ENE_0)
    local f10_local6 = 0
    local f10_local7 = arg0:GetRandam_Int(1, 100)
    local f10_local8 = -1
    if f10_local7 <= f10_local6 then
        f10_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsScaletype345100_Act16(arg0, arg1, arg2)
    local f11_local0 = arg0:GetRandam_Int(1, 2)
    local f11_local1 = TARGET_ENE_0
    local f11_local2 = arg0:GetRandam_Int(0, 1)
    local f11_local3 = arg0:GetRandam_Int(30, 45)
    local f11_local4 = 3
    local f11_local5 = TARGET_SELF
    local f11_local6 = true
    local f11_local7 = true
    local f11_local8 = arg0:GetDist(TARGET_ENE_0)
    local f11_local9 = 0
    local f11_local10 = arg0:GetRandam_Int(1, 100)
    local f11_local11 = -1
    if f11_local10 <= f11_local9 then
        f11_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f11_local0, f11_local1, f11_local2, f11_local3, f11_local6, f11_local7, f11_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ChimeraJsScaletype345100_Act17(arg0, arg1, arg2)
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

function ChimeraJsScaletype345100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_ChimeraJsScaletype345100_AfterAttackAct, 10)
    
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
            local f16_local0 = arg1:GetDist(TARGET_ENE_0)
            local f16_local1 = arg1:GetRandam_Int(1, 100)
            if f16_local0 <= 3.5 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 160) then
                    local f16_local2 = 5
                    local f16_local3 = 3003
                    local f16_local4 = TARGET_ENE_0
                    local f16_local5 = 10
                    local f16_local6 = 0
                    local f16_local7 = 0
                    local f16_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f16_local2, f16_local3, f16_local4, successDist2, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            arg2:ClearSubGoal()
            local f16_local0 = arg1:GetDist(TARGET_ENE_0)
            local f16_local1 = arg1:GetRandam_Int(1, 100)
            if f16_local0 <= 3 then

            elseif f16_local0 <= 8 then
                local f16_local2 = 5
                local f16_local3 = 3009
                local f16_local4 = 3005
                local f16_local5 = TARGET_ENE_0
                local f16_local6 = 10
                local f16_local7 = 0
                local f16_local8 = 0
                local f16_local9 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f16_local2, f16_local3, f16_local5, f16_local6, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f16_local2, f16_local4, f16_local5, f16_local6, 0, 0, 0)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_ChimeraJsScaletype345100_AfterAttackAct, "ChimeraJsScaletype345100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ChimeraJsScaletype345100_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


