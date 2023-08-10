RegisterTableGoal(GOAL_GhoulChildrenWhip395000_Battle, "GhoulChildrenWhip395000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GhoulChildrenWhip395000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
    arg1:EnableUnfavorableAttackCheck(1000000, 3003)
    arg1:EnableUnfavorableAttackCheck(1000000, 3004)
    arg1:EnableUnfavorableAttackCheck(1000000, 3005)
    arg1:EnableUnfavorableAttackCheck(1000000, 3006)
    arg1:EnableUnfavorableAttackCheck(1000000, 3008)
    arg1:EnableUnfavorableAttackCheck(1000000, 3009)
    arg1:EnableUnfavorableAttackCheck(1000000, 3010)
    arg1:EnableUnfavorableAttackCheck(1000000, 3011)
    arg1:EnableUnfavorableAttackCheck(1000000, 3012)
    arg1:EnableUnfavorableAttackCheck(1000000, 3013)
    arg1:EnableUnfavorableAttackCheck(1000000, 3014)
    arg1:EnableUnfavorableAttackCheck(1000000, 3015)
    arg1:EnableUnfavorableAttackCheck(1000000, 3016)
    arg1:EnableUnfavorableAttackCheck(1000000, 3017)
    arg1:EnableUnfavorableAttackCheck(1000000, 3018)
    arg1:EnableUnfavorableAttackCheck(1000000, 3019)
    arg1:EnableUnfavorableAttackCheck(1000000, 3020)
    arg1:EnableUnfavorableAttackCheck(1000000, 3021)
    arg1:EnableUnfavorableAttackCheck(1000000, 3022)
    arg1:EnableUnfavorableAttackCheck(1000000, 3024)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:GetStringIndexedNumber("Test_Buff")
    Test_Buff = 2
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if arg1:HasSpecialEffectId(TARGET_SELF, 13564) then
        f2_local0[30] = 100
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[49] = 100
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 > 12 or f2_local3 < 7 then
            f2_local0[49] = 100
        else
            f2_local0[7] = 25
            f2_local0[1] = 25
            f2_local0[49] = 50
        end
    else
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 999) then
            if f2_local3 > 10 then
                f2_local0[41] = 100
            elseif f2_local3 > 6 + Test_Buff then
                if arg1:GetTimer(0) > 0 then
                    f2_local0[1] = 20
                    f2_local0[7] = 80
                else
                    f2_local0[1] = 60
                    f2_local0[7] = 40
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 13550) then
                    f2_local0[5] = 150
                end
            elseif f2_local3 > 4 then
                if arg1:GetTimer(0) > 0 then
                    f2_local0[1] = 20
                    f2_local0[3] = 40
                    f2_local0[7] = 40
                else
                    f2_local0[1] = 60
                    f2_local0[3] = 20
                    f2_local0[7] = 20
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 13550) then
                    f2_local0[5] = 150
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 13551) then
                    f2_local0[6] = 60
                end
            else
                if arg1:GetTimer(0) > 0 then
                    f2_local0[1] = 10
                    f2_local0[3] = 10
                    f2_local0[5] = 0
                    f2_local0[43] = 0
                else
                    f2_local0[1] = 20
                    f2_local0[3] = 30
                    f2_local0[5] = 0
                    f2_local0[43] = 50
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 13551) then
                    f2_local0[6] = 60
                end
            end
        elseif f2_local3 < 9 then
            f2_local0[46] = 80
        else
            f2_local0[42] = 70
            f2_local0[47] = 30
        end
        if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == true then
            f2_local0[6] = 0
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 4, f2_local0[1], 5)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3004, 7, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3005, 20, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3006, 20, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3007, 30, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3008, 12, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3018, 7, f2_local0[7], 1)
    f2_local0[43] = SetCoolTime(arg1, arg2, 6001, 5, f2_local0[43], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_Act07)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_Act30)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_Act47)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_Act49)
    local f2_local7 = REGIST_FUNC(arg1, arg2, GhoulChildrenWhip395000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function GhoulChildrenWhip395000_Act01(arg0, arg1, arg2)
    local f3_local0 = 6.2 + Test_Buff
    local f3_local1 = 0
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f3_local7 = 10
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenWhip395000_Act02(arg0, arg1, arg2)
    local f4_local0 = 6 + Test_Buff
    local f4_local1 = 0
    local f4_local2 = 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 2
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f4_local7 = 3.2
    local f4_local8 = 3004
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local7, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenWhip395000_Act03(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f5_local0 = 10
    local f5_local1 = 3005
    local f5_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 0
    local f5_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local0, f5_local1, TARGET_ENE_0, f5_local2, f5_local3, f5_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenWhip395000_Act04(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f6_local0 = 10
    local f6_local1 = 3006
    local f6_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 0
    local f6_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local1, TARGET_ENE_0, f6_local2, f6_local3, f6_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenWhip395000_Act05(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f7_local0 = 10
    local f7_local1 = 3007
    local f7_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 0
    local f7_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, TARGET_ENE_0, f7_local2, f7_local3, f7_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenWhip395000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    if f8_local0 < 2.5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    else
        local f8_local1 = 4
        local f8_local2 = 0
        local f8_local3 = 999
        local f8_local4 = 100
        local f8_local5 = 0
        local f8_local6 = 1
        local f8_local7 = 1
        Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f8_local1 = 3
    local f8_local2 = 3008
    local f8_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local4 = 0
    local f8_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local1, f8_local2, TARGET_ENE_0, f8_local3, f8_local4, f8_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenWhip395000_Act07(arg0, arg1, arg2)
    local f9_local0 = 6.9 + Test_Buff
    local f9_local1 = 0
    local f9_local2 = 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 2
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f9_local7 = 3
    local f9_local8 = 3018
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local7, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenWhip395000_Act30(arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13565) then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f10_local0 = 10
        local f10_local1 = 3025
        local f10_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f10_local3 = 0
        local f10_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f10_local0, f10_local1, TARGET_ENE_0, f10_local2, f10_local3, f10_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function GhoulChildrenWhip395000_Act40(arg0, arg1, arg2)
    local f11_local0 = 2
    local f11_local1 = 10
    local f11_local2 = true
    local f11_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f11_local0, TARGET_ENE_0, f11_local1, TARGET_SELF, f11_local2, f11_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenWhip395000_Act41(arg0, arg1, arg2)
    local f12_local0 = 10
    local f12_local1 = 8
    local f12_local2 = false
    local f12_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f12_local0, TARGET_ENE_0, f12_local1, TARGET_SELF, f12_local2, f12_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenWhip395000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenWhip395000_Act43(arg0, arg1, arg2)
    local f14_local0 = 3
    local f14_local1 = -1
    local f14_local2 = 100
    local f14_local3 = -1
    local f14_local4 = -1
    local f14_local5 = TARGET_ENE_0
    local f14_local6 = 3
    local f14_local7 = 0
    local f14_local8 = false
    arg0:SetTimer(0, 6)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7, f14_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenWhip395000_Act44(arg0, arg1, arg2)
    local f15_local0 = arg0:GetRandam_Int(0, 1)
    local f15_local1 = 3.5
    local f15_local2 = TARGET_ENE_0
    local f15_local3 = f15_local0
    local f15_local4 = 15
    local f15_local5 = true
    local f15_local6 = -1
    local f15_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f15_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, isLifeSuccess, f15_local6, f15_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenWhip395000_Act45(arg0, arg1, arg2)
    local f16_local0 = 3
    local f16_local1 = TARGET_ENE_0
    local f16_local2 = 8
    local f16_local3 = TARGET_ENE_0
    local f16_local4 = true
    local f16_local5 = -1
    local f16_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f16_local7 = false
    local f16_local8 = 1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7, f16_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenWhip395000_Act46(arg0, arg1, arg2)
    local f17_local0 = 3
    local f17_local1 = 100
    local f17_local2 = -1
    local f17_local3 = -1
    local f17_local4 = -1
    local f17_local5 = TARGET_ENE_0
    local f17_local6 = 3
    local f17_local7 = 0
    local f17_local8 = false
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f17_local0, 6000, f17_local5, 0, AI_DIR_TYPE_F, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenWhip395000_Act47(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local f18_local0 = 2
        local f18_local1 = 6003
        local f18_local2 = TARGET_ENE_0
        local f18_local3 = 0
        local f18_local4 = AI_DIR_TYPE_R
        local f18_local5 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f18_local0 = arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180)
        if f18_local0 then
            f18_local0 = 2
            local f18_local1 = 6002
            local f18_local2 = TARGET_ENE_0
            local f18_local3 = 0
            local f18_local4 = AI_DIR_TYPE_L
            local f18_local5 = 0
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    
end

function GhoulChildrenWhip395000_Act49(arg0, arg1, arg2)
    local f19_local0 = 7
    local f19_local1 = 12
    local f19_local2 = -1
    local f19_local3 = true
    local f19_local4 = 1
    local f19_local5 = 10
    local f19_local6 = 1.5
    local f19_local7 = 2
    local f19_local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, f19_local4)
    local f19_local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, f19_local4)
    local f19_local10 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, f19_local4)
    local f19_local11 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, f19_local4)
    local f19_local12 = arg0:GetDist(TARGET_ENE_0)
    local f19_local13 = arg0:GetRandam_Int(0, 1)
    if f19_local9 == true and f19_local8 == true then

    elseif f19_local9 == true and f19_local8 == false then
        f19_local13 = 0
    elseif f19_local9 == false and f19_local8 == true then
        f19_local13 = 1
    elseif f19_local9 == false and f19_local8 == false then
        f19_local13 = 2
    end
    if f19_local1 < f19_local12 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f19_local5, TARGET_ENE_0, arg0:GetRandam_Float(f19_local0, f19_local1), TARGET_SELF, false, f19_local2)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f19_local12 <= f19_local1 and f19_local0 <= f19_local12 then
        if f19_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local6, TARGET_ENE_0, f19_local13, 100, f19_local3, false, f19_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f19_local12 < f19_local0 then
        if f19_local11 == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f19_local7, TARGET_ENE_0, arg0:GetRandam_Float(f19_local0, f19_local1), TARGET_ENE_0, f19_local3, f19_local2, GUARD_GOAL_DESIRE_RET_Success)
        elseif f19_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local6, TARGET_ENE_0, f19_local13, 100, f19_local3, false, f19_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenWhip395000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_GhoulChildrenWhip395000_AfterAttackAct, 10)
    
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
    local f23_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f23_local1 = 0
    local f23_local2 = 20
    local f23_local3 = arg1:GetDist(TARGET_ENE_0)
    local f23_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_Damaged) and f23_local3 < 5 then
        if f23_local4 <= 70 and arg1:GetTimer(0) <= 0 then
            arg2:ClearSubGoal()
            arg1:SetTimer(0, 6)
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, 100, 1, 1, TARGET_ENE_0, 3, 0, false)
            return true
        end
        return false
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and f23_local3 > 10 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 1, 100, -1, -1, -1, TARGET_ENE_0, 3, 0, false)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 80, 4.5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 2.6, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 80, 7) then
                if f23_local4 < 49 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 2.6, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 2.5, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 80, 8 + Test_Buff) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4.5, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_GhoulChildrenWhip395000_AfterAttackAct, "GhoulChildrenWhip395000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GhoulChildrenWhip395000_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


