RegisterTableGoal(GOAL_PerfumerCourt_370000_Battle, "PerfumerCourt_370000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PerfumerCourt_370000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    
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
        if f2_local3 >= 20 then
            f2_local0[11] = 100
        else
            f2_local0[2] = 80
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 20 then
            f2_local0[11] = 100
        else
            f2_local0[2] = 60
            f2_local0[3] = 20
            f2_local0[4] = 20
            f2_local0[5] = 0
            f2_local0[6] = 0
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local0[24] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) == true then
        if f2_local3 >= 7 then
            f2_local0[2] = 70
            f2_local0[3] = 20
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 0
        elseif f2_local3 >= 4 then
            f2_local0[2] = 30
            f2_local0[3] = 0
            f2_local0[4] = 30
            f2_local0[5] = 0
            f2_local0[6] = 40
        elseif f2_local3 >= 2 then
            f2_local0[2] = 30
            f2_local0[3] = 0
            f2_local0[4] = 20
            f2_local0[5] = 0
            f2_local0[6] = 50
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 30
            f2_local0[6] = 70
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        if f2_local3 >= 6 then
            f2_local0[1] = 0
            f2_local0[2] = 70
            f2_local0[3] = 20
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 0
        elseif f2_local3 >= 3 then
            f2_local0[1] = 0
            f2_local0[2] = 30
            f2_local0[3] = 30
            f2_local0[4] = 20
            f2_local0[5] = 0
            f2_local0[6] = 20
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 60
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[27] = 40
        end
    end
    f2_local1[2] = REGIST_FUNC(arg1, arg2, PerfumerCourt_370000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, PerfumerCourt_370000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, PerfumerCourt_370000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, PerfumerCourt_370000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, PerfumerCourt_370000_Act06)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, PerfumerCourt_370000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, PerfumerCourt_370000_Act11)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, PerfumerCourt_370000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, PerfumerCourt_370000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, PerfumerCourt_370000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, PerfumerCourt_370000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, PerfumerCourt_370000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, PerfumerCourt_370000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, PerfumerCourt_370000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, PerfumerCourt_370000_Act27)
    local f2_local6 = REGIST_FUNC(arg1, arg2, HoundOfBorus_419000_Act02_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function PerfumerCourt_370000_Act01(arg0, arg1, arg2)
    
end

function PerfumerCourt_370000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_FRI_0)
    local f4_local1 = arg0:GetToTargetAngle(TARGET_FRI_0)
    if f4_local0 <= -1 then

    elseif f4_local0 < arg0:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, f4_local1, 10, AI_SPA_DIR_TYPE_TargetF) and arg0:HasSpecialEffectId(TARGET_FRI_0, 14405) == false then
        if f4_local0 <= 3.5 then
            local f4_local2 = arg0:GetDist(TARGET_FRI_0)
            local f4_local3 = 5.5
            local f4_local4 = 0
            local f4_local5 = 999
            local f4_local6 = 100
            local f4_local7 = 0
            local f4_local8 = 3
            local f4_local9 = 3
            Approach_Act_Flex(arg0, arg1, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8, f4_local9)
            local f4_local10 = 5
            local f4_local11 = 3003
            local f4_local12 = TARGET_FRI_0
            local f4_local13 = 6.5
            local f4_local14 = 0
            local f4_local15 = 0
            local f4_local16 = 0
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local10, f4_local11, f4_local12, f4_local13, 0, 0, 0)
        elseif f4_local0 <= 15 then
            local f4_local2 = TARGET_FRI_0
            local f4_local3 = 5
            local f4_local4 = 3013
            local f4_local5 = 15.5
            local f4_local6 = 0
            local f4_local7 = 0
            local f4_local8 = 0
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local3, f4_local4, f4_local2, f4_local5, 0, 0, 0)
        else

        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerCourt_370000_Act03(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f5_local0 = 10
    local f5_local1 = TARGET_ENE_0
    local f5_local2 = 5
    local f5_local3 = true
    local f5_local4 = arg0:GetDist(TARGET_ENE_0)
    local f5_local5 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f5_local5 = 100
    end
    local f5_local6 = arg0:GetRandam_Int(1, 100)
    local f5_local7 = -1
    if f5_local6 <= f5_local5 then
        f5_local7 = 9910
    end
    if f5_local2 <= f5_local4 then
        local f5_local8 = TARGET_SELF
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f5_local0, f5_local1, f5_local2, f5_local8, f5_local3, f5_local7)
    else
        local f5_local8 = TARGET_ENE_0
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f5_local0, f5_local1, f5_local2, f5_local8, f5_local3, f5_local7)
    end
    local f5_local8 = arg0:GetRandam_Float(0.1, 3)
    local f5_local9 = TARGET_ENE_0
    local f5_local10 = arg0:GetRandam_Int(0, 1)
    local f5_local11 = arg0:GetRandam_Int(30, 45)
    local f5_local12 = 1
    local f5_local13 = TARGET_SELF
    local f5_local14 = true
    local f5_local15 = true
    local f5_local16 = arg0:GetDist(TARGET_ENE_0)
    local f5_local17 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f5_local17 = 100
    end
    local f5_local18 = arg0:GetRandam_Int(1, 100)
    local f5_local19 = -1
    if f5_local18 <= f5_local17 then
        f5_local19 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f5_local8, f5_local9, f5_local10, f5_local11, f5_local14, f5_local15, f5_local19)
    local f5_local20 = 5
    local f5_local21 = nil
    local f5_local22 = TARGET_ENE_0
    local f5_local23 = 10
    local f5_local24 = 0
    local f5_local25 = 0
    local f5_local26 = 0
    local f5_local27 = arg0:GetDist(TARGET_ENE_0)
    if f5_local27 >= 4 then
        f5_local21 = 3002
    else
        f5_local21 = 3030
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local20, f5_local21, f5_local22, f5_local23, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerCourt_370000_Act04(arg0, arg1, arg2)
    local f6_local0 = 5
    local f6_local1 = 3035
    local f6_local2 = 3034
    local f6_local3 = TARGET_ENE_0
    local f6_local4 = 10
    local f6_local5 = 0
    local f6_local6 = 0
    local f6_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f6_local0, f6_local1, f6_local3, f6_local4, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f6_local0, f6_local2, f6_local3, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerCourt_370000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 2.5
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 3
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 5
    local f7_local9 = 3010
    local f7_local10 = 3011
    local f7_local11 = TARGET_ENE_0
    local f7_local12 = 10
    local f7_local13 = 0
    local f7_local14 = 0
    local f7_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f7_local8, f7_local9, f7_local11, f7_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f7_local8, f7_local10, f7_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerCourt_370000_Act06(arg0, arg1, arg2)
    if SpaceCheck(arg0, arg1, 180, 5) then
        local f8_local0 = arg0:GetRandam_Int(3, 5)
        local f8_local1 = TARGET_ENE_0
        local f8_local2 = 8
        local f8_local3 = TARGET_SELF
        local f8_local4 = false
        local f8_local5 = arg0:GetDist(TARGET_ENE_0)
        local f8_local6 = 0
        local f8_local7 = arg0:GetRandam_Int(1, 100)
        local f8_local8 = -1
        if f8_local7 <= f8_local6 then
            f8_local8 = 9910
        end
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerCourt_370000_Act10(arg0, arg1, arg2)
    local f9_local0 = arg0:GetRandam_Int(1, 3)
    local f9_local1 = TARGET_ENE_0
    local f9_local2 = arg0:GetRandam_Int(0, 1)
    local f9_local3 = arg0:GetRandam_Int(30, 45)
    local f9_local4 = 2
    local f9_local5 = TARGET_SELF
    local f9_local6 = true
    local f9_local7 = true
    local f9_local8 = arg0:GetDist(TARGET_ENE_0)
    local f9_local9 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f9_local9 = 100
    end
    local f9_local10 = arg0:GetRandam_Int(1, 100)
    local f9_local11 = -1
    if f9_local10 <= f9_local9 then
        f9_local11 = 9910
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f9_local0, f9_local1, f9_local2, f9_local3, f9_local6, f9_local7, f9_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerCourt_370000_Act11(arg0, arg1, arg2)
    local f10_local0 = 10
    local f10_local1 = TARGET_ENE_0
    local f10_local2 = 18
    local f10_local3 = TARGET_SELF
    local f10_local4 = false
    local f10_local5 = arg0:GetDist(TARGET_ENE_0)
    local f10_local6 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f10_local6 = 100
    end
    local f10_local7 = arg0:GetRandam_Int(1, 100)
    local f10_local8 = -1
    if f10_local7 <= f10_local6 then
        f10_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerCourt_370000_Act22(arg0, arg1, arg2)
    local f11_local0 = arg0:GetRandam_Int(2, 4)
    local f11_local1 = TARGET_ENE_0
    local f11_local2 = 10
    local f11_local3 = TARGET_ENE_0
    local f11_local4 = true
    local f11_local5 = arg0:GetDist(TARGET_ENE_0)
    local f11_local6 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f11_local6 = 100
    end
    local f11_local7 = arg0:GetRandam_Int(1, 100)
    local f11_local8 = -1
    if f11_local7 <= f11_local6 then
        f11_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerCourt_370000_Act24(arg0, arg1, arg2)
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

