RegisterTableGoal(GOAL_BeastProgenyThrow397020_Battle, "BeastProgenyThrow397020_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BeastProgenyThrow397020_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(2, 0)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3031)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    arg1:EnableUnfavorableAttackCheck(1, 3000)
    arg1:EnableUnfavorableAttackCheck(1, 3001)
    arg1:EnableUnfavorableAttackCheck(1, 3002)
    arg1:EnableUnfavorableAttackCheck(1, 3003)
    arg1:EnableUnfavorableAttackCheck(1, 3004)
    arg1:EnableUnfavorableAttackCheck(1, 3013)
    arg1:EnableUnfavorableAttackCheck(1, 3014)
    arg1:EnableUnfavorableAttackCheck(1, 3015)
    arg1:EnableUnfavorableAttackCheck(1, 3016)
    arg1:EnableUnfavorableAttackCheck(1, 3017)
    arg1:EnableUnfavorableAttackCheck(1, 3031)
    arg1:EnableUnfavorableAttackCheck(1, 3036)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 30)
    local f2_local5 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 30)
    local f2_local6 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 30)
    local f2_local7 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 30)
    local f2_local8 = arg1:GetRandam_Int(1, 100)
    local f2_local9 = arg1:GetEventRequest()
    local f2_local10 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f2_local11 = arg1:GetDist(TARGET_ENE_0)
    local f2_local12 = arg1:GetRandam_Int(1, 100)
    local f2_local13 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local13 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local11 >= 12 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14667) == false then
                f2_local0[22] = 80
            end
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[24] = 80
        elseif f2_local11 >= 5 then
            f2_local0[2] = 20
            f2_local0[24] = 30
            f2_local0[26] = 50
        else
            f2_local0[23] = 40
            f2_local0[25] = 30
            f2_local0[26] = 30
        end
    elseif f2_local13 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local11 >= 12 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14667) == false then
                f2_local0[22] = 80
            end
            f2_local0[1] = 30
            f2_local0[2] = 20
            f2_local0[24] = 50
        elseif f2_local11 >= 5 then
            f2_local0[2] = 20
            f2_local0[24] = 30
            f2_local0[26] = 50
        else
            f2_local0[23] = 40
            f2_local0[25] = 30
            f2_local0[26] = 30
        end
    else
        if arg1:HasSpecialEffectId(TARGET_SELF, 14660) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 30) then
                f2_local0[6] = 90
                f2_local0[21] = 10
            elseif f2_local11 >= 14 then
                f2_local0[1] = 20
                f2_local0[2] = 50
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
            elseif f2_local11 >= 8 then
                f2_local0[1] = 50
                f2_local0[2] = 20
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[24] = 30
            elseif f2_local11 >= 4 then
                f2_local0[1] = 10
                f2_local0[2] = 20
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 50
                f2_local0[23] = 20
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 40
                f2_local0[4] = 10
                f2_local0[6] = 20
                f2_local0[23] = 15
                f2_local0[24] = 15
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 30) then
            f2_local0[6] = 90
            f2_local0[21] = 10
        elseif f2_local11 >= 14 then
            f2_local0[1] = 25
            f2_local0[2] = 45
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[23] = 0
            f2_local0[24] = 30
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif f2_local11 >= 8 then
            f2_local0[1] = 20
            f2_local0[2] = 40
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[24] = 20
            f2_local0[25] = 20
            f2_local0[26] = 0
        elseif f2_local11 >= 4 then
            f2_local0[1] = 10
            f2_local0[2] = 20
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 50
            f2_local0[23] = 10
            f2_local0[25] = 20
            f2_local0[26] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[6] = 30
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 30
            f2_local0[26] = 0
        end
        if SpaceCheck(arg1, arg2, 180, 3) == false then
            f2_local0[23] = 0
            f2_local0[25] = 0
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14663) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14661) then
                f2_local0[7] = 1000
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14662) then
                f2_local0[8] = 1000
            else
                f2_local0[2] = 1000
            end
        end
    end
    f2_local0[3] = SetCoolTime(arg1, arg2, 3023, arg1:GetRandam_Int(5, 8), f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3024, arg1:GetRandam_Int(6, 10), f2_local0[4], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3025, arg1:GetRandam_Int(2, 8), f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3026, arg1:GetRandam_Int(3, 5), f2_local0[6], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3027, arg1:GetRandam_Int(3, 5), f2_local0[6], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3031, arg1:GetRandam_Int(4, 6), f2_local0[17], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act08)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act17)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act26)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_Act47)
    local f2_local14 = REGIST_FUNC(arg1, arg2, BeastProgenyThrow397020_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local14, f2_local2)
    
