RegisterTableGoal(GOAL_WingDoll_Sc_386010_Battle, "GOAL_WingDoll_Sc_386010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WingDoll_Sc_386010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
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
    arg1:EnableUnfavorableAttackCheck(1000000, 3023)
    arg1:EnableUnfavorableAttackCheck(1000000, 3024)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local6 = arg1:GetOffsetY(TARGET_SELF)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local8 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 14080) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5403) == false then
            f2_local0[35] = 100
        else
            f2_local0[36] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14081) and arg1:GetDist(TARGET_EVENT) > 85 then
        f2_local0[29] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14081) and f2_local3 > 12 and arg1:GetDist(TARGET_EVENT) > 30 then
        f2_local0[31] = 20
    elseif f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[21] = 40
        f2_local0[22] = 40
        f2_local0[23] = 0
        f2_local0[24] = 0
        f2_local0[30] = 0
        f2_local0[31] = 20
        f2_local0[32] = 0
    elseif f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[21] = 40
        f2_local0[22] = 40
        f2_local0[23] = 0
        f2_local0[24] = 0
        f2_local0[30] = 0
        f2_local0[31] = 20
        f2_local0[32] = 0
    elseif InsideRange(arg1, arg2, 120, 120, -999, 2) then
        f2_local0[2] = 20
        f2_local0[20] = 5
        f2_local0[21] = 65
    elseif InsideRange(arg1, arg2, -120, 120, -999, 2) then
        f2_local0[3] = 20
        f2_local0[20] = 5
        f2_local0[22] = 65
    elseif InsideRange(arg1, arg2, 180, 240, -999, 10) then
        f2_local0[20] = 5
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            f2_local0[22] = 95
        else
            f2_local0[21] = 65
        end
    elseif f2_local3 >= 8 then
        f2_local0[1] = 25
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 20
        f2_local0[8] = 0
        f2_local0[9] = 50
        f2_local0[12] = 40
        f2_local0[21] = 25
        f2_local0[22] = 25
    elseif f2_local3 >= 5 then
        f2_local0[1] = 15
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 10
        f2_local0[6] = 20
        f2_local0[8] = 0
        f2_local0[9] = 50
        f2_local0[12] = 40
        f2_local0[21] = 25
        f2_local0[22] = 25
    elseif f2_local3 >= 2.5 then
        f2_local0[1] = 0
        f2_local0[2] = 15
        f2_local0[3] = 15
        f2_local0[4] = 25
        f2_local0[5] = 15
        f2_local0[6] = 20
        f2_local0[8] = 50
        f2_local0[9] = 0
        f2_local0[11] = 0
        f2_local0[12] = 30
        f2_local0[21] = 25
        f2_local0[22] = 25
    elseif f2_local3 >= 1 then
        f2_local0[1] = 0
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[4] = 15
        f2_local0[5] = 10
        f2_local0[6] = 0
        f2_local0[8] = 50
        f2_local0[9] = 0
        f2_local0[11] = 0
        f2_local0[21] = 25
        f2_local0[22] = 25
    else
        f2_local0[1] = 0
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[4] = 15
        f2_local0[5] = 5
        f2_local0[6] = 0
        f2_local0[8] = 50
        f2_local0[9] = 0
        f2_local0[11] = 0
        f2_local0[21] = 20
        f2_local0[22] = 20
        f2_local0[23] = 15
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == false then
        if arg1:GetHpRate(TARGET_SELF) < 0.5 then
            f2_local0[10] = 300
        elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
            f2_local0[10] = 50
        elseif arg1:GetHpRate(TARGET_SELF) < 1 then
            f2_local0[10] = 30
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14085) == false then
        f2_local0[8] = 0
        f2_local0[9] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 5, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3032, 999, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3030, 20, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3031, 20, f2_local0[9], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3010, 90, f2_local0[10], 0)
    f2_local0[21] = SetCoolTime(arg1, arg2, 6002, 3, f2_local0[21], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 6003, 3, f2_local0[21], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 6002, 3, f2_local0[22], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 6003, 3, f2_local0[22], 1)
    if arg1:GetTimer(0) > 0 then
        f2_local0[8] = 0
        f2_local0[9] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act12)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act24)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act32)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_Act36)
    local f2_local9 = REGIST_FUNC(arg1, arg2, WingDoll_Sc_386010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function WingDoll_Sc_386010_Act01(arg0, arg1, arg2)
    local f3_local0 = 7.5
    local f3_local1 = 7.5
    local f3_local2 = 7.5
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 1
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    local f3_local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, 999, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WingDoll_Sc_386010_Act02(arg0, arg1, arg2)
    local f4_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 1
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    local f4_local11 = arg0:GetRandam_Int(1, 100)
    local f4_local12 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 3, f4_local12, f4_local12) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, 999, f4_local9, f4_local10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WingDoll_Sc_386010_Act03(arg0, arg1, arg2)
    local f5_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 1
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3002
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    local f5_local11 = arg0:GetRandam_Int(1, 100)
    local f5_local12 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 3, f5_local12, f5_local12) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, 999, f5_local9, f5_local10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WingDoll_Sc_386010_Act04(arg0, arg1, arg2)
    local f6_local0 = 2
    local f6_local1 = 2
    local f6_local2 = 2
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 1
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3003
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    local f6_local11 = arg0:GetRandam_Int(1, 100)
    local f6_local12 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 5, f6_local12, f6_local12) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, 999, f6_local9, f6_local10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WingDoll_Sc_386010_Act05(arg0, arg1, arg2)
    local f7_local0 = 5.2
    local f7_local1 = 5.2
    local f7_local2 = 5.2
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 1
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3004
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 0
    local f7_local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local7, TARGET_ENE_0, 999, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WingDoll_Sc_386010_Act06(arg0, arg1, arg2)
    local f8_local0 = 5
    local f8_local1 = 5
    local f8_local2 = 5
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 1
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3005
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    local f8_local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local7, TARGET_ENE_0, 999, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WingDoll_Sc_386010_Act07(arg0, arg1, arg2)
    local f9_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 1
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3032
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WingDoll_Sc_386010_Act08(arg0, arg1, arg2)
    local f10_local0 = 3030
    local f10_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 0
    local f10_local3 = 0
    local f10_local4 = arg0:GetMapHitRadius(TARGET_SELF)
    arg0:SetTimer(0, 15)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14086) then
        f10_local0 = 3028
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 3, f10_local4, f10_local4) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local1, f10_local2, f10_local3, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WingDoll_Sc_386010_Act09(arg0, arg1, arg2)
    local f11_local0 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 2
    local f11_local6 = 1
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3031
    local f11_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local9 = 0
    local f11_local10 = 0
    local f11_local11 = arg0:GetMapHitRadius(TARGET_SELF)
    arg0:SetTimer(0, 15)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14086) then
        f11_local7 = 3029
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 5, f11_local11, f11_local11) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WingDoll_Sc_386010_Act10(arg0, arg1, arg2)
    local f12_local0 = 3010
    local f12_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 0
    local f12_local3 = 0
    local f12_local4 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local0, TARGET_ENE_0, 999, f12_local2, f12_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WingDoll_Sc_386010_Act11(arg0, arg1, arg2)
    local f13_local0 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 4
    local f13_local6 = 1
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3033
    local f13_local8 = 3035
    local f13_local9 = 2
    local f13_local10 = 3
    local f13_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local12 = 0
    local f13_local13 = 0
    arg0:SetTimer(0, 7)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local9, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f13_local8, TARGET_ENE_0, f13_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WingDoll_Sc_386010_Act12(arg0, arg1, arg2)
    local f14_local0 = 3.7
    local f14_local1 = 0
    local f14_local2 = 0
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 2
    local f14_local6 = 1
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f14_local7 = 3006
    local f14_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local9 = 0
    local f14_local10 = 0
    local f14_local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local7, TARGET_ENE_0, 999, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WingDoll_Sc_386010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WingDoll_Sc_386010_Act21(arg0, arg1, arg2)
    local f16_local0 = AI_DIR_TYPE_L
    local f16_local1 = 6002
    local f16_local2 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 3, f16_local2, f16_local2) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f16_local1, TARGET_ENE_0, 0, f16_local0, 3)
    end
    
