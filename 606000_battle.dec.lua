RegisterTableGoal(GOAL_Wildsheep606000_Battle, "Wildsheep606000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Wildsheep606000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    Init_Pseudo_Global(arg1, arg2)
    arg1:GetStringIndexedNumber("WalkBefore")
    arg1:GetStringIndexedNumber("Alert_mode")
    arg1:GetStringIndexedNumber("TURNING_RANGE")
    arg1:GetStringIndexedNumber("FirstRoll_Flg")
    arg1:GetStringIndexedNumber("RollPathChkMiss")
    arg1:SetStringIndexedNumber("FirstRoll_Flg", 0)
    arg1:SetStringIndexedNumber("RollPathChkMiss", 0)
    arg1:SetNumber(1, 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = FearOfFire(arg1, arg2, PLAN_SIDEWAYTYPE__NONE)
    local f2_local1 = true
    if f2_local0 == f2_local1 then
        return 
    end
    f2_local0 = {}
    f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 11440)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDist(TARGET_FRI_0)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetPrevTargetState()
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 11440)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_FRI_0, 11442)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_ENE_0, 8110)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_FRI_0, 8110)
    local f2_local11 = arg1:GetRandam_Int(22, 22)
    local f2_local12 = arg1:GetRandam_Int(25, 25)
    local f2_local13 = arg1:GetRandam_Int(1, 100)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13156)
    if arg1:HasSpecialEffectId(TARGET_SELF, 13156) == true then
        f2_local0[4] = 70
    elseif f2_local7 == false or arg1:HasSpecialEffectId(TARGET_SELF, 13156) == true then
        if arg1:IsBattleState() then
            if arg1:GetHpRate(TARGET_SELF) < 0.5 then
                if arg1:GetStringIndexedNumber("RollPathChkMiss") == 0 then
                    f2_local0[16] = 100
                else
                    f2_local0[17] = 100
                end
            else
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    f2_local0[18] = 80
                end
                if f2_local3 >= 4 then
                    f2_local0[4] = 70
                    f2_local0[6] = 0
                    f2_local0[14] = 30
                elseif f2_local3 >= 0.7 then
                    f2_local0[4] = 30
                    f2_local0[6] = 30
                    f2_local0[14] = 40
                else
                    f2_local0[4] = 50
                    f2_local0[14] = 50
                end
            end
        elseif not not arg1:IsSearchHighState() or not not arg1:IsSearchLowState() or arg1:IsCautionState() then
            if arg1:GetHpRate(TARGET_SELF) < 0.5 then
                if arg1:GetStringIndexedNumber("RollPathChkMiss") == 0 then
                    f2_local0[16] = 100
                else
                    f2_local0[17] = 100
                end
            else
                f2_local0[3] = 100
            end
        else
            f2_local0[1] = 30
            f2_local0[2] = 20
            f2_local0[10] = 50
        end
    elseif f2_local7 == true then
        if arg1:IsBattleState() then
            if arg1:GetStringIndexedNumber("RollPathChkMiss") == 0 then
                f2_local0[16] = 100
            else
                f2_local0[17] = 100
            end
        elseif not not arg1:IsSearchHighState() or arg1:IsCautionState() then
            f2_local0[12] = 100
        elseif arg1:IsSearchLowState() then
            f2_local0[3] = 100
        else
            f2_local0[1] = 30
            f2_local0[2] = 20
            f2_local0[10] = 50
        end
    end
    if arg1:IsSearchHighState() == false and arg1:IsCautionState() == false then
        arg1:SetNumber(1, 0)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 11445) == false then
        f2_local0[18] = 0
    end
    f2_local0[18] = SetCoolTime(arg1, arg2, 3036, 5, f2_local0[18], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Wildsheep606000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Wildsheep606000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Wildsheep606000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Wildsheep606000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Wildsheep606000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Wildsheep606000_Act06)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Wildsheep606000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Wildsheep606000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Wildsheep606000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Wildsheep606000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Wildsheep606000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Wildsheep606000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, Wildsheep606000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, Wildsheep606000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, Wildsheep606000_Act18)
    local f2_local14 = REGIST_FUNC(arg1, arg2, Wildsheep606000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local14, f2_local2)
    
end

