RegisterTableGoal(GOAL_HorriblenessGrub402000_Battle, "HorriblenessGrub402000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HorriblenessGrub402000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 2)
    arg1:SetNumber(5, 0)
    arg1:SetNumber(3, 0)
    arg1:SetNumber(4, 0)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3030)
    arg1:EnableUnfavorableAttackCheck(0, 3031)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    arg1:EnableUnfavorableAttackCheck(0, 3033)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:GetStringIndexedNumber("Handstand_Cnt")
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetRandam_Int(1, 10)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16663)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16665)
    local f2_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 16683)
    arg1:SetNumber(6, 0)
    arg1:SetNumber(7, 0)
    arg1:SetNumber(10, 0)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 140) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and f2_local3 <= 3 then
            f2_local0[4] = 45
            f2_local0[8] = 15
            f2_local0[9] = 15
            f2_local0[14] = 10
            f2_local0[17] = 35
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and f2_local3 <= 3 then
            f2_local0[3] = 45
            f2_local0[8] = 15
            f2_local0[9] = 15
            f2_local0[13] = 10
            f2_local0[17] = 35
        else
            f2_local0[17] = 20
        end
    elseif f2_local3 >= 18 then
        f2_local0[8] = 70
        f2_local0[9] = 70
        f2_local0[16] = 30
    elseif f2_local3 >= 15 then
        f2_local0[1] = 10
        f2_local0[5] = 10
        f2_local0[7] = 30
        f2_local0[8] = 10
        f2_local0[9] = 10
        f2_local0[16] = 15
    elseif f2_local3 >= 10 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) then
            f2_local0[5] = 20
            f2_local0[7] = 30
            f2_local0[8] = 30
            f2_local0[9] = 30
        else
            f2_local0[1] = 20
            f2_local0[2] = 25
            f2_local0[5] = 10
            f2_local0[7] = 30
            f2_local0[8] = 30
            f2_local0[9] = 30
            f2_local0[20] = 10
        end
    elseif f2_local3 >= 6 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) then
            f2_local0[2] = 10
            f2_local0[5] = 20
            f2_local0[7] = 30
            f2_local0[8] = 30
            f2_local0[9] = 30
            f2_local0[13] = 18
            f2_local0[14] = 12
        else
            f2_local0[1] = 20
            f2_local0[2] = 30
            f2_local0[5] = 10
            f2_local0[7] = 10
            f2_local0[8] = 15
            f2_local0[9] = 15
            f2_local0[10] = 10
            f2_local0[13] = 18
            f2_local0[14] = 12
            f2_local0[15] = 20
            f2_local0[20] = 15
        end
    else
        f2_local0[1] = 20
        f2_local0[2] = 20
        f2_local0[8] = 15
        f2_local0[9] = 15
        f2_local0[10] = 15
        f2_local0[13] = 30
        f2_local0[14] = 20
        f2_local0[20] = 10
    end
    f2_local0[8] = SetCoolTime(arg1, arg2, 3013, 30, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3017, arg1:GetRandam_Int(10, 15), f2_local0[9], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3004, 15, f2_local0[10], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 6002, 10, f2_local0[13], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 6003, 10, f2_local0[13], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 6002, 10, f2_local0[14], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 6003, 10, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 6002, 10, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 6003, 10, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 6002, 10, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 6003, 10, f2_local0[14], 1)
    if f2_local6 == false then
        f2_local0[9] = 0
    else
        f2_local0[8] = f2_local0[8] / 5
        f2_local0[9] = f2_local0[9] * 7
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, HorriblenessGrub402000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, HorriblenessGrub402000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, HorriblenessGrub402000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, HorriblenessGrub402000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, HorriblenessGrub402000_Act05)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, HorriblenessGrub402000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, HorriblenessGrub402000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, HorriblenessGrub402000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, HorriblenessGrub402000_Act10)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, HorriblenessGrub402000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, HorriblenessGrub402000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, HorriblenessGrub402000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, HorriblenessGrub402000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, HorriblenessGrub402000_Act17)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, HorriblenessGrub402000_Act20)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, HorriblenessGrub402000_Act30)
    local f2_local7 = REGIST_FUNC(arg1, arg2, HorriblenessGrub402000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function HorriblenessGrub402000_Act01(arg0, arg1, arg2)
    local f3_local0 = 6
    local f3_local1 = 15
    local f3_local2 = 30
    local f3_local3 = 30
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 5
    local f3_local8 = 3000
    local f3_local9 = 6
    local f3_local10 = 2
    local f3_local11 = 90
    local f3_local12 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    if InsideRange(arg0, arg1, 135, 60, 0, 6) then
        actPerArr[3] = 50
    end
    if InsideRange(arg0, arg1, 135, 60, 0, 6) then
        actPerArr[4] = 50
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function HorriblenessGrub402000_Act02(arg0, arg1, arg2)
    local f4_local0 = 8
    local f4_local1 = 15
    local f4_local2 = 30
    local f4_local3 = 30
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = arg0:GetDist(TARGET_ENE_0)
    local f4_local8 = 5
    local f4_local9 = 3006
    local f4_local10 = 6
    local f4_local11 = 3
    local f4_local12 = 90
    local f4_local13 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local8, f4_local9, TARGET_ENE_0, f4_local10, f4_local11, f4_local12, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function HorriblenessGrub402000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 5
    local f5_local2 = 3007
    local f5_local3 = 6
    local f5_local4 = 9
    local f5_local5 = 180
    local f5_local6 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f5_local1, f5_local2, TARGET_ENE_0, 0, 0, 0, 0, 0)
    if InsideRange(arg0, arg1, 135, 60, 0, 6) then
        actPerArr[3] = 50
    end
    if InsideRange(arg0, arg1, 135, 60, 0, 6) then
        actPerArr[4] = 50
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function HorriblenessGrub402000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 5
    local f6_local2 = 3008
    local f6_local3 = 6
    local f6_local4 = 9
    local f6_local5 = 180
    local f6_local6 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f6_local1, f6_local2, TARGET_ENE_0, 0, 0, 0, 0, 0)
    if InsideRange(arg0, arg1, 135, 60, 0, 6) then
        actPerArr[3] = 50
    end
    if InsideRange(arg0, arg1, 135, 60, 0, 6) then
        actPerArr[4] = 50
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function HorriblenessGrub402000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetRandam_Int(1, 100)
    local f7_local1 = 15
    local f7_local2 = 3005
    local f7_local3 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local4 = 2
    local f7_local5 = 60
    arg0:SetTimer(5, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16659)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16660)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local1, f7_local2, TARGET_ENE_0, f7_local3, f7_local4, f7_local5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function HorriblenessGrub402000_Act07(arg0, arg1, arg2)
    local f8_local0 = 10
    local f8_local1 = 3
    local f8_local2 = 30
    local f8_local3 = 3011
    local f8_local4 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16653)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, Life, f8_local3, TARGET_ENE_0, f8_local0, f8_local1, f8_local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function HorriblenessGrub402000_Act08(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f9_local0 = 5
    local f9_local1 = 3015
    local f9_local2 = 6
    local f9_local3 = 0
    local f9_local4 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16660)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 16656)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10126)
    local f9_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local1, TARGET_ENE_0, 999, f9_local3, f9_local4, 0, 0)
    local f9_local6 = arg0:GetDist(TARGET_ENE_0)
    local f9_local7 = arg0:GetRandam_Int(1, 100)
    select_Attack1 = 3013
    selectFate_1F = 0
    selectFate_1B = 25
    selectFate_1L = 25
    selectFate_1R = 25
    selectFate_2F = 0
    selectFate_2B = 0
    selectFate_2L = 0
    selectFate_2R = 0
    warpDist_1F = 6
    warpDist_1B = 6
    warpDist_1L = 6
    warpDist_1R = 6
    warpDist_2F = 0
    warpDist_2B = 0
    warpDist_2L = 0
    warpDist_2R = 0
    same_Angle = 0
    local f9_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    local f9_local11 = arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local12 = arg0:GetDist(TARGET_ENE_0)
    local f9_local13 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local f9_local14 = 3027
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, warpDist_1F + f9_local11, f9_local11, 0) <= warpDist_1F then
        selectFate_1F = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, warpDist_1B + f9_local11, f9_local11, 0) <= warpDist_1B then
        selectFate_1B = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, warpDist_1L + f9_local11, f9_local11, 0) <= warpDist_1L then
        selectFate_1L = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, warpDist_1R + f9_local11, f9_local11, 0) <= warpDist_1R then
        selectFate_1R = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, warpDist_2F + f9_local11, f9_local11, 0) <= warpDist_2F then
        selectFate_2F = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, warpDist_2B + f9_local11, f9_local11, 0) <= warpDist_2B then
        selectFate_2B = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, warpDist_2L + f9_local11, f9_local11, 0) <= warpDist_2L then
        selectFate_2L = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, warpDist_2R + f9_local11, f9_local11, 0) <= warpDist_2R then
        selectFate_2B = 0
    end
    local f9_local15 = arg0:GetRandam_Int(0, selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R + selectFate_2F + selectFate_2B + selectFate_2L + selectFate_2R)
    local f9_local16 = AI_DIR_TYPE_F
    local f9_local17 = 0
    local f9_local18 = f9_local14
    local f9_local19 = TARGET_ENE_0
    if 0 == selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R + selectFate_2F + selectFate_2B + selectFate_2L + selectFate_2R then
        arg0:SetNumber(6, 1)
        f9_local16 = AI_DIR_TYPE_F
        f9_local17 = 0
        f9_local18 = 3027
    elseif 0 ~= selectFate_1F and f9_local15 <= selectFate_1F then
        f9_local16 = AI_DIR_TYPE_F
        f9_local17 = warpDist_1F
        f9_local18 = select_Attack1
        f9_local19 = TARGET_ENE_0
    elseif 0 ~= selectFate_1B and f9_local15 <= selectFate_1F + selectFate_1B then
        f9_local16 = AI_DIR_TYPE_B
        f9_local17 = warpDist_1B
        f9_local18 = select_Attack1
        f9_local19 = TARGET_ENE_0
    elseif 0 ~= selectFate_1L and f9_local15 <= selectFate_1F + selectFate_1B + selectFate_1L then
        f9_local16 = AI_DIR_TYPE_L
        f9_local17 = warpDist_1L
        f9_local18 = select_Attack1
        f9_local19 = TARGET_ENE_0
    elseif 0 ~= selectFate_1R and f9_local15 <= selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R then
        f9_local16 = AI_DIR_TYPE_R
        f9_local17 = warpDist_1R
        f9_local18 = select_Attack1
        f9_local19 = TARGET_ENE_0
    end
    if arg0:GetNumber(6) ~= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, f9_local8, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f9_local16, f9_local17, f9_local19, 5, -2)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f9_local18, TARGET_ENE_0, f9_local8, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function HorriblenessGrub402000_Act09(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f10_local0 = 5
    local f10_local1 = 3015
    local f10_local2 = 6
    local f10_local3 = 0
    local f10_local4 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16660)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 16656)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10126)
    local f10_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local1, TARGET_ENE_0, 999, f10_local3, f10_local4, 0, 0)
    local f10_local6 = arg0:GetDist(TARGET_ENE_0)
    local f10_local7 = arg0:GetRandam_Int(1, 100)
    select_Attack1 = 3017
    selectFate_1F = 70
    selectFate_1B = 10
    selectFate_1L = 10
    selectFate_1R = 10
    selectFate_2F = 0
    selectFate_2B = 0
    selectFate_2L = 0
    selectFate_2R = 0
    warpDist_1F = 2.5
    warpDist_1B = 2.5
    warpDist_1L = 2.5
    warpDist_1R = 2.5
    warpDist_2F = 0
    warpDist_2B = 0
    warpDist_2L = 0
    warpDist_2R = 0
    same_Angle = 0
    local f10_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 0
    local f10_local10 = 0
    local f10_local11 = arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local12 = arg0:GetDist(TARGET_ENE_0)
    local f10_local13 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local f10_local14 = 3027
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, warpDist_1F + f10_local11, f10_local11, 0) <= warpDist_1F then
        selectFate_1F = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, warpDist_1B + f10_local11, f10_local11, 0) <= warpDist_1B then
        selectFate_1B = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, warpDist_1L + f10_local11, f10_local11, 0) <= warpDist_1L then
        selectFate_1L = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, warpDist_1R + f10_local11, f10_local11, 0) <= warpDist_1R then
        selectFate_1R = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, warpDist_2F + f10_local11, f10_local11, 0) <= warpDist_2F then
        selectFate_2F = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, warpDist_2B + f10_local11, f10_local11, 0) <= warpDist_2B then
        selectFate_2B = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, warpDist_2L + f10_local11, f10_local11, 0) <= warpDist_2L then
        selectFate_2L = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, warpDist_2R + f10_local11, f10_local11, 0) <= warpDist_2R then
        selectFate_2B = 0
    end
    local f10_local15 = arg0:GetRandam_Int(0, selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R + selectFate_2F + selectFate_2B + selectFate_2L + selectFate_2R)
    local f10_local16 = AI_DIR_TYPE_F
    local f10_local17 = 0
    local f10_local18 = f10_local14
    local f10_local19 = TARGET_ENE_0
    if 0 == selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R + selectFate_2F + selectFate_2B + selectFate_2L + selectFate_2R then
        arg0:SetNumber(6, 1)
        f10_local16 = AI_DIR_TYPE_F
        f10_local17 = 0
        f10_local18 = 3027
    elseif 0 ~= selectFate_1F and f10_local15 <= selectFate_1F then
        f10_local16 = AI_DIR_TYPE_F
        f10_local17 = warpDist_1F
        f10_local18 = select_Attack1
        f10_local19 = TARGET_ENE_0
    elseif 0 ~= selectFate_1B and f10_local15 <= selectFate_1F + selectFate_1B then
        f10_local16 = AI_DIR_TYPE_B
        f10_local17 = warpDist_1B
        f10_local18 = select_Attack1
        f10_local19 = TARGET_ENE_0
    elseif 0 ~= selectFate_1L and f10_local15 <= selectFate_1F + selectFate_1B + selectFate_1L then
        f10_local16 = AI_DIR_TYPE_L
        f10_local17 = warpDist_1L
        f10_local18 = select_Attack1
        f10_local19 = TARGET_ENE_0
    elseif 0 ~= selectFate_1R and f10_local15 <= selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R then
        f10_local16 = AI_DIR_TYPE_R
        f10_local17 = warpDist_1R
        f10_local18 = select_Attack1
        f10_local19 = TARGET_ENE_0
    end
    arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_F, 2.5, TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f10_local16, f10_local17, f10_local19)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, f10_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function HorriblenessGrub402000_Act10(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 3004
    if f11_local0 <= 3 then
        local f11_local2 = 5
        local f11_local3 = -1
        local f11_local4 = 1
        local f11_local5 = -1
        local f11_local6 = -1
        local f11_local7 = TARGET_ENE_0
        local f11_local8 = 3
        local f11_local9 = 0
        local f11_local10 = true
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7, f11_local8, f11_local9, f11_local10)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local1, TARGET_ENE_0, DIST_None, 5, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function HorriblenessGrub402000_Act13(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16660)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 16656)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10126)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16653)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
    local f12_local0 = arg0:GetRandam_Int(1, 100)
    local f12_local1 = 5
    local f12_local2 = -1
    local f12_local3 = -1
    local f12_local4 = 1
    local f12_local5 = -1
    local f12_local6 = TARGET_ENE_0
    local f12_local7 = 3
    local f12_local8 = 0
    local f12_local9 = false
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7, f12_local8, f12_local9)
    arg0:SetNumber(8, 3)
    local f12_local10 = arg0:GetDist(TARGET_ENE_0)
    local f12_local11 = arg0:GetRandam_Int(1, 100)
    select_Attack1 = 3031
    select_Attack2 = 3033
    select_Attack3 = 3000
    select_Attack4 = 3016
    selectFate_1 = 5
    selectFate_2 = 5
    selectFate_3 = 0
    selectFate_4 = 5
    warpDist_1 = 3
    warpDist_2 = 7
    warpDist_3 = 3
    warpDist_4 = 3
    local f12_local12 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local13 = 0
    local f12_local14 = 0
    local f12_local15 = arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local16 = arg0:GetDist(TARGET_ENE_0)
    local f12_local17 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_1 + f12_local15, f12_local15, 0) <= warpDist_1 then
        selectFate_1 = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_2 + f12_local15, f12_local15, 0) <= warpDist_2 then
        selectFate_2 = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_3 + f12_local15, f12_local15, 0) <= warpDist_3 then
        selectFate_3 = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_4 + f12_local15, f12_local15, 0) <= warpDist_4 then
        selectFate_4 = 0
    end
    local f12_local18 = arg0:GetRandam_Int(0, selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4)
    local f12_local19 = AI_DIR_TYPE_ToL
    local f12_local20 = 0
    local f12_local21 = fall_Attack
    local f12_local22 = TARGET_ENE_0
    if 0 == selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
        arg0:SetNumber(6, 1)
    elseif 0 ~= selectFate_1 and f12_local18 <= selectFate_1 then
        f12_local19 = AI_DIR_TYPE_ToBL
        f12_local20 = warpDist_1
        f12_local21 = select_Attack1
        f12_local22 = TARGET_ENE_0
    elseif 0 ~= selectFate_2 and f12_local18 <= selectFate_1 + selectFate_2 then
        f12_local19 = AI_DIR_TYPE_ToBL
        f12_local20 = warpDist_2
        f12_local21 = select_Attack2
        f12_local22 = TARGET_ENE_0
    elseif 0 ~= selectFate_3 and f12_local18 <= selectFate_1 + selectFate_2 + selectFate_3 then
        f12_local19 = AI_DIR_TYPE_ToBL
        f12_local20 = warpDist_3
        f12_local21 = select_Attack3
        f12_local22 = TARGET_ENE_0
    elseif 0 ~= selectFate_4 and f12_local18 <= selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
        f12_local19 = AI_DIR_TYPE_ToBL
        f12_local20 = warpDist_4
        f12_local21 = select_Attack4
        f12_local22 = TARGET_ENE_0
    end
    if arg0:GetNumber(6) ~= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, f12_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f12_local19, f12_local20, f12_local22, 5, -2)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f12_local21, TARGET_ENE_0, f12_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessGrub402000_Act14(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16660)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 16656)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10126)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16653)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
    local f13_local0 = arg0:GetRandam_Int(1, 100)
    local f13_local1 = 5
    local f13_local2 = -1
    local f13_local3 = -1
    local f13_local4 = -1
    local f13_local5 = 1
    local f13_local6 = TARGET_ENE_0
    local f13_local7 = 3
    local f13_local8 = 0
    local f13_local9 = false
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7, f13_local8, f13_local9)
    arg0:SetNumber(8, 3)
    local f13_local10 = arg0:GetDist(TARGET_ENE_0)
    local f13_local11 = arg0:GetRandam_Int(1, 100)
    select_Attack1 = 3030
    select_Attack2 = 3035
    select_Attack3 = 3000
    select_Attack4 = 3016
    selectFate_1 = 5
    selectFate_2 = 0
    selectFate_3 = 0
    selectFate_4 = 5
    warpDist_1 = 3
    warpDist_2 = 5
    warpDist_3 = 3
    warpDist_4 = 3
    local f13_local12 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local13 = 0
    local f13_local14 = 0
    local f13_local15 = arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local16 = arg0:GetDist(TARGET_ENE_0)
    local f13_local17 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_1 + f13_local15, f13_local15, 0) <= warpDist_1 then
        selectFate_1 = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_2 + f13_local15, f13_local15, 0) <= warpDist_2 then
        selectFate_2 = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_3 + f13_local15, f13_local15, 0) <= warpDist_3 then
        selectFate_3 = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_4 + f13_local15, f13_local15, 0) <= warpDist_4 then
        selectFate_4 = 0
    end
    local f13_local18 = arg0:GetRandam_Int(0, selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4)
    local f13_local19 = AI_DIR_TYPE_ToR
    local f13_local20 = 0
    local f13_local21 = fall_Attack
    local f13_local22 = TARGET_ENE_0
    if 0 == selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
        arg0:SetNumber(6, 1)
    elseif 0 ~= selectFate_1 and f13_local18 <= selectFate_1 then
        f13_local19 = AI_DIR_TYPE_ToBR
        f13_local20 = warpDist_1
        f13_local21 = select_Attack1
        f13_local22 = TARGET_ENE_0
    elseif 0 ~= selectFate_2 and f13_local18 <= selectFate_1 + selectFate_2 then
        f13_local19 = AI_DIR_TYPE_ToBR
        f13_local20 = warpDist_2
        f13_local21 = select_Attack2
        f13_local22 = TARGET_ENE_0
    elseif 0 ~= selectFate_3 and f13_local18 <= selectFate_1 + selectFate_2 + selectFate_3 then
        f13_local19 = AI_DIR_TYPE_ToBR
        f13_local20 = warpDist_3
        f13_local21 = select_Attack3
        f13_local22 = TARGET_ENE_0
    elseif 0 ~= selectFate_4 and f13_local18 <= selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
        f13_local19 = AI_DIR_TYPE_ToBR
        f13_local20 = warpDist_4
        f13_local21 = select_Attack4
        f13_local22 = TARGET_ENE_0
    end
    if arg0:GetNumber(6) ~= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, f13_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f13_local19, f13_local20, f13_local22, 5, -2)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f13_local21, TARGET_ENE_0, f13_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessGrub402000_Act15(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 10
    local f14_local2 = 12
    local f14_local3 = 0
    local f14_local4 = arg0:GetRandam_Int(1, 100)
    local f14_local5 = -1
    if f14_local4 <= f14_local3 then
        f14_local5 = 9910
    end
    if f14_local1 <= f14_local0 then
        Approach_Act(arg0, arg1, f14_local1, f14_local2, f14_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, f14_local1, TARGET_ENE_0, true, f14_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessGrub402000_Act16(arg0, arg1, arg2)
    local f15_local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(1.5, 3.5), TARGET_ENE_0, 7, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, arg0:GetRandam_Int(3, 8))
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(1.5, 3.5), TARGET_ENE_0, 7, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, arg0:GetRandam_Int(3, 8))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessGrub402000_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessGrub402000_Act20(arg0, arg1, arg2)
    local f17_local0 = 5
    local f17_local1 = -1
    local f17_local2 = 1
    local f17_local3 = -1
    local f17_local4 = -1
    local f17_local5 = TARGET_ENE_0
    local f17_local6 = 3
    local f17_local7 = 0
    local f17_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6, f17_local7, f17_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HorriblenessGrub402000_Act30(arg0, arg1, arg2)
    arg0:SetNumber(5, 1)
    local f18_local0 = 5
    local f18_local1 = 20016
    local f18_local2 = 6
    local f18_local3 = 0
    local f18_local4 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16660)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 16656)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10126)
    local f18_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f18_local1, TARGET_SELF, 999, f18_local3, f18_local4, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function HorriblenessGrub402000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_HorriblenessGrub402000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f22_local0 = arg1:GetRandam_Int(1, 100)
    local f22_local1 = arg1:GetDist(TARGET_ENE_0)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16665)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 16666) or arg1:HasSpecialEffectId(TARGET_SELF, 16658) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16666) then
            arg1:SetNumber(10, 1)
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16658) then
            arg1:SetNumber(10, 2)
        end
        local f22_local2 = 3
        local f22_local3 = arg1:GetRandam_Int(1, 100)
        local f22_local4 = 999 - arg1:GetMapHitRadius(TARGET_SELF)
        local f22_local5 = 0
        local f22_local6 = 0
        local f22_local7 = arg1:GetMapHitRadius(TARGET_SELF)
        local f22_local8 = arg1:GetDist(TARGET_ENE_0)
        local f22_local9 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
        if f22_local2 < arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, f22_local2 + f22_local7, f22_local7, 0) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 999) == false and arg1:GetNumber(7) ~= 1 and f22_local3 > 50 then
            arg2:ClearSubGoal()
            local f22_local10 = arg1:GetRandam_Int(1, 100)
            local f22_local11 = 5
            local f22_local12 = -1
            local f22_local13 = -1
            local f22_local14 = 1
            local f22_local15 = -1
            local f22_local16 = TARGET_ENE_0
            local f22_local17 = 3
            local f22_local18 = 0
            local f22_local19 = false
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, f22_local11, f22_local12, f22_local13, f22_local14, f22_local15, f22_local16, f22_local17, f22_local18, f22_local19)
            arg1:SetNumber(7, 1)
            arg1:SetNumber(8, 3)
            local f22_local20 = arg1:GetDist(TARGET_ENE_0)
            local f22_local21 = arg1:GetRandam_Int(1, 100)
            select_Attack1 = 3031
            select_Attack2 = 3033
            select_Attack3 = 3000
            select_Attack4 = 3016
            selectFate_1 = 5
            selectFate_2 = 5
            selectFate_3 = 0
            selectFate_4 = 5
            warpDist_1 = 3
            warpDist_2 = 7
            warpDist_3 = 3
            warpDist_4 = 3
            local f22_local22 = 999 - arg1:GetMapHitRadius(TARGET_SELF)
            local f22_local23 = 0
            local f22_local24 = 0
            local f22_local25 = arg1:GetMapHitRadius(TARGET_SELF)
            local f22_local26 = arg1:GetDist(TARGET_ENE_0)
            local f22_local27 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
            if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_1 + f22_local25, f22_local25, 0) <= warpDist_1 then
                selectFate_1 = 0
            end
            if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_2 + f22_local25, f22_local25, 0) <= warpDist_2 then
                selectFate_2 = 0
            end
            if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_3 + f22_local25, f22_local25, 0) <= warpDist_3 then
                selectFate_3 = 0
            end
            if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_4 + f22_local25, f22_local25, 0) <= warpDist_4 then
                selectFate_4 = 0
            end
            local f22_local28 = arg1:GetRandam_Int(0, selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4)
            local f22_local29 = AI_DIR_TYPE_ToL
            local f22_local30 = 0
            local f22_local31 = fall_Attack
            local f22_local32 = TARGET_ENE_0
            if 0 == selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
                arg1:SetNumber(6, 1)
            elseif 0 ~= selectFate_1 and f22_local28 <= selectFate_1 then
                f22_local29 = AI_DIR_TYPE_ToBL
                f22_local30 = warpDist_1
                f22_local31 = select_Attack1
                f22_local32 = TARGET_ENE_0
            elseif 0 ~= selectFate_2 and f22_local28 <= selectFate_1 + selectFate_2 then
                f22_local29 = AI_DIR_TYPE_ToBL
                f22_local30 = warpDist_2
                f22_local31 = select_Attack2
                f22_local32 = TARGET_ENE_0
            elseif 0 ~= selectFate_3 and f22_local28 <= selectFate_1 + selectFate_2 + selectFate_3 then
                f22_local29 = AI_DIR_TYPE_ToBL
                f22_local30 = warpDist_3
                f22_local31 = select_Attack3
                f22_local32 = TARGET_ENE_0
            elseif 0 ~= selectFate_4 and f22_local28 <= selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
                f22_local29 = AI_DIR_TYPE_ToBL
                f22_local30 = warpDist_4
                f22_local31 = select_Attack4
                f22_local32 = TARGET_ENE_0
            end
            if arg1:GetNumber(6) ~= 0 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, f22_local22, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f22_local29, f22_local30, f22_local32, 5, -2)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f22_local31, TARGET_ENE_0, 999, 0, 0)
                if f22_local31 == select_Attack4 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                end
            end
        elseif f22_local2 < arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, f22_local2 + f22_local7, f22_local7, 0) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 999) == false and arg1:GetNumber(7) ~= 1 and f22_local3 > 50 then
            arg2:ClearSubGoal()
            local f22_local10 = arg1:GetRandam_Int(1, 100)
            local f22_local11 = 5
            local f22_local12 = -1
            local f22_local13 = -1
            local f22_local14 = -1
            local f22_local15 = 1
            local f22_local16 = TARGET_ENE_0
            local f22_local17 = 3
            local f22_local18 = 0
            local f22_local19 = false
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, f22_local11, f22_local12, f22_local13, f22_local14, f22_local15, f22_local16, f22_local17, f22_local18, f22_local19)
            arg1:SetNumber(7, 1)
            arg1:SetNumber(8, 3)
            local f22_local20 = arg1:GetDist(TARGET_ENE_0)
            local f22_local21 = arg1:GetRandam_Int(1, 100)
            select_Attack1 = 3030
            select_Attack2 = 3035
            select_Attack3 = 3000
            select_Attack4 = 3016
            selectFate_1 = 5
            selectFate_2 = 0
            selectFate_3 = 0
            selectFate_4 = 5
            warpDist_1 = 3
            warpDist_2 = 7
            warpDist_3 = 3
            warpDist_4 = 3
            local f22_local22 = 999 - arg1:GetMapHitRadius(TARGET_SELF)
            local f22_local23 = 0
            local f22_local24 = 0
            local f22_local25 = arg1:GetMapHitRadius(TARGET_SELF)
            local f22_local26 = arg1:GetDist(TARGET_ENE_0)
            local f22_local27 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
            if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_1 + f22_local25, f22_local25, 0) <= warpDist_1 then
                selectFate_1 = 0
            end
            if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_2 + f22_local25, f22_local25, 0) <= warpDist_2 then
                selectFate_2 = 0
            end
            if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_3 + f22_local25, f22_local25, 0) <= warpDist_3 then
                selectFate_3 = 0
            end
            if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_4 + f22_local25, f22_local25, 0) <= warpDist_4 then
                selectFate_4 = 0
            end
            local f22_local28 = arg1:GetRandam_Int(0, selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4)
            local f22_local29 = AI_DIR_TYPE_ToR
            local f22_local30 = 0
            local f22_local31 = fall_Attack
            local f22_local32 = TARGET_ENE_0
            if 0 == selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
                arg1:SetNumber(6, 1)
            elseif 0 ~= selectFate_1 and f22_local28 <= selectFate_1 then
                f22_local29 = AI_DIR_TYPE_ToBR
                f22_local30 = warpDist_1
                f22_local31 = select_Attack1
                f22_local32 = TARGET_ENE_0
            elseif 0 ~= selectFate_2 and f22_local28 <= selectFate_1 + selectFate_2 then
                f22_local29 = AI_DIR_TYPE_ToBR
                f22_local30 = warpDist_2
                f22_local31 = select_Attack2
                f22_local32 = TARGET_ENE_0
            elseif 0 ~= selectFate_3 and f22_local28 <= selectFate_1 + selectFate_2 + selectFate_3 then
                f22_local29 = AI_DIR_TYPE_ToBR
                f22_local30 = warpDist_3
                f22_local31 = select_Attack3
                f22_local32 = TARGET_ENE_0
            elseif 0 ~= selectFate_4 and f22_local28 <= selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
                f22_local29 = AI_DIR_TYPE_ToBR
                f22_local30 = warpDist_4
                f22_local31 = select_Attack4
                f22_local32 = TARGET_ENE_0
            end
            if arg1:GetNumber(6) ~= 0 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, f22_local22, 0, 0)
            else
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f22_local29, f22_local30, f22_local32, 5, -2)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f22_local31, TARGET_ENE_0, 999, 0, 0)
                if f22_local31 == 3016 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                end
            end
        elseif arg1:GetNumber(10) == 1 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                local f22_local10 = arg1:GetRandam_Int(1, 100)
                local f22_local11 = arg1:GetDist(TARGET_ENE_0)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                if f22_local11 <= 5 then
                    if f22_local10 > 65 then
                        arg2:ClearSubGoal()
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif f22_local10 > 40 then
                        arg2:ClearSubGoal()
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif f22_local10 > 25 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif f22_local11 <= 9 then
                    if f22_local10 > 30 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3023, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif f22_local11 <= 13 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        elseif arg1:GetNumber(10) == 2 then
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
            local f22_local10 = arg1:GetRandam_Int(1, 100)
            local f22_local11 = arg1:GetDist(TARGET_ENE_0)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                if f22_local11 <= 5 then
                    if f22_local10 > 70 then
                        arg2:ClearSubGoal()
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif f22_local10 > 40 then
                        arg2:ClearSubGoal()
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif f22_local10 > 30 then
                        arg2:ClearSubGoal()
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif f22_local10 > 15 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif f22_local11 <= 9 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif f22_local11 <= 13 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16655) then
        local f22_local2 = arg1:GetDist(TARGET_ENE_0)
        local f22_local3 = arg1:GetRandam_Int(1, 100)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
            if f22_local2 < 5 then
                if f22_local3 > 70 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif f22_local3 > 40 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif f22_local2 < 9 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16657) then
        local f22_local2 = arg1:GetRandam_Int(1, 100)
        local f22_local3 = arg1:GetDist(TARGET_ENE_0)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
        if f22_local3 <= 5 then
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16659) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16659)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
        local f22_local2 = arg1:GetRandam_Int(1, 100)
        local f22_local3 = arg1:GetDist(TARGET_ENE_0)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and f22_local3 <= 9 then
            if f22_local2 > 60 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16665) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16659)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
        local f22_local2 = arg1:GetRandam_Int(1, 100)
        local f22_local3 = arg1:GetDist(TARGET_ENE_0)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and f22_local3 <= 6 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16653) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
        local f22_local2 = arg1:GetDist(TARGET_ENE_0)
        local f22_local3 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
            if f22_local2 < 5 then
                if f22_local3 > 60 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif f22_local3 > 45 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif f22_local3 > 30 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif f22_local3 > 20 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif f22_local2 < 8 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif f22_local2 <= 3 and f22_local3 > 80 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16663) then
        arg2:ClearSubGoal()
        local f22_local2 = 5
        local f22_local3 = -1
        local f22_local4 = 1
        local f22_local5 = -1
        local f22_local6 = -1
        local f22_local7 = TARGET_ENE_0
        local f22_local8 = 3
        local f22_local9 = 0
        local f22_local10 = false
        arg2:AddSubGoal(GOAL_COMMON_StepSafety, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6, f22_local7, f22_local8, f22_local9, f22_local10)
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16662) then
        local f22_local2 = arg1:GetDist(TARGET_ENE_0)
        local f22_local3 = arg1:GetRandam_Int(1, 100)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and f22_local2 < 5 then
            if f22_local3 > 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif f22_local3 > 15 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16656) then
        arg2:ClearSubGoal()
        local f22_local2 = 5
        local f22_local3 = 3011
        local f22_local4 = 6
        local f22_local5 = 2
        local f22_local6 = 120
        local f22_local7 = arg1:GetRandam_Int(1, 100)
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local2, f22_local3, TARGET_ENE_0, f22_local4, f22_local5, f22_local6, 0, 0)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_HorriblenessGrub402000_AfterAttackAct, "HorriblenessGrub402000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HorriblenessGrub402000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


