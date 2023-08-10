RegisterTableGoal(GOAL_InsectGolem_308000_Battle, "InsectGolem_308000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_InsectGolem_308000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:SetTimer(10, 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 4)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = 30
    local f2_local4 = 10
    arg1:AddObserveArea(0, TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, f2_local3, f2_local4)
    local f2_local5 = arg1:GetDist(TARGET_ENE_0)
    local f2_local6 = arg1:GetDistYSigned(TARGET_ENE_0)
    local f2_local7 = arg1:GetRandam_Int(1, 100)
    local f2_local8 = math.abs(f2_local6)
    local f2_local9 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 17150)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 17151)
    local f2_local12 = arg1:HasSpecialEffectId(TARGET_SELF, 17157)
    local f2_local13 = arg1:HasSpecialEffectId(TARGET_SELF, 17158)
    local f2_local14 = arg1:HasSpecialEffectId(TARGET_SELF, 17152)
    local f2_local15 = arg1:HasSpecialEffectId(TARGET_SELF, 17153)
    local f2_local16 = arg1:HasSpecialEffectId(TARGET_SELF, 17154)
    local f2_local17 = 1
    local f2_local18 = arg1:GetEventRequest()
    if f2_local11 == true then
        f2_local17 = 0
    end
    if f2_local12 == true then
        f2_local17 = 0
    end
    if f2_local13 == true then
        f2_local17 = 0
    end
    if flag_love_fire == true then
        f2_local17 = 0
    end
    if f2_local14 == true then
        f2_local17 = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5880) and arg1:GetTimer(10) > 5 then
        if f2_local5 < 5 then
            f2_local0[7] = 4
            f2_local0[10] = 80
            f2_local0[13] = 5
            f2_local0[14] = 10
            f2_local0[11] = 1
        else
            f2_local0[10] = 40
            f2_local0[11] = 40
        end
    elseif f2_local9 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[10] = 50
        f2_local0[11] = 50
    elseif f2_local9 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[1] = 0
        f2_local0[10] = 40
        f2_local0[11] = 40
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local0[20] = 50
    elseif arg1:GetNumber(1) == 0 and f2_local16 == true and arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 10) then
        f2_local0[18] = 100
        arg1:SetNumber(1, 1)
    elseif f2_local16 == true and f2_local7 >= 20 and arg1:GetAttackPassedTime(3012) >= 10 and arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 90, 10) then
        f2_local0[18] = 100
    elseif f2_local16 == true and arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, 5) then
        f2_local0[13] = 80
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and f2_local5 <= 1 and f2_local7 <= 30 and arg1:GetHpRate(TARGET_SELF) <= 0.3 then
        f2_local0[14] = 40
        f2_local0[7] = 60
    elseif f2_local11 == true and f2_local15 == true and 9.5 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local5 then
        f2_local0[15] = 100
    elseif f2_local11 == true and f2_local15 == true and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local5 then
        f2_local0[15] = 100
    elseif f2_local11 == true and f2_local15 == true and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local5 then
        f2_local0[2] = 100
    elseif f2_local11 == true and arg1:GetAttackPassedTime(3014) >= 8 and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local5 and f2_local7 <= 65 then
        f2_local0[2] = 100
    elseif f2_local12 == true and f2_local15 == true and 9.5 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local5 then
        f2_local0[15] = 100
    elseif f2_local12 == true and f2_local15 == true and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local5 then
        f2_local0[15] = 100
    elseif f2_local12 == true and f2_local15 == true and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local5 then
        f2_local0[2] = 100
    elseif f2_local12 == true and arg1:GetAttackPassedTime(3016) >= 8 and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local5 and f2_local7 <= 65 then
        f2_local0[2] = 100
    elseif f2_local13 == true and f2_local15 == true and 9.5 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local5 then
        f2_local0[15] = 100
    elseif f2_local13 == true and f2_local15 == true and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local5 then
        f2_local0[15] = 100
    elseif f2_local13 == true and f2_local15 == true and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local5 then
        f2_local0[2] = 100
    elseif f2_local13 == true and arg1:GetAttackPassedTime(3017) >= 8 and 5 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local5 and f2_local7 <= 65 then
        f2_local0[2] = 100
    elseif f2_local10 == true and f2_local15 == true then
        if 6.5 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local5 then
            f2_local0[9] = 100
        else
            f2_local0[5] = 1
            f2_local0[7] = 4
            f2_local0[10] = 80
            f2_local0[13] = 5
            f2_local0[13] = 10
        end
    elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 180, 3) and f2_local7 <= 40 and arg1:GetHpRate(TARGET_SELF) <= 0.3 and arg1:GetAttackPassedTime(3007) >= 20 then
        f2_local0[5] = 1
        f2_local0[8] = 100
    elseif f2_local5 >= 8 then
        f2_local0[1] = 10
        f2_local0[3] = 0
        f2_local0[4] = 5
        f2_local0[5] = 10
        f2_local0[6] = 20
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 10 * f2_local17
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[17] = 0
    elseif f2_local5 >= 5 then
        f2_local0[1] = 10
        f2_local0[3] = 10
        f2_local0[4] = 20
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 0 * f2_local17
        f2_local0[12] = 0
        f2_local0[13] = 10
        f2_local0[14] = 10
        f2_local0[17] = 20
    elseif f2_local5 >= 2.5 then
        f2_local0[1] = 10
        f2_local0[3] = 10
        f2_local0[4] = 20
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 0 * f2_local17
        f2_local0[12] = 0
        f2_local0[13] = 10
        f2_local0[14] = 10
        f2_local0[17] = 20
    elseif f2_local5 >= 1 then
        f2_local0[1] = 20
        f2_local0[3] = 20
        f2_local0[4] = 10
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 0 * f2_local17
        f2_local0[12] = 0
        f2_local0[13] = 10
        f2_local0[14] = 10
        f2_local0[17] = 10
    else
        f2_local0[1] = 10
        f2_local0[3] = 10
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 0 * f2_local17
        f2_local0[12] = 0
        f2_local0[13] = 0
        f2_local0[14] = 10
        f2_local0[17] = 20
    end
    local f2_local19 = 0.5
    arg1:SetStringIndexedNumber("ExistMeshOnLine_F", arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 25 + f2_local19, f2_local19, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_B", arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 25 + f2_local19, f2_local19, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_L", arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 25 + f2_local19, f2_local19, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_R", arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 25 + f2_local19, f2_local19, 0))
    if arg1:GetStringIndexedNumber("ExistMeshOnLine_B") <= 1 then
        f2_local0[10] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3014, 10, f2_local0[2], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3016, 10, f2_local0[2], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[9], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[12], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3014, 10, f2_local0[15], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3016, 10, f2_local0[15], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[15], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act18)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, InsectGolem_308000_Act20)
    local f2_local20 = REGIST_FUNC(arg1, arg2, InsectGolem_308000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local20, f2_local2)
    
