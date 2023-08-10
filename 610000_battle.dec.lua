RegisterTableGoal(GOAL_Springhare610000_Battle, "Springhare610000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Springhare610000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    Init_Pseudo_Global(arg1, arg2)
    arg1:GetStringIndexedNumber("WalkBefore")
    arg1:GetStringIndexedNumber("Alert_mode")
    arg1:GetStringIndexedNumber("TURNING_RANGE")
    arg1:GetStringIndexedNumber("Warp_Late")
    Warp_Late = arg1:GetRandam_Int(1, 100)
    arg1:SetNumber(0, 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
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
    if arg1:HasSpecialEffectId(TARGET_SELF, 13605) then
        f2_local0[9] = 30
        f2_local0[10] = 70
    elseif f2_local9 == false and f2_local4 > 0 and f2_local4 <= f2_local10 then
        f2_local0[11] = 100
    elseif f2_local8 == false and f2_local3 > 0 and f2_local3 <= f2_local10 then
        f2_local0[11] = 100
    elseif f2_local4 > 0 and f2_local4 <= f2_local11 then
        f2_local0[3] = 100
        f2_local0[11] = 10
    elseif f2_local3 > 0 and f2_local3 <= f2_local11 then
        f2_local0[3] = 100
        f2_local0[11] = 10
    else
        f2_local0[9] = 30
        f2_local0[10] = 70
    end
    f2_local0[15] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[15], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3020, 10, f2_local0[3], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Springhare610000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Springhare610000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Springhare610000_Act03)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Springhare610000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Springhare610000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Springhare610000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Springhare610000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Springhare610000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Springhare610000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Springhare610000_Act15)
    local f2_local13 = REGIST_FUNC(arg1, arg2, Springhare610000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local13, f2_local2)
    
end

function Springhare610000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetStringIndexedNumber("WalkBefore", 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3024, TARGET_SELF, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Springhare610000_Act02(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("WalkBefore", 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_SELF, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Springhare610000_Act03(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16489)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16490)
    local f5_local0 = TARGET_ENE_0
    if arg0:GetDist(TARGET_ENE_0) < 0 then
        f5_local0 = TARGET_FRI_0
    end
    arg0:SetStringIndexedNumber("WalkBefore", 0)
    arg0:AddObserveArea(0, TARGET_SELF, f5_local0, AI_DIR_TYPE_F, 360, 22)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 2.5, 3020, TARGET_SELF, SuccessDist, TurnTime, FrontAngle, 0, 0)
    arg0:SetStringIndexedNumber("Alert_mode", 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Springhare610000_Act09(arg0, arg1, arg2)
    local f6_local0 = 1
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16489)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16490)
    arg0:SetStringIndexedNumber("WalkBefore", 1)
    local f6_local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(0, 0)
    if f6_local1 > 60 then
        arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 1, 6, false, 3020, 3, 1, false, false, false)
    elseif f6_local1 > 30 then
        arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 1, 6, false, 3024, 3, 1, false, false, false)
    else
        arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 1, 6, false, 3025, 3, 1, false, false, false)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Springhare610000_Act10(arg0, arg1, arg2)
    local f7_local0 = 1
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16489)
    arg0:SetStringIndexedNumber("WalkBefore", 1)
    local f7_local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(0, 0)
    if f7_local1 > 60 then
        arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 1, 6, true, 3020, 3, 1, false, false, false)
    elseif f7_local1 > 30 then
        arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 1, 6, true, 3024, 3, 1, false, false, false)
    else
        arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 1, 6, true, 3025, 3, 1, false, false, false)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Springhare610000_Act11(arg0, arg1, arg2)
    local f8_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local f8_local2 = -1
    local f8_local3 = 360
    local f8_local4 = arg0:GetRandam_Int(1, 100)
    local f8_local5 = TARGET_ENE_0
    if arg0:GetDist(TARGET_ENE_0) < 0 then
        f8_local5 = TARGET_FRI_0
    end
    local f8_local6 = arg0:GetDist(f8_local5)
    local f8_local7 = arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local8 = 15
    local f8_local9 = arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, f8_local8 + f8_local7, f8_local7, 0)
    local f8_local10 = arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, f8_local8 + f8_local7, f8_local7, 0)
    local f8_local11 = arg0:GetRandam_Int(AI_DIR_TYPE_L, AI_DIR_TYPE_R)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5160) then
        if arg0:IsInsideTarget(f8_local5, AI_DIR_TYPE_F, 180) then
            if f8_local10 > 5 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 1, f8_local5, 30, TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
            else
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhereSmooth, 3, TARGET_SELF, AI_DIR_TYPE_F, 0, TARGET_SELF, false, 5)
            end
        elseif f8_local9 > 2 then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhereSmooth, 3, TARGET_SELF, AI_DIR_TYPE_F, 0, TARGET_SELF, false, 5)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 2, f8_local5, 150, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhereSmooth, 3, TARGET_SELF, AI_DIR_TYPE_F, 0, TARGET_SELF, false, 5)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Escape, 10, TARGET_ENE_0, 30, TARGET_SELF, false, 1.5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Springhare610000_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3026, TARGET_NONE, SuccessDist, TurnTime, FrontAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Springhare610000_Act13(arg0, arg1, arg2)
    local f10_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = -1
    local f10_local2 = 180
    local f10_local3 = arg0:GetRandam_Int(1, 100)
    local f10_local4 = TARGET_ENE_0
    if arg0:GetDist(TARGET_ENE_0) < 0 then
        f10_local4 = TARGET_SELF
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, TARGET_ENE_0, 10)
    arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 1, 20, TARGET_NONE)
    local f10_local5 = arg0:GetDist(f10_local4)
    local f10_local6 = arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local7 = 15
    local f10_local8 = arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, f10_local7 + f10_local6, f10_local6, 0)
    local f10_local9 = arg0:GetRandam_Int(AI_DIR_TYPE_L, AI_DIR_TYPE_R)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 10, f10_local4, 30, TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
    