end

function WingDoll_Sc_386010_Act22(arg0, arg1, arg2)
    local f17_local0 = AI_DIR_TYPE_R
    local f17_local1 = 6003
    local f17_local2 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 3, f17_local2, f17_local2) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f17_local1, TARGET_ENE_0, 0, f17_local0, 3)
    end
    
end

function WingDoll_Sc_386010_Act23(arg0, arg1, arg2)
    local f18_local0 = AI_DIR_TYPE_B
    local f18_local1 = 6001
    local f18_local2 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 4, f18_local2, f18_local2) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f18_local1, TARGET_ENE_0, 0, f18_local0, 3)
    end
    
end

function WingDoll_Sc_386010_Act24(arg0, arg1, arg2)
    local f19_local0 = AI_DIR_TYPE_F
    local f19_local1 = 6000
    local f19_local2 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 4, f19_local2, f19_local2) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f19_local1, TARGET_ENE_0, 0, f19_local0, 3)
    end
    
end

function WingDoll_Sc_386010_Act29(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_EVENT, 35, TARGET_SELF, false)
    
end

function WingDoll_Sc_386010_Act30(arg0, arg1, arg2)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = 10
    local f21_local2 = 12
    local f21_local3 = 0
    if f21_local1 <= f21_local0 then
        Approach_Act(arg0, arg1, f21_local1, f21_local2, f21_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, f21_local1, TARGET_ENE_0, true, -1)
    
