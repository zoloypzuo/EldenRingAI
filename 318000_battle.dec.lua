RegisterTableGoal(GOAL_WolfRiderWolf318000_Battle, "WolfRiderWolf318000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WolfRiderWolf318000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 11893)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 83)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetHpRate(TARGET_SELF)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = 0
    if arg1:GetHpRate(TARGET_EVENT) > 0 then
        f2_local7 = 1
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16941) then
        f2_local0[9] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 11895) == true and f2_local7 == 1 then
        f2_local0[41] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 11890) == true and f2_local7 == 1 then
        f2_local0[2] = 20
        f2_local0[8] = 30
        f2_local0[42] = 50
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 11891) == true and f2_local7 == 1 then
        if f2_local3 >= 7 then
            f2_local0[1] = 7
            f2_local0[3] = 3
            f2_local0[40] = 1000
        elseif f2_local3 >= 4 then
            f2_local0[3] = 1
            f2_local0[40] = 1000
        elseif InsideRange(arg1, arg2, 0, 180, 0, 99) then
            f2_local0[3] = 1
            f2_local0[40] = 1000
        else
            f2_local0[4] = 1
            f2_local0[40] = 1000
        end
    elseif not (f2_local6 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku) or f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[42] = 300
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            f2_local0[2] = 100
            if arg1:HasSpecialEffectId(TARGET_SELF, 16940) then
                f2_local0[9] = 200
            end
        end
    elseif f2_local3 >= 7 then
        f2_local0[1] = 40
        f2_local0[3] = 30
        f2_local0[8] = 30
    elseif f2_local3 >= 4 then
        f2_local0[3] = 60
        f2_local0[8] = 40
    elseif InsideRange(arg1, arg2, 0, 180, 0, 99) then
        f2_local0[3] = 60
        f2_local0[8] = 40
    else
        f2_local0[4] = 100
    end
    f2_local0[3] = SetCoolTime(arg1, arg2, 3005, 5, f2_local0[3], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3015, 5, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3016, 30, f2_local0[9], 1)
    f2_local0[40] = SetCoolTime(arg1, arg2, 3030, 20, f2_local0[40], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, WolfRiderWolf318000_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, WolfRiderWolf318000_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, WolfRiderWolf318000_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, WolfRiderWolf318000_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, WolfRiderWolf318000_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, WolfRiderWolf318000_Act6)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, WolfRiderWolf318000_Act7)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, WolfRiderWolf318000_Act8)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, WolfRiderWolf318000_Act9)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, WolfRiderWolf318000_Act20)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, WolfRiderWolf318000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, WolfRiderWolf318000_Act31)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, WolfRiderWolf318000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, WolfRiderWolf318000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, WolfRiderWolf318000_Act42)
    local f2_local8 = REGIST_FUNC(arg1, arg2, WolfRiderWolf318000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function WolfRiderWolf318000_Act1(arg0, arg1, arg2)
    local f3_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 0
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3002
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRiderWolf318000_Act2(arg0, arg1, arg2)
    local f4_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 0
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3003
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRiderWolf318000_Act3(arg0, arg1, arg2)
    local f5_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 0
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3004
    local f5_local8 = 3005
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local8, TARGET_ENE_0, f5_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRiderWolf318000_Act4(arg0, arg1, arg2)
    local f6_local0 = 3006
    local f6_local1 = 3007
    local f6_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 0
    local f6_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local2, f6_local3, f6_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local1, TARGET_ENE_0, f6_local2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRiderWolf318000_Act5(arg0, arg1, arg2)
    local f7_local0 = 3010
    local f7_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 0
    local f7_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local0, TARGET_ENE_0, f7_local1, f7_local2, f7_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRiderWolf318000_Act6(arg0, arg1, arg2)
    local f8_local0 = 3012
    local f8_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 0
    local f8_local3 = 0
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 99) then
        f8_local0 = 3013
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRiderWolf318000_Act7(arg0, arg1, arg2)
    local f9_local0 = 3011
    local f9_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 0
    local f9_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRiderWolf318000_Act8(arg0, arg1, arg2)
    local f10_local0 = 2.5
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 0
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3015
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRiderWolf318000_Act9(arg0, arg1, arg2)
    local f11_local0 = 3016
    local f11_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 0
    local f11_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local1, f11_local2, f11_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRiderWolf318000_Act20(arg0, arg1, arg2)
    local f12_local0 = 20003
    local f12_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 0
    local f12_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local0, TARGET_ENE_0, f12_local1, f12_local2, f12_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRiderWolf318000_Act30(arg0, arg1, arg2)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 99) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRiderWolf318000_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRiderWolf318000_Act40(arg0, arg1, arg2)
    local f15_local0 = 3030
    local f15_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f15_local2 = 0
    local f15_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11893)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_SELF, 0, AI_DIR_TYPE_B, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f15_local0, TARGET_SELF, f15_local1, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRiderWolf318000_Act41(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRiderWolf318000_Act42(arg0, arg1, arg2)
    local f17_local0 = arg0:GetRandam_Int(0, 1)
    local f17_local1 = arg0:GetRandam_Int(3, 5)
    local f17_local2 = TARGET_ENE_0
    local f17_local3 = f17_local0
    local f17_local4 = 100
    local f17_local5 = true
    local f17_local6 = -1
    local f17_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f17_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, isLifeSuccess, f17_local6, f17_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRiderWolf318000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_WolfRiderWolf318000_AfterAttackAct, 10)
    
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
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(83) then
            arg2:ClearSubGoal()
            return true
        elseif arg1:GetSpecialEffectActivateInterruptId(11893) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 5, TARGET_SOUND, AI_DIR_TYPE_F, -1, TARGET_ENE_0)
            arg1:Replaning()
            return true
        elseif arg1:GetSpecialEffectActivateInterruptId(5026) then
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            if arg1:GetNumber(0) * 40 < f21_local2 then

            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 150, 0, 8) then
                arg1:SetNumber(0, 0)
                arg2:ClearSubGoal()
                WolfRiderWolf318000_Act31(arg1, arg2)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, -1, 8) then
                arg1:SetNumber(0, 0)
                arg2:ClearSubGoal()
                WolfRiderWolf318000_Act30(arg1, arg2)
                return true
            else

            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_WolfRiderWolf318000_AfterAttackAct, "WolfRiderWolf318000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WolfRiderWolf318000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