end

function BeastProgenyThrow397020_Act01(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14667) == false then
        local f3_local0 = arg0:GetDist(TARGET_ENE_0)
        local f3_local1 = 8 + arg0:GetMapHitRadius(TARGET_SELF) + 3
        local f3_local2 = 8 + arg0:GetMapHitRadius(TARGET_SELF) + 3 + 3
        local f3_local3 = 8 + arg0:GetMapHitRadius(TARGET_SELF) + 3 + 10
        local f3_local4 = 0
        local f3_local5 = 0
        local f3_local6 = 4
        local f3_local7 = 8
        if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
            f3_local5 = 100
        end
        if f3_local0 <= 8 + arg0:GetMapHitRadius(TARGET_SELF) and SpaceCheck(arg0, arg1, 180, 3) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 8 + arg0:GetMapHitRadius(TARGET_SELF), TARGET_ENE_0, false, -1)
        end
    end
    local f3_local0 = 3021
    local f3_local1 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 0
    local f3_local3 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local1, f3_local2, f3_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act02(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14667) == false then
        local f4_local0 = arg0:GetDist(TARGET_ENE_0)
        local f4_local1 = 8 + arg0:GetMapHitRadius(TARGET_SELF) + 3
        local f4_local2 = 8 + arg0:GetMapHitRadius(TARGET_SELF) + 3 + 3
        local f4_local3 = 8 + arg0:GetMapHitRadius(TARGET_SELF) + 3 + 10
        local f4_local4 = 0
        local f4_local5 = 0
        local f4_local6 = 4
        local f4_local7 = 8
        if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
            f4_local5 = 100
        end
        if f4_local0 <= 9 + arg0:GetMapHitRadius(TARGET_SELF) and SpaceCheck(arg0, arg1, 180, 3) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 8 + arg0:GetMapHitRadius(TARGET_SELF), TARGET_ENE_0, false, -1)
        end
    end
    local f4_local0 = 3022
    local f4_local1 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 0
    local f4_local3 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local0, TARGET_ENE_0, f4_local1, f4_local2, f4_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetRandam_Int(1, 100)
    local f5_local1 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0.6
    local f5_local2 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local3 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0.6 + 5
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 4
    local f5_local7 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
        f5_local5 = 100
    end
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 3023
    local f5_local9 = 3028
    local f5_local10 = ATT3028_DIST_MAX
    local f5_local11 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local12 = 0
    local f5_local13 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local8, TARGET_ENE_0, f5_local10, f5_local12, f5_local13, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local9, TARGET_ENE_0, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act04(arg0, arg1, arg2)
    local f6_local0 = 1 + arg0:GetMapHitRadius(TARGET_SELF) + 0.6
    local f6_local1 = 1 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local2 = 1 + arg0:GetMapHitRadius(TARGET_SELF) + 0.6 + 3
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
        f6_local4 = 100
    end
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3024
    local f6_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act05(arg0, arg1, arg2)
    local f7_local0 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0.8
    local f7_local1 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0.8 + 3
    local f7_local2 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0.8 + 10
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
        f7_local4 = 100
    end
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3025
    local f7_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = arg0:GetRandam_Int(1, 100)
    local f8_local2 = 3026
    local f8_local3 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local4 = 0
    local f8_local5 = 180
    if f8_local1 <= 50 then
        f8_local2 = 3027
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local2, TARGET_ENE_0, f8_local3, f8_local4, f8_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    if f9_local0 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    local f9_local1 = 5
    local f9_local2 = 3008
    local f9_local3 = TARGET_ENE_0
    local f9_local4 = 10
    local f9_local5 = 0
    local f9_local6 = 0
    local f9_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local1, f9_local2, f9_local3, f9_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    if f10_local0 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    local f10_local1 = 5
    local f10_local2 = 3009
    local f10_local3 = TARGET_ENE_0
    local f10_local4 = 10
    local f10_local5 = 0
    local f10_local6 = 0
    local f10_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local1, f10_local2, f10_local3, f10_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act17(arg0, arg1, arg2)
    local f11_local0 = arg0:GetRandam_Int(1, 100)
    local f11_local1 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f11_local2 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f11_local3 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 3
    local f11_local4 = 100
    local f11_local5 = 0
    local f11_local6 = 4
    local f11_local7 = 8
    Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    local f11_local8 = 3031
    local f11_local9 = 3032
    local f11_local10 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f11_local11 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local12 = 0
    local f11_local13 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local8, TARGET_ENE_0, f11_local10, f11_local12, f11_local13, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local9, TARGET_ENE_0, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_ActCP1(arg0, arg1, arg2)
    local f12_local0 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f12_local1 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f12_local2 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 3
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 4
    local f12_local6 = 8
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3000
    local f12_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 0
    local f12_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_ActCP2(arg0, arg1, arg2)
    local f13_local0 = arg0:GetRandam_Int(1, 100)
    local f13_local1 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f13_local2 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f13_local3 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 3
    local f13_local4 = 100
    local f13_local5 = 0
    local f13_local6 = 4
    local f13_local7 = 8
    Approach_Act_Flex(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    local f13_local8 = 3001
    local f13_local9 = 3002
    local f13_local10 = 3003
    local f13_local11 = ATT3002_DIST_MAX
    local f13_local12 = ATT3003_DIST_MAX
    local f13_local13 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local14 = 0
    local f13_local15 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local8, TARGET_ENE_0, f13_local11, f13_local14, f13_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f13_local9, TARGET_ENE_0, f13_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f13_local10, TARGET_ENE_0, f13_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act22(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 6
    local f15_local2 = 20
    local f15_local3 = 0
    local f15_local4 = arg0:GetRandam_Int(1, 100)
    local f15_local5 = arg0:HasSpecialEffectId(TARGET_SELF, 14650)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
        f15_local3 = 100
    end
    if f15_local4 <= f15_local3 then
        IsGuard = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f15_local1, TARGET_ENE_0, false, IsGuard)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act23(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 15
    local f16_local2 = 20
    local f16_local3 = 0
    local f16_local4 = arg0:GetRandam_Int(1, 100)
    local f16_local5 = arg0:HasSpecialEffectId(TARGET_SELF, 14650)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
        f16_local3 = 100
    end
    local f16_local6 = -1
    if f16_local4 <= f16_local3 then
        f16_local6 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f16_local1, TARGET_ENE_0, true, f16_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act24(arg0, arg1, arg2)
    local f17_local0 = 0
    local f17_local1 = arg0:GetRandam_Int(1, 100)
    local f17_local2 = arg0:HasSpecialEffectId(TARGET_SELF, 14650)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
        f17_local0 = 100
    end
    local f17_local3 = -1
    if f17_local1 <= f17_local0 then
        f17_local3 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f17_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act25(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act26(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetRandam_Int(6002, 6003)
    local f19_local2 = AI_DIR_TYPE_L
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 90, 30) then
        f19_local1 = 6003
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 90, 30) then
        f19_local1 = 6002
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f19_local1, TARGET_ENE_0, 0, f19_local2, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act32(arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Int(3038, 3039)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f21_local0, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyThrow397020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BeastProgenyThrow397020_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f28_local0 = arg1:GetDist(TARGET_ENE_0)
    local f28_local1 = arg1:GetDist(TARGET_FRI_0)
    local f28_local2 = arg1:GetRandam_Int(1, 100)
    local f28_local3 = arg1:GetPrevTargetState()
    local f28_local4 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    local f28_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 14650)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) then
        if f28_local0 <= 3 and f28_local2 <= 30 and arg1:GetAttackPassedTime(3005) >= 10 then
            arg2:ClearSubGoal()
            BeastProgenyThrow397020_Act04(arg1, arg2)
        elseif f28_local0 <= 3 and f28_local2 <= 60 and arg1:GetAttackPassedTime(3023) >= 10 then
            arg2:ClearSubGoal()
            BeastProgenyThrow397020_Act03(arg1, arg2)
        else
            arg2:ClearSubGoal()
            BeastProgenyThrow397020_Act06(arg1, arg2)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14660) then
            if f28_local0 <= 3 and f28_local2 <= 60 then
                arg2:ClearSubGoal()
                BeastProgenyThrow397020_Act23(arg1, arg2)
            elseif f28_local0 <= 5 and f28_local2 <= 100 then
                arg2:ClearSubGoal()
                BeastProgenyThrow397020_Act06(arg1, arg2)
            end
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_BeastProgenyThrow397020_AfterAttackAct, "BeastProgenyThrow397020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BeastProgenyThrow397020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


