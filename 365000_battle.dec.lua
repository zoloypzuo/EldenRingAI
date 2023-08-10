RegisterTableGoal(GOAL_BugsEater_365000_Battle, "BugsEater_365000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BugsEater_365000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
    arg1:EnableUnfavorableAttackCheck(1000000, 3003)
    arg1:EnableUnfavorableAttackCheck(1000000, 3004)
    arg1:EnableUnfavorableAttackCheck(1000000, 3005)
    arg1:EnableUnfavorableAttackCheck(1000000, 3006)
    arg1:EnableUnfavorableAttackCheck(1000000, 3007)
    arg1:EnableUnfavorableAttackCheck(1000000, 3016)
    arg1:EnableUnfavorableAttackCheck(1000000, 3017)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDist(TARGET_FRI_0)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetEventRequest()
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_FRI_0, 13300)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 13301)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 13302)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 13304)
    local f2_local12 = arg1:HasSpecialEffectId(TARGET_ENE_0, PLAN_SP_EFFECT_TRUNK_COLLAPSE)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_TRUNK_COLLAPSE)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 100240)
    if f2_local9 == true then
        arg1:SetStringIndexedNumber("c3650_DashRate", 0)
    else
        arg1:SetStringIndexedNumber("c3650_DashRate", 60)
    end
    if f2_local7 == 1 and (arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki) then
        if f2_local3 >= 5 then
            if arg1:GetHpRate(TARGET_SELF) <= 0.7 and f2_local9 == false and f2_local11 == false and f2_local10 == false then
                f2_local0[18] = 100
            else
                f2_local0[24] = 60
                f2_local0[22] = 40
            end
        elseif f2_local3 >= 3.5 then
            f2_local0[24] = 50
            f2_local0[25] = 20
            f2_local0[27] = 10
            f2_local0[29] = 20
        else
            f2_local0[26] = 30
            f2_local0[27] = 40
            f2_local0[29] = 30
        end
    elseif f2_local9 == true then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 30) then
            f2_local0[25] = 0
            f2_local0[26] = 80
            f2_local0[21] = 20
        elseif f2_local3 >= 13 then
            f2_local0[1] = 0
            f2_local0[22] = 100
            f2_local0[31] = 0
        elseif f2_local3 >= 8.5 then
            f2_local0[1] = 0
            f2_local0[4] = 10
            f2_local0[22] = 90
        elseif f2_local3 >= 5.5 then
            f2_local0[1] = 30
            f2_local0[4] = 20
            f2_local0[10] = 20
            f2_local0[15] = 10
            f2_local0[22] = 20
        elseif f2_local3 >= 2.7 then
            f2_local0[1] = 45
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[7] = 5
            f2_local0[15] = 10
            f2_local0[10] = 10
        else
            f2_local0[1] = 10
            f2_local0[2] = 20
            f2_local0[3] = 20
            f2_local0[7] = 20
            f2_local0[10] = 20
            f2_local0[15] = 10
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 30) then
        f2_local0[4] = 50
        f2_local0[6] = 20
        f2_local0[26] = 10
        f2_local0[29] = 20
    elseif f2_local3 >= 13 then
        f2_local0[1] = 0
        f2_local0[22] = 100
        if arg1:GetHpRate(TARGET_SELF) <= 0.7 and f2_local9 == false and f2_local11 == false and f2_local10 == false then
            f2_local0[18] = 100
        end
    elseif f2_local3 >= 8.5 then
        f2_local0[1] = 0
        f2_local0[4] = 0
        f2_local0[22] = 80
        f2_local0[25] = 20
        if arg1:GetHpRate(TARGET_SELF) <= 0.7 and f2_local9 == false and f2_local11 == false and f2_local10 == false then
            f2_local0[18] = 100
        end
    elseif f2_local3 >= 5 then
        f2_local0[1] = 20
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[4] = 10
        f2_local0[5] = 30
        f2_local0[25] = 20
        if arg1:GetHpRate(TARGET_SELF) <= 0.7 and f2_local9 == false and f2_local11 == false and f2_local10 == false then
            f2_local0[18] = 100
        end
    elseif f2_local3 >= 3.5 then
        f2_local0[1] = 30
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[4] = 10
        f2_local0[5] = 10
        f2_local0[8] = 20
        f2_local0[25] = 10
    else
        f2_local0[1] = 10
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 30
        f2_local0[6] = 20
        f2_local0[7] = 30
        f2_local0[8] = 10
        f2_local0[29] = 10
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 6, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3024, 10, f2_local0[7], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3025, 10, f2_local0[8], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3016, 10, f2_local0[10], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[15], 0)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3021, 999, f2_local0[17], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3031, 60, f2_local0[18], 0)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6012, 7, f2_local0[25], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6013, 7, f2_local0[25], 1)
    f2_local0[27] = SetCoolTime(arg1, arg2, 6002, 7, f2_local0[27], 1)
    f2_local0[27] = SetCoolTime(arg1, arg2, 6003, 7, f2_local0[27], 1)
    f2_local0[29] = SetCoolTime(arg1, arg2, 6022, 7, f2_local0[29], 1)
    f2_local0[29] = SetCoolTime(arg1, arg2, 6023, 7, f2_local0[29], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act10)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act15)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act18)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act29)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act32)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, BugsEater_365000_Act47)
    local f2_local13 = REGIST_FUNC(arg1, arg2, BugsEater_365000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local13, f2_local2)
    
