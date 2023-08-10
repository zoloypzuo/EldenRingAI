RegisterTableGoal(GOAL_Bear603000_Battle, "Bear603000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Bear603000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:DeleteObserve(0)
    arg1:DeleteObserve(1)
    local f2_local0 = FearOfFire(arg1, arg2, PLAN_SIDEWAYTYPE__NONE)
    local f2_local1 = true
    if f2_local0 == f2_local1 then
        return 
    end
    f2_local0 = {}
    f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetEventRequest()
    local f2_local7 = arg1:GetHpRate(TARGET_SELF)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local9 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 90, 50)
    local f2_local10 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 90, 50)
    if f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[11] = 10
        f2_local0[12] = 10
        f2_local0[13] = 10
        f2_local0[20] = 70
    elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[1] = 20
        f2_local0[2] = 10
        f2_local0[11] = 5
        f2_local0[12] = 10
        f2_local0[13] = 5
        f2_local0[20] = 50
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) == true then
        if f2_local10 == true then
            if f2_local3 >= 4 then
                f2_local0[14] = 10
                f2_local0[16] = 20
                f2_local0[26] = 50
            elseif f2_local3 >= 2.5 then
                f2_local0[14] = 40
                f2_local0[16] = 30
                f2_local0[25] = 30
            else
                f2_local0[2] = 20
                f2_local0[14] = 20
                f2_local0[16] = 30
                f2_local0[25] = 30
            end
        elseif f2_local9 == true then
            if f2_local3 >= 20 then
                f2_local0[11] = 10
                f2_local0[12] = 5
                f2_local0[13] = 5
                f2_local0[14] = 30
                f2_local0[22] = 50
            elseif f2_local3 >= 10 then
                f2_local0[12] = 10
                f2_local0[13] = 10
                f2_local0[14] = 40
                f2_local0[15] = 40
            elseif f2_local3 >= 5 then
                f2_local0[2] = 20
                f2_local0[14] = 40
                f2_local0[15] = 40
            elseif f2_local3 >= 2.5 then
                f2_local0[1] = 20
                f2_local0[2] = 40
                f2_local0[14] = 20
                f2_local0[15] = 20
            else
                f2_local0[1] = 40
                f2_local0[2] = 20
                f2_local0[15] = 40
            end
        elseif f2_local3 >= 10 then
            f2_local0[14] = 20
            f2_local0[15] = 40
            f2_local0[24] = 40
        elseif f2_local3 >= 5 then
            f2_local0[2] = 20
            f2_local0[14] = 20
            f2_local0[15] = 20
            f2_local0[24] = 40
        elseif f2_local3 >= 2.5 then
            f2_local0[1] = 40
            f2_local0[2] = 20
            f2_local0[14] = 20
            f2_local0[15] = 20
        else
            f2_local0[1] = 60
            f2_local0[2] = 20
            f2_local0[14] = 20
        end
        if not arg1:IsFinishTimer(0) then
            f2_local0[24] = 1
        end
        if not arg1:IsFinishTimer(1) then
            f2_local0[25] = 1
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[12] = 50
            f2_local0[13] = 50
        else
            f2_local0[22] = 100
        end
    end
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[2], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3022, 20, f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3024, 10, f2_local0[12], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3025, 10, f2_local0[12], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3024, 10, f2_local0[13], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3025, 10, f2_local0[13], 0)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[14], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3004, 5, f2_local0[15], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Bear603000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Bear603000_Act02)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Bear603000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Bear603000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Bear603000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Bear603000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Bear603000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Bear603000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, Bear603000_Act16)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, Bear603000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Bear603000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, Bear603000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, Bear603000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, Bear603000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, Bear603000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, Bear603000_Act26)
    local f2_local11 = REGIST_FUNC(arg1, arg2, Bear603000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local11, f2_local2)
    
end

