RegisterTableGoal(GOAL_Deer601000_Battle, "Deer601000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Deer601000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    Init_Pseudo_Global(arg1, arg2)
    arg1:GetStringIndexedNumber("WalkBefore")
    arg1:GetStringIndexedNumber("Alert_mode")
    arg1:GetStringIndexedNumber("TURNING_RANGE")
    arg1:GetStringIndexedNumber("Warp_Late")
    Warp_Late = arg1:GetRandam_Int(1, 100)
    
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
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDist(TARGET_FRI_0)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetPrevTargetState()
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 8500)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_ENE_0, 8110)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_FRI_0, 8110)
    local f2_local10 = arg1:GetRandam_Int(22, 22)
    local f2_local11 = arg1:GetRandam_Int(25, 25)
    local f2_local12 = arg1:GetRandam_Int(1, 100)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13161)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13156)
    if arg1:HasSpecialEffectId(TARGET_SELF, 13156) == true then
        f2_local0[15] = 95
    elseif f2_local9 == false and f2_local4 > 0 and f2_local4 <= f2_local10 then
        f2_local0[17] = 100
    elseif f2_local8 == false and f2_local3 > 0 and f2_local3 <= f2_local10 then
        f2_local0[17] = 100
    elseif f2_local4 > 0 and f2_local4 <= f2_local11 then
        f2_local0[3] = 100
    elseif f2_local3 > 0 and f2_local3 <= f2_local11 then
        f2_local0[3] = 100
    elseif f2_local3 < 0 or f2_local4 < 0 then
        f2_local0[1] = 35
        f2_local0[2] = 25
        f2_local0[10] = 40
    end
    f2_local0[15] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[15], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Deer601000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Deer601000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Deer601000_Act03)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Deer601000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Deer601000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Deer601000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Deer601000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Deer601000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Deer601000_Act15)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, Deer601000_Act17)
    local f2_local13 = REGIST_FUNC(arg1, arg2, Deer601000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local13, f2_local2)
    
end

function Deer601000_Act01(arg0, arg1, arg2)
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

