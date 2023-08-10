RegisterTableGoal(GOAL_KnightofNoblerot_Sc380010_Battle, "KnightofNoblerot_Sc380010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KnightofNoblerot_Sc380010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3029)
    arg1:EnableUnfavorableAttackCheck(0, 3100)
    arg1:EnableUnfavorableAttackCheck(0, 3101)
    arg1:EnableUnfavorableAttackCheck(0, 3102)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:DeleteObserve(1)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetDist(TARGET_FRI_0)
    local f2_local7 = 1
    local f2_local8 = 1
    local f2_local9 = arg1:GetEventRequest()
    if arg1:GetNumber(0) >= 5 then
        arg1:SetTimer(0, arg1:GetRandam_Float(3, 6))
        arg1:SetNumber(0, 0)
    end
    if f2_local6 <= 7 then
        local f2_local10 = 5
    end
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 10 then
            f2_local0[29] = 100
        elseif f2_local3 >= 7.5 then
            f2_local0[21] = 100
            f2_local0[29] = 100
        elseif f2_local3 >= 5.5 then
            f2_local0[21] = 100
        elseif f2_local3 >= 3.5 then
            f2_local0[21] = 100
            f2_local0[22] = 100
            f2_local0[30] = 300
        else
            f2_local0[21] = 10
            f2_local0[22] = 300
            f2_local0[30] = 200
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 10 then
            f2_local0[9] = 150
            f2_local0[10] = 150
            f2_local0[29] = 700
        elseif f2_local3 >= 7.5 then
            f2_local0[9] = 150
            f2_local0[10] = 150
            f2_local0[21] = 300
            f2_local0[29] = 400
        elseif f2_local3 >= 5.5 then
            f2_local0[3] = 100
            f2_local0[9] = 100
            f2_local0[10] = 100
            f2_local0[21] = 700
        elseif f2_local3 >= 3.5 then
            f2_local0[1] = 40
            f2_local0[4] = 30
            f2_local0[6] = 100
            f2_local0[7] = 100
            f2_local0[8] = 30
            f2_local0[21] = 300
            f2_local0[22] = 100
            f2_local0[30] = 300
        else
            f2_local0[1] = 50
            f2_local0[7] = 150
            f2_local0[22] = 500
            f2_local0[30] = 300
        end
    elseif InsideRange(arg1, arg2, 180, 240, 0, 3) then
        if InsideRange(arg1, arg2, 90, 180, 0, 3) then
            f2_local0[23] = 500
        else
            f2_local0[24] = 500
        end
        f2_local0[20] = 50
    elseif InsideRange(arg1, arg2, 180, 200, 3, 10) then
        f2_local0[20] = 100
        f2_local0[21] = 100
    elseif f2_local3 >= 10 then
        if arg1:IsFinishTimer(0) then
            f2_local0[9] = 400
            f2_local0[10] = 500
            f2_local0[21] = 100
            if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
                f2_local0[13] = 200
                f2_local0[14] = 100
            end
        else
            f2_local0[9] = 100
            f2_local0[10] = 200
            f2_local0[21] = 700
            if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
                f2_local0[13] = 200
                f2_local0[14] = 100
            end
        end
    elseif f2_local3 >= 7 then
        if arg1:IsFinishTimer(0) then
            f2_local0[9] = 600
            f2_local0[10] = 300
            f2_local0[21] = 100
            if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
                f2_local0[13] = 200
                f2_local0[14] = 100
            end
        else
            f2_local0[9] = 200
            f2_local0[10] = 100
            f2_local0[21] = 700
            if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
                f2_local0[13] = 200
                f2_local0[14] = 100
            end
        end
    elseif f2_local3 >= 5 then
        if not arg1:IsFinishTimer(1) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 550
            f2_local0[4] = 0
            f2_local0[8] = 0
            f2_local0[9] = 250
            f2_local0[10] = 0
            f2_local0[21] = 200 * f2_local7
            if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
                f2_local0[13] = 0
                f2_local0[14] = 200
            end
        else
            f2_local0[1] = 50
            f2_local0[2] = 200
            f2_local0[3] = 300
            f2_local0[4] = 150
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[21] = 50 * f2_local7
            if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
                f2_local0[13] = 0
                f2_local0[14] = 200
            end
        end
    elseif f2_local3 >= 3 then
        if not arg1:IsFinishTimer(1) then
            f2_local0[1] = 0
            f2_local0[2] = 200
            f2_local0[3] = 300
            f2_local0[4] = 0
            f2_local0[6] = 100
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[11] = 0
            f2_local0[21] = 50 * f2_local7
            if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
                f2_local0[13] = 0
                f2_local0[14] = 200
            end
        else
            f2_local0[1] = 100
            f2_local0[2] = 200
            f2_local0[3] = 200
            f2_local0[4] = 0
            f2_local0[6] = 150
            f2_local0[7] = 150 * f2_local7
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[11] = 200
            f2_local0[21] = 0
            f2_local0[22] = 100 * f2_local7
            if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
                f2_local0[13] = 0
                f2_local0[14] = 200
            end
        end
    else
        f2_local0[1] = 100
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[6] = 150
        f2_local0[7] = 200 * f2_local7
        f2_local0[8] = 200
        f2_local0[11] = 150
        f2_local0[21] = 0
        f2_local0[22] = 100 * f2_local7
        if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
            f2_local0[13] = 0
            f2_local0[14] = 200
        end
    end
    if f2_local6 <= 8 and f2_local6 >= 0 and arg1:HasSpecialEffectId(TARGET_FRI_0, 13855) == false then
        if f2_local3 >= 5 then
            f2_local0[5] = 1000
        elseif f2_local3 >= 3 then
            f2_local0[5] = 600
        else
            f2_local0[5] = 200
        end
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f2_local0[21] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 3) == false then
        f2_local0[7] = 0
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 3) == false then
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, -90, 3) == false then
        f2_local0[23] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3010, 8, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3011, 8, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3013, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3020, 42, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3027, 15, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 6001, 5, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[8], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[11], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3005, 7, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3007, 7, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3008, 7, f2_local0[14], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[22], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 6001, 8, f2_local0[22], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 6002, 8, f2_local0[22], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 6003, 8, f2_local0[22], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act11)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380010_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380010_Act14)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act24)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_Act30)
    local f2_local10 = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sc380010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function KnightofNoblerot_Sc380010_Act01(arg0, arg1, arg2)
    local f3_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f3_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 0.5
    local f3_local6 = 0.8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    local f3_local12 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sc380010_Act02(arg0, arg1, arg2)
    local f4_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 50
    local f4_local4 = 0
    local f4_local5 = 0.5
    local f4_local6 = 0.8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3010
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sc380010_Act03(arg0, arg1, arg2)
    local f5_local0 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f5_local2 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 0.5
    local f5_local6 = 0.8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3011
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sc380010_Act04(arg0, arg1, arg2)
    local f6_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 0.5
    local f6_local6 = 0.8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3013
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sc380010_Act05(arg0, arg1, arg2)
    local f7_local0 = 3020
    local f7_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 0
    local f7_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local0, TARGET_FRI_0, f7_local1, f7_local2, f7_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sc380010_Act06(arg0, arg1, arg2)
    local f8_local0 = 3027
    local f8_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 0
    local f8_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sc380010_Act07(arg0, arg1, arg2)
    local f9_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 0.5
    local f9_local6 = 0.8
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3003
    local f9_local8 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 0
    local f9_local11 = 0
    local f9_local12 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(1, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, 999, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sc380010_Act08(arg0, arg1, arg2)
    local f10_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f10_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 0.5
    local f10_local6 = 0.8
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3004
    local f10_local8 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 0
    local f10_local11 = 0
    local f10_local12 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:SetTimer(1, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sc380010_Act09(arg0, arg1, arg2)
    local f11_local0 = 3029
    local f11_local1 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f11_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 0
    local f11_local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f11_local5 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local1, f11_local3, f11_local4, 0, 0)
    f11_local5:TimingSetNumber(0, arg0:GetNumber(0) + 1, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sc380010_Act10(arg0, arg1, arg2)
    local f12_local0 = 3026
    local f12_local1 = 3029
    local f12_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local3 = 0
    local f12_local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f12_local5 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local0, TARGET_ENE_0, 999, f12_local3, f12_local4, 0, 0)
    f12_local5:TimingSetNumber(0, arg0:GetNumber(0) + 1, AI_TIMING_SET__ACTIVATE)
    f12_local5 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f12_local1, TARGET_ENE_0, f12_local2, 0, 0)
    f12_local5:TimingSetNumber(0, arg0:GetNumber(0) + 2, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sc380010_Act11(arg0, arg1, arg2)
    local f13_local0 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 1
    local f13_local6 = 2
    local f13_local7 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local8 = 3001
    local f13_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local10 = -1
    local f13_local11 = 60
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local8, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380010_Act13(arg0, arg1, arg2)
    local f14_local0 = 5
    local f14_local1 = 3005
    local f14_local2 = TARGET_ENE_0
    local f14_local3 = 10
    local f14_local4 = 0
    local f14_local5 = 0
    local f14_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local0, f14_local1, f14_local2, f14_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380010_Act14(arg0, arg1, arg2)
    local f15_local0 = 5
    local f15_local1 = arg0:GetRandam_Int(3007, 3008)
    local f15_local2 = TARGET_ENE_0
    local f15_local3 = 10
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local0, f15_local1, f15_local2, f15_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sc380010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sc380010_Act21(arg0, arg1, arg2)
    local f17_local0 = 0
    local f17_local1 = arg0:GetRandam_Int(1, 100)
    local f17_local2 = arg0:GetRandam_Float(1, 2)
    local f17_local3 = -1
    local f17_local4 = 0
    if arg0:GetNumber(2) <= 0 then
        arg0:SetNumber(2, 1)
        arg0:SetTimer(1, 10)
    end
    if SpaceCheck(arg0, arg1, 90, 1) == true then
        if SpaceCheck(arg0, arg1, -90, 1) == true then
            f17_local4 = arg0:GetRandam_Int(0, 1)
        else
            f17_local4 = 1
        end
    elseif SpaceCheck(arg0, arg1, -90, 1) == true then
        f17_local4 = 0
    else

    end
    arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 4)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local2, TARGET_ENE_0, f17_local4, arg0:GetRandam_Int(30, 45), true, true, f17_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sc380010_Act22(arg0, arg1, arg2)
    arg0:SetTimer(1, 5)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    
