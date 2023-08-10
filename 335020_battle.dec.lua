RegisterTableGoal(GOAL_CrystalTribeStick335020_Battle, "CrystalTribeStick335020_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrystalTribeStick335020_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
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
        if f2_local3 < 3 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                f2_local0[1] = 10
                f2_local0[3] = 20
                f2_local0[4] = 5
                f2_local0[33] = 10
                f2_local0[6] = 25
                f2_local0[41] = 30
            else
                f2_local0[1] = 10
                f2_local0[3] = 20
                f2_local0[33] = 10
                f2_local0[6] = 25
                f2_local0[41] = 30
            end
        elseif f2_local3 < 6 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                f2_local0[1] = 10
                f2_local0[4] = 10
                f2_local0[32] = 20
                f2_local0[6] = 40
            else
                f2_local0[1] = 10
                f2_local0[32] = 20
                f2_local0[6] = 70
            end
        elseif f2_local3 < 10 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                f2_local0[1] = 20
                f2_local0[32] = 20
                f2_local0[6] = 20
                f2_local0[30] = 40
            else
                f2_local0[1] = 10
                f2_local0[2] = 20
                f2_local0[32] = 20
                f2_local0[6] = 20
                f2_local0[30] = 30
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
            f2_local0[30] = 100
        else
            f2_local0[30] = 100
        end
    elseif f2_local3 < 3 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
            f2_local0[1] = 30
            f2_local0[3] = 40
            f2_local0[32] = 1
        else
            f2_local0[1] = 40
            f2_local0[3] = 60
            f2_local0[4] = 30
            f2_local0[32] = 1
        end
    elseif f2_local3 < 6 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
            f2_local0[1] = 30
        else
            f2_local0[1] = 50
            f2_local0[2] = 30
            f2_local0[4] = 50
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        f2_local0[1] = 40
        f2_local0[4] = 0
        f2_local0[30] = 30
    else
        f2_local0[1] = 20
        f2_local0[2] = 40
        f2_local0[30] = 30
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3015, 5, f2_local0[1], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3016, 20, f2_local0[2], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3018, 20, f2_local0[4], 0)
    f2_local0[32] = SetCoolTime(arg1, arg2, 6012, 20, f2_local0[32], 0)
    f2_local0[32] = SetCoolTime(arg1, arg2, 6013, 20, f2_local0[32], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, CrystalTribeStick335020_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, CrystalTribeStick335020_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, CrystalTribeStick335020_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, CrystalTribeStick335020_Act4)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, CrystalTribeStick335020_Act6)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, CrystalTribeStick335020_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, CrystalTribeStick335020_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, CrystalTribeStick335020_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, CrystalTribeStick335020_Act33)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, CrystalTribeStick335020_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, CrystalTribeStick335020_Act36)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, CrystalTribeStick335020_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, CrystalTribeStick335020_Act41)
    local f2_local7 = REGIST_FUNC(arg1, arg2, CrystalTribeStick335020_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function CrystalTribeStick335020_Act1(arg0, arg1, arg2)
    local f3_local0 = 3015
    local f3_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 0
    local f3_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local1, f3_local2, f3_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeStick335020_Act2(arg0, arg1, arg2)
    local f4_local0 = 3016
    local f4_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 0
    local f4_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local0, TARGET_ENE_0, f4_local1, f4_local2, f4_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeStick335020_Act3(arg0, arg1, arg2)
    local f5_local0 = 3017
    local f5_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 0
    local f5_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local0, TARGET_ENE_0, f5_local1, f5_local2, f5_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeStick335020_Act4(arg0, arg1, arg2)
    local f6_local0 = 3018
    local f6_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 0
    local f6_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local1, f6_local2, f6_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeStick335020_Act5(arg0, arg1, arg2)
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
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f7_local7, TARGET_ENE_0, f7_local9, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f7_local7, TARGET_ENE_0, f7_local9, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f7_local8, TARGET_ENE_0, f7_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeStick335020_Act6(arg0, arg1, arg2)
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

function CrystalTribeStick335020_Act30(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = arg0:GetRandam_Int(1, 100)
    local f9_local2 = 2
    local f9_local3 = 6
    local f9_local4 = -1
    if arg0:GetHpRate(TARGET_SELF) <= 0.9 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f9_local2, TARGET_ENE_0, f9_local3, TARGET_SELF, false, f9_local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f9_local2, TARGET_ENE_0, f9_local3, TARGET_SELF, true, f9_local4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeStick335020_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeStick335020_Act32(arg0, arg1, arg2)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 99) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeStick335020_Act33(arg0, arg1, arg2)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 99) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6022, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6023, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeStick335020_Act34(arg0, arg1, arg2)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 99) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6022, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6023, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeStick335020_Act35(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    local f14_local2 = 2
    local f14_local3 = 5
    local f14_local4 = -1
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(30, 45), 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f14_local0 > 5 then
        if arg0:GetHpRate(TARGET_SELF) <= 0.9 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f14_local2, TARGET_ENE_0, f14_local3, TARGET_SELF, false, f14_local4)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f14_local2, TARGET_ENE_0, f14_local3, TARGET_SELF, true, f14_local4)
        end
    else
        local f14_local5 = arg0:GetRandam_Int(0, 1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f14_local5, 100, true, -1, -1, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeStick335020_Act36(arg0, arg1, arg2)
    local f15_local0 = 3035
    local f15_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 0
    local f15_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local1, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeStick335020_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeStick335020_Act41(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalTribeStick335020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_CrystalTribeStick335020_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f21_local0 = arg1:GetDist(TARGET_ENE_0)
    local f21_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f21_local2 = arg1:GetRandam_Int(1, 100)
    local f21_local3 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    return false
    
end

RegisterTableGoal(GOAL_CrystalTribeStick335020_AfterAttackAct, "CrystalTribeStick335020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrystalTribeStick335020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


