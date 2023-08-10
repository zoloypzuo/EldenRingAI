RegisterTableGoal(GOAL_GraftKing475000_Battle, "GraftKing475000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GraftKing475000_Battle, true)
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
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3027)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3029)
    arg1:EnableUnfavorableAttackCheck(0, 3039)
    arg1:EnableUnfavorableAttackCheck(0, 3031)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    arg1:EnableUnfavorableAttackCheck(0, 3033)
    arg1:EnableUnfavorableAttackCheck(0, 3034)
    arg1:EnableUnfavorableAttackCheck(0, 3036)
    arg1:EnableUnfavorableAttackCheck(0, 3038)
    arg1:SetStringIndexedNumber("CantMoveErea", 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetEventRequest()
    local f2_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 14750)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14767)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14790)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 14792)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14794)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 14796)
    if not (not arg1:HasSpecialEffectId(TARGET_SELF, 14790) or not arg1:HasSpecialEffectId(TARGET_ENE_0, 14792)) or arg1:HasSpecialEffectId(TARGET_SELF, 14794) and arg1:HasSpecialEffectId(TARGET_ENE_0, 14796) then
        arg1:SetStringIndexedNumber("CantMoveErea", 1)
    else
        arg1:SetStringIndexedNumber("CantMoveErea", 0)
    end
    if arg1:GetStringIndexedNumber("c4750_stormflag") <= 0 then
        arg1:SetTimer(0, 10)
        arg1:SetStringIndexedNumber("c4750_stormflag", 1)
    end
    local f2_local7 = arg1:GetDist(TARGET_ENE_0)
    local f2_local8 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 30)
    local f2_local9 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 30)
    local f2_local10 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 30)
    local f2_local11 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 30)
    arg1:SetStringIndexedNumber("___________", 0)
    arg1:SetStringIndexedNumber("_stormtimer", arg1:GetTimer(0))
    arg1:SetStringIndexedNumber("_eventno", f2_local5)
    arg1:SetStringIndexedNumber("____________", 0)
    if f2_local6 == true then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 30) then
            if f2_local7 >= 18 then
                f2_local0[21] = 50
                f2_local0[22] = 50
            elseif f2_local7 >= 10 then
                f2_local0[5] = 25
                f2_local0[17] = 30
                f2_local0[18] = 30
                f2_local0[21] = 15
            elseif f2_local7 >= 3 then
                f2_local0[2] = 60
                f2_local0[5] = 20
                f2_local0[10] = 20
            else
                f2_local0[2] = 20
                f2_local0[6] = 30
                f2_local0[7] = 20
                f2_local0[16] = 10
                f2_local0[25] = 20
            end
        elseif f2_local7 >= 13 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[5] = 10
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 20
            f2_local0[10] = 0
            f2_local0[16] = 0
            f2_local0[17] = 30
            f2_local0[18] = 20
            f2_local0[19] = 0
            f2_local0[20] = 20
            f2_local0[22] = 0
        elseif f2_local7 >= 7.5 then
            f2_local0[1] = 0
            f2_local0[2] = 10
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 20
            f2_local0[16] = 0
            f2_local0[17] = 30
            f2_local0[18] = 20
            f2_local0[19] = 0
            f2_local0[20] = 20
            f2_local0[22] = 0
        elseif f2_local7 >= 3 then
            f2_local0[1] = 5
            f2_local0[2] = 10
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 10
            f2_local0[9] = 0
            f2_local0[10] = 20
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[18] = 10
            f2_local0[19] = 5
            f2_local0[20] = 30
            f2_local0[22] = 0
            f2_local0[25] = 10
        else
            f2_local0[1] = 15
            f2_local0[2] = 0
            f2_local0[5] = 0
            f2_local0[6] = 10
            f2_local0[7] = 15
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 20
            f2_local0[16] = 15
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[19] = 5
            f2_local0[20] = 5
            f2_local0[25] = 15
        end
        if arg1:IsTargetGuard(TARGET_ENE_0) == true and f2_local7 <= 2 then
            f2_local0[19] = 200
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 30) then
        if f2_local7 >= 18 then
            f2_local0[21] = 50
            f2_local0[22] = 50
        elseif f2_local7 >= 10 then
            f2_local0[5] = 50
            f2_local0[12] = 45
            f2_local0[21] = 25
            f2_local0[22] = 25
        elseif f2_local7 >= 3 then
            f2_local0[2] = 60
            f2_local0[5] = 20
            f2_local0[10] = 20
            f2_local0[12] = 45
        else
            f2_local0[2] = 20
            f2_local0[7] = 20
            f2_local0[10] = 20
            f2_local0[12] = 40
            f2_local0[16] = 10
            f2_local0[25] = 30
        end
    elseif f2_local7 >= 13 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[5] = 30
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 40
        f2_local0[10] = 30
        f2_local0[16] = 0
        f2_local0[22] = 10
    elseif f2_local7 >= 8 then
        f2_local0[1] = 0
        f2_local0[2] = 20
        f2_local0[5] = 30
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 10
        f2_local0[9] = 20
        f2_local0[10] = 30
        f2_local0[12] = 45
        f2_local0[16] = 0
        f2_local0[22] = 10
    elseif f2_local7 >= 3 then
        f2_local0[1] = 25
        f2_local0[2] = 40
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 10
        f2_local0[9] = 0
        f2_local0[10] = 30
        f2_local0[12] = 45
        f2_local0[16] = 20
        f2_local0[22] = 0
        f2_local0[25] = 10
    else
        f2_local0[1] = 20
        f2_local0[2] = 0
        f2_local0[5] = 0
        f2_local0[6] = 20
        f2_local0[7] = 20
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 45
        f2_local0[12] = 45
        f2_local0[16] = 20
        f2_local0[25] = 20
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 18, f2_local0[2], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3023, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3011, 12, f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3028, 15, f2_local0[7], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3025, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3027, 10, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3030, arg1:GetRandam_Int(15, 20), f2_local0[10], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3029, arg1:GetRandam_Int(15, 20), f2_local0[10], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 20006, arg1:GetRandam_Int(15, 20), f2_local0[12], 0)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3031, 15, f2_local0[16], 0)
    f2_local0[16] = SetCoolTime(arg1, arg2, 20005, 15, f2_local0[16], 0)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3039, arg1:GetRandam_Int(12, 15), f2_local0[17], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3013, arg1:GetRandam_Int(10, 15), f2_local0[18], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3017, arg1:GetRandam_Int(10, 15), f2_local0[18], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 20011, arg1:GetRandam_Int(10, 15), f2_local0[18], 0)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3016, 10, f2_local0[19], 0)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3034, 10, f2_local0[19], 0)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3015, arg1:GetRandam_Int(12, 15), f2_local0[20], 0)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6002, 10, f2_local0[25], 0)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6003, 10, f2_local0[25], 0)
    if arg1:IsFinishTimer(0) == false then
        f2_local0[10] = 0
    end
    if arg1:GetHpRate(TARGET_SELF) > 0.9 then
        f2_local0[12] = 0
    end
    if f2_local7 > 7.5 then
        f2_local0[16] = 0
    end
    if arg1:IsFinishTimer(0) == true and arg1:GetStringIndexedNumber("CantMoveErea") == 1 then
        f2_local0[30] = 200
        f2_local0[31] = 200
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act02)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act12)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act25)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act31)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, GraftKing475000_Act47)
    local f2_local12 = REGIST_FUNC(arg1, arg2, GraftKing475000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local12, f2_local2)
    
