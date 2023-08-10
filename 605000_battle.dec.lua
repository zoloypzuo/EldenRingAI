RegisterTableGoal(GOAL_Wildboar605000_Battle, "Wildboar605000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Wildboar605000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    Init_Pseudo_Global(arg1, arg2)
    arg1:GetStringIndexedNumber("WalkBefore")
    arg1:GetStringIndexedNumber("Alert_mode")
    arg1:GetStringIndexedNumber("TURNING_RANGE")
    arg1:GetStringIndexedNumber("Warp_Late")
    Warp_Late = arg1:GetRandam_Int(1, 100)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 11411)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 11412)
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDist(TARGET_FRI_0)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetPrevTargetState()
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 11410)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_ENE_0, 8110)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_FRI_0, 8110)
    local f2_local10 = arg1:GetRandam_Int(22, 22)
    local f2_local11 = arg1:GetRandam_Int(25, 25)
    local f2_local12 = arg1:GetRandam_Int(1, 100)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13156)
    if arg1:HasSpecialEffectId(TARGET_SELF, 13156) == true then
        f2_local0[1] = 70
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 11410) == true then
        f2_local0[13] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        if f2_local3 >= 2 then
            f2_local0[3] = 100
        else
            f2_local0[4] = 100
        end
    elseif f2_local3 >= 9 then
        f2_local0[1] = 100
    elseif f2_local3 >= 5 then
        f2_local0[1] = 70
        f2_local0[2] = 30
    else
        f2_local0[1] = 100
        f2_local0[3] = 50
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Wildboar605000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Wildboar605000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Wildboar605000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Wildboar605000_Act04)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Wildboar605000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Wildboar605000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Wildboar605000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Wildboar605000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, Wildboar605000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, Wildboar605000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, Wildboar605000_Act18)
    local f2_local13 = REGIST_FUNC(arg1, arg2, Wildboar605000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local13, f2_local2)
    
end

function Wildboar605000_Act01(arg0, arg1, arg2)
    local f3_local0 = 5
    local f3_local1 = 3000
    local f3_local2 = 3001
    local f3_local3 = TARGET_ENE_0
    local f3_local4 = 20
    local f3_local5 = 0
    local f3_local6 = 0
    local f3_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local0, f3_local1, f3_local3, f3_local4, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local0, f3_local2, f3_local3, f3_local4, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local0, f3_local2, f3_local3, f3_local4, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local0, f3_local2, f3_local3, f3_local4, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local0, f3_local2, f3_local3, f3_local4, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local0, f3_local2, f3_local3, f3_local4, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local0, f3_local2, f3_local3, f3_local4, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local0, f3_local2, f3_local3, f3_local4, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local0, f3_local2, f3_local3, f3_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildboar605000_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildboar605000_Act03(arg0, arg1, arg2)
    arg0:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 30)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Escape, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildboar605000_Act04(arg0, arg1, arg2)
    local f6_local0 = 4
    local f6_local1 = TARGET_ENE_0
    local f6_local2 = 7
    local f6_local3 = TARGET_SELF
    local f6_local4 = false
    local f6_local5 = arg0:GetDist(TARGET_ENE_0)
    local f6_local6 = 0
    local f6_local7 = arg0:GetRandam_Int(1, 100)
    local f6_local8 = -1
    if f6_local7 <= f6_local6 then
        f6_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Escape, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local8)
    local f6_local9 = 2
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 45
    local f6_local12 = GUARD_GOAL_DESIRE_RET_Continue
    local f6_local13 = true
    local f6_local14 = 0
    local f6_local15 = arg0:GetRandam_Int(1, 100)
    local f6_local16 = -1
    if f6_local15 <= f6_local14 then
        f6_local16 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f6_local9, f6_local10, f6_local11, f6_local16, f6_local12, f6_local13)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildboar605000_Act12(arg0, arg1, arg2)
    local f7_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = -1
    local f7_local2 = 180
    local f7_local3 = arg0:GetRandam_Int(1, 100)
    local f7_local4 = TARGET_ENE_0
    if arg0:GetDist(TARGET_ENE_0) < 0 then
        f7_local4 = TARGET_SELF
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, TARGET_ENE_0, 10)
    arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 3, 20, TARGET_NONE)
    arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 3, 20, TARGET_NONE)
    arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 3, 20, TARGET_NONE)
    local f7_local5 = arg0:GetDist(f7_local4)
    local f7_local6 = arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local7 = 15
    local f7_local8 = arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, f7_local7 + f7_local6, f7_local6, 0)
    local f7_local9 = arg0:GetRandam_Int(AI_DIR_TYPE_L, AI_DIR_TYPE_R)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Escape, 10, f7_local4, 30, TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildboar605000_Act13(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5160) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 10, TARGET_ENE_0, 30, TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget_Escape, 10, TARGET_ENE_0, 30, TARGET_SELF, false, 1.5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildboar605000_Act18(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13161)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_SOUND, arg0:GetRandam_Float(1, 6), TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildboar605000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Wildboar605000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f13_local0 = arg1:GetRandam_Int(1, 100)
    local f13_local1 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserveArea(0) then
        arg2:ClearSubGoal()
        arg1:DeleteObserve(0)
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(11411) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 100, 3.4) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13161) then
            local f13_local2 = arg1:GetRandam_Int(1, 8)
            local f13_local3 = arg1:GetRandam_Int(0, 3)
            local f13_local4 = TARGET_ENE_0
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 5, TARGET_SOUND, f13_local2, f13_local3, f13_local4)
            arg1:Replaning()
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13156) then
            arg1:Replaning()
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Wildboar605000_AfterAttackAct, "Wildboar605000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Wildboar605000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f14_local0 = arg1:GetDist(TARGET_ENE_0)
    local f14_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
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