function Wildsheep606000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetStringIndexedNumber("WalkBefore", 0)
    if f3_local0 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3021, TARGET_SELF, DIST_None, 0, 90)
    elseif f3_local0 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3021, TARGET_SELF, DIST_None, 0, 180, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_SELF, DIST_None, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3022, TARGET_SELF, DIST_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3021, TARGET_SELF, DIST_None, 0, 180, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_SELF, DIST_None, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_SELF, DIST_None, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_SELF, DIST_None, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3022, TARGET_SELF, DIST_None, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildsheep606000_Act02(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("WalkBefore", 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildsheep606000_Act03(arg0, arg1, arg2)
    local f5_local0 = TARGET_ENE_0
    if arg0:GetCurrTargetState() == AI_TARGET_STATE__SEARCH or arg0:GetCurrTargetState() == AI_TARGET_STATE__SEARCH2 then
        f5_local0 = TARGET_SEARCH
    elseif arg0:GetCurrTargetState() == AI_TARGET_STATE__CAUTION or arg0:GetDist(TARGET_SOUND) >= 0 then
        f5_local0 = TARGET_SOUND
    end
    arg0:SetStringIndexedNumber("WalkBefore", 0)
    arg0:AddObserveArea(0, TARGET_SELF, f5_local0, AI_DIR_TYPE_F, 360, 22)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, f5_local0, 60)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2.5, 3023, f5_local0, DIST_None, 0, 90)
    local f5_local1 = 4
    local f5_local2 = f5_local0
    local f5_local3 = 20
    local f5_local4 = f5_local0
    local f5_local5 = true
    local f5_local6 = -1
    local f5_local7 = true
    local f5_local8 = AI_DIR_TYPE_CENTER
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f5_local1, f5_local2, appDist, f5_local4, f5_local5, f5_local6, f5_local7, f5_local8)
    arg0:SetStringIndexedNumber("Alert_mode", 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildsheep606000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetRandam_Int(1, 100)
    local f6_local1 = 2
    local f6_local2 = 0
    local f6_local3 = 10
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 4
    local f6_local7 = 8
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 3000
    local f6_local9 = 4
    local f6_local10 = 0
    local f6_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    if f6_local0 < 30 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildsheep606000_Act05(arg0, arg1, arg2)
    local f7_local0 = 3
    local f7_local1 = TARGET_FRI_0
    local f7_local2 = 3
    local f7_local3 = TARGET_FRI_0
    local f7_local4 = false
    local f7_local5 = -1
    local f7_local6 = true
    local f7_local7 = AI_DIR_TYPE_CENTER
    local f7_local8 = arg0:HasSpecialEffectId(TARGET_FRI_0, 11442)
    if f7_local8 == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f7_local0, f7_local1, appDist, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildsheep606000_Act06(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("WalkBefore", 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildsheep606000_Act10(arg0, arg1, arg2)
    local f9_local0 = 1
    arg0:SetStringIndexedNumber("WalkBefore", 1)
    arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 1, 10, true, -1, 0, 1, false, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildsheep606000_Act11(arg0, arg1, arg2)
    local f10_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local f10_local2 = -1
    local f10_local3 = 360
    local f10_local4 = arg0:GetRandam_Int(1, 100)
    local f10_local5 = TARGET_ENE_0
    arg1:ClearSubGoal()
    if arg0:GetDist(TARGET_ENE_0) < 0 then
        f10_local5 = TARGET_FRI_0
    end
    arg0:SetStringIndexedNumber("TURNING_RANGE", arg0:GetRandam_Int(15, 20))
    if f10_local4 <= 60 then
        arg0:AddObserveArea(0, TARGET_SELF, f10_local5, AI_DIR_TYPE_F, 360, arg0:GetStringIndexedNumber("TURNING_RANGE"))
    end
    if arg0:GetStringIndexedNumber("WalkBefore") == 1 then
        if arg0:IsInsideTarget(f10_local5, AI_DIR_TYPE_F, 40) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, arg0:GetRandam_Int(6000, 6001), f10_local5, 0, AI_DIR_TYPE_B, 0)
        elseif f10_local1 >= 20 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 6002, f10_local5, 0, AI_DIR_TYPE_B, 0)
        elseif f10_local1 <= -20 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 6003, f10_local5, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, arg0:GetRandam_Int(6000, 6001), f10_local5, 0, AI_DIR_TYPE_B, 0)
        end
        arg0:SetStringIndexedNumber("WalkBefore", 0)
        arg0:SetStringIndexedNumber("Alert_mode", 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, f10_local5, 50, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildsheep606000_Act12(arg0, arg1, arg2)
    local f11_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = -1
    local f11_local2 = 180
    local f11_local3 = arg0:GetRandam_Int(1, 100)
    local f11_local4 = TARGET_ENE_0
    if arg0:GetCurrTargetState() == AI_TARGET_STATE__SEARCH or arg0:GetCurrTargetState() == AI_TARGET_STATE__SEARCH2 then
        f11_local4 = TARGET_SEARCH
    elseif arg0:GetCurrTargetState() == AI_TARGET_STATE__CAUTION or arg0:GetDist(TARGET_SOUND) >= 0 then
        f11_local4 = TARGET_SOUND
    end
    if arg0:GetCurrTargetState() ~= AI_TARGET_STATE__BATTLE then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1.5, 3023, f11_local4, 9999, 0.5, 60, 0, 0)
    end
    arg0:SetNumber(1, 1)
    if arg0:GetCurrTargetState() == AI_TARGET_STATE__BATTLE then
        local f11_local5 = arg0:GetDist(TARGET_ENE_0)
        local f11_local6 = arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local7 = 15
        local f11_local8 = arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, f11_local7 + f11_local6, f11_local6, 0)
        local f11_local9 = arg0:GetRandam_Int(AI_DIR_TYPE_L, AI_DIR_TYPE_R)
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 10, TARGET_ENE_0, 30, TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildsheep606000_Act13(arg0, arg1, arg2)
    local f12_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = -1
    local f12_local2 = 180
    local f12_local3 = arg0:GetRandam_Int(1, 100)
    local f12_local4 = TARGET_ENE_0
    if arg0:GetDist(TARGET_ENE_0) < 0 then
        f12_local4 = TARGET_SELF
    end
    local f12_local5 = arg0:GetDist(f12_local4)
    local f12_local6 = arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local7 = 15
    local f12_local8 = arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, f12_local7 + f12_local6, f12_local6, 0)
    local f12_local9 = arg0:GetRandam_Int(AI_DIR_TYPE_L, AI_DIR_TYPE_R)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 10, f12_local4, 30, TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildsheep606000_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildsheep606000_Act15(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13161)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_SOUND, arg0:GetRandam_Float(1, 6), TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildsheep606000_Act16(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("FirstRoll_Flg", 1)
    local f15_local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 40, TARGET_SELF, false, -1, 0, 0)
    f15_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 8) == true then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 0, 0, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        arg0:SetStringIndexedNumber("RollPathChkMiss", 1)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function Wildsheep606000_Act17(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5160) then
        if arg0:HasSpecialEffectId(TARGET_SELF, 11440) == false then
            Approach_Act_Flex(arg0, arg1, 1, 0, 999, 100, -1, 3, 3)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3000, TARGET_ENE_0, 0, 0, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 10, TARGET_ENE_0, 30, TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Escape, 10, TARGET_ENE_0, 30, TARGET_SELF, false, 1.5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildsheep606000_Act18(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildsheep606000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Wildsheep606000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f21_local0 = arg1:GetRandam_Int(1, 100)
    local f21_local1 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    local f21_local2 = 25 + 10
    local f21_local3 = 100
    if Damaged_Act(arg1, arg2, f21_local2, f21_local3) then
        arg2:ClearSubGoal()
        arg1:SetStringIndexedNumber("TURNING_RANGE", arg1:GetRandam_Int(15, 20))
        arg1:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, arg1:GetStringIndexedNumber("TURNING_RANGE"))
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 50, TARGET_SELF, false, -1)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13161) then
            local f21_local4 = arg1:GetRandam_Int(1, 8)
            local f21_local5 = arg1:GetRandam_Int(0, 3)
            local f21_local6 = TARGET_ENE_0
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 5, TARGET_SOUND, f21_local4, f21_local5, f21_local6)
            arg1:Replaning()
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            if arg1:GetStringIndexedNumber("FirstRoll_Flg") == 1 then
                arg1:SetStringIndexedNumber("FirstRoll_Flg", 0)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3031, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif f21_local1 < 40 and arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 8) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3031, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                arg1:SetStringIndexedNumber("RollPathChkMiss", 1)
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13156) then
            arg1:Replaning()
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Wildsheep606000_AfterAttackAct, "Wildsheep606000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Wildsheep606000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f22_local0 = arg1:GetDist(TARGET_ENE_0)
    local f22_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


