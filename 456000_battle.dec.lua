RegisterTableGoal(GOAL_TyrannoRaven456000_Battle, "TyrannoRaven456000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TyrannoRaven456000_Battle, true)
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
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3026)
    arg1:EnableUnfavorableAttackCheck(0, 3027)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3029)
    arg1:EnableUnfavorableAttackCheck(0, 3030)
    arg1:EnableUnfavorableAttackCheck(0, 3031)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    arg1:EnableUnfavorableAttackCheck(0, 3033)
    arg1:EnableUnfavorableAttackCheck(0, 3034)
    arg1:EnableUnfavorableAttackCheck(0, 3037)
    arg1:EnableUnfavorableAttackCheck(0, 3038)
    arg1:EnableUnfavorableAttackCheck(0, 3039)
    arg1:SetStringIndexedNumber("isBloodType", 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetEventRequest()
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg1:GetStringIndexedNumber("isBloodType") == 1 then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 15402)
    end
    arg1:SetStringIndexedNumber("_targetDist", arg1:GetDist(TARGET_ENE_0))
    arg1:SetStringIndexedNumber("_capsule", arg1:GetMapHitRadius(TARGET_SELF))
    arg1:SetStringIndexedNumber("__________", 0)
    arg1:SetStringIndexedNumber("_Type_F", arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 30))
    arg1:SetStringIndexedNumber("_Type_L", arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 30))
    arg1:SetStringIndexedNumber("_Type_R", arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 30))
    arg1:SetStringIndexedNumber("_Type_B", arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 30))
    arg1:SetStringIndexedNumber("___________", 0)
    arg1:SetStringIndexedNumber("____________", 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 15401) and arg1:GetStringIndexedNumber("isBloodType") == 0 then
        arg1:SetStringIndexedNumber("isBloodType", 1)
    end
    arg1:SetNumber(2, 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 15444) then
        f2_local0[26] = 100000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15430) then
        f2_local0[21] = 100
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 30) then
        f2_local0[5] = 400
        f2_local0[11] = 100
        if f2_local3 < 5 then
            f2_local0[21] = 5
        else
            f2_local0[21] = 500
        end
    elseif f2_local3 >= 18 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 400
        f2_local0[13] = 600
        f2_local0[16] = 0
        f2_local0[22] = 0
        f2_local0[31] = 0
    elseif f2_local3 >= 15 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 50
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 300
        f2_local0[13] = 300
        f2_local0[14] = 200
        f2_local0[16] = 0
        f2_local0[22] = 50
        f2_local0[31] = 100
    elseif f2_local3 >= 8 then
        f2_local0[1] = 100
        f2_local0[2] = 0
        f2_local0[3] = 50
        f2_local0[4] = 100
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 100
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 100
        f2_local0[13] = 200
        f2_local0[14] = 200
        f2_local0[16] = 0
        f2_local0[22] = 50
        f2_local0[31] = 100
    elseif f2_local3 >= 5 then
        f2_local0[1] = 100
        f2_local0[2] = 0
        f2_local0[3] = 100
        f2_local0[4] = 50
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 150
        f2_local0[9] = 50
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 300
        f2_local0[14] = 200
        f2_local0[16] = 0
        f2_local0[22] = 50
        f2_local0[31] = 0
    elseif f2_local3 >= 2.5 then
        f2_local0[1] = 150
        f2_local0[2] = 100
        f2_local0[3] = 50
        f2_local0[4] = 200
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 50
        f2_local0[8] = 150
        f2_local0[9] = 200
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[14] = 0
        f2_local0[16] = 0
        f2_local0[22] = 0
        f2_local0[24] = 100
        f2_local0[25] = 0
        f2_local0[31] = 0
    else
        f2_local0[1] = 0
        f2_local0[2] = 100
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 100
        f2_local0[6] = 100
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 300
        f2_local0[11] = 150
        f2_local0[12] = 0
        f2_local0[16] = 0
        f2_local0[22] = 0
        f2_local0[24] = 200
        f2_local0[25] = 50
        f2_local0[31] = 0
        if arg1:IsTargetGuard(TARGET_ENE_0) == true and f2_local3 <= 2.8 - arg1:GetMapHitRadius(TARGET_SELF) then
            f2_local0[2] = 800
        end
    end
    if arg1:GetStringIndexedNumber("isBloodType") == 0 then
        f2_local0[15] = 0
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 90, 15) and f2_local3 > 0 then
        f2_local0[15] = 10000
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 6, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, arg1:GetRandam_Int(15, 18), f2_local0[4], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[6], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[6], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3013, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3013, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3010, arg1:GetRandam_Int(2, 6), f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3011, arg1:GetRandam_Int(2, 6), f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3012, arg1:GetRandam_Int(2, 6), f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3008, 4, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3009, 4, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3016, 20, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3017, 20, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[13], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[13], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3013, 20, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3014, 5, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3025, 40, f2_local0[15], 0)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3031, 15, f2_local0[16], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6002, arg1:GetRandam_Int(2, 6), f2_local0[24], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6003, arg1:GetRandam_Int(2, 6), f2_local0[24], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6001, arg1:GetRandam_Int(2, 4), f2_local0[25], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3035, 8, f2_local0[31], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3036, 8, f2_local0[31], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act16)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act26)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act31)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_Act47)
    local f2_local6 = REGIST_FUNC(arg1, arg2, TyrannoRaven456000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function TyrannoRaven456000_Act01(arg0, arg1, arg2)
    local f3_local0 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local2 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f3_local3 = 30
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    local f3_local7 = arg0:GetDist(TARGET_ENE_0)
    if f3_local2 <= f3_local7 then
        f3_local0 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    end
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local8 = 3000
    local f3_local9 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 180
    if arg0:GetStringIndexedNumber("isBloodType") == 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 12, 0, 120, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, f3_local9, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act02(arg0, arg1, arg2)
    local f4_local0 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local2 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    local f4_local7 = arg0:GetDist(TARGET_ENE_0)
    if f4_local2 <= f4_local7 then
        f4_local0 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    end
    local f4_local8 = 3001
    local f4_local9 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 0
    local f4_local11 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetRandam_Int(1, 100)
    local f5_local1 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local3 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 4
    local f5_local7 = 8
    local f5_local8 = arg0:GetDist(TARGET_ENE_0)
    if f5_local3 <= f5_local8 then
        f5_local1 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    end
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local9 = 3002
    local f5_local10 = 3008
    local f5_local11 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local12 = 0
    local f5_local13 = 180
    if arg0:GetStringIndexedNumber("isBloodType") == 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local9, TARGET_ENE_0, f5_local11, f5_local12, f5_local13, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 8, 0, 120, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 12, 0, 120)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, f5_local11, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act04(arg0, arg1, arg2)
    local f6_local0 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local2 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    local f6_local7 = arg0:GetDist(TARGET_ENE_0)
    if f6_local2 <= f6_local7 then
        f6_local0 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    end
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local8 = 3003
    local f6_local9 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 0
    local f6_local11 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetRandam_Int(1, 100)
    local f7_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 4
    local f7_local7 = 8
    local f7_local8 = arg0:GetDist(TARGET_ENE_0)
    if f7_local3 <= f7_local8 then
        f7_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    end
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local9 = 3004
    local f7_local10 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local11 = 0
    local f7_local12 = 180
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        f7_local9 = 3005
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local9, TARGET_ENE_0, 12, 0, 120, 0, 0)
    if arg0:GetStringIndexedNumber("isBloodType") == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 12, 0, 120)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act06(arg0, arg1, arg2)
    local f8_local0 = 1 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f8_local1 = 1 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 1
    local f8_local2 = 1 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 15
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    local f8_local7 = 3006
    local f8_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act07(arg0, arg1, arg2)
    local f9_local0 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local2 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    local f9_local7 = arg0:GetDist(TARGET_ENE_0)
    if f9_local2 <= f9_local7 then
        f9_local0 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    end
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local8 = 3007
    local f9_local9 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 0
    local f9_local11 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetRandam_Int(1, 100)
    local f10_local1 = 5 + arg0:GetMapHitRadius(TARGET_SELF) + 0.8
    local f10_local2 = 5 + arg0:GetMapHitRadius(TARGET_SELF) + 0.8 + 1
    local f10_local3 = 5 + arg0:GetMapHitRadius(TARGET_SELF) + 0.8 + 3
    local f10_local4 = 20
    local f10_local5 = 0
    local f10_local6 = 4
    local f10_local7 = 8
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 315, 180, 30) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    end
    local f10_local8 = 3010
    local f10_local9 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 0
    local f10_local11 = 180
    if f10_local0 <= 33 then
        f10_local8 = 3011
    elseif f10_local0 <= 66 then
        f10_local8 = 3012
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local8, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act09(arg0, arg1, arg2)
    local f11_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f11_local2 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 8
    local f11_local7 = arg0:GetDist(TARGET_ENE_0)
    if f11_local2 <= f11_local7 then
        f11_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    end
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local8 = 3008
    local f11_local9 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local10 = 0
    local f11_local11 = 180
    if arg0:GetStringIndexedNumber("isBloodType") == 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 12, 0, 120, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, f11_local9, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act10(arg0, arg1, arg2)
    local f12_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f12_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 15
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 4
    local f12_local6 = 8
    local f12_local7 = 3009
    local f12_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 0
    local f12_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetRandam_Int(1, 100)
    local f13_local1 = 2 + arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f13_local2 = 2 + arg0:GetMapHitRadius(TARGET_SELF) + 0.5 + 1
    local f13_local3 = 2 + arg0:GetMapHitRadius(TARGET_SELF) + 0.5 + 15
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 4
    local f13_local7 = 8
    Approach_Act_Flex(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    local f13_local8 = 3016
    local f13_local9 = 3021
    local f13_local10 = 2 + arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f13_local11 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local12 = 0
    local f13_local13 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local8, TARGET_ENE_0, f13_local10, f13_local12, f13_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetRandam_Int(1, 100)
    local f14_local1 = 18 + arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f14_local2 = 18 + arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f14_local3 = 18 + arg0:GetMapHitRadius(TARGET_SELF) + 3 + 2
    local f14_local4 = 80
    local f14_local5 = 0
    local f14_local6 = 4
    local f14_local7 = 8
    Approach_Act_Flex(arg0, arg1, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7)
    local f14_local8 = 3017
    local f14_local9 = 3021
    local f14_local10 = 2.5 + arg0:GetMapHitRadius(TARGET_SELF) + 6
    local f14_local11 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local12 = 0
    local f14_local13 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local8, TARGET_ENE_0, f14_local11, f14_local12, f14_local13, 0, 0)
    arg0:SetStringIndexedNumber("c4560_shoutflag", 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act13(arg0, arg1, arg2)
    local f15_local0 = 18 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = -99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 18 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 4
    local f15_local6 = 8
    local f15_local7 = arg0:GetDist(TARGET_ENE_0)
    if f15_local2 <= f15_local7 then
        f15_local0 = 18 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    end
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local8 = 3013
    local f15_local9 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local10 = 0
    local f15_local11 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local8, TARGET_ENE_0, f15_local9, f15_local10, f15_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act14(arg0, arg1, arg2)
    local f16_local0 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 4
    local f16_local6 = 8
    local f16_local7 = arg0:GetDist(TARGET_ENE_0)
    if f16_local2 <= f16_local7 then
        f16_local0 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    end
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local8 = 3014
    local f16_local9 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local10 = 0
    local f16_local11 = 180
    if arg0:GetStringIndexedNumber("isBloodType") == 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local8, TARGET_ENE_0, f16_local9, f16_local10, f16_local11, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 8, 0, 120, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act15(arg0, arg1, arg2)
    local f17_local0 = arg0:GetRandam_Int(1, 100)
    local f17_local1 = 3025
    local f17_local2 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local3 = 0
    local f17_local4 = 180
    local f17_local5 = arg0:GetDist(TARGET_ENE_0)
    if f17_local5 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 30, f17_local1, TARGET_ENE_0, 999, 0, 0, 360)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, f17_local1, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    if f17_local0 < 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3035, TARGET_ENE_0, f17_local2, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act16(arg0, arg1, arg2)
    local f18_local0 = 2 + arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f18_local1 = 2 + arg0:GetMapHitRadius(TARGET_SELF) + 0.5 + 1
    local f18_local2 = 2 + arg0:GetMapHitRadius(TARGET_SELF) + 0.5 + 15
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = 4
    local f18_local6 = 8
    local f18_local7 = 3031
    local f18_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local9 = 0
    local f18_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1.5, f18_local7, TARGET_ENE_0, f18_local8, f18_local9, f18_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_ActCP1(arg0, arg1, arg2)
    local f19_local0 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f19_local1 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 1
    local f19_local2 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 15
    local f19_local3 = 0
    local f19_local4 = 0
    local f19_local5 = 4
    local f19_local6 = 8
    Approach_Act_Flex(arg0, arg1, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6)
    local f19_local7 = 30
    local f19_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local9 = 0
    local f19_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local7, TARGET_ENE_0, f19_local8, f19_local9, f19_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_ActCP2(arg0, arg1, arg2)
    local f20_local0 = arg0:GetRandam_Int(1, 100)
    local f20_local1 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f20_local2 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 1
    local f20_local3 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 15
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 4
    local f20_local7 = 8
    Approach_Act_Flex(arg0, arg1, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7)
    local f20_local8 = 30
    local f20_local9 = 30
    local f20_local10 = 30
    local f20_local11 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f20_local12 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f20_local13 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local14 = 0
    local f20_local15 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f20_local8, TARGET_ENE_0, f20_local11, f20_local14, f20_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f20_local9, TARGET_ENE_0, f20_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f20_local10, TARGET_ENE_0, f20_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act22(arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = 10
    local f22_local2 = 30
    local f22_local3 = 0
    local f22_local4 = arg0:GetRandam_Int(1, 100)
    local f22_local5 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f22_local1, TARGET_ENE_0, true, f22_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act23(arg0, arg1, arg2)
    local f23_local0 = arg0:GetDist(TARGET_ENE_0)
    local f23_local1 = 10
    local f23_local2 = 20
    local f23_local3 = 100
    local f23_local4 = arg0:GetRandam_Int(1, 100)
    local f23_local5 = -1
    if f23_local4 <= f23_local3 then
        f23_local5 = 9910
    end
    if f23_local1 <= f23_local0 then
        Approach_Act(arg0, arg1, f23_local1, f23_local2, f23_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f23_local1, TARGET_ENE_0, false, f23_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act24(arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = arg0:GetRandam_Int(6002, 6003)
    local f24_local2 = AI_DIR_TYPE_L
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 90, 30) then
        f24_local1 = 6003
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 90, 30) then
        f24_local1 = 6002
    end
    if f24_local1 == 6003 then
        f24_local2 = AI_DIR_TYPE_R
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f24_local1, TARGET_ENE_0, 0, f24_local2, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act25(arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 4, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act26(arg0, arg1, arg2)
    local f26_local0 = 20013
    local f26_local1 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local2 = 0
    local f26_local3 = 180
    local f26_local4 = arg0:GetDist(TARGET_ENE_0)
    if f26_local4 < 5 or arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f26_local0 = 3035
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f26_local0, TARGET_ENE_0, f26_local1, f26_local2, f26_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act31(arg0, arg1, arg2)
    local f27_local0 = arg0:GetRandam_Int(1, 100)
    if f27_local0 <= 50 or arg0:GetStringIndexedNumber("c4560_shoutflag") == 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, DIST_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, DIST_None, 0, 0)
    end
    arg0:SetStringIndexedNumber("c4560_shoutflag", 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_ActCP3(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoRaven456000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_TyrannoRaven456000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f35_local0 = arg1:GetDist(TARGET_ENE_0)
    local f35_local1 = arg1:GetDist(TARGET_FRI_0)
    local f35_local2 = arg1:GetRandam_Int(1, 100)
    local f35_local3 = arg1:GetPrevTargetState()
    local f35_local4 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    local f35_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 15400)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) then
        if 8 - arg1:GetMapHitRadius(TARGET_SELF) <= f35_local0 and f35_local0 <= 17 - arg1:GetMapHitRadius(TARGET_SELF) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, 99, 0, 0)
        elseif 2.5 + arg1:GetMapHitRadius(TARGET_SELF) <= f35_local0 and f35_local0 <= 2.5 + arg1:GetMapHitRadius(TARGET_SELF) + 6 then
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 5026) and f35_local2 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 2.5 + arg1:GetMapHitRadius(TARGET_SELF) + 6, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 2.5 + arg1:GetMapHitRadius(TARGET_SELF) + 6, 0, 0)
            end
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        if f35_local5 == false then
            if 5 + arg1:GetMapHitRadius(TARGET_SELF) <= f35_local0 and f35_local2 <= 20 then
                TyrannoRaven456000_Act24(arg1, arg2)
            elseif 8 + arg1:GetMapHitRadius(TARGET_SELF) <= f35_local0 and f35_local2 <= 40 then
                TyrannoRaven456000_Act12(arg1, arg2)
            elseif 5 + arg1:GetMapHitRadius(TARGET_SELF) <= f35_local0 then
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, 5 + arg1:GetMapHitRadius(TARGET_SELF) + 0.8, TARGET_ENE_0, false, -1)
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5025) == true and 2.5 + arg1:GetMapHitRadius(TARGET_SELF) <= f35_local0 and f35_local0 <= 2.5 + arg1:GetMapHitRadius(TARGET_SELF) + 6 and arg1:IsFinishTimer(1) then
            arg1:SetTimer(1, 10)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 2.5 + arg1:GetMapHitRadius(TARGET_SELF) + 6, 0, 0)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local f35_local6 = 100 - arg1:GetTargetSARate(TARGET_SELF) * 100
        if f35_local0 <= 2 + arg1:GetMapHitRadius(TARGET_SELF) + 0.5 and arg1:GetTargetSARate(TARGET_SELF) <= 0.5 and f35_local2 <= f35_local6 and arg1:GetRemainingAttackCoolTime(3031) == 0 and not arg1:HasSpecialEffectId(TARGET_SELF, 6993) then
            arg2:ClearSubGoal()
            TyrannoRaven456000_Act16(arg1, arg2)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_TyrannoRaven456000_AfterAttackAct, "TyrannoRaven456000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TyrannoRaven456000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