end

function Springhare610000_Act14(arg0, arg1, arg2)
    arg0:SetEnableUsePath(false)
    local f11_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local f11_local2 = -1
    local f11_local3 = 360
    local f11_local4 = arg0:GetDist(TARGET_ENE_0)
    local f11_local5 = arg0:GetRandam_Int(1, 100)
    local f11_local6 = TARGET_ENE_0
    if arg0:GetDist(TARGET_ENE_0) < 0 then
        f11_local6 = TARGET_FRI_0
    end
    local f11_local7 = arg0:GetDist(f11_local6)
    local f11_local8 = arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local9 = 15
    local f11_local10 = arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, f11_local9 + f11_local8, f11_local8, 0)
    local f11_local11 = arg0:GetRandam_Int(AI_DIR_TYPE_L, AI_DIR_TYPE_R)
    if f11_local10 >= 5 then
        local f11_local12 = arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, 10, f11_local6, 50, TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
        f11_local12:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 10, TARGET_NONE, 5, TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
    end
    local f11_local12 = 3026
    local f11_local13 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local14 = 0
    local f11_local15 = 0
    if f11_local5 > 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f11_local12, TARGET_NONE, f11_local13, f11_local14, f11_local15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Springhare610000_Act15(arg0, arg1, arg2)
    local f12_local0 = 3026
    local f12_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local2 = 0
    local f12_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f12_local0, TARGET_NONE, f12_local1, f12_local2, f12_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Springhare610000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Springhare610000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f16_local0 = arg1:GetRandam_Int(1, 100)
    local f16_local1 = arg1:GetDist(TARGET_ENE_0)
    local f16_local2 = arg1:GetDist(TARGET_ENE_0)
    local f16_local3 = arg1:GetDist(TARGET_FRI_0)
    local f16_local4 = arg1:GetRandam_Int(1, 100)
    local f16_local5 = arg1:GetPrevTargetState()
    local f16_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 8500)
    local f16_local7 = arg1:HasSpecialEffectId(TARGET_ENE_0, 8110)
    local f16_local8 = arg1:HasSpecialEffectId(TARGET_FRI_0, 8110)
    local f16_local9 = arg1:GetRandam_Int(22, 22)
    local f16_local10 = arg1:GetRandam_Int(25, 25)
    local f16_local11 = arg1:GetRandam_Int(1, 100)
    local f16_local12 = 25 + 10
    local f16_local13 = 100
    if Damaged_Act(arg1, arg2, f16_local12, f16_local13) then
        arg2:ClearSubGoal()
        arg1:SetStringIndexedNumber("TURNING_RANGE", arg1:GetRandam_Int(15, 20))
        arg1:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, arg1:GetStringIndexedNumber("TURNING_RANGE"))
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 50, TARGET_SELF, false, -1)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 13161) then
        local f16_local14 = arg1:GetRandam_Int(1, 8)
        local f16_local15 = arg1:GetRandam_Int(0, 3)
        local f16_local16 = TARGET_ENE_0
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 5, TARGET_SOUND, f16_local14, f16_local15, f16_local16)
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16489) then
        if f16_local8 == false and f16_local3 > 0 and f16_local3 <= f16_local9 then
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16490)
            Springhare610000_Act11(arg1, arg2)
            return true
        elseif f16_local7 == false and f16_local2 > 0 and f16_local2 <= f16_local9 then
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16490)
            Springhare610000_Act11(arg1, arg2)
            return true
        elseif f16_local3 > 0 and f16_local3 <= f16_local10 then
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16490)
            Springhare610000_Act11(arg1, arg2)
            return true
        elseif f16_local2 > 0 and f16_local2 <= f16_local10 then
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16490)
            Springhare610000_Act11(arg1, arg2)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Springhare610000_AfterAttackAct, "Springhare610000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Springhare610000_AfterAttackAct, true)
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