function PerfumerCourt_370000_Act25(arg0, arg1, arg2)
    local f13_local0 = 5
    local f13_local1 = -1
    local f13_local2 = 1
    local f13_local3 = -1
    local f13_local4 = -1
    local f13_local5 = TARGET_ENE_0
    local f13_local6 = 3
    local f13_local7 = 0
    local f13_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7, f13_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerCourt_370000_Act26(arg0, arg1, arg2)
    local f14_local0 = 5
    local f14_local1 = -1
    local f14_local2 = -1
    local f14_local3 = 1
    local f14_local4 = 1
    local f14_local5 = TARGET_ENE_0
    local f14_local6 = 3
    local f14_local7 = 0
    local f14_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7, f14_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerCourt_370000_Act27(arg0, arg1, arg2)
    local f15_local0 = arg0:GetRandam_Int(1, 2)
    local f15_local1 = TARGET_ENE_0
    local f15_local2 = arg0:GetRandam_Int(0, 1)
    local f15_local3 = arg0:GetRandam_Int(30, 45)
    local f15_local4 = 3
    local f15_local5 = TARGET_SELF
    local f15_local6 = true
    local f15_local7 = true
    local f15_local8 = arg0:GetDist(TARGET_ENE_0)
    local f15_local9 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        f15_local9 = 100
    end
    local f15_local10 = arg0:GetRandam_Int(1, 100)
    local f15_local11 = -1
    if f15_local10 <= f15_local9 then
        f15_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f15_local0, f15_local1, f15_local2, f15_local3, f15_local6, f15_local7, f15_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PerfumerCourt_370000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_PerfumerCourt_370000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        local f19_local0 = arg1:GetDist(TARGET_ENE_0)
        local f19_local1 = arg1:GetRandam_Int(1, 100)
        if f19_local0 <= 4 then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            arg2:ClearSubGoal()
            if f19_local1 <= 30 and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == true then
                PerfumerCourt_370000_Act06(arg1, arg2)
            else
                PerfumerCourt_370000_Act06(arg1, arg2)
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        local f19_local0 = arg1:GetDist(TARGET_ENE_0)
        if f19_local0 >= 5 then
            arg2:ClearSubGoal()
            local f19_local1 = arg1:GetRandam_Int(1, 3)
            local f19_local2 = TARGET_ENE_0
            local f19_local3 = arg1:GetRandam_Int(0, 1)
            local f19_local4 = arg1:GetRandam_Int(30, 45)
            local f19_local5 = 4
            local f19_local6 = TARGET_SELF
            local f19_local7 = true
            local f19_local8 = true
            local f19_local9 = arg1:GetDist(TARGET_ENE_0)
            local f19_local10 = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 5021) == true then
                f19_local10 = 100
            end
            local f19_local11 = arg1:GetRandam_Int(1, 100)
            local f19_local12 = -1
            if f19_local11 <= f19_local10 then
                f19_local12 = 9910
            end
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local1, f19_local2, f19_local3, f19_local4, f19_local7, f19_local8, f19_local12)
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) then
        local f19_local0 = arg1:GetDist(TARGET_ENE_0)
        local f19_local1 = arg1:GetRandam_Int(1, 100)
        if (arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki) and f19_local1 <= 40 then
            arg2:ClearSubGoal()
            if f19_local0 <= 5 then
                if f19_local1 <= 15 then
                    local f19_local2 = 5
                    local f19_local3 = 3012
                    local f19_local4 = TARGET_ENE_0
                    local f19_local5 = 10
                    local f19_local6 = 0
                    local f19_local7 = 0
                    local f19_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local2, f19_local3, f19_local4, f19_local5, 0, 0, 0)
                end
            elseif f19_local0 <= 15 then
                local f19_local2 = 5
                local f19_local3 = 3002
                local f19_local4 = TARGET_ENE_0
                local f19_local5 = 10
                local f19_local6 = 0
                local f19_local7 = 0
                local f19_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local2, f19_local3, f19_local4, f19_local5, 0, 0, 0)
            else

            end
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_PerfumerCourt_370000_AfterAttackAct, "PerfumerCourt_370000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PerfumerCourt_370000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