end

function KnightofNoblerot_Sc380010_Act23(arg0, arg1, arg2)
    local f19_local0 = AI_DIR_TYPE_L
    local f19_local1 = 6002
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f19_local1, TARGET_ENE_0, 0, f19_local0, 3)
    
end

function KnightofNoblerot_Sc380010_Act24(arg0, arg1, arg2)
    local f20_local0 = AI_DIR_TYPE_R
    local f20_local1 = 6003
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f20_local1, TARGET_ENE_0, 0, f20_local0, 3)
    
end

function KnightofNoblerot_Sc380010_Act29(arg0, arg1, arg2)
    local f21_local0 = 0
    local f21_local1 = arg0:GetRandam_Int(1, 100)
    local f21_local2 = arg0:GetRandam_Float(3, 5)
    local f21_local3 = arg0:GetRandam_Float(5.6, 7.4)
    local f21_local4 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f21_local2, TARGET_ENE_0, f21_local3, TARGET_SELF, true, f21_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sc380010_Act30(arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = arg0:GetRandam_Float(6, 8)
    local f22_local2 = 12
    local f22_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, f22_local1, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sc380010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_KnightofNoblerot_Sc380010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f26_local0 = arg1:GetDist(TARGET_ENE_0)
    local f26_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f26_local2 = arg1:GetRandam_Int(1, 100)
    local f26_local3 = arg1:GetRandam_Int(1, 100)
    local f26_local4 = arg1:GetHpRate(TARGET_SELF)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(5025) then
            if arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, 3.7 - arg1:GetMapHitRadius(TARGET_SELF)) and f26_local2 >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(5026) then
            if arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, 4.7 - arg1:GetMapHitRadius(TARGET_SELF) - 1.5) and f26_local3 >= 25 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(5027) then
            if arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, 10) and f26_local0 >= 3 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3029, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, 5.6 - arg1:GetMapHitRadius(TARGET_SELF) - 1) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(5028) then
            if arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, 5.9 - arg1:GetMapHitRadius(TARGET_SELF) - 1) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(5029) then
            if arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 270, 3.7 - arg1:GetMapHitRadius(TARGET_SELF) - 0.5) and f26_local2 >= 41 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 270, 6 - arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3025, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg1:Replaning()
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(5033) then
            if arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 270, 5.6 - arg1:GetMapHitRadius(TARGET_SELF) + 0.5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(5034) then
            if arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 270, 5.9 - arg1:GetMapHitRadius(TARGET_SELF) + 0.5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(5035) then
            if f26_local0 >= 6 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3029, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 210, 4 - arg1:GetMapHitRadius(TARGET_SELF) + 0.5) then
                arg2:ClearSubGoal()
                arg1:SetTimer(1, 5)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3003, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg1:SetTimer(1, 5)
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(1) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        if f26_local2 >= 50 then
            if SpaceCheck(arg1, arg2, -90, 5) == true then
                if SpaceCheck(arg1, arg2, 90, 5) == false then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                    return true
                elseif f26_local3 >= 51 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                    return true
                end
            elseif SpaceCheck(arg1, arg2, 90, 5) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                return true
            elseif SpaceCheck(arg1, arg2, 180, 5) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
                return true
            end
        elseif f26_local2 >= 15 then
            if f26_local0 >= 8 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3026, TARGET_ENE_0, 999, 0, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3029, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f26_local0 >= 5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3029, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
        arg2:ClearSubGoal()
        local f26_local5 = 0.5
        local f26_local6 = TARGET_ENE_0
        local f26_local7 = 10
        local f26_local8 = 0
        local f26_local9 = 0
        local f26_local10 = 0
        local f26_local11 = 3006
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f26_local5, f26_local11, f26_local6, f26_local7, 0, 0, 0)
    end
    return false
    
end

RegisterTableGoal(GOAL_KnightofNoblerot_Sc380010_AfterAttackAct, "KnightofNoblerot_Sc380010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KnightofNoblerot_Sc380010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


