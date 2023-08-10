RegisterTableGoal(GOAL_RoamCommonSoldiersTwoHand437010_Battle, "RoamCommonSoldiersTwoHand437010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamCommonSoldiersTwoHand437010_Battle, true)
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
    arg1:EnableUnfavorableAttackCheck(1000000, 3010)
    arg1:EnableUnfavorableAttackCheck(1000000, 3012)
    arg1:EnableUnfavorableAttackCheck(1000000, 3013)
    arg1:EnableUnfavorableAttackCheck(1000000, 3014)
    arg1:EnableUnfavorableAttackCheck(1000000, 3015)
    arg1:EnableUnfavorableAttackCheck(1000000, 3016)
    arg1:EnableUnfavorableAttackCheck(1000000, 3017)
    arg1:EnableUnfavorableAttackCheck(1000000, 3018)
    arg1:EnableUnfavorableAttackCheck(1000000, 3019)
    arg1:EnableUnfavorableAttackCheck(1000000, 3020)
    arg1:EnableUnfavorableAttackCheck(1000000, 3022)
    arg1:EnableUnfavorableAttackCheck(1000000, 3023)
    arg1:EnableUnfavorableAttackCheck(1000000, 3024)
    arg1:EnableUnfavorableAttackCheck(1000000, 3025)
    arg1:EnableUnfavorableAttackCheck(1000000, 3026)
    arg1:EnableUnfavorableAttackCheck(1000000, 3027)
    arg1:EnableUnfavorableAttackCheck(1000000, 3028)
    arg1:EnableUnfavorableAttackCheck(1000000, 3029)
    arg1:EnableUnfavorableAttackCheck(1000000, 3030)
    arg1:EnableUnfavorableAttackCheck(1000000, 3031)
    arg1:EnableUnfavorableAttackCheck(1000000, 3032)
    arg1:EnableUnfavorableAttackCheck(1000000, 3033)
    arg1:EnableUnfavorableAttackCheck(1000000, 3034)
    arg1:EnableUnfavorableAttackCheck(1000000, 3035)
    arg1:EnableUnfavorableAttackCheck(1000000, 3036)
    arg1:EnableUnfavorableAttackCheck(1000000, 3037)
    arg1:EnableUnfavorableAttackCheck(1000000, 3038)
    arg1:EnableUnfavorableAttackCheck(1000000, 3039)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:GetStringIndexedNumber("Combo_Cnt")
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13698)
    local f2_local7 = 8
    local f2_local8 = 12
    if arg1:HasSpecialEffectId(TARGET_SELF, 13655) then
        f2_local7 = 8 + 3
        f2_local8 = 12 + 3
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13698) then
        f2_local0[17] = 100
    elseif arg1:IsRiding(TARGET_ENE_0) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 220, -1, -1) then
            f2_local0[42] = 100
        elseif f2_local3 > 10 then
            f2_local0[20] = 0
            f2_local0[21] = 100
            f2_local0[22] = 0
        else
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 100
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[49] = 100
        if arg1:HasSpecialEffectId(TARGET_SELF, 13655) then
            f2_local0[4] = 30
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 < f2_local7 or f2_local8 < f2_local3 then
            f2_local0[49] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13654) then
            f2_local0[2] = 15
            f2_local0[3] = 25
            f2_local0[49] = 60
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13655) then
            f2_local0[4] = 35
            f2_local0[49] = 65
        end
    else
        if arg1:HasSpecialEffectId(TARGET_SELF, 13654) then
            if f2_local3 > 40 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, -1, -1) then
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    if not not arg1:HasSpecialEffectId(TARGET_SELF, 13694) or arg1:HasSpecialEffectId(TARGET_SELF, 13695) then
                        f2_local0[3] = 200
                    end
                else
                    f2_local0[42] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, -1, 40 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f2_local3 > 10 then
                    if not not arg1:HasSpecialEffectId(TARGET_SELF, 13694) or arg1:HasSpecialEffectId(TARGET_SELF, 13695) then
                        f2_local0[3] = 200
                    else
                        f2_local0[3] = 70
                    end
                    f2_local0[2] = 30
                elseif f2_local3 > 3.5 then
                    if not not arg1:HasSpecialEffectId(TARGET_SELF, 13694) or arg1:HasSpecialEffectId(TARGET_SELF, 13695) then
                        f2_local0[3] = 200
                    else
                        f2_local0[3] = 70
                    end
                    f2_local0[2] = 30
                    if f2_local3 < 8 then
                        f2_local0[49] = 20
                    end
                else
                    f2_local0[1] = 40
                    f2_local0[49] = 10
                    if f2_local3 < 1.8 then
                        f2_local0[5] = 90
                    end
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 220, -1, 40 + arg1:GetMapHitRadius(TARGET_SELF)) then
                f2_local0[42] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13655) then
            if f2_local3 > 40 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, -1, -1) then
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                else
                    f2_local0[42] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, -1, 40 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f2_local3 > 10 then
                    f2_local0[4] = 50
                    f2_local0[2] = 40
                    f2_local0[49] = 30
                elseif f2_local3 > 3.5 then
                    f2_local0[4] = 50
                    f2_local0[2] = 40
                    f2_local0[49] = 30
                else
                    f2_local0[49] = 10
                    f2_local0[4] = 10
                    f2_local0[2] = 10
                    if f2_local3 < 1.8 then
                        f2_local0[5] = 450
                        f2_local0[4] = 0
                        f2_local0[2] = 0
                    end
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 220, -1, 40 + arg1:GetMapHitRadius(TARGET_SELF)) then
                f2_local0[42] = 100
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13663) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13675) then
                f2_local0[16] = 90000
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) then
                f2_local0[16] = 120
            end
        else
            f2_local0[16] = 0
        end
    end
    f2_local0[4] = 0
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3022, 15, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[2], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3023, 5, f2_local0[2], 1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 13694) == false and arg1:HasSpecialEffectId(TARGET_SELF, 13695) == false then
        f2_local0[3] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[3], 0)
    end
    f2_local0[4] = SetCoolTime(arg1, arg2, 3020, 20, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3003, 15, f2_local0[5], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3025, 5, f2_local0[5], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3028, 20, f2_local0[16], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersTwoHand437010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersTwoHand437010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersTwoHand437010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersTwoHand437010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersTwoHand437010_Act05)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act17)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersTwoHand437010_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersTwoHand437010_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersTwoHand437010_Act22)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersTwoHand437010_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersTwoHand437010_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersTwoHand437010_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersTwoHand437010_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersTwoHand437010_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersTwoHand437010_Act45)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersTwoHand437010_Act49)
    local f2_local9 = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersTwoHand437010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function RoamCommonSoldiersTwoHand437010_Act01(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13654) then
        local f3_local0 = 2.8
        local f3_local1 = 0
        local f3_local2 = 999
        local f3_local3 = 100
        local f3_local4 = 0
        local f3_local5 = 2
        local f3_local6 = 2
        Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        local f3_local7 = 10
        local f3_local8 = 3000
        local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f3_local10 = 0
        local f3_local11 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f3_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 13655)
        if f3_local0 then
            f3_local0 = 2.8
            local f3_local1 = 0
            local f3_local2 = 999
            local f3_local3 = 100
            local f3_local4 = 0
            local f3_local5 = 2
            local f3_local6 = 2
            Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
            arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            local f3_local7 = 10
            local f3_local8 = 3022
            local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
            local f3_local10 = 0
            local f3_local11 = 0
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    
end

