RegisterTableGoal(GOAL_Slaughter482000_Battle, "GOAL_Slaughter482000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Slaughter482000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(10, 0)
    arg1:SetStringIndexedNumber("Run_Odds", 0)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 17001)
    local f2_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 17401)
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 17410)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17405)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17406)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17407)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17408)
    arg1:SetNumber(10, 0)
    arg1:SetStringIndexedNumber("Run_Odds", 0)
    if arg1:GetNumber(9) == 1 then
        arg1:SetStringIndexedNumber("Run_Odds", 100)
        arg1:SetNumber(9, 0)
    end
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 160, 90, 20 - arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[17] = 1
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 140, 90, 5) then
            f2_local0[9] = 49
            f2_local0[17] = 1
        end
    elseif f2_local3 >= 6 then
        f2_local0[5] = 30
        f2_local0[7] = 15
        f2_local0[8] = 45
        f2_local0[16] = 150
    elseif f2_local3 >= 2.5 then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[4] = 10
        f2_local0[5] = 25
        f2_local0[7] = 15
        f2_local0[8] = 10
        f2_local0[16] = 40
    else
        f2_local0[1] = 20
        f2_local0[2] = 15
        f2_local0[4] = 10
        f2_local0[7] = 15
        f2_local0[18] = 25
    end
    if f2_local7 == false then
        f2_local0[16] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 3, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 3, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 15, f2_local0[5], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3006, 20, f2_local0[7], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3007, 20, f2_local0[7], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3011, 20, f2_local0[7], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3008, 5, f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3009, 3, f2_local0[11], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Slaughter482000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Slaughter482000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Slaughter482000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Slaughter482000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Slaughter482000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Slaughter482000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Slaughter482000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, Slaughter482000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Slaughter482000_Act09)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Slaughter482000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, Slaughter482000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, Slaughter482000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, Slaughter482000_Act18)
    local f2_local8 = REGIST_FUNC(arg1, arg2, Slaughter482000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function Slaughter482000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(3, 0)
    local f3_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = f3_local2 + 0
    local f3_local4 = f3_local2 + 50
    local f3_local5 = 80
    local f3_local6 = 0
    local f3_local7 = 4
    local f3_local8 = 8
    Approach_Act_Flex(arg0, arg1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8)
    local f3_local9 = 3000
    local f3_local10 = 99
    local f3_local11 = 99
    local f3_local12 = 0
    local f3_local13 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17406)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local9, TARGET_ENE_0, f3_local10, f3_local12, f3_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Slaughter482000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(3, 0)
    local f4_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = f4_local2 + 0
    local f4_local4 = f4_local2 + 50
    local f4_local5 = 80
    local f4_local6 = 0
    local f4_local7 = 4
    local f4_local8 = 8
    Approach_Act_Flex(arg0, arg1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8)
    local f4_local9 = 3001
    local f4_local10 = 2.5
    local f4_local11 = 0
    local f4_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local9, TARGET_ENE_0, f4_local10, f4_local11, f4_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Slaughter482000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(3, 0)
    local f5_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = f5_local2 + 0
    local f5_local4 = f5_local2 + 50
    local f5_local5 = 80
    local f5_local6 = 0
    local f5_local7 = 4
    local f5_local8 = 8
    Approach_Act_Flex(arg0, arg1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7, f5_local8)
    local f5_local9 = 3002
    local f5_local10 = 7
    local f5_local11 = 0
    local f5_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local9, TARGET_ENE_0, f5_local10, f5_local11, f5_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Slaughter482000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(3, 0)
    local f6_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = f6_local2 + 0
    local f6_local4 = f6_local2 + 50
    local f6_local5 = 80
    local f6_local6 = 0
    local f6_local7 = 4
    local f6_local8 = 8
    Approach_Act_Flex(arg0, arg1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7, f6_local8)
    local f6_local9 = 3003
    local f6_local10 = 7
    local f6_local11 = 0
    local f6_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local9, TARGET_ENE_0, f6_local10, f6_local11, f6_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Slaughter482000_Act05(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f7_local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 50
    local f7_local3 = 80
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = arg0:GetRandam_Int(1, 100)
    local f7_local8 = 3004
    local f7_local9 = 100
    local f7_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local11 = 0
    local f7_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local8, TARGET_ENE_0, f7_local9, f7_local11, f7_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Slaughter482000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(3, 0)
    local f8_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = f8_local2 + 0
    local f8_local4 = f8_local2 + 50
    local f8_local5 = 80
    local f8_local6 = 0
    local f8_local7 = 4
    local f8_local8 = 8
    Approach_Act_Flex(arg0, arg1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7, f8_local8)
    local f8_local9 = 3009
    local f8_local10 = 7
    local f8_local11 = 0
    local f8_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local9, TARGET_ENE_0, f8_local10, f8_local11, f8_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Slaughter482000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(3, 0)
    if f9_local0 < 6 then
        local f9_local2 = 3011
        local f9_local3 = 7
        local f9_local4 = 0
        local f9_local5 = 0
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local2, TARGET_ENE_0, f9_local3, f9_local4, f9_local5, 0, 0)
    else
        local f9_local2 = 6
        local f9_local3 = f9_local2 + 0
        local f9_local4 = f9_local2 + 50
        local f9_local5 = 80
        local f9_local6 = 0
        local f9_local7 = 4
        local f9_local8 = 8
        Approach_Act_Flex(arg0, arg1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7, f9_local8)
        local f9_local9 = 3007
        local f9_local10 = 7
        local f9_local11 = 0
        local f9_local12 = 0
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local9, TARGET_ENE_0, f9_local10, f9_local11, f9_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Slaughter482000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(3, 0)
    local f10_local2 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local3 = f10_local2 + 0
    local f10_local4 = f10_local2 + 50
    local f10_local5 = 80
    local f10_local6 = 0
    local f10_local7 = 4
    local f10_local8 = 8
    Approach_Act_Flex(arg0, arg1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7, f10_local8)
    local f10_local9 = 3008
    local f10_local10 = 99
    local f10_local11 = 99
    local f10_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local13 = 0
    local f10_local14 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17405)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17406)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f10_local9, TARGET_ENE_0, f10_local10, f10_local13, f10_local14, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Slaughter482000_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17407)
    local f11_local2 = 3009
    local f11_local3 = 10
    local f11_local4 = 10
    local f11_local5 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local6 = 0
    local f11_local7 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f11_local2, TARGET_ENE_0, f11_local3, f11_local6, f11_local7, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Slaughter482000_Act15(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 10
    local f12_local2 = 12
    local f12_local3 = 50
    local f12_local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, f12_local1, TARGET_ENE_0, true, -1)
    
