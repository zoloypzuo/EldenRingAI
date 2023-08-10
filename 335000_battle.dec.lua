RegisterTableGoal(GOAL_CrystalTribeChakram335000_Battle, "CrystalTribeChakram335000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrystalTribeChakram335000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 83)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetHpRate(TARGET_SELF)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if not (f2_local6 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku) or f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 7 then
            f2_local0[9] = 70
            f2_local0[4] = 0
            f2_local0[32] = 0
            f2_local0[30] = 10
            f2_local0[33] = 20
        elseif InsideRange(arg1, arg2, 0, 150, 0, 99) then
            f2_local0[3] = 50
            f2_local0[9] = 20
            f2_local0[34] = 30
            f2_local0[33] = 20
        elseif InsideRange(arg1, arg2, 0, 270, 0, 99) then
            f2_local0[3] = 30
            f2_local0[9] = 10
            f2_local0[34] = 60
        else
            f2_local0[34] = 100
        end
    elseif f2_local3 >= 15 then
        f2_local0[30] = 100
    elseif f2_local3 >= 7 then
        f2_local0[4] = 50
        f2_local0[32] = 50
    elseif f2_local3 >= 3.5 then
        if InsideRange(arg1, arg2, 0, 180, 0, 99) then
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[6] = 0
            f2_local0[32] = 70
        else
            f2_local0[32] = 100
        end
    elseif InsideRange(arg1, arg2, 0, 150, 0, 99) then
        f2_local0[1] = 0
        f2_local0[3] = 70
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[34] = 30
    elseif InsideRange(arg1, arg2, 0, 270, 0, 99) then
        f2_local0[1] = 0
        f2_local0[3] = 20
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 20
        f2_local0[34] = 60
    else
        f2_local0[1] = 0
        f2_local0[5] = 0
        f2_local0[34] = 100
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 20, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 20, f2_local0[2], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3010, 5, f2_local0[5], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 6012, 10, f2_local0[33], 0)
    f2_local0[33] = SetCoolTime(arg1, arg2, 6013, 10, f2_local0[33], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, CrystalTribeChakram335000_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, CrystalTribeChakram335000_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, CrystalTribeChakram335000_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, CrystalTribeChakram335000_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, CrystalTribeChakram335000_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, CrystalTribeChakram335000_Act6)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, CrystalTribeChakram335000_Act7)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, CrystalTribeChakram335000_Act8)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, CrystalTribeChakram335000_Act9)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, CrystalTribeChakram335000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, CrystalTribeChakram335000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, CrystalTribeChakram335000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, CrystalTribeChakram335000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, CrystalTribeChakram335000_Act34)
    local f2_local7 = REGIST_FUNC(arg1, arg2, CrystalTribeChakram335000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function CrystalTribeChakram335000_Act1(arg0, arg1, arg2)
    local f3_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 50
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 4
    if arg0:GetHpRate(TARGET_SELF) <= 0.9 then
        f3_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeChakram335000_Act2(arg0, arg1, arg2)
    local f4_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 50
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 4
    if arg0:GetHpRate(TARGET_SELF) <= 0.9 then
        f4_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeChakram335000_Act3(arg0, arg1, arg2)
    local f5_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 50
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 4
    if arg0:GetHpRate(TARGET_SELF) <= 0.9 then
        f5_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3002
    local f5_local8 = 3003
    local f5_local9 = 3004
    local f5_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f5_local12 = 0
    local f5_local13 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local10, f5_local12, f5_local13, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local8, TARGET_ENE_0, f5_local11, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeChakram335000_Act4(arg0, arg1, arg2)
    local f6_local0 = 3005
    local f6_local1 = 3006
    local f6_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f6_local3 = 0
    local f6_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local2, f6_local3, f6_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local1, TARGET_ENE_0, SuccessDist2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeChakram335000_Act5(arg0, arg1, arg2)
    local f7_local0 = 3010
    local f7_local1 = 3004
    local f7_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f7_local3 = 0
    local f7_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local0, TARGET_ENE_0, f7_local2, f7_local3, f7_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f7_local1, TARGET_ENE_0, SuccessDist2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeChakram335000_Act6(arg0, arg1, arg2)
    local f8_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 50
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 4
    if arg0:GetHpRate(TARGET_SELF) <= 0.9 then
        f8_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3007
    local f8_local8 = 3008
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 0
    local f8_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, f8_local7, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f8_local8, TARGET_ENE_0, SuccessDist2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeChakram335000_Act7(arg0, arg1, arg2)
    local f9_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 50
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 4
    if arg0:GetHpRate(TARGET_SELF) <= 0.9 then
        f9_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3011
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeChakram335000_Act8(arg0, arg1, arg2)
    local f10_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 50
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 2
    local f10_local6 = 4
    if arg0:GetHpRate(TARGET_SELF) <= 0.9 then
        f10_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3008
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeChakram335000_Act9(arg0, arg1, arg2)
    local f11_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 50
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 2
    local f11_local6 = 4
    if arg0:GetHpRate(TARGET_SELF) <= 0.9 then
        f11_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3030
    local f11_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f11_local9 = 0
    local f11_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeChakram335000_Act30(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetRandam_Int(1, 100)
    local f12_local2 = 2
    local f12_local3 = 8
    local f12_local4 = -1
    if arg0:GetHpRate(TARGET_SELF) <= 0.9 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f12_local2, TARGET_ENE_0, f12_local3, TARGET_SELF, false, f12_local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f12_local2, TARGET_ENE_0, f12_local3, TARGET_SELF, true, f12_local4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeChakram335000_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeChakram335000_Act32(arg0, arg1, arg2)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 99) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeChakram335000_Act33(arg0, arg1, arg2)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 99) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeChakram335000_Act34(arg0, arg1, arg2)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 99) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6022, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6023, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeChakram335000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_CrystalTribeChakram335000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f20_local0 = arg1:GetDist(TARGET_ENE_0)
    local f20_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f20_local2 = arg1:GetRandam_Int(1, 100)
    local f20_local3 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5025) == false and (not not arg1:GetSpecialEffectActivateInterruptId(83) or not not arg1:GetSpecialEffectActivateInterruptId(90) or arg1:GetSpecialEffectActivateInterruptId(6992)) then
        if f20_local0 < 2.5 then
            arg2:ClearSubGoal()
            CrystalTribeChakram335000_Act8(arg1, arg2)
            return true
        else
            arg2:ClearSubGoal()
            CrystalTribeChakram335000_Act32(arg1, arg2)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 9) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif not not arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4.5) or arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 180, 4.5) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3013, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3012, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 9) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif not not arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4.5) or arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 180, 4.5) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        else

        end
    end
    if arg1:IsInterupt(INTERUPT_GuardBreak) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 2.5) then
            arg2:ClearSubGoal()
            CrystalTribeChakram335000_Act6(arg1, arg2)
            return true
        else
            arg2:ClearSubGoal()
            CrystalTribeChakram335000_Act32(arg1, arg2)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_TargetIsGuard) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5026) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 2.5) then
        arg2:ClearSubGoal()
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        CrystalTribeChakram335000_Act7(arg1, arg2)
        return true
    else

    end
    return false
    
end

RegisterTableGoal(GOAL_CrystalTribeChakram335000_AfterAttackAct, "CrystalTribeChakram335000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrystalTribeChakram335000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