function RoamCommonSoldiersTwoHand437010_Act02(arg0, arg1, arg2)
    Combo_Cnt = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 13654) then
        local f4_local0 = 3.5
        local f4_local1 = 0
        local f4_local2 = 999
        local f4_local3 = 100
        local f4_local4 = 0
        local f4_local5 = 2
        local f4_local6 = 2
        Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        local f4_local7 = 10
        local f4_local8 = 3001
        local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local10 = 0
        local f4_local11 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local7, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f4_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 13655)
        if f4_local0 then
            f4_local0 = 3.5
            local f4_local1 = 0
            local f4_local2 = 999
            local f4_local3 = 100
            local f4_local4 = 0
            local f4_local5 = 2
            local f4_local6 = 2
            Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
            arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            local f4_local7 = 10
            local f4_local8 = 3023
            local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
            local f4_local10 = 0
            local f4_local11 = 0
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local7, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    
end

function RoamCommonSoldiersTwoHand437010_Act03(arg0, arg1, arg2)
    local f5_local0 = 9
    local f5_local1 = 0
    local f5_local2 = 999
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 6
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f5_local7 = 10
    local f5_local8 = 3010
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local7, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersTwoHand437010_Act04(arg0, arg1, arg2)
    local f6_local0 = 6.5
    local f6_local1 = 0
    local f6_local2 = 999
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 6
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f6_local7 = 10
    local f6_local8 = 3020
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 0
    local f6_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local7, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersTwoHand437010_Act05(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13654) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        local f7_local0 = 10
        local f7_local1 = 3003
        local f7_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f7_local3 = 0
        local f7_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, TARGET_ENE_0, f7_local2, f7_local3, f7_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13655) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        local f7_local0 = 10
        local f7_local1 = 3025
        local f7_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f7_local3 = 0
        local f7_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, TARGET_ENE_0, f7_local2, f7_local3, f7_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function RoamCommonSoldiersTwoHand437010_Act16(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13675) then
        local f8_local0 = 6.5
        local f8_local1 = 999
        local f8_local2 = 0
        local f8_local3 = 0
        local f8_local4 = 0
        local f8_local5 = 2
        local f8_local6 = 2
        Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    end
    local f8_local0 = 8
    local f8_local1 = 3028
    local f8_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 0
    local f8_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local0, f8_local1, TARGET_ENE_0, f8_local2, f8_local3, f8_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersTwoHand437010_Act17(arg0, arg1, arg2)
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 5) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, 3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1, GUARD_GOAL_DESIRE_RET_Failed, false, 0)
    end
    local f9_local0 = 8
    local f9_local1 = 20026
    local f9_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 0
    local f9_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local0, f9_local1, TARGET_ENE_0, f9_local2, f9_local3, f9_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersTwoHand437010_Act20(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f10_local0 = 2 + arg0:GetRandam_Int(1, 2)
    local f10_local1 = TARGET_ENE_0
    local f10_local2 = 9920
    local f10_local3 = GUARD_GOAL_DESIRE_RET_Failed
    local f10_local4 = true
    arg1:AddSubGoal(GOAL_COMMON_Guard, f10_local0, f10_local2, f10_local1, f10_local3, f10_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersTwoHand437010_Act21(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f11_local0 = 2
    local f11_local1 = 7
    local f11_local2 = true
    local f11_local3 = 9920
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f11_local0, TARGET_ENE_0, f11_local1, TARGET_SELF, f11_local2, f11_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersTwoHand437010_Act22(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f12_local0 = arg0:GetRandam_Int(0, 1)
    local f12_local1 = 5
    local f12_local2 = TARGET_ENE_0
    local f12_local3 = f12_local0
    local f12_local4 = 5
    local f12_local5 = true
    local f12_local6 = 9920
    local f12_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f12_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, isLifeSuccess, f12_local6, f12_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersTwoHand437010_Act40(arg0, arg1, arg2)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku then
        local f13_local0 = arg0:GetTeamOrder(ORDER_TYPE_Role)
        local f13_local1 = ROLE_TYPE_Torimaki
        if f13_local0 == f13_local1 then
            local f13_local0 = 2
            local f13_local1 = 10
            local f13_local2 = false
            local f13_local3 = -1
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f13_local0, TARGET_ENE_0, f13_local1, TARGET_SELF, f13_local2, f13_local3)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        else
            f13_local0 = 2
            f13_local1 = 8
            local f13_local2 = true
            local f13_local3 = -1
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f13_local0, TARGET_ENE_0, f13_local1, TARGET_SELF, f13_local2, f13_local3)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    local f13_local0 = 2
    local f13_local1 = 10
    local f13_local2 = false
    local f13_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f13_local0, TARGET_ENE_0, f13_local1, TARGET_SELF, f13_local2, f13_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RoamCommonSoldiersTwoHand437010_Act41(arg0, arg1, arg2)
    local f14_local0 = 2
    local f14_local1 = 8
    local f14_local2 = false
    local f14_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f14_local0, TARGET_ENE_0, f14_local1, TARGET_SELF, f14_local2, f14_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersTwoHand437010_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 100, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersTwoHand437010_Act43(arg0, arg1, arg2)
    local f16_local0 = 1
    local f16_local1 = 0
    local f16_local2 = 100
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = TARGET_ENE_0
    local f16_local6 = 1
    local f16_local7 = -1
    local f16_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7, f16_local8)
    local f16_local9 = arg0:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersTwoHand437010_Act44(arg0, arg1, arg2)
    local f17_local0 = arg0:GetRandam_Int(0, 1)
    local f17_local1 = 2
    local f17_local2 = TARGET_ENE_0
    local f17_local3 = f17_local0
    local f17_local4 = 15
    local f17_local5 = true
    local f17_local6 = -1
    local f17_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f17_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, isLifeSuccess, f17_local6, f17_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersTwoHand437010_Act45(arg0, arg1, arg2)
    local f18_local0 = 3
    local f18_local1 = TARGET_ENE_0
    local f18_local2 = 8
    local f18_local3 = TARGET_ENE_0
    local f18_local4 = true
    local f18_local5 = -1
    local f18_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f18_local7 = false
    local f18_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6, f18_local7, f18_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersTwoHand437010_Act49(arg0, arg1, arg2)
    local f19_local0 = 8
    local f19_local1 = 12
    local f19_local2 = arg0:HasSpecialEffectId(TARGET_SELF, 13655)
    if f19_local2 then
        f19_local0 = 8 + 3
        f19_local1 = 12 + 3
    end
    f19_local2 = -1
    local f19_local3 = true
    local f19_local4 = 1
    local f19_local5 = 10
    local f19_local6 = 1.5
    local f19_local7 = 0.5
    if arg0:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku and arg0:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Torimaki then
        f19_local6 = 2.5
        f19_local7 = 2.5
        if arg0:HasSpecialEffectId(TARGET_SELF, 13654) then
            f19_local0 = 4
            f19_local1 = 8
        end
    end
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

function RoamCommonSoldiersTwoHand437010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RoamCommonSoldiersTwoHand437010_AfterAttackAct, 10)
    
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
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6) and arg1:HasSpecialEffectId(TARGET_SELF, 13654) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 6, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6) and arg1:HasSpecialEffectId(TARGET_SELF, 13655) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 6, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            Combo_Cnt = Combo_Cnt + 1
            if Combo_Cnt >= 2 then
                return false
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, -1, 3.5 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:HasSpecialEffectId(TARGET_SELF, 13654) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 6, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, -1, 3.5 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:HasSpecialEffectId(TARGET_SELF, 13655) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 6, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13698) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_RoamCommonSoldiersTwoHand437010_AfterAttackAct, "RoamCommonSoldiersTwoHand437010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamCommonSoldiersTwoHand437010_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


