RegisterTableGoal(GOAL_CrystalTribeSpear335010_Battle, "CrystalTribeSpear335010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrystalTribeSpear335010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
    arg1:EnableUnfavorableAttackCheck(1000000, 3003)
    arg1:EnableUnfavorableAttackCheck(1000000, 3004)
    arg1:EnableUnfavorableAttackCheck(1000000, 3005)
    arg1:EnableUnfavorableAttackCheck(1000000, 3006)
    arg1:EnableUnfavorableAttackCheck(1000000, 3007)
    arg1:EnableUnfavorableAttackCheck(1000000, 3008)
    arg1:EnableUnfavorableAttackCheck(1000000, 3009)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 83)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetHpRate(TARGET_SELF)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if not (f2_local6 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku) or f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 8 then
            f2_local0[6] = 100
        elseif InsideRange(arg1, arg2, 0, 150, 0, 99) then
            f2_local0[1] = 70
            f2_local0[6] = 30
        elseif InsideRange(arg1, arg2, 0, 270, 0, 99) then
            f2_local0[2] = 70
            f2_local0[6] = 30
        else
            f2_local0[2] = 80
            f2_local0[5] = 20
        end
    elseif f2_local3 >= 8 then
        if InsideRange(arg1, arg2, 0, 120, 0, 99) then
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 100
        else
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 100
        end
    elseif f2_local3 >= 3 then
        if InsideRange(arg1, arg2, 0, 150, 0, 99) then
            f2_local0[1] = 50
            f2_local0[5] = 50
        else
            f2_local0[2] = 50
            f2_local0[5] = 50
        end
    elseif InsideRange(arg1, arg2, 0, 150, 0, 99) then
        f2_local0[1] = 100
        f2_local0[2] = 0
    elseif InsideRange(arg1, arg2, 0, 270, 0, 99) then
        f2_local0[2] = 50
        f2_local0[5] = 50
    else
        f2_local0[2] = 80
        f2_local0[5] = 20
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, CrystalTribeSpear335010_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, CrystalTribeSpear335010_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, CrystalTribeSpear335010_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, CrystalTribeSpear335010_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, CrystalTribeSpear335010_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, CrystalTribeSpear335010_Act6)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, CrystalTribeSpear335010_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, CrystalTribeSpear335010_Act31)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, CrystalTribeSpear335010_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, CrystalTribeSpear335010_Act36)
    local f2_local7 = REGIST_FUNC(arg1, arg2, CrystalTribeSpear335010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function CrystalTribeSpear335010_Act1(arg0, arg1, arg2)
    local f3_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeSpear335010_Act2(arg0, arg1, arg2)
    local f4_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
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
    local f4_local8 = 3003
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f4_local8, TARGET_ENE_0, f4_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeSpear335010_Act3(arg0, arg1, arg2)
    local f5_local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 50
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 5
    local f5_local6 = 10
    if arg0:GetHpRate(TARGET_SELF) <= 0.9 then
        f5_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3004
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeSpear335010_Act4(arg0, arg1, arg2)
    local f6_local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 50
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 5
    local f6_local6 = 10
    if arg0:GetHpRate(TARGET_SELF) <= 0.9 then
        f6_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3005
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeSpear335010_Act5(arg0, arg1, arg2)
    local f7_local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 50
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 4
    if arg0:GetHpRate(TARGET_SELF) <= 0.9 then
        f7_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3006
    local f7_local8 = 3009
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 15
    local f7_local10 = 0
    local f7_local11 = 0
    local f7_local12 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, f7_local7, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f7_local7, TARGET_ENE_0, f7_local9, 0, 0, 0, 0)
    if f7_local12 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f7_local7, TARGET_ENE_0, f7_local9, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f7_local7, TARGET_ENE_0, f7_local9, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f7_local8, TARGET_ENE_0, f7_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeSpear335010_Act6(arg0, arg1, arg2)
    local f8_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
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
    local f8_local7 = 3030
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeSpear335010_Act30(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = arg0:GetRandam_Int(1, 100)
    local f9_local2 = 2
    local f9_local3 = 8
    local f9_local4 = -1
    if arg0:GetHpRate(TARGET_SELF) <= 0.9 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f9_local2, TARGET_ENE_0, f9_local3, TARGET_SELF, false, f9_local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f9_local2, TARGET_ENE_0, f9_local3, TARGET_SELF, true, f9_local4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeSpear335010_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeSpear335010_Act35(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetRandam_Int(1, 100)
    local f11_local2 = 2
    local f11_local3 = 5
    local f11_local4 = -1
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(30, 45), 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f11_local0 > 5 then
        if arg0:GetHpRate(TARGET_SELF) <= 0.9 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f11_local2, TARGET_ENE_0, f11_local3, TARGET_SELF, false, f11_local4)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f11_local2, TARGET_ENE_0, f11_local3, TARGET_SELF, true, f11_local4)
        end
    else
        local f11_local5 = arg0:GetRandam_Int(0, 1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f11_local5, 100, true, -1, -1, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeSpear335010_Act36(arg0, arg1, arg2)
    local f12_local0 = 3035
    local f12_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 0
    local f12_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local0, TARGET_ENE_0, f12_local1, f12_local2, f12_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeSpear335010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_CrystalTribeSpear335010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f16_local0 = arg1:GetDist(TARGET_ENE_0)
    local f16_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = arg1:GetRandam_Int(1, 100)
    local f16_local3 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_TargetIsGuard) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5026) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 7) then
        arg2:ClearSubGoal()
        CrystalTribeSpear335010_Act5(arg1, arg2)
        return true
    else

    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 6) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 360, 5) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        else

        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 6) then
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 14570) then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3036, TARGET_ENE_0, 999, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3007, TARGET_ENE_0, 999, 0, 0)
            end
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 360, 5) then
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 14570) then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3037, TARGET_ENE_0, 999, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3008, TARGET_ENE_0, 999, 0, 0)
            end
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14570) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3036, TARGET_ENE_0, 999, 0, 0)
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(83) then
        arg2:ClearSubGoal()
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_CrystalTribeSpear335010_AfterAttackAct, "CrystalTribeSpear335010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrystalTribeSpear335010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