end

function WingDoll_Sc_386010_Act31(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14081) == false then
        local f22_local0 = arg0:GetRandam_Int(5, 6)
        local f22_local1 = 999
        local f22_local2 = 0
        local f22_local3 = arg0:GetStringIndexedNumber("c3470_DashRate")
        local f22_local4 = 90
        local f22_local5 = arg0:GetRandam_Int(2, 3)
        local f22_local6 = 0
        Approach_Act_Flex(arg0, arg1, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6)
    end
    local f22_local0 = arg0:GetRandam_Int(5, 7)
    local f22_local1 = TARGET_ENE_0
    local f22_local2 = arg0:GetRandam_Int(0, 1)
    local f22_local3 = arg0:GetRandam_Int(90, 360)
    local f22_local4 = 5
    local f22_local5 = TARGET_SELF
    local f22_local6 = true
    local f22_local7 = true
    local f22_local8 = arg0:GetDist(TARGET_ENE_0)
    local f22_local9 = 0
    local f22_local10 = arg0:GetRandam_Int(1, 100)
    if f22_local10 <= f22_local9 then
        guardActionId = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f22_local0, f22_local1, f22_local2, f22_local3, f22_local6, -1, f22_local7, guardActionId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WingDoll_Sc_386010_Act32(arg0, arg1, arg2)
    local f23_local0 = arg0:GetDist(TARGET_ENE_0)
    local f23_local1 = 5
    local f23_local2 = 10
    local f23_local3 = arg0:GetRandam_Int(1, 100)
    local f23_local4 = true
    local f23_local5 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f23_local1, TARGET_ENE_0, f23_local4, f23_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WingDoll_Sc_386010_Act35(arg0, arg1, arg2)
    local f24_local0 = 3025
    local f24_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local2 = 0
    local f24_local3 = 0
    local f24_local4 = arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f24_local0, TARGET_ENE_0, f24_local1, f24_local2, f24_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WingDoll_Sc_386010_Act36(arg0, arg1, arg2)
    local f25_local0 = 4.5
    local f25_local1 = 0
    local f25_local2 = 0
    local f25_local3 = 100
    local f25_local4 = 0
    local f25_local5 = 2
    local f25_local6 = 100
    Approach_Act_Flex(arg0, arg1, f25_local0, f25_local1, f25_local2, f25_local3, f25_local4, f25_local5, f25_local6)
    local f25_local7 = 3000
    local f25_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local9 = 0
    local f25_local10 = 0
    local f25_local11 = arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f25_local7, TARGET_ENE_0, f25_local8, f25_local9, f25_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WingDoll_Sc_386010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_WingDoll_Sc_386010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f29_local0 = arg1:GetRandam_Int(1, 100)
    local f29_local1 = arg1:GetRandam_Int(1, 100)
    local f29_local2 = arg1:GetRandam_Int(1, 100)
    local f29_local3 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        arg2:ClearSubGoal()
        if arg1:HasSpecialEffectId(TARGET_SELF, 14085) and f29_local2 < 60 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 999) then
            if f29_local3 < 5 then
                WingDoll_Sc_386010_Act08(arg1, arg2)
            else
                WingDoll_Sc_386010_Act09(arg1, arg2)
            end
        elseif f29_local0 < 20 and f29_local3 < 1.5 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
        elseif f29_local0 < 50 and f29_local3 < 5 and arg1:GetTimer(2) <= 0 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
            arg1:SetTimer(2, 3)
        elseif f29_local0 < 70 and f29_local3 < 6 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
        elseif f29_local0 < 80 and f29_local3 < 6 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
        elseif f29_local3 < 8 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
        else
            return true
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true and f29_local0 < 30 then
            arg2:ClearSubGoal()
            WingDoll_Sc_386010_Act10(arg1, arg2)
            return true
        elseif f29_local0 <= 40 and InsideRange(arg1, arg2, 0, 360, 0, 3) then
            arg2:ClearSubGoal()
            WingDoll_Sc_386010_Act23(arg1, arg2)
            return true
        else

        end
    end
    return false
    
end

RegisterTableGoal(GOAL_WingDoll_Sc_386010_AfterAttackAct, "GOAL_WingDoll_Sc_386010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WingDoll_Sc_386010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