end

function InsectGolem_308000_Act01(arg0, arg1, arg2)
    local f3_local0 = 2.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 2.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 2.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 5
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3001
    local f3_local9 = 1.9 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local10 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 0
    local f3_local12 = 20
    local f3_local13 = arg0:GetRandam_Int(1, 100)
    if f3_local13 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local11, f3_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local9, f3_local11, f3_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, f3_local10, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function InsectGolem_308000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 17157)
    local f4_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 17158)
    if f4_local0 == true then
        local f4_local2 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local3 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
        local f4_local4 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10
        local f4_local5 = 50
        local f4_local6 = 0
        local f4_local7 = 4
        local f4_local8 = 8
        Approach_Act_Flex(arg0, arg1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8)
        local f4_local9 = 3016
        local f4_local10 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local11 = -1
        local f4_local12 = 45
        local f4_local13 = arg0:GetRandam_Int(1, 100)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local9, TARGET_ENE_0, f4_local10, f4_local11, f4_local12, 0, 0)
        local f4_local14 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
        f4_local14:SetTargetRange(0, 4, 999)
    elseif f4_local1 == true then
        local f4_local2 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local3 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
        local f4_local4 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10
        local f4_local5 = 50
        local f4_local6 = 0
        local f4_local7 = 4
        local f4_local8 = 8
        Approach_Act_Flex(arg0, arg1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8)
        local f4_local9 = 3017
        local f4_local10 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local11 = -1
        local f4_local12 = 45
        local f4_local13 = arg0:GetRandam_Int(1, 100)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local9, TARGET_ENE_0, f4_local10, f4_local11, f4_local12, 0, 0)
        local f4_local14 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
        f4_local14:SetTargetRange(0, 4, 999)
    else
        local f4_local2 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local3 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
        local f4_local4 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10
        local f4_local5 = 50
        local f4_local6 = 0
        local f4_local7 = 4
        local f4_local8 = 8
        Approach_Act_Flex(arg0, arg1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8)
        local f4_local9 = 3014
        local f4_local10 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local11 = -1
        local f4_local12 = 45
        local f4_local13 = arg0:GetRandam_Int(1, 100)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local9, TARGET_ENE_0, f4_local10, f4_local11, f4_local12, 0, 0)
        local f4_local14 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
        f4_local14:SetTargetRange(0, 4, 999)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function InsectGolem_308000_Act03(arg0, arg1, arg2)
    local f5_local0 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 5
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3003
    local f5_local8 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 20
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function InsectGolem_308000_Act04(arg0, arg1, arg2)
    local f6_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 5
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3004
    local f6_local8 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 20
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function InsectGolem_308000_Act05(arg0, arg1, arg2)
    local f7_local0 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 5
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3005
    local f7_local8 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 20
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function InsectGolem_308000_Act06(arg0, arg1, arg2)
    local f8_local0 = 10.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 10.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 10.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 5
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3006
    local f8_local8 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 20
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function InsectGolem_308000_Act07(arg0, arg1, arg2)
    local f9_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 5
    local f9_local6 = 8
    local f9_local7 = 3007
    local f9_local8 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 20
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function InsectGolem_308000_Act08(arg0, arg1, arg2)
    local f10_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    local f10_local7 = 3007
    local f10_local8 = 3015
    local f10_local9 = 3013
    local f10_local10 = 30 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local11 = 30 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local12 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local13 = 0
    local f10_local14 = 0
    local f10_local15 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local10, f10_local13, f10_local14, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f10_local8, TARGET_ENE_0, f10_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, f10_local9, TARGET_ENE_0, f10_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function InsectGolem_308000_Act09(arg0, arg1, arg2)
    local f11_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 5
    local f11_local6 = 8
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3009
    local f11_local8 = 3010
    local f11_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f11_local10 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local11 = 0
    local f11_local12 = 20
    local f11_local13 = arg0:GetRandam_Int(1, 100)
    if f11_local13 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local10, f11_local11, f11_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local9, f11_local11, f11_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local8, TARGET_ENE_0, f11_local10, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function InsectGolem_308000_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 10
    local f12_local2 = 12
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 13, TARGET_ENE_0, true, -1)
    
