RegisterTableGoal(GOAL_LossRaceSoldierWatchman300030_Battle, "LossRaceSoldierWatchman300030_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LossRaceSoldierWatchman300030_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 0)
    
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 10859)
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 10164)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 19000)
    if InsideRange(arg1, arg2, 180, 240, -999, 10) then
        f2_local0[12] = 100
    elseif f2_local7 == true then
        if f2_local3 >= 5 then
            f2_local0[5] = 99
            f2_local0[11] = 4
        else
            f2_local0[2] = 25
            f2_local0[3] = 5
            f2_local0[6] = 50
            f2_local0[10] = 15
        end
    elseif f2_local8 == true and arg1:GetNumber(1) ~= 1 then
        f2_local0[13] = 25
    elseif arg1:IsFinishTimer(0) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false and arg1:HasSpecialEffectId(TARGET_SELF, 10183) == false then
        f2_local0[1] = 100
    elseif f2_local3 >= 5 then
        f2_local0[2] = 5
        f2_local0[3] = 20
        f2_local0[11] = 35
        f2_local0[5] = 10
        f2_local0[30] = 15
        f2_local0[31] = 10
    elseif f2_local3 >= 3 then
        f2_local0[2] = 30
        f2_local0[3] = 0
        f2_local0[5] = 5
        f2_local0[10] = 40
        f2_local0[11] = 25
        f2_local0[31] = 10
    else
        f2_local0[2] = 25
        f2_local0[3] = 5
        f2_local0[6] = 50
        f2_local0[10] = 15
        f2_local0[11] = 5
        f2_local0[31] = 10
        f2_local0[32] = 15
    end
    f2_local0[5] = SetCoolTime(arg1, arg2, 3012, 2 + arg1:GetRandam_Int(2, 4), f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3002, arg1:GetRandam_Int(0, 3), f2_local0[6], 1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10880) == false then
        f2_local0[30] = 0
        f2_local0[31] = 0
        f2_local0[32] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10859) then
        f2_local0[30] = 0
        f2_local0[31] = 0
        f2_local0[32] = 0
    end
    if arg1:GetTimer(10) >= 0.1 then
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[30] = 0
        f2_local0[31] = 0
        f2_local0[32] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, LossRaceSoldierWatchman300030_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, LossRaceSoldierWatchman300030_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, LossRaceSoldierWatchman300030_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, LossRaceSoldierWatchman300030_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, LossRaceSoldierWatchman300030_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, LossRaceSoldierWatchman300030_Act06)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, LossRaceSoldierWatchman300030_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, LossRaceSoldierWatchman300030_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, LossRaceSoldierWatchman300030_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, LossRaceSoldierWatchman300030_Act13)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, LossRaceSoldierWatchman300030_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, LossRaceSoldierWatchman300030_Act21)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, LossRaceSoldierWatchman300030_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, LossRaceSoldierWatchman300030_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, LossRaceSoldierWatchman300030_Act32)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, LossRaceSoldierWatchman300030_Act48)
    local f2_local9 = REGIST_FUNC(arg1, arg2, LossRaceSoldierWatchman300030_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function LossRaceSoldierWatchman300030_Act01(arg0, arg1, arg2)
    local f3_local0 = 3010
    local f3_local1 = 999
    local f3_local2 = 0
    local f3_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local1, f3_local2, f3_local3, 0, 0)
    arg0:SetTimer(0, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierWatchman300030_Act02(arg0, arg1, arg2)
    local f4_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f4_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f4_local3 = 50
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3000
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LossRaceSoldierWatchman300030_Act03(arg0, arg1, arg2)
    local f5_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f5_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f5_local3 = 50
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3001
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LossRaceSoldierWatchman300030_Act04(arg0, arg1, arg2)
    local f6_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f6_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f6_local3 = 50
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3011
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LossRaceSoldierWatchman300030_Act05(arg0, arg1, arg2)
    local f7_local0 = 3012
    local f7_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 0
    local f7_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local0, TARGET_ENE_0, f7_local1, f7_local2, f7_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierWatchman300030_Act06(arg0, arg1, arg2)
    local f8_local0 = 1.5
    local f8_local1 = 0
    local f8_local2 = 999
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3002
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LossRaceSoldierWatchman300030_Act10(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 10
    local f9_local2 = 12
    local f9_local3 = 0
    if f9_local1 <= f9_local0 then
        Approach_Act(arg0, arg1, f9_local1, f9_local2, f9_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, f9_local1, TARGET_ENE_0, true, -1)
    
end

function LossRaceSoldierWatchman300030_Act11(arg0, arg1, arg2)
    local f10_local0 = 0
    local f10_local1 = arg0:GetRandam_Int(1, 100)
    local f10_local2 = -1
    if f10_local1 <= f10_local0 then
        f10_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f10_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierWatchman300030_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierWatchman300030_Act13(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f12_local0 = 2
    local f12_local1 = 0
    local f12_local2 = 999
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 4
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3002
    local f12_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 0
    local f12_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LossRaceSoldierWatchman300030_Act20(arg0, arg1, arg2)
    local f13_local0 = 3008
    local f13_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 0
    local f13_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local0, TARGET_ENE_0, f13_local1, f13_local2, f13_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierWatchman300030_Act21(arg0, arg1, arg2)
    local f14_local0 = 3009
    local f14_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 0
    local f14_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierWatchman300030_Act30(arg0, arg1, arg2)
    local f15_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    arg0:SetTimer(10, 3)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierWatchman300030_Act31(arg0, arg1, arg2)
    local f16_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    arg0:SetTimer(10, 3)
    if f16_local0 > 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierWatchman300030_Act32(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f17_local0 = arg0:GetRandam_Int(1, 100)
    local f17_local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    arg0:SetTimer(10, 3)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6011, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierWatchman300030_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(2, 5), TARGET_NONE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierWatchman300030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_LossRaceSoldierWatchman300031_AfterAttackAct, 10)
    
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
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:GetNUmber(10) == 0 then
        arg1:SetNumber(10, 1)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 83 and targetDist <= 5 then
            arg2:ClearSubGoal()
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5404 then
            arg1:SetTimer(0, 20)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5029) == true and arg1:HasSpecialEffectId(TARGET_ENE_0, 10859) == false then
        local f22_local0 = arg1:GetDist(TARGET_ENE_0)
        local f22_local1 = arg1:GetRandam_Int(1, 100)
        selectFate_ToB = 1
        selectFate_ToBL = 1
        selectFate_ToBR = 1
        selectFate_ToL = 1
        selectFate_ToR = 1
        warpDist_x = arg1:GetRandam_Int(3, 5)
        if arg1:GetNumber(15) == 1 then
            selectFate_ToBL = 0
            selectFate_ToBR = 0
            selectFate_ToL = 0
            selectFate_ToR = 0
        elseif arg1:GetNumber(15) == 2 then
            selectFate_ToB = 0
            warpDist_x = arg1:GetRandam_Int(7, 10)
        elseif arg1:GetNumber(15) == 3 then
            selectFate_ToB = 0
            selectFate_ToBR = 0
            selectFate_ToR = 0
        elseif arg1:GetNumber(15) == 4 then
            selectFate_ToB = 0
            selectFate_ToBL = 0
            selectFate_ToL = 0
        end
        local f22_local2 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
        local f22_local3 = 0
        local f22_local4 = 0
        local f22_local5 = arg1:GetMapHitRadius(TARGET_SELF)
        local f22_local6 = arg1:GetDist(TARGET_ENE_0)
        local f22_local7 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToB, warpDist_x + f22_local5, f22_local5, 0) <= warpDist_x then
            selectFate_ToB = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_x + f22_local5, f22_local5, 0) <= warpDist_x then
            selectFate_ToBL = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_x + f22_local5, f22_local5, 0) <= warpDist_x then
            selectFate_ToBR = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, warpDist_x + f22_local5, f22_local5, 0) <= warpDist_x then
            selectFate_ToL = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, warpDist_x + f22_local5, f22_local5, 0) <= warpDist_x then
            selectFate_ToR = 0
        end
        local f22_local8 = arg1:GetRandam_Int(0, selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR)
        local f22_local9 = AI_DIR_TYPE_ToB
        local f22_local10 = 0
        local f22_local11 = TARGET_ENE_0
        if 0 == selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
            arg1:SetNumber(15, 5)
        elseif 0 ~= AI_DIR_TYPE_ToB and f22_local8 <= selectFate_ToB then
            f22_local9 = AI_DIR_TYPE_ToB
            f22_local10 = warpDist_x
            f22_local11 = TARGET_ENE_0
        elseif 0 ~= selectFate_2 and f22_local8 <= selectFate_ToB + selectFate_ToBL then
            f22_local9 = AI_DIR_TYPE_ToBL
            f22_local10 = warpDist_x
            f22_local11 = TARGET_ENE_0
        elseif 0 ~= selectFate_3 and f22_local8 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR then
            f22_local9 = AI_DIR_TYPE_ToBR
            f22_local10 = warpDist_x
            f22_local11 = TARGET_ENE_0
        elseif 0 ~= selectFate_4 and f22_local8 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL then
            f22_local9 = AI_DIR_TYPE_ToL
            f22_local10 = warpDist_x
            f22_local11 = TARGET_ENE_0
        elseif 0 ~= selectFate_4 and f22_local8 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
            f22_local9 = AI_DIR_TYPE_ToR
            f22_local10 = warpDist_x
            f22_local11 = TARGET_ENE_0
        end
        if arg1:GetNumber(15) == 5 then
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f22_local9, f22_local10, f22_local11, 5, -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        else
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f22_local9, f22_local10, f22_local11, 5, -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_LossRaceSoldierWatchman300031_AfterAttackAct, "LossRaceSoldierWatchman300031_AfterAttackAct ")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LossRaceSoldierWatchman300031_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