end

function Slaughter482000_Act16(arg0, arg1, arg2)
    local f13_local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNumber(3) == 1 then
        arg0:SetNumber(3, 1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(3, 5), TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif arg0:GetNumber(3) == 2 then
        arg0:SetNumber(3, 2)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(3, 5), TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif f13_local0 > 50 then
        arg0:SetNumber(3, 1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(3, 5), TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg0:SetNumber(3, 2)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(3, 5), TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Slaughter482000_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 0.5, TARGET_ENE_0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Slaughter482000_Act18(arg0, arg1, arg2)
    local f15_local0 = 5
    local f15_local1 = -1
    local f15_local2 = 1
    local f15_local3 = 2
    local f15_local4 = 2
    local f15_local5 = TARGET_ENE_0
    local f15_local6 = 3
    local f15_local7 = 0
    local f15_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7, f15_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Slaughter482000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Template010010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f19_local0 = arg1:GetDist(TARGET_ENE_0)
    local f19_local1 = arg1:GetRandam_Int(1, 100)
    local f19_local2 = arg1:HasSpecialEffectId(TARGET_SELF, 17401)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17405)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17406)
    if arg1:IsInterupt(INTERUPT_Shoot) and f19_local2 == true then
        if f19_local1 > 60 then
            if f19_local0 < 6 and f19_local1 > 80 then
                arg2:ClearSubGoal()
                Slaughter482000_Act08(arg1, arg2)
                return true
            elseif f19_local0 < 12 and f19_local1 > 70 then
                arg2:ClearSubGoal()
                Slaughter482000_Act05(arg1, arg2)
                return true
            else
                arg2:ClearSubGoal()
                Slaughter482000_Act18(arg1, arg2)
                return true
            end
        else
            arg2:ClearSubGoal()
            Slaughter482000_Act18(arg1, arg2)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(17407) then
            local f19_local3 = arg1:GetDist(TARGET_ENE_0)
            local f19_local4 = arg1:GetRandam_Int(1, 100)
            if f19_local4 > 40 then
                arg2:ClearSubGoal()
                Slaughter482000_Act07(arg1, arg2)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(17408) then
            local f19_local3 = arg1:GetDist(TARGET_ENE_0)
            local f19_local4 = arg1:GetRandam_Int(1, 100)
            if arg1:GetNumber(10) <= 1 then
                if arg1:GetNumber(10) == 0 then
                    arg1:SetNumber(10, 1)
                elseif arg1:GetNumber(10) == 1 then
                    arg1:SetNumber(10, 2)
                end
                local f19_local5 = 3012
                local f19_local6 = 7
                local f19_local7 = 0
                local f19_local8 = 0
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local5, TARGET_ENE_0, f19_local6, f19_local7, f19_local8, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 17405) then
        if arg1:GetAttackPassedTime(3006) >= 20 and arg1:GetAttackPassedTime(3007) >= 20 and arg1:GetAttackPassedTime(3011) >= 20 and f19_local1 > 40 then
            local f19_local3 = 3011
            local f19_local4 = 7
            local f19_local5 = 0
            local f19_local6 = 0
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local3, TARGET_ENE_0, f19_local4, f19_local5, f19_local6, 0, 0)
            return true
        elseif f19_local0 < 4 then
            local f19_local3 = arg1:GetDist(TARGET_ENE_0)
            local f19_local4 = arg1:GetRandam_Int(1, 100)
            local f19_local5 = 3010
            local f19_local6 = 7
            local f19_local7 = 0
            local f19_local8 = 0
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local5, TARGET_ENE_0, f19_local6, f19_local7, f19_local8, 0, 0)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 17406) and f19_local0 < 5 then
        local f19_local3 = arg1:GetDist(TARGET_ENE_0)
        local f19_local4 = arg1:GetRandam_Int(1, 100)
        local f19_local5 = 3005
        local f19_local6 = 7
        local f19_local7 = 0
        local f19_local8 = 0
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local5, TARGET_ENE_0, f19_local6, f19_local7, f19_local8, 0, 0)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_Slaughter482000_AfterAttackAct, "GOAL_Slaughter482000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Slaughter482000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