end

function GraftKing475000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetRandam_Int(1, 100)
    local f3_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 14750)
    local f3_local2 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0.2
    local f3_local3 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0.2 + 1
    local f3_local4 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0.2 + 10
    local f3_local5 = 0
    local f3_local6 = 0
    local f3_local7 = 4
    local f3_local8 = 8
    Approach_Act_Flex(arg0, arg1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8)
    local f3_local9 = 3000
    local f3_local10 = 3001
    local f3_local11 = 3005
    local f3_local12 = 5 + arg0:GetMapHitRadius(TARGET_SELF) + 0.6
    local f3_local13 = ATT3002_DIST_MAX
    local f3_local14 = 2 + arg0:GetMapHitRadius(TARGET_SELF) + 0.8
    local f3_local15 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local16 = 0
    local f3_local17 = 180
    if f3_local1 == true then
        f3_local10 = 3003
        f3_local11 = 3004
        f3_local12 = 8
        f3_local14 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local9, TARGET_ENE_0, f3_local12, f3_local16, f3_local17, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetRandam_Int(1, 100)
    local f4_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 14750)
    local f4_local2 = 5 + arg0:GetMapHitRadius(TARGET_SELF) + 0.6
    local f4_local3 = 5 + arg0:GetMapHitRadius(TARGET_SELF) + 0.6 + 1
    local f4_local4 = 5 + arg0:GetMapHitRadius(TARGET_SELF) + 0.6 + 10
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 4
    local f4_local8 = 8
    Approach_Act_Flex(arg0, arg1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8)
    local f4_local9 = 3021
    local f4_local10 = 3005
    local f4_local11 = 2 + arg0:GetMapHitRadius(TARGET_SELF) + 0.8
    local f4_local12 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local13 = 0
    local f4_local14 = 180
    if f4_local1 == true then
        f4_local9 = 3022
        f4_local10 = 3004
        f4_local11 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local9, TARGET_ENE_0, f4_local11, f4_local13, f4_local14, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f4_local10, TARGET_ENE_0, 5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act03(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetRandam_Int(1, 100)
    local f6_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 14750)
    local f6_local2 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local3 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 1
    local f6_local4 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 10
    local f6_local5 = 100
    local f6_local6 = 0
    local f6_local7 = 4
    local f6_local8 = 8
    if f6_local1 == true then
        f6_local2 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 1
        f6_local3 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 1 + 1
        f6_local4 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 1 + 5
    end
    local f6_local9 = 3023
    local f6_local10 = 3005
    local f6_local11 = 5
    local f6_local12 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local13 = 0
    local f6_local14 = 180
    if f6_local1 == true then
        f6_local9 = 3024
        f6_local10 = 3004
        f6_local11 = 8
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local9, TARGET_ENE_0, f6_local11, f6_local13, f6_local14, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local10, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act05(arg0, arg1, arg2)
    local f7_local0 = 12
    local f7_local1 = 0
    local f7_local2 = 999
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3009
    local f7_local8 = 9 + arg0:GetMapHitRadius(TARGET_SELF) + 0.8
    local f7_local9 = 0
    local f7_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetRandam_Int(1, 100)
    local f8_local1 = 1.5 + arg0:GetMapHitRadius(TARGET_SELF) + 0.8
    local f8_local2 = 1.5 + arg0:GetMapHitRadius(TARGET_SELF) + 0.8 + 1
    local f8_local3 = 1.5 + arg0:GetMapHitRadius(TARGET_SELF) + 0.8 + 10
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 4
    local f8_local7 = 8
    local f8_local8 = 3011
    local f8_local9 = 1.5 + arg0:GetMapHitRadius(TARGET_SELF) + 0.8
    local f8_local10 = 0
    local f8_local11 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act07(arg0, arg1, arg2)
    local f9_local0 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0.3
    local f9_local1 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0.3 + 1
    local f9_local2 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0.3 + 10
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3028
    local f9_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0.3
    local f9_local9 = 0
    local f9_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act08(arg0, arg1, arg2)
    local f10_local0 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 0.3
    local f10_local1 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 0.3 + 1
    local f10_local2 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 0.3 + 10
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3025
    local f10_local8 = ATT3034_DIST_MAX
    local f10_local9 = 0
    local f10_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act09(arg0, arg1, arg2)
    local f11_local0 = 15
    local f11_local1 = 11 + arg0:GetMapHitRadius(TARGET_SELF) + 0.5 + 1
    local f11_local2 = 11 + arg0:GetMapHitRadius(TARGET_SELF) + 0.5 + 10
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 8
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3027
    local f11_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local9 = 0
    local f11_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetRandam_Int(1, 100)
    local f12_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 14750)
    local f12_local2 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f12_local3 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 1
    local f12_local4 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 15
    local f12_local5 = 0
    local f12_local6 = 0
    local f12_local7 = 4
    local f12_local8 = 4
    local f12_local9 = 3030
    local f12_local10 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local11 = 0
    local f12_local12 = 180
    if f12_local1 == true then
        f12_local9 = 3029
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local9, TARGET_ENE_0, 20, f12_local11, f12_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetRandam_Int(1, 100)
    local f13_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 14750)
    local f13_local2 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f13_local3 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 1
    local f13_local4 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 15
    local f13_local5 = 0
    local f13_local6 = 0
    local f13_local7 = 4
    local f13_local8 = 4
    local f13_local9 = 20005
    local f13_local10 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local11 = 0
    local f13_local12 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local9, TARGET_ENE_0, 20, f13_local11, f13_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetRandam_Int(1, 100)
    local f14_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 14750)
    local f14_local2 = 12 + arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f14_local3 = 12 + arg0:GetMapHitRadius(TARGET_SELF) + 3 + 1
    local f14_local4 = 12 + arg0:GetMapHitRadius(TARGET_SELF) + 3 + 15
    local f14_local5 = 0
    local f14_local6 = 0
    local f14_local7 = 4
    local f14_local8 = 4
    local f14_local9 = 20006
    local f14_local10 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local11 = 0
    local f14_local12 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local9, TARGET_ENE_0, 20, f14_local11, f14_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act16(arg0, arg1, arg2)
    local f15_local0 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f15_local1 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 1 + 1
    local f15_local2 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 1 + 10
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 4
    local f15_local6 = 8
    if arg0:GetHpRate(TARGET_SELF) > 0.6 then
        local f15_local7 = 20005
        local f15_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
        local f15_local9 = 0
        local f15_local10 = 180
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    else
        local f15_local7 = 3031
        local f15_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
        local f15_local9 = 0
        local f15_local10 = 180
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act17(arg0, arg1, arg2)
    local f16_local0 = 15
    local f16_local1 = 15 + arg0:GetMapHitRadius(TARGET_SELF) + 3 + 1
    local f16_local2 = 15 + arg0:GetMapHitRadius(TARGET_SELF) + 3 + 10
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 4
    local f16_local6 = 8
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 3039
    local f16_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local9 = 0
    local f16_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local7, TARGET_ENE_0, f16_local8, f16_local9, f16_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act18(arg0, arg1, arg2)
    local f17_local0 = 6.5 + arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f17_local1 = 6.5 + arg0:GetMapHitRadius(TARGET_SELF) + 20 + 1
    local f17_local2 = 6.5 + arg0:GetMapHitRadius(TARGET_SELF) + 20 + 10
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 4
    local f17_local6 = 8
    local f17_local7 = 3017
    local f17_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local9 = 0
    local f17_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local7, TARGET_ENE_0, f17_local8, f17_local9, f17_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act19(arg0, arg1, arg2)
    local f18_local0 = 1.5 + arg0:GetMapHitRadius(TARGET_SELF) + 0.2
    local f18_local1 = 1.5 + arg0:GetMapHitRadius(TARGET_SELF) + 0.2 + 1
    local f18_local2 = 1.5 + arg0:GetMapHitRadius(TARGET_SELF) + 0.2 + 10
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = 4
    local f18_local6 = 8
    local f18_local7 = 3016
    local f18_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local9 = 0
    local f18_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local7, TARGET_ENE_0, f18_local8, f18_local9, f18_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act20(arg0, arg1, arg2)
    local f19_local0 = 9 + arg0:GetMapHitRadius(TARGET_SELF) + 5.5
    local f19_local1 = 9 + arg0:GetMapHitRadius(TARGET_SELF) + 5.5 + 1
    local f19_local2 = 9 + arg0:GetMapHitRadius(TARGET_SELF) + 5.5 + 10
    local f19_local3 = 0
    local f19_local4 = 0
    local f19_local5 = 4
    local f19_local6 = 8
    Approach_Act_Flex(arg0, arg1, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6)
    local f19_local7 = 3015
    local f19_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local9 = 0
    local f19_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local7, TARGET_ENE_0, f19_local8, f19_local9, f19_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_ActCP1(arg0, arg1, arg2)
    local f20_local0 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f20_local1 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 1
    local f20_local2 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 10
    local f20_local3 = 0
    local f20_local4 = 0
    local f20_local5 = 4
    local f20_local6 = 8
    Approach_Act_Flex(arg0, arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local f20_local7 = 30
    local f20_local8 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local9 = 0
    local f20_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local7, TARGET_ENE_0, f20_local8, f20_local9, f20_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_ActCP2(arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Int(1, 100)
    local f21_local1 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f21_local2 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 1
    local f21_local3 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 10
    local f21_local4 = 0
    local f21_local5 = 0
    local f21_local6 = 4
    local f21_local7 = 8
    Approach_Act_Flex(arg0, arg1, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6, f21_local7)
    local f21_local8 = 30
    local f21_local9 = 30
    local f21_local10 = 30
    local f21_local11 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f21_local12 = 3 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f21_local13 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local14 = 0
    local f21_local15 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f21_local8, TARGET_ENE_0, f21_local11, f21_local14, f21_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f21_local9, TARGET_ENE_0, f21_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f21_local10, TARGET_ENE_0, f21_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act22(arg0, arg1, arg2)
    local f23_local0 = arg0:GetDist(TARGET_ENE_0)
    local f23_local1 = 8
    local f23_local2 = 20
    local f23_local3 = 0
    local f23_local4 = arg0:GetRandam_Int(1, 100)
    local f23_local5 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f23_local1, TARGET_ENE_0, true, f23_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act23(arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = 10
    local f24_local2 = 20
    local f24_local3 = 100
    local f24_local4 = arg0:GetRandam_Int(1, 100)
    local f24_local5 = -1
    if f24_local4 <= f24_local3 then
        f24_local5 = 9910
    end
    if f24_local1 <= f24_local0 then
        Approach_Act(arg0, arg1, f24_local1, f24_local2, f24_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f24_local1, TARGET_ENE_0, false, f24_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act24(arg0, arg1, arg2)
    local f25_local0 = 80
    local f25_local1 = arg0:GetRandam_Int(1, 100)
    local f25_local2 = -1
    if f25_local1 <= f25_local0 then
        f25_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f25_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act25(arg0, arg1, arg2)
    local f26_local0 = arg0:GetDist(TARGET_ENE_0)
    local f26_local1 = arg0:GetRandam_Int(6002, 6003)
    local f26_local2 = AI_DIR_TYPE_L
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 30) then
        f26_local1 = 6003
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 30) then
        f26_local1 = 6002
    end
    if f26_local1 == 6003 then
        f26_local2 = AI_DIR_TYPE_R
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f26_local1, TARGET_ENE_0, 0, f26_local2, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act30(arg0, arg1, arg2)
    arg0:SetTimer(0, 15)
    local f27_local0 = arg0:GetRandam_Int(1, 100)
    local f27_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 14750)
    local f27_local2 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f27_local3 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 1 + 1
    local f27_local4 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 1 + 10
    local f27_local5 = 0
    local f27_local6 = 0
    local f27_local7 = 4
    local f27_local8 = 8
    if arg0:GetHpRate(TARGET_SELF) > 0.6 then
        local f27_local9 = 20005
        local f27_local10 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
        local f27_local11 = 0
        local f27_local12 = 180
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f27_local9, TARGET_ENE_0, f27_local10, f27_local11, f27_local12, 0, 0)
    else
        local f27_local9 = 3031
        local f27_local10 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
        local f27_local11 = 0
        local f27_local12 = 180
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f27_local9, TARGET_ENE_0, f27_local10, f27_local11, f27_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act31(arg0, arg1, arg2)
    arg0:SetTimer(0, 15)
    local f28_local0 = arg0:GetRandam_Int(1, 100)
    local f28_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 14750)
    local f28_local2 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f28_local3 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 1
    local f28_local4 = 6 + arg0:GetMapHitRadius(TARGET_SELF) + 0 + 15
    local f28_local5 = 0
    local f28_local6 = 0
    local f28_local7 = 4
    local f28_local8 = 4
    local f28_local9 = 3030
    local f28_local10 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local11 = 0
    local f28_local12 = 180
    if f28_local1 == true then
        f28_local9 = 3029
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f28_local9, TARGET_ENE_0, 20, f28_local11, f28_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_ActCP3(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3039, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftKing475000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_GraftKing475000_AfterAttackAct, 10)
    
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
    local f36_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 14750)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == PLAN_SP_EFFECT_TRUNK_COLLAPSE or arg1:GetSpecialEffectActivateInterruptType(0) == 90 then
            arg2:ClearSubGoal()
            if f36_local0 <= 3 + arg1:GetMapHitRadius(TARGET_SELF) + 0.3 then
                GraftKing475000_Act07(arg1, arg2)
            elseif f36_local0 <= 6 + arg1:GetMapHitRadius(TARGET_SELF) + 0.3 then
                GraftKing475000_Act08(arg1, arg2)
            else
                GraftKing475000_Act05(arg1, arg2)
            end
            return true
        end
        if arg1:GetSpecialEffectActivateInterruptId(5025) then
            arg2:ClearSubGoal()
            if f36_local0 <= 7.5 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, 99, 0, 0, 180)
            elseif f36_local0 <= 11 then
                if f36_local2 < 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, 99, 0, 0, 180)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 30, 90, 90, 180)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3037, TARGET_ENE_0, 30, 90, 90)
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 30, 90, 90, 180)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3037, TARGET_ENE_0, 30, 90, 90)
            end
            return true
        end
        if arg1:GetSpecialEffectActivateInterruptId(5026) then
            arg2:ClearSubGoal()
            if f36_local0 >= 20 or f36_local2 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 30, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3037, TARGET_ENE_0, 30, 0, 0)
            elseif f36_local5 == true then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 99, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3038, TARGET_ENE_0, 99, 0, 0)
                end
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3032, TARGET_ENE_0, 99, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 99, 0, 0)
            end
            return true
        end
        if arg1:GetSpecialEffectActivateInterruptId(5027) then
            arg2:ClearSubGoal()
            if f36_local5 == false then
                if f36_local0 <= 5 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 99, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 5, 0, 0)
                elseif f36_local0 >= 7 and f36_local0 <= 10 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, 99, 0, 0)
                end
            elseif f36_local5 == true then
                if f36_local0 <= 3.5 and f36_local2 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 99, 0, 0)
                elseif 6.5 + arg1:GetMapHitRadius(TARGET_SELF) <= f36_local0 and f36_local2 <= 60 and arg1:GetAttackPassedTime(3017) >= 15 and arg1:GetAttackPassedTime(3013) >= 15 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 6.5 + arg1:GetMapHitRadius(TARGET_SELF) + 20, 0, 0)
                elseif f36_local0 <= 7 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 99, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 8, 0, 0)
                end
            end
            return true
        end
        if arg1:GetSpecialEffectActivateInterruptId(5028) then
            arg2:ClearSubGoal()
            if f36_local0 >= 5 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 99, 0, 0)
            end
            return true
        end
        if arg1:GetSpecialEffectActivateInterruptId(5029) then
            local f36_local6 = arg1:GetDist(TARGET_ENE_0)
            arg2:ClearSubGoal()
            if f36_local6 >= 6 and f36_local6 <= 13 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 99, 0, 0)
            elseif f36_local5 == false then
                if f36_local6 >= 2 and f36_local6 <= 7.5 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 99, 0, 180)
                elseif f36_local6 <= 2 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 99, 0, 180)
                end
            elseif f36_local5 == true then
                if f36_local6 <= 3.5 and f36_local2 < 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 99, 0, 0)
                elseif f36_local6 <= 3.5 and f36_local2 <= 75 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 99, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 99, 0, 0)
                end
            end
            return true
        end
        if arg1:GetSpecialEffectActivateInterruptId(5031) then
            arg2:ClearSubGoal()
            if f36_local0 >= 5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 6.5 + arg1:GetMapHitRadius(TARGET_SELF) + 20) then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 6.5 + arg1:GetMapHitRadius(TARGET_SELF) + 20, 0, 0)
            end
            return true
        end
        if arg1:GetSpecialEffectActivateInterruptId(5032) then
            local f36_local6 = arg1:GetDist(TARGET_ENE_0)
            arg2:ClearSubGoal()
            if f36_local5 == false then
                if f36_local6 <= 7.5 and f36_local6 >= 1.5 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 99, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 99, 0, 0)
                elseif f36_local6 < 1.5 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 99, 0, 0)
                end
            elseif f36_local5 == true then
                if f36_local6 <= 3.5 and f36_local2 < 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 99, 0, 0)
                elseif f36_local6 <= 7.5 and f36_local6 >= 1.5 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 99, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 99, 0, 0)
                elseif f36_local6 < 1.5 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 99, 0, 0)
                end
            end
            return true
        end
        if arg1:GetSpecialEffectActivateInterruptId(5039) then
            local f36_local6 = arg1:GetDist(TARGET_ENE_0)
            arg2:ClearSubGoal()
            if f36_local5 == true and f36_local6 <= 3.5 and f36_local2 < 45 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 99, 0, 0)
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(14767) then
            arg2:ClearSubGoal()
            if f36_local2 <= 50 and f36_local0 >= 5 then
                GraftKing475000_Act05(arg1, arg2)
            elseif f36_local0 >= 5 then
                GraftKing475000_Act09(arg1, arg2)
            else
                GraftKing475000_Act02(arg1, arg2)
            end
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        if f36_local0 >= 5 then
            arg2:ClearSubGoal()
            if f36_local5 == true then
                if f36_local0 <= 30 and f36_local2 <= 50 and arg1:GetAttackPassedTime(3029) >= 15 then
                    GraftKing475000_Act10(arg1, arg2)
                elseif f36_local0 <= 6.5 + arg1:GetMapHitRadius(TARGET_SELF) + 20 and f36_local2 <= 65 and arg1:GetAttackPassedTime(3017) >= 15 then
                    GraftKing475000_Act18(arg1, arg2)
                elseif f36_local0 <= 9 + arg1:GetMapHitRadius(TARGET_SELF) + 5.5 and f36_local2 <= 75 and arg1:GetAttackPassedTime(3015) >= 15 then
                    GraftKing475000_Act20(arg1, arg2)
                elseif f36_local0 <= 15 + arg1:GetMapHitRadius(TARGET_SELF) + 3 and f36_local2 <= 85 and arg1:GetAttackPassedTime(3039) >= 15 then
                    GraftKing475000_Act17(arg1, arg2)
                elseif f36_local0 <= 12 and f36_local2 <= 90 and arg1:GetAttackPassedTime(3009) >= 10 then
                    GraftKing475000_Act05(arg1, arg2)
                else
                    GraftKing475000_Act25(arg1, arg2)
                end
            elseif f36_local0 <= 30 and f36_local2 <= 70 and arg1:GetAttackPassedTime(3030) >= 15 then
                GraftKing475000_Act10(arg1, arg2)
            elseif f36_local0 <= 14.5 and f36_local2 <= 75 then
                GraftKing475000_Act09(arg1, arg2)
            elseif f36_local0 <= 12 and f36_local2 <= 85 then
                GraftKing475000_Act05(arg1, arg2)
            else
                GraftKing475000_Act25(arg1, arg2)
            end
            return true
        elseif f36_local2 <= 50 then
            GraftKing475000_Act10(arg1, arg2)
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        if f36_local2 <= 15 and arg1:GetAttackPassedTime(3031) >= 25 and arg1:GetAttackPassedTime(20005) >= 25 and f36_local0 <= 3 then
            arg2:ClearSubGoal()
            GraftKing475000_Act16(arg1, arg2)
        elseif f36_local2 <= 20 and arg1:GetAttackPassedTime(3029) >= 25 and arg1:GetAttackPassedTime(3030) >= 25 then
            arg2:ClearSubGoal()
            GraftKing475000_Act10(arg1, arg2)
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_GraftKing475000_AfterAttackAct, "GraftKing475000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GraftKing475000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