end

function BugsEater_365000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 13301)
    local f3_local2 = arg0:GetRandam_Int(1, 100)
    local f3_local3 = 6.5
    local f3_local4 = 0
    local f3_local5 = 999
    local f3_local6 = 100
    local f3_local7 = 0
    local f3_local8 = 4
    local f3_local9 = 8
    Approach_Act_Flex(arg0, arg1, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8, f3_local9)
    local f3_local10 = 3000
    local f3_local11 = 2.8 + arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f3_local12 = 1.2 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local13 = 1.2 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f3_local14 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local15 = 0
    local f3_local16 = 70
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local10, TARGET_ENE_0, f3_local11, f3_local15, f3_local16, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 13301)
    local f4_local1 = arg0:GetRandam_Int(1, 100)
    local f4_local2 = 4.5
    local f4_local3 = 4.8 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local4 = 999
    local f4_local5 = arg0:GetStringIndexedNumber("c3650_DashRate")
    local f4_local6 = 0
    local f4_local7 = 4
    local f4_local8 = 8
    Approach_Act_Flex(arg0, arg1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8)
    local f4_local9 = 3002
    local f4_local10 = 3004
    local f4_local11 = 3.5 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f4_local12 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local13 = 0
    local f4_local14 = 120
    if f4_local0 == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local9, TARGET_ENE_0, f4_local12, f4_local13, f4_local14, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local9, TARGET_ENE_0, f4_local11, f4_local13, f4_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local10, TARGET_ENE_0, f4_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 13301)
    local f5_local1 = arg0:GetRandam_Int(1, 100)
    local f5_local2 = 4.5
    local f5_local3 = 4.8 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local4 = 999
    local f5_local5 = arg0:GetStringIndexedNumber("c3650_DashRate")
    local f5_local6 = 0
    local f5_local7 = 4
    local f5_local8 = 8
    Approach_Act_Flex(arg0, arg1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7, f5_local8)
    local f5_local9 = 3003
    local f5_local10 = 3005
    local f5_local11 = 3.5 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f5_local12 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local13 = 0
    local f5_local14 = 120
    if f5_local0 == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local9, TARGET_ENE_0, f5_local12, f5_local13, f5_local14, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local9, TARGET_ENE_0, f5_local11, f5_local13, f5_local14, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local10, TARGET_ENE_0, f5_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetRandam_Int(1, 100)
    local f6_local1 = 6.5 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local2 = 6.5 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local3 = 6.5 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 3
    local f6_local4 = arg0:GetStringIndexedNumber("c3650_DashRate")
    local f6_local5 = 0
    local f6_local6 = 4
    local f6_local7 = 8
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 3006
    local f6_local9 = 3007
    local f6_local10 = 5 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local11 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local12 = 0
    local f6_local13 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local8, TARGET_ENE_0, f6_local10, f6_local12, f6_local13, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local9, TARGET_ENE_0, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = arg0:GetRandam_Int(1, 100)
    local f7_local2 = 4.5
    local f7_local3 = 2.5 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local4 = 2.5 + arg0:GetMapHitRadius(TARGET_SELF) + 0.5 + 3
    local f7_local5 = arg0:GetStringIndexedNumber("c3650_DashRate")
    local f7_local6 = 0
    local f7_local7 = 4
    local f7_local8 = 8
    Approach_Act_Flex(arg0, arg1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7, f7_local8)
    local f7_local9 = 3008
    local f7_local10 = 4.1 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local11 = 5 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local12 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local13 = 0
    local f7_local14 = 60
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local9, TARGET_ENE_0, f7_local10, f7_local13, f7_local14, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 1.2 + arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f8_local2 = 1.2 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f8_local3 = 1.2 + arg0:GetMapHitRadius(TARGET_SELF) + 0.5 + 3
    local f8_local4 = arg0:GetStringIndexedNumber("c3650_DashRate")
    local f8_local5 = 0
    local f8_local6 = 4
    local f8_local7 = 8
    local f8_local8 = 3011
    local f8_local9 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 0
    local f8_local11 = 180
    if f8_local0 <= 1.2 + arg0:GetMapHitRadius(TARGET_SELF) + 0.5 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 1.7 + arg0:GetMapHitRadius(TARGET_SELF) + 0.8
    local f9_local2 = 1.7 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local3 = 1.7 + arg0:GetMapHitRadius(TARGET_SELF) + 0.8 + 3
    local f9_local4 = arg0:GetStringIndexedNumber("c3650_DashRate")
    local f9_local5 = 0
    local f9_local6 = 4
    local f9_local7 = 8
    local f9_local8 = 3024
    local f9_local9 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 0
    local f9_local11 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 3025
    local f10_local2 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local3 = 0
    local f10_local4 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local1, TARGET_ENE_0, f10_local2, f10_local3, f10_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 13301)
    local f11_local2 = arg0:GetRandam_Int(1, 100)
    local f11_local3 = 2.8 + arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local4 = 2.8 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f11_local5 = 2.8 + arg0:GetMapHitRadius(TARGET_SELF) + 0.5 + 3
    local f11_local6 = 0
    local f11_local7 = 0
    local f11_local8 = 4
    local f11_local9 = 8
    Approach_Act_Flex(arg0, arg1, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7, f11_local8, f11_local9)
    local f11_local10 = 3001
    local f11_local11 = 3012
    local f11_local12 = 3013
    local f11_local13 = 1.2 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f11_local14 = 1.2 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f11_local15 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local16 = 0
    local f11_local17 = 70
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local10, TARGET_ENE_0, f11_local13, f11_local16, f11_local17, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local11, TARGET_ENE_0, f11_local14, 0, 0, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local12, TARGET_ENE_0, DistToAtt4, 0, 0, f11_local17)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act10(arg0, arg1, arg2)
    local f12_local0 = 4.2 + arg0:GetMapHitRadius(TARGET_SELF) + 0.4
    local f12_local1 = 4.2 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f12_local2 = 4.2 + arg0:GetMapHitRadius(TARGET_SELF) + 0.4 + 3
    local f12_local3 = arg0:GetStringIndexedNumber("c3650_DashRate")
    local f12_local4 = 0
    local f12_local5 = 4
    local f12_local6 = 8
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3016
    local f12_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 0
    local f12_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act15(arg0, arg1, arg2)
    local f13_local0 = 4.5
    local f13_local1 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f13_local2 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 3
    local f13_local3 = arg0:GetStringIndexedNumber("c3650_DashRate")
    local f13_local4 = 0
    local f13_local5 = 4
    local f13_local6 = 8
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3017
    local f13_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 0
    local f13_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act17(arg0, arg1, arg2)
    local f14_local0 = 2.1 + arg0:GetMapHitRadius(TARGET_SELF) + 0.6
    local f14_local1 = 2.1 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f14_local2 = 2.1 + arg0:GetMapHitRadius(TARGET_SELF) + 0.6 + 3
    local f14_local3 = arg0:GetStringIndexedNumber("c3650_DashRate")
    local f14_local4 = 0
    local f14_local5 = 4
    local f14_local6 = 8
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3021
    local f14_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local9 = 0
    local f14_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act18(arg0, arg1, arg2)
    local f15_local0 = 10 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f15_local1 = 10 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f15_local2 = 10 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 3
    local f15_local3 = arg0:GetStringIndexedNumber("c3650_DashRate")
    local f15_local4 = 0
    local f15_local5 = 4
    local f15_local6 = 8
    local f15_local7 = 3031
    local f15_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local9 = 0
    local f15_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_ActCP1(arg0, arg1, arg2)
    local f16_local0 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f16_local1 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f16_local2 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 3
    local f16_local3 = arg0:GetStringIndexedNumber("c3650_DashRate")
    local f16_local4 = 0
    local f16_local5 = 4
    local f16_local6 = 8
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 3000
    local f16_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local9 = 0
    local f16_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local7, TARGET_ENE_0, f16_local8, f16_local9, f16_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_ActCP2(arg0, arg1, arg2)
    local f17_local0 = arg0:GetRandam_Int(1, 100)
    local f17_local1 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f17_local2 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f17_local3 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 3
    local f17_local4 = 100
    local f17_local5 = 0
    local f17_local6 = 4
    local f17_local7 = 8
    Approach_Act_Flex(arg0, arg1, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6, f17_local7)
    local f17_local8 = 3001
    local f17_local9 = 3002
    local f17_local10 = 3003
    local f17_local11 = 4.8 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f17_local12 = 4.8 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f17_local13 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local14 = 0
    local f17_local15 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local8, TARGET_ENE_0, f17_local11, f17_local14, f17_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f17_local9, TARGET_ENE_0, f17_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f17_local10, TARGET_ENE_0, f17_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act22(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 6
    local f19_local2 = 15
    local f19_local3 = true
    local f19_local4 = arg0:GetRandam_Int(1, 100)
    local f19_local5 = -1
    if f19_local0 <= f19_local2 or f19_local4 <= arg0:GetStringIndexedNumber("c3650_DashRate") then
        f19_local3 = false
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f19_local1, TARGET_ENE_0, f19_local3, f19_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act23(arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = 10
    local f20_local2 = 20
    local f20_local3 = 100
    local f20_local4 = arg0:GetRandam_Int(1, 100)
    local f20_local5 = -1
    if f20_local1 <= f20_local0 then
        Approach_Act(arg0, arg1, f20_local1, f20_local2, f20_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f20_local1, TARGET_ENE_0, false, f20_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act24(arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Int(1, 100)
    local f21_local1 = -1
    local f21_local2 = arg0:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_L, 180, 90, 30)
    local f21_local3 = arg0:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 90, 30)
    local f21_local4 = arg0:GetRandam_Int(0, 1)
    if 1 == doAdmirer and (arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki) then
        if f21_local2 == true then
            f21_local4 = 0
        elseif f21_local3 == true then
            f21_local4 = 1
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, f21_local4, arg0:GetRandam_Int(30, 45), true, true, f21_local1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act25(arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = arg0:GetRandam_Int(6012, 6013)
    local f22_local2 = AI_DIR_TYPE_L
    local f22_local3 = arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local4 = 5
    local f22_local5 = arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, f22_local4 + f22_local3, f22_local3, 0)
    local f22_local6 = arg0:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_L, 180, 90, 30)
    local f22_local7 = arg0:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 90, 30)
    local f22_local8 = arg0:GetRandam_Int(0, 1)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 90, 30) then
        f22_local1 = 6013
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 90, 30) then
        f22_local1 = 6012
    end
    if 1 == doAdmirer and (arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki) then
        if f22_local6 == true then
            f22_local1 = 6012
        elseif f22_local7 == true then
            f22_local1 = 6013
        end
    end
    if f22_local1 == 6013 then
        f22_local2 = AI_DIR_TYPE_R
    end
    local f22_local9 = arg0:GetExistMeshOnLineDistEx(TARGET_SELF, f22_local2, arg0:GetMapHitRadius(TARGET_SELF) + 7, arg0:GetMapHitRadius(TARGET_SELF), 0)
    if f22_local9 >= 4.5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f22_local1, TARGET_ENE_0, 0, f22_local2, 3.5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act26(arg0, arg1, arg2)
    local f23_local0 = arg0:GetDist(TARGET_ENE_0)
    local f23_local1 = arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, arg0:GetMapHitRadius(TARGET_SELF) + 7, arg0:GetMapHitRadius(TARGET_SELF), 0)
    if f23_local1 >= 4.5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act27(arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = arg0:GetRandam_Int(6002, 6003)
    local f24_local2 = AI_DIR_TYPE_L
    local f24_local3 = arg0:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_L, 180, 90, 30)
    local f24_local4 = arg0:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 90, 30)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 90, 30) then
        f24_local1 = 6003
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 90, 30) then
        f24_local1 = 6002
    end
    if doAdmirer == 1 and (arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki) then
        if f24_local3 == true then
            f24_local1 = 6002
        elseif f24_local4 == true then
            f24_local1 = 6003
        end
    end
    local f24_local5 = arg0:GetExistMeshOnLineDistEx(TARGET_SELF, f24_local2, arg0:GetMapHitRadius(TARGET_SELF) + 7, arg0:GetMapHitRadius(TARGET_SELF), 0)
    if f24_local1 == 6003 then
        f24_local2 = AI_DIR_TYPE_R
    end
    if f24_local5 >= 4.5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f24_local1, TARGET_ENE_0, 0, f24_local2, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act28(arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_FRI_0)
    local f25_local1 = 3.5
    local f25_local2 = 15
    local f25_local3 = true
    local f25_local4 = arg0:GetRandam_Int(1, 100)
    local f25_local5 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_FRI_0, f25_local1, TARGET_ENE_0, f25_local3, f25_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act29(arg0, arg1, arg2)
    local f26_local0 = arg0:GetDist(TARGET_ENE_0)
    local f26_local1 = arg0:GetRandam_Int(6022, 6023)
    local f26_local2 = AI_DIR_TYPE_L
    local f26_local3 = arg0:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_L, 180, 90, 30)
    local f26_local4 = arg0:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 90, 30)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 90, 30) then
        f26_local1 = 6023
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 90, 30) then
        f26_local1 = 6022
    end
    if doAdmirer == 1 and (arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki) then
        if f26_local3 == true then
            f26_local1 = 6022
        elseif f26_local4 == true then
            f26_local1 = 6023
        end
    end
    if f26_local1 == 6023 then
        f26_local2 = AI_DIR_TYPE_R
    end
    local f26_local5 = arg0:GetExistMeshOnLineDistEx(TARGET_SELF, f26_local2, arg0:GetMapHitRadius(TARGET_SELF) + 7, arg0:GetMapHitRadius(TARGET_SELF), 0)
    if f26_local5 >= 4.5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f26_local1, TARGET_ENE_0, 0, f26_local2, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act32(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_ActCP3(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BugsEater_365000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BugsEater_365000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f36_local0 = arg1:GetDist(TARGET_ENE_0)
    local f36_local1 = arg1:GetDist(TARGET_FRI_0)
    local f36_local2 = arg1:GetRandam_Int(1, 100)
    local f36_local3 = arg1:GetPrevTargetState()
    local f36_local4 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    local f36_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 13300)
    local f36_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 13301)
    local f36_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 13302)
    local f36_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 13304)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if arg1:GetSpecialEffectActivateInterruptId(5025) then
            arg2:ClearSubGoal()
            if f36_local6 == true then
                arg2:ClearSubGoal()
                if f36_local0 >= 4 and f36_local2 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                    return true
                end
            elseif f36_local7 == true then
                arg2:ClearSubGoal()
                if f36_local0 >= 4 and arg1:GetAttackPassedTime(3021) >= 10 and f36_local2 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                    if f36_local0 <= 2.5 and f36_local2 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 5, 0, 180, 0, 0)
                    end
                    return true
                end
            elseif f36_local6 == false and f36_local7 == false and f36_local8 == false then
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 and f36_local0 >= 3 then
                    arg2:ClearSubGoal()
                    BugsEater_365000_Act18(arg1, arg2)
                    return true
                end
            elseif f36_local0 >= 4 and f36_local2 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(5026) then
            local f36_local9 = arg1:GetDist(TARGET_ENE_0)
            if f36_local6 == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 5, 0, 0)
                return true
            elseif f36_local7 == true and f36_local9 <= 2.5 and f36_local2 <= 50 and arg1:GetAttackPassedTime(3024) >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3024, TARGET_ENE_0, 6, 0, 0, 90)
                return true
            elseif f36_local9 <= 2.5 and f36_local2 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 6, 0, 0, 90)
                return true
            elseif f36_local9 <= 6 and f36_local9 > 2.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 5, 0, 0, 90)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3012, TARGET_ENE_0, 5, 0, 0, 60)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3013, TARGET_ENE_0, 4, 0, 0, 90)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(5028) then
            local f36_local9 = arg1:GetDist(TARGET_ENE_0)
            if f36_local7 == true and f36_local9 < 2.5 and arg1:GetAttackPassedTime(3024) >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3024, TARGET_ENE_0, 6, 0, 0, 90)
                return true
            elseif f36_local9 <= 6 and f36_local9 >= 2.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3015, TARGET_ENE_0, 6, 0, 0, 90)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 6, 0, 0, 90)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3010, TARGET_ENE_0, 6, 0, 0, 90)
                return true
            elseif f36_local2 <= 30 then
                arg2:ClearSubGoal()
                BugsEater_365000_Act25(arg1, arg2)
                return true
            elseif f36_local9 < 3 and f36_local2 <= 60 then
                arg2:ClearSubGoal()
                BugsEater_365000_Act29(arg1, arg2)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(5027) then
            local f36_local9 = arg1:GetDist(TARGET_ENE_0)
            if f36_local6 == false then
                if f36_local9 <= 1 and f36_local2 <= 50 and arg1:GetAttackPassedTime(3011) >= 10 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 5, 0, 90, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    BugsEater_365000_Act29(arg1, arg2)
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        if f36_local6 == false then
            arg1:SetStringIndexedNumber("c3650_DashRate", 100)
        end
        if f36_local0 >= 8 then
            BugsEater_365000_Act25(arg1, arg2)
        elseif f36_local0 <= 4.5 and f36_local2 <= 80 then
            BugsEater_365000_Act03(arg1, arg2)
        else
            BugsEater_365000_Act25(arg1, arg2)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and f36_local6 == false and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        arg2:ClearSubGoal()
        if f36_local7 == true and f36_local2 <= 10 and arg1:GetAttackPassedTime(3021) and f36_local0 <= 2.5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3021, TARGET_ENE_0, 6, 0, 0, 180)
            return true
        elseif f36_local2 <= 5 and arg1:GetAttackPassedTime(3011) >= 10 and f36_local0 <= 2 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3011, TARGET_ENE_0, 6, 0, 90)
            return true
        elseif f36_local2 <= 15 and f36_local0 <= 3 then
            arg2:ClearSubGoal()
            BugsEater_365000_Act29(arg1, arg2)
            return true
        elseif f36_local2 <= 25 and f36_local0 <= 3 then
            arg2:ClearSubGoal()
            BugsEater_365000_Act25(arg1, arg2)
            return true
        elseif f36_local2 <= 30 and f36_local0 <= 4.5 then
            arg2:ClearSubGoal()
            BugsEater_365000_Act02(arg1, arg2)
            return true
        elseif f36_local2 <= 35 and f36_local0 <= 4.5 then
            arg2:ClearSubGoal()
            BugsEater_365000_Act03(arg1, arg2)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        if f36_local6 == true and f36_local2 <= 50 then
            arg2:ClearSubGoal()
            BugsEater_365000_Act26(arg1, arg2)
        elseif f36_local7 == true and f36_local2 <= 30 and arg1:GetAttackPassedTime(3021) >= 10 and f36_local0 <= 2.5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3021, TARGET_ENE_0, 6, 0, 0, 180)
            return true
        elseif f36_local0 <= 1.2 + arg1:GetMapHitRadius(TARGET_SELF) and f36_local2 <= 40 then
            arg2:ClearSubGoal()
            BugsEater_365000_Act06(arg1, arg2)
        elseif f36_local2 <= 80 then
            arg2:ClearSubGoal()
            BugsEater_365000_Act29(arg1, arg2)
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_BugsEater_365000_AfterAttackAct, "BugsEater_365000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BugsEater_365000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


