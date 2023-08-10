RegisterTableGoal(GOAL_RenalaChildren204000_Battle, "RenalaChildren204000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RenalaChildren204000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:GetStringIndexedNumber("Poltergeist_LoopCnt")
    arg1:SetStringIndexedNumber("Poltergeist_LoopCnt", 0)
    arg1:SetStringIndexedNumber("FirstAttack", 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14351)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14353)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14355)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14394)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14367)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14394)
    if arg1:GetNumber(0) > 0 then
        arg1:SetNumber(0, 0)
    end
    if arg1:GetStringIndexedNumber("FirstAttack") == 0 then
        arg1:SetStringIndexedNumber("FirstAttack", 1)
        arg1:SetTimer(0, 10)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14351) then
        f2_local0[4] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14394) then
        f2_local0[5] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14384) then
        f2_local0[7] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14367) then
        f2_local0[3] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14382) and f2_local3 > 10 then
        f2_local0[20] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14381) then
        f2_local0[3] = 99999
    else
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
            if f2_local3 > 30 then
                f2_local0[40] = 100
            elseif f2_local3 > 10 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14392) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14380) then
                        f2_local0[47] = 10
                    else
                        f2_local0[3] = 60
                        f2_local0[40] = 40
                    end
                else
                    f2_local0[40] = 100
                end
            elseif f2_local3 > 4 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14391) then
                    f2_local0[2] = 90
                    f2_local0[47] = 10
                else
                    f2_local0[47] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14391) then
                f2_local0[1] = 50
                f2_local0[2] = 40
                f2_local0[47] = 10
            else
                f2_local0[1] = 70
                f2_local0[47] = 30
            end
        else
            f2_local0[42] = 100
        end
        if not not arg1:HasSpecialEffectId(TARGET_SELF, 14379) or arg1:HasSpecialEffectId(TARGET_SELF, 14390) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14386) and not arg1:HasSpecialEffectId(TARGET_SELF, 14384) then
                f2_local0[3] = 1E+24
            else
                f2_local0[3] = 0
            end
        end
        if arg1:GetTimer(0) > 0 then
            f2_local0[2] = 0
        end
    end
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 20, f2_local0[2], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3014, 20, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3017, 5, f2_local0[3], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RenalaChildren204000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RenalaChildren204000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RenalaChildren204000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RenalaChildren204000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RenalaChildren204000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RenalaChildren204000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, RenalaChildren204000_Act07)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RenalaChildren204000_Act20)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, RenalaChildren204000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, RenalaChildren204000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, RenalaChildren204000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, RenalaChildren204000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, RenalaChildren204000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, RenalaChildren204000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, RenalaChildren204000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, RenalaChildren204000_Act47)
    local f2_local7 = REGIST_FUNC(arg1, arg2, RenalaChildren204000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function RenalaChildren204000_Act01(arg0, arg1, arg2)
    local f3_local0 = 2.5
    local f3_local1 = 0
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 20
    local f3_local6 = 2
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14351)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14367)
    local f3_local7 = 4
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RenalaChildren204000_Act02(arg0, arg1, arg2)
    local f4_local0 = 10
    local f4_local1 = 0
    local f4_local2 = 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 20
    local f4_local6 = 2
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14351)
    local f4_local7 = 10
    local f4_local8 = 3001
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 15
    local f4_local11 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local7, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RenalaChildren204000_Act03(arg0, arg1, arg2)
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 14379) or arg0:HasSpecialEffectId(TARGET_SELF, 14390) then
        arg0:SetStringIndexedNumber("Poltergeist_LoopCnt", 0)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14351)
        local f5_local0 = 10
        local f5_local1 = 3015
        local f5_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f5_local3 = 0
        local f5_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local0, f5_local1, TARGET_ENE_0, f5_local2, f5_local3, f5_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14381) then
        arg0:SetStringIndexedNumber("Poltergeist_LoopCnt", 0)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14351)
        local f5_local0 = 10
        local f5_local1 = 3018
        local f5_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f5_local3 = 15
        local f5_local4 = 80
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local0, f5_local1, TARGET_ENE_0, f5_local2, f5_local3, f5_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        arg0:SetStringIndexedNumber("Poltergeist_LoopCnt", 0)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14351)
        local f5_local0 = 10
        local f5_local1 = 3002
        local f5_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f5_local3 = 0
        local f5_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local0, f5_local1, TARGET_ENE_0, f5_local2, f5_local3, f5_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function RenalaChildren204000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetRandam_Int(-180, 180)
    arg0:SetAIFixedMoveTargetSpecifyAngle(TARGET_SOUND, f6_local0, 5, AI_SPA_DIR_TYPE_TargetF)
    local f6_local1 = 25
    local f6_local2 = 3006
    local f6_local3 = 999
    local f6_local4 = 0
    local f6_local5 = 360
    local f6_local6 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f6_local1, f6_local2, POINT_AI_FIXED_POS, 9999, 0, 360, 180, 180)
    f6_local6:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 60, POINT_AI_FIXED_POS, 3, TARGET_SELF, false, -1, -1, -1, -1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14353)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14355)
    f6_local6 = 10
    local f6_local7 = 3003
    local f6_local8 = 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local6, f6_local7, POINT_AI_FIXED_POS, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RenalaChildren204000_Act05(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f7_local0 = 25
    local f7_local1 = 3010
    local f7_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 0
    local f7_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f7_local0, f7_local1, TARGET_ENE_0, f7_local2, f7_local3, f7_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RenalaChildren204000_Act06(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_TEAM_LEADER)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RenalaChildren204000_Act07(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f9_local0 = 25
    local f9_local1 = 3025
    local f9_local2 = 999
    local f9_local3 = 0
    local f9_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_Turn, 20, TARGET_SOUND, 30, 0, 0)
    local f9_local5 = arg0:GetRandam_Int(1, 100)
    if f9_local5 >= 50 then
        f9_local1 = 3022
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local0, f9_local1, TARGET_SOUND, f9_local2, f9_local3, f9_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RenalaChildren204000_Act20(arg0, arg1, arg2)
    local f10_local0 = 3
    local f10_local1 = 2
    local f10_local2 = true
    local f10_local3 = -1
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14351)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14367)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14394)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f10_local0, TARGET_TEAM_LEADER, f10_local1, TARGET_SELF, f10_local2, f10_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RenalaChildren204000_Act40(arg0, arg1, arg2)
    local f11_local0 = 3
    local f11_local1 = 9
    local f11_local2 = true
    local f11_local3 = -1
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14351)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14394)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f11_local0, TARGET_ENE_0, f11_local1, TARGET_SELF, f11_local2, f11_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RenalaChildren204000_Act41(arg0, arg1, arg2)
    local f12_local0 = 2
    local f12_local1 = 8
    local f12_local2 = false
    local f12_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f12_local0, TARGET_ENE_0, f12_local1, TARGET_SELF, f12_local2, f12_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RenalaChildren204000_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14351)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14367)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14394)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RenalaChildren204000_Act43(arg0, arg1, arg2)
    local f14_local0 = 1
    local f14_local1 = 0
    local f14_local2 = 100
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = TARGET_ENE_0
    local f14_local6 = 1
    local f14_local7 = 0
    local f14_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7, f14_local8)
    local f14_local9 = arg0:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RenalaChildren204000_Act44(arg0, arg1, arg2)
    local f15_local0 = arg0:GetRandam_Int(0, 1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14351)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14394)
    local f15_local1 = 2
    local f15_local2 = TARGET_ENE_0
    local f15_local3 = f15_local0
    local f15_local4 = 15
    local f15_local5 = true
    local f15_local6 = -1
    local f15_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f15_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, isLifeSuccess, f15_local6, f15_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RenalaChildren204000_Act45(arg0, arg1, arg2)
    local f16_local0 = 6
    local f16_local1 = 15
    local f16_local2 = true
    local f16_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f16_local0, TARGET_ENE_0, f16_local1, TARGET_SELF, f16_local2, f16_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RenalaChildren204000_Act46(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14351)
    local f17_local0 = 3
    local f17_local1 = TARGET_ENE_0
    local f17_local2 = 8
    local f17_local3 = TARGET_ENE_0
    local f17_local4 = true
    local f17_local5 = -1
    local f17_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f17_local7 = false
    local f17_local8 = 1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6, f17_local7, f17_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RenalaChildren204000_Act47(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14351)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14367)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14394)
    arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, 5, 0.2, 20, true, -1, 3, 4, false, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RenalaChildren204000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RenalaChildren204000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    local f22_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = 0
    local f22_local2 = 20
    local f22_local3 = arg1:GetDist(TARGET_ENE_0)
    local f22_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_Damaged) then
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        arg2:ClearSubGoal()
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14394) then
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(14394) then
        arg2:ClearSubGoal()
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14384) then
                arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3026, TARGET_TEAM_LEADER, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5034) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14384) then
                arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3023, TARGET_TEAM_LEADER, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14353) and arg1:HasSpecialEffectId(TARGET_SELF, 14354) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14355) and arg1:HasSpecialEffectId(TARGET_SELF, 14377) then
            arg2:ClearSubGoal()
            local f22_local5 = arg1:GetRandam_Float(0, 1)
            arg2:AddSubGoal(GOAL_COMMON_Wait, f22_local5, TARGET_ENE_0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 20001, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14351) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_RenalaChildren204000_AfterAttackAct, "RenalaChildren204000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RenalaChildren204000_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