end

function InsectGolem_308000_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetRandam_Int(0, 1)
    local f13_local1 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, f13_local0, arg0:GetRandam_Int(30, 45), true, true, -1)
    f13_local1:SetTargetRange(1, 1, 3)
    
end

function InsectGolem_308000_Act12(arg0, arg1, arg2)
    local f14_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f14_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 5
    local f14_local6 = 0
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3011
    local f14_local8 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local9 = 0
    local f14_local10 = 20
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function InsectGolem_308000_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, arg0:GetRandam_Float(1, 100), arg0:GetRandam_Float(1, 100), TARGET_ENE_0, 5, 0, true)
    
end

function InsectGolem_308000_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    
end

function InsectGolem_308000_Act15(arg0, arg1, arg2)
    local f17_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 17157)
    local f17_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 17158)
    if f17_local0 == true then
        local f17_local2 = 3016
        local f17_local3 = 999
        local f17_local4 = -1
        local f17_local5 = 45
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local2, TARGET_ENE_0, f17_local3, f17_local4, f17_local5, 0, 0)
        local f17_local6 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
        f17_local6:SetTargetRange(0, 4, 999)
    else
        local f17_local2 = true
        if f17_local1 == f17_local2 then
            f17_local2 = 3017
            local f17_local3 = 999
            local f17_local4 = -1
            local f17_local5 = 45
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local2, TARGET_ENE_0, f17_local3, f17_local4, f17_local5, 0, 0)
            local f17_local6 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
            f17_local6:SetTargetRange(0, 4, 999)
        else
            f17_local2 = 3014
            local f17_local3 = 999
            local f17_local4 = -1
            local f17_local5 = 45
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local2, TARGET_ENE_0, f17_local3, f17_local4, f17_local5, 0, 0)
            local f17_local6 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
            f17_local6:SetTargetRange(0, 4, 999)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function InsectGolem_308000_Act16(arg0, arg1, arg2)
    local f18_local0 = arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.4, 2.2), TARGET_ENE_0, 0, 0, 0)
    f18_local0:SetTargetRange(0, 7, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function InsectGolem_308000_Act17(arg0, arg1, arg2)
    
end

function InsectGolem_308000_Act18(arg0, arg1, arg2)
    local f20_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f20_local3 = 100
    local f20_local4 = 0
    local f20_local5 = 4
    local f20_local6 = 8
    Approach_Act_Flex(arg0, arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local f20_local7 = 3012
    local f20_local8 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local9 = 0
    local f20_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local7, TARGET_ENE_0, f20_local8, f20_local9, f20_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function InsectGolem_308000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function InsectGolem_308000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_InsectGolem_308000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f25_local0 = arg1:HasSpecialEffectId(TARGET_SELF, 17150)
    local f25_local1 = arg1:HasSpecialEffectId(TARGET_SELF, 17151)
    local f25_local2 = arg1:HasSpecialEffectId(TARGET_SELF, 10152)
    local f25_local3 = arg1:HasSpecialEffectId(TARGET_SELF, 10153)
    local f25_local4 = arg1:HasSpecialEffectId(TARGET_SELF, 10154)
    local f25_local5 = arg1:GetDist(TARGET_ENE_0)
    local f25_local6 = arg1:GetRandam_Int(1, 100)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and f25_local5 < 5 and arg1:HasSpecialEffectId(TARGET_SELF, 5880) == true and arg1:GetTimer(10) <= 0 then
        arg2:ClearSubGoal()
        arg1:SetTimer(10, 20)
        InsectGolem_308000_Act14(arg1, arg2, paramTbl)
        return true
    end
    local f25_local7 = arg1:IsInterupt(INTERUPT_Shoot)
    if f25_local7 and f25_local5 < 10 and arg1:HasSpecialEffectId(TARGET_SELF, 5880) == true and arg1:GetTimer(10) <= 0 then
        arg2:ClearSubGoal()
        arg1:SetTimer(10, 20)
        InsectGolem_308000_Act13(arg1, arg2, paramTbl)
        return true
    end
    f25_local7 = 4.5
    local f25_local8 = 100
    if Damaged_Act(arg1, arg2, f25_local7, f25_local8) then
        InsectGolem_308000_Act14(arg1, arg2, paramTbl)
        return true
    end
    local f25_local9 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and taegetDist <= 3 then
        InsectGolem_308000_Act20(arg1, arg2, paramTbl)
        return true
    end
    local f25_local10 = arg1:GetDist(TARGET_ENE_0)
    local f25_local11 = 2 - arg1:GetMapHitRadius(TARGET_SELF)
    local f25_local12 = 0
    local f25_local13 = 20
    local f25_local14 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInsideObserve(0) and f25_local2 == true and f25_local14 <= 80 and arg1:GetAttackPassedTime(3012) >= 15 then
        arg2:ClearSubGoal()
        InsectGolem_308000_Act18(arg1, arg2, paramTbl)
        arg1:DeleteObserve(0)
        return true
    end
    return false
    
end

Goal.Interrupt_TargetOutOfRange = function (arg0, arg1, arg2, arg3)
    local f26_local0 = arg1:GetDist(TARGET_ENE_0)
    local f26_local1 = arg1:GetRandam_Int(1, 100)
    print("LEAVETARGET  TARGET OUT OF RANGE")
    if arg3 == 0 then
        if f26_local1 < 30 then
            arg2:ClearSubGoal()
            if arg1:GetHpRate(TARGET_SELF) <= 0.3 then
                InsectGolem_308000_Act07(arg1, arg2, paramTbl)
                return true
            else
                InsectGolem_308000_Act06(arg1, arg2, paramTbl)
                return true
            end
        elseif f26_local1 < 80 then
            arg2:ClearSubGoal()
            InsectGolem_308000_Act13(arg1, arg2, paramTbl)
            return true
        end
    elseif arg3 == 1 and f26_local1 <= 30 then
        arg2:ClearSubGoal()
        InsectGolem_308000_Act13(arg1, arg2, paramTbl)
        return true
    else

    end
    
end

Goal.Interrupt_FindAttack = function (arg0, arg1, arg2)
    local f27_local0 = 5
    local f27_local1 = 100
    local f27_local2 = arg1:GetDist(TARGET_ENE_0)
    local f27_local3 = arg1:GetRandam_Int(1, 100)
    if f27_local2 > 1 and f27_local2 < 5 and f27_local3 >= 50 then
        arg2:ClearSubGoal()
        InsectGolem_308000_Act14(arg1, arg2, paramTbl)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_InsectGolem_308000_AfterAttackAct, "InsectGolem_308000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_InsectGolem_308000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f28_local0 = arg1:GetDist(TARGET_ENE_0)
    local f28_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", 2)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 3)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 8)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f28_local0 >= 5 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 25)
    elseif f28_local0 >= 2 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 5)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 20)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