function Deer601000_Act02(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("WalkBefore", 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_SELF, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deer601000_Act03(arg0, arg1, arg2)
    local f5_local0 = TARGET_ENE_0
    if arg0:GetDist(TARGET_ENE_0) < 0 then
        f5_local0 = TARGET_FRI_0
    end
    arg0:SetStringIndexedNumber("WalkBefore", 0)
    arg0:AddObserveArea(0, TARGET_SELF, f5_local0, AI_DIR_TYPE_F, 360, 22)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2.5, 3023, f5_local0, DIST_None, 0, 90)
    arg0:SetStringIndexedNumber("Alert_mode", 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deer601000_Act10(arg0, arg1, arg2)
    local f6_local0 = 1
    arg0:SetStringIndexedNumber("WalkBefore", 1)
    arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 1, 10, true, -1, 0, 1, false, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deer601000_Act11(arg0, arg1, arg2)
    local f7_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local f7_local2 = -1
    local f7_local3 = 360
    local f7_local4 = arg0:GetRandam_Int(1, 100)
    local f7_local5 = TARGET_ENE_0
    arg1:ClearSubGoal()
    if arg0:GetDist(TARGET_ENE_0) < 0 then
        f7_local5 = TARGET_FRI_0
    end
    arg0:SetStringIndexedNumber("TURNING_RANGE", arg0:GetRandam_Int(15, 20))
    if f7_local4 <= 60 then
        arg0:AddObserveArea(0, TARGET_SELF, f7_local5, AI_DIR_TYPE_F, 360, arg0:GetStringIndexedNumber("TURNING_RANGE"))
    end
    if arg0:GetStringIndexedNumber("WalkBefore") == 1 then
        if arg0:IsInsideTarget(f7_local5, AI_DIR_TYPE_F, 40) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, arg0:GetRandam_Int(6000, 6001), f7_local5, 0, AI_DIR_TYPE_B, 0)
        elseif f7_local1 >= 20 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 6002, f7_local5, 0, AI_DIR_TYPE_B, 0)
        elseif f7_local1 <= -20 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 6003, f7_local5, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, arg0:GetRandam_Int(6000, 6001), f7_local5, 0, AI_DIR_TYPE_B, 0)
        end
        arg0:SetStringIndexedNumber("WalkBefore", 0)
        arg0:SetStringIndexedNumber("Alert_mode", 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, f7_local5, 50, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deer601000_Act12(arg0, arg1, arg2)
    local f8_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local f8_local2 = 0
    local f8_local3 = 0
    local f8_local4 = arg0:GetRandam_Int(1, 100)
    local f8_local5 = TARGET_ENE_0
    arg0:SetStringIndexedNumber("TURNING_RANGE", arg0:GetRandam_Int(15, 20))
    if arg0:GetDist(TARGET_ENE_0) < 0 then
        f8_local5 = TARGET_FRI_0
    end
    if arg0:GetStringIndexedNumber("WalkBefore") == 1 then
        arg0:SetStringIndexedNumber("WalkBefore", 0)
    end
    local f8_local6 = arg0:GetRandam_Int(1, 3.5)
    local f8_local7 = arg0:GetRandam_Int(15, 20)
    local f8_local8 = arg0:GetRandam_Int(5, 10)
    local f8_local9 = arg0:GetRandam_Int(3, 8)
    local f8_local10 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f8_local6, f8_local5, f8_local7, TARGET_SELF, false, -1)
    f8_local10:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    if arg0:GetDist(f8_local5) < f8_local7 then
        if f8_local4 <= 25 then
            f8_local10 = arg0:GetRandam_Int(3005, 3006)
            for f8_local11 = 1, f8_local8, 1 do
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local10, TARGET_NONE, DIST_None, 0, 90)
            end
        else
            f8_local10 = arg0:GetRandam_Int(3007, 3008)
            for f8_local11 = 1, f8_local9, 1 do
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local10, TARGET_NONE, DIST_None, 0, 90)
            end
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deer601000_Act13(arg0, arg1, arg2)
    local f9_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local f9_local2 = -1
    local f9_local3 = 360
    local f9_local4 = arg0:GetRandam_Int(1, 100)
    local f9_local5 = TARGET_ENE_0
    if arg0:GetDist(TARGET_ENE_0) < 0 then
        f9_local5 = TARGET_FRI_0
    end
    local f9_local6 = arg0:GetDist(f9_local5)
    local f9_local7 = arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local8 = 15
    local f9_local9 = arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, f9_local8 + f9_local7, f9_local7, 0)
    local f9_local10 = arg0:GetRandam_Int(AI_DIR_TYPE_L, AI_DIR_TYPE_R)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 10, f9_local5, 30, TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deer601000_Act14(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13161)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_SOUND, arg0:GetRandam_Float(1, 6), TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deer601000_Act15(arg0, arg1, arg2)
    local f11_local0 = 2
    local f11_local1 = 0
    local f11_local2 = 0
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 2
    local f11_local6 = 2
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3
    local f11_local8 = 3000
    local f11_local9 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local10 = -1
    local f11_local11 = 60
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local7, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deer601000_Act17(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5160) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 10, TARGET_ENE_0, 30, TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Escape, 10, TARGET_ENE_0, 30, TARGET_SELF, false, 1.5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deer601000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Deer601000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f16_local0 = arg1:GetRandam_Int(1, 100)
    local f16_local1 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    local f16_local2 = 25 + 10
    local f16_local3 = 100
    if Damaged_Act(arg1, arg2, f16_local2, f16_local3) then
        arg2:ClearSubGoal()
        arg1:SetStringIndexedNumber("TURNING_RANGE", arg1:GetRandam_Int(15, 20))
        arg1:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, arg1:GetStringIndexedNumber("TURNING_RANGE"))
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 50, TARGET_SELF, false, -1)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13161) then
            local f16_local4 = arg1:GetRandam_Int(1, 8)
            local f16_local5 = arg1:GetRandam_Int(0, 3)
            local f16_local6 = TARGET_ENE_0
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 5, TARGET_SOUND, f16_local4, f16_local5, f16_local6)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13156) then
            arg1:Replaning()
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Deer601000_AfterAttackAct, "Deer601000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Deer601000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f17_local0 = arg1:GetDist(TARGET_ENE_0)
    local f17_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
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