function Bear603000_Act01(arg0, arg1, arg2)
    local f3_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 15
    local f3_local3 = 50
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 120
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bear603000_Act02(arg0, arg1, arg2)
    local f4_local0 = 6
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 15
    local f4_local3 = 50
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bear603000_Act10(arg0, arg1, arg2)
    local f5_local0 = 3020
    local f5_local1 = 3021
    local f5_local2 = arg0:GetRandam_Int(1, 100)
    if f5_local2 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f5_local0, TARGET_SELF, DIST_None, 0, 0, 0, 0)
    elseif f5_local2 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f5_local0, TARGET_SELF, DIST_None, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f5_local1, TARGET_SELF, DIST_None, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f5_local1, TARGET_SELF, DIST_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f5_local0, TARGET_SELF, DIST_None, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f5_local1, TARGET_SELF, DIST_None, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f5_local1, TARGET_SELF, DIST_None, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f5_local1, TARGET_SELF, DIST_None, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f5_local1, TARGET_SELF, DIST_None, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bear603000_Act11(arg0, arg1, arg2)
    local f6_local0 = 3022
    local f6_local1 = 3023
    local f6_local2 = arg0:GetRandam_Int(1, 100)
    if f6_local2 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f6_local0, TARGET_SELF, DIST_None, 0, 0, 0, 0)
    elseif f6_local2 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f6_local0, TARGET_SELF, DIST_None, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f6_local1, TARGET_SELF, DIST_None, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f6_local1, TARGET_SELF, DIST_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f6_local0, TARGET_SELF, DIST_None, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f6_local1, TARGET_SELF, DIST_None, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f6_local1, TARGET_SELF, DIST_None, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f6_local1, TARGET_SELF, DIST_None, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f6_local1, TARGET_SELF, DIST_None, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bear603000_Act12(arg0, arg1, arg2)
    local f7_local0 = 3024
    local f7_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f7_local0, TARGET_ENE_0, f7_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bear603000_Act13(arg0, arg1, arg2)
    local f8_local0 = 3025
    local f8_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f8_local0, TARGET_ENE_0, f8_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bear603000_Act14(arg0, arg1, arg2)
    local f9_local0 = 6
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 15
    local f9_local3 = 50
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f9_local7 = 3002
    local f9_local8 = 3003
    local f9_local9 = 2
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local9, 0, 0, 0, 0)
    arg0:AddObserveAreaCustom(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 2.5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bear603000_Act15(arg0, arg1, arg2)
    local f10_local0 = 5
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 0
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3004
    local f10_local8 = 5
    local f10_local9 = 0
    local f10_local10 = 30
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bear603000_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1.5, TARGET_ENE_0, 60, -1, GUARD_GOAL_DESIRE_RET_Continue, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bear603000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bear603000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 1, 10, true, -1, 0, 1, false, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bear603000_Act22(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    if f14_local0 <= 7 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 2, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bear603000_Act23(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    if f15_local0 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 2, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 2, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bear603000_Act24(arg0, arg1, arg2)
    local f16_local0 = arg0:GetRandam_Float(3.5, 5.5)
    local f16_local1 = TARGET_ENE_0
    local f16_local2 = 1
    local f16_local3 = arg0:GetRandam_Int(15, 30)
    local f16_local4 = 3
    local f16_local5 = TARGET_SELF
    local f16_local6 = true
    local f16_local7 = true
    local f16_local8 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        f16_local2 = 0
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f16_local0, f16_local1, f16_local2, f16_local3, f16_local6, f16_local7, guardActionId)
    arg0:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5)
    arg0:SetTimer(0, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bear603000_Act25(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 6
    local f17_local2 = 20
    local f17_local3 = 100
    local f17_local4 = arg0:GetRandam_Int(1, 100)
    local f17_local5 = AI_DIR_TYPE_FL
    local f17_local6 = 1
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, ATT_MAX) then
        f17_local5 = AI_DIR_TYPE_FR
        f17_local6 = 0
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 1)
    arg0:SetTimer(1, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bear603000_Act26(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 6
    local f18_local2 = 20
    local f18_local3 = 100
    local f18_local4 = arg0:GetRandam_Int(1, 100)
    local f18_local5 = AI_DIR_TYPE_FL
    local f18_local6 = 1
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, ATT_MAX) then
        f18_local6 = 0
        f18_local5 = AI_DIR_TYPE_FR
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1.5, TARGET_SELF, 0, TARGET_SELF, true, -1, f18_local5, 1.5)
    arg0:SetTimer(1, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bear603000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Bear603000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f22_local0 = arg1:GetDist(TARGET_ENE_0)
    local f22_local1 = arg1:GetRandam_Int(1, 100)
    local f22_local2 = arg1:GetHpRate(TARGET_SELF)
    local f22_local3 = arg1:GetOffsetY(TARGET_SELF)
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg1:IsInsideObserve(1) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3003, TARGET_ENE_0, 5, 0, 0)
                arg1:DeleteObserve(1)
                return true
            end
        else
            arg2:ClearSubGoal()
            arg1:DeleteObserve(0)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and f22_local0 >= 10 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2, TARGET_SELF, false, -1)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_Bear603000_AfterAttackAct, "Bear603000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Bear603000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


