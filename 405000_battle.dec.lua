RegisterTableGoal(GOAL_WarKingWarrior405000_Battle, "WarKingWarrior405000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WarKingWarrior405000_Battle, true)
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
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(3000000, 3000)
    arg1:EnableUnfavorableAttackCheck(3000000, 3001)
    arg1:EnableUnfavorableAttackCheck(3000000, 3002)
    arg1:EnableUnfavorableAttackCheck(3000000, 3003)
    arg1:EnableUnfavorableAttackCheck(3000000, 3004)
    arg1:EnableUnfavorableAttackCheck(3000000, 3005)
    arg1:EnableUnfavorableAttackCheck(3000000, 3006)
    arg1:EnableUnfavorableAttackCheck(3000000, 3007)
    arg1:EnableUnfavorableAttackCheck(3000000, 3008)
    arg1:EnableUnfavorableAttackCheck(3000000, 3009)
    arg1:EnableUnfavorableAttackCheck(3000000, 3010)
    arg1:EnableUnfavorableAttackCheck(3000000, 3011)
    arg1:EnableUnfavorableAttackCheck(3000000, 3015)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 79)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = 0
    local f2_local7 = 1
    if not (arg1:GetHpRate(TARGET_SELF) > 0.6 or arg1:HasSpecialEffectId(TARGET_SELF, 12800) ~= false) or arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        f2_local6 = 1000
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 12820) == true then
        f2_local7 = 100
    end
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku and arg1:IsRiding(TARGET_SELF) == false and arg1:IsRiding(TARGET_ENE_0) == false and arg1:HasSpecialEffectId(TARGET_SELF, 12800) == false then
        if f2_local3 >= 6 then
            f2_local0[18] = 100
        else
            f2_local0[14] = 100
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki and arg1:IsRiding(TARGET_SELF) == false and arg1:IsRiding(TARGET_ENE_0) == false and arg1:HasSpecialEffectId(TARGET_SELF, 12800) == false then
        if f2_local3 >= 6 then
            f2_local0[18] = 100
        else
            f2_local0[2] = 10
            f2_local0[6] = 10
            f2_local0[9] = 10
            f2_local0[14] = 70
        end
    elseif arg1:IsRiding(TARGET_SELF) == true then
        if f2_local3 >= 13 then
            if InsideRange(arg1, arg2, 180, 150, -1, 99) then
                f2_local0[17] = 100
            else
                f2_local0[24] = 1
                f2_local0[25] = 1
                f2_local0[26] = 1
                f2_local0[29] = 1
                f2_local0[30] = 1
                f2_local0[32] = 95
            end
        elseif f2_local3 >= 8 then
            if InsideRange(arg1, arg2, 180, 90, -1, 99) then
                f2_local0[17] = 30
                f2_local0[35] = 70
            elseif InsideRange(arg1, arg2, 0, 120, -1, 99) then
                f2_local0[24] = 5
                f2_local0[25] = 5
                f2_local0[26] = 20
                f2_local0[29] = 20
                f2_local0[30] = 50
            elseif InsideRange(arg1, arg2, 90, 120, -1, 99) then
                f2_local0[25] = 20
                f2_local0[29] = 80
            else
                f2_local0[24] = 20
                f2_local0[29] = 80
            end
        elseif f2_local3 >= 5 then
            if InsideRange(arg1, arg2, 180, 90, -1, 99) then
                f2_local0[17] = 100
            elseif InsideRange(arg1, arg2, 0, 120, -1, 99) then
                f2_local0[24] = 10
                f2_local0[25] = 10
                f2_local0[26] = 50
                f2_local0[30] = 30
            elseif InsideRange(arg1, arg2, 90, 120, -1, 99) then
                f2_local0[25] = 100
            else
                f2_local0[24] = 100
            end
        elseif f2_local3 >= 1.5 then
            if InsideRange(arg1, arg2, 0, 120, -1, 99) then
                f2_local0[20] = 45
                f2_local0[21] = 45
                f2_local0[26] = 10
            elseif InsideRange(arg1, arg2, 90, 90, -1, 99) then
                f2_local0[21] = 90
                f2_local0[26] = 10
            elseif InsideRange(arg1, arg2, 270, 90, -1, 99) then
                f2_local0[20] = 100
            else
                f2_local0[35] = 100
            end
        elseif InsideRange(arg1, arg2, 180, 90, -1, 99) then
            f2_local0[22] = 5
            f2_local0[23] = 5
            f2_local0[31] = 90
        elseif InsideRange(arg1, arg2, 0, 90, -1, 99) then
            f2_local0[22] = 60
            f2_local0[23] = 40
        elseif InsideRange(arg1, arg2, 90, 90, -1, 99) then
            f2_local0[21] = 80
            f2_local0[22] = 10
            f2_local0[23] = 10
        else
            f2_local0[20] = 80
            f2_local0[23] = 20
        end
    elseif arg1:IsRiding(TARGET_ENE_0) == true then
        if f2_local3 >= 6 then
            f2_local0[4] = 50
            f2_local0[7] = f2_local6
            f2_local0[10] = 50
            f2_local0[16] = 0
        elseif f2_local3 >= 3 then
            if InsideRange(arg1, arg2, 0, 120, 0, 99) then
                f2_local0[1] = 5
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 50 * f2_local7
                f2_local0[7] = f2_local6
                f2_local0[10] = 15
            elseif InsideRange(arg1, arg2, 0, 270, 0, 99) then
                f2_local0[2] = 10
                f2_local0[4] = 15
                f2_local0[5] = 50 * f2_local7
                f2_local0[6] = 10
                f2_local0[7] = f2_local6
                f2_local0[10] = 15
            else
                f2_local0[2] = 50
                f2_local0[6] = 40
                f2_local0[17] = 10
            end
        elseif InsideRange(arg1, arg2, 0, 120, 0, 99) then
            f2_local0[1] = 10
            f2_local0[3] = 20
            f2_local0[5] = 60 * f2_local7
            f2_local0[7] = f2_local6
            f2_local0[8] = 20
        elseif InsideRange(arg1, arg2, 0, 270, 0, 99) then
            f2_local0[2] = 15
            f2_local0[5] = 60 * f2_local7
            f2_local0[6] = 15
            f2_local0[7] = f2_local6
            f2_local0[8] = 10
        else
            f2_local0[2] = 50
            f2_local0[6] = 40
            f2_local0[17] = 10
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 79) == true then
        f2_local0[11] = 100
    elseif f2_local3 >= 6 then
        if arg1:GetHpRate(TARGET_SELF) < 1 then
            f2_local0[3] = 40
            f2_local0[4] = 40
            f2_local0[7] = f2_local6
            f2_local0[10] = 20
        else
            f2_local0[4] = 60
            f2_local0[7] = f2_local6
            f2_local0[10] = 40
        end
    elseif f2_local3 >= 3 then
        if InsideRange(arg1, arg2, 0, 120, 0, 99) then
            f2_local0[1] = 30
            f2_local0[3] = 10
            f2_local0[5] = 50 * f2_local7
            f2_local0[7] = f2_local6
            f2_local0[9] = 10
        elseif InsideRange(arg1, arg2, 0, 270, 0, 99) then
            f2_local0[2] = 30
            f2_local0[5] = 20 * f2_local7
            f2_local0[6] = 20
            f2_local0[7] = f2_local6
            f2_local0[9] = 30
        else
            f2_local0[2] = 50
            f2_local0[6] = 40
            f2_local0[17] = 10
        end
    elseif InsideRange(arg1, arg2, 0, 120, 0, 99) then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[5] = 20 * f2_local7
        f2_local0[6] = 20
        f2_local0[7] = f2_local6
        f2_local0[8] = 15
        f2_local0[9] = 15
    elseif InsideRange(arg1, arg2, 0, 270, 0, 99) then
        f2_local0[2] = 30
        f2_local0[5] = 10 * f2_local7
        f2_local0[6] = 20
        f2_local0[7] = f2_local6
        f2_local0[8] = 20
        f2_local0[9] = 20
    else
        f2_local0[2] = 50
        f2_local0[6] = 40
        f2_local0[17] = 10
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 5, f2_local0[4], 1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 12820) == false then
        f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[5], 1)
    end
    f2_local0[6] = SetCoolTime(arg1, arg2, 3008, 5, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3009, 25, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3014, 5, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3022, 5, f2_local0[10], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[20], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[21], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[22], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[23], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[26], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3011, 5, f2_local0[31], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act11)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act26)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act36)
    f2_local1[50] = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_Act50)
    local f2_local8 = REGIST_FUNC(arg1, arg2, WarKingWarrior405000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function WarKingWarrior405000_Act01(arg0, arg1, arg2)
    local f3_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 0
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 4
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act02(arg0, arg1, arg2)
    local f4_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 0
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 4
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3002
    local f4_local8 = 3003
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 0
    local f4_local11 = 0
    local f4_local12 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act03(arg0, arg1, arg2)
    local f5_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 0
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 4
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3004
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act04(arg0, arg1, arg2)
    local f6_local0 = 8.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 0
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 4
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3005
    local f6_local8 = 3010
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 0
    local f6_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act05(arg0, arg1, arg2)
    local f7_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 0
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 4
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3006
    local f7_local8 = 3007
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f7_local10 = 0
    local f7_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act06(arg0, arg1, arg2)
    local f8_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 0
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 4
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3008
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act07(arg0, arg1, arg2)
    local f9_local0 = 3009
    local f9_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 0
    local f9_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act08(arg0, arg1, arg2)
    local f10_local0 = 3012
    local f10_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f10_local2 = 0
    local f10_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local1, f10_local2, f10_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act09(arg0, arg1, arg2)
    local f11_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 0
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 2
    local f11_local6 = 4
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3011
    local f11_local8 = 3007
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f11_local10 = 0
    local f11_local11 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act10(arg0, arg1, arg2)
    local f12_local0 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 0
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 4
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3014
    local f12_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 0
    local f12_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if arg0:HasSpecialEffectId(TARGET_SELF, 12800) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act11(arg0, arg1, arg2)
    local f13_local0 = 1.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 0
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 0.1
    local f13_local6 = 0.1
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3110
    local f13_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 0
    local f13_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 0.5, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act14(arg0, arg1, arg2)
    local f14_local0 = 0
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    local f14_local2 = -1
    if f14_local1 <= f14_local0 then
        f14_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f14_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act15(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 10
    local f15_local2 = 12
    local f15_local3 = 80
    local f15_local4 = arg0:GetRandam_Int(1, 100)
    local f15_local5 = -1
    if f15_local4 <= f15_local3 then
        f15_local5 = 9910
    end
    if f15_local1 <= f15_local0 then
        Approach_Act(arg0, arg1, f15_local1, f15_local2, f15_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, f15_local1, TARGET_ENE_0, true, f15_local5)
    
end

function WarKingWarrior405000_Act16(arg0, arg1, arg2)
    local f16_local0 = 100
    local f16_local1 = arg0:GetRandam_Int(1, 100)
    local f16_local2 = -1
    if f16_local1 <= f16_local0 then
        f16_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f16_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, -1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act18(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = arg0:GetRandam_Float(2, 4)
    local f18_local2 = arg0:GetRandam_Float(4, 5.5)
    local f18_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f18_local1, TARGET_ENE_0, f18_local2, TARGET_SELF, true, f18_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act20(arg0, arg1, arg2)
    local f19_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = f19_local0 + 0
    local f19_local2 = f19_local0 + 0
    local f19_local3 = 0
    local f19_local4 = 0
    local f19_local5 = 2
    local f19_local6 = 4
    Approach_Act_Flex(arg0, arg1, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6)
    local f19_local7 = 3000
    local f19_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local9 = 0
    local f19_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f19_local7, TARGET_ENE_0, f19_local8, f19_local9, f19_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act21(arg0, arg1, arg2)
    local f20_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = f20_local0 + 0
    local f20_local2 = f20_local0 + 0
    local f20_local3 = 100
    local f20_local4 = 0
    local f20_local5 = 2
    local f20_local6 = 4
    Approach_Act_Flex(arg0, arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local f20_local7 = 3001
    local f20_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local9 = 0
    local f20_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f20_local7, TARGET_ENE_0, f20_local8, f20_local9, f20_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act22(arg0, arg1, arg2)
    local f21_local0 = 3002
    local f21_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f21_local2 = 0
    local f21_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f21_local0, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act23(arg0, arg1, arg2)
    local f22_local0 = 3003
    local f22_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f22_local2 = 0
    local f22_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f22_local0, TARGET_ENE_0, f22_local1, f22_local2, f22_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act24(arg0, arg1, arg2)
    local f23_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local1 = f23_local0 + 0
    local f23_local2 = f23_local0 + 0
    local f23_local3 = 100
    local f23_local4 = 0
    local f23_local5 = 1
    local f23_local6 = 2
    Approach_Act_Flex(arg0, arg1, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6)
    local f23_local7 = 3004
    local f23_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f23_local9 = 0
    local f23_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f23_local7, TARGET_ENE_0, f23_local8, f23_local9, f23_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act25(arg0, arg1, arg2)
    local f24_local0 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local1 = f24_local0 + 0
    local f24_local2 = f24_local0 + 0
    local f24_local3 = 100
    local f24_local4 = 0
    local f24_local5 = 1
    local f24_local6 = 2
    Approach_Act_Flex(arg0, arg1, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6)
    local f24_local7 = 3005
    local f24_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f24_local9 = 0
    local f24_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f24_local7, TARGET_ENE_0, f24_local8, f24_local9, f24_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act26(arg0, arg1, arg2)
    local f25_local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local1 = f25_local0 + 0
    local f25_local2 = f25_local0 + 0
    local f25_local3 = 100
    local f25_local4 = 0
    local f25_local5 = 2
    local f25_local6 = 4
    Approach_Act_Flex(arg0, arg1, f25_local0, f25_local1, f25_local2, f25_local3, f25_local4, f25_local5, f25_local6)
    local f25_local7 = 3006
    local f25_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local9 = 0
    local f25_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f25_local7, TARGET_ENE_0, f25_local8, f25_local9, f25_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act27(arg0, arg1, arg2)
    local f26_local0 = ATT3003007_DIST_MAX
    local f26_local1 = f26_local0 + 0
    local f26_local2 = f26_local0 + 0
    local f26_local3 = 100
    local f26_local4 = 0
    local f26_local5 = 2
    local f26_local6 = 4
    Approach_Act_Flex(arg0, arg1, f26_local0, f26_local1, f26_local2, f26_local3, f26_local4, f26_local5, f26_local6)
    local f26_local7 = 3007
    local f26_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f26_local9 = 0
    local f26_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f26_local7, TARGET_ENE_0, f26_local8, f26_local9, f26_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3012, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act28(arg0, arg1, arg2)
    local f27_local0 = ATT3003008_DIST_MAX
    local f27_local1 = f27_local0 + 0
    local f27_local2 = f27_local0 + 0
    local f27_local3 = 100
    local f27_local4 = 0
    local f27_local5 = 2
    local f27_local6 = 4
    Approach_Act_Flex(arg0, arg1, f27_local0, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5, f27_local6)
    local f27_local7 = 3008
    local f27_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f27_local9 = 0
    local f27_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f27_local7, TARGET_ENE_0, f27_local8, f27_local9, f27_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3012, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act29(arg0, arg1, arg2)
    local f28_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local1 = f28_local0 + 0
    local f28_local2 = f28_local0 + 0
    local f28_local3 = 100
    local f28_local4 = 0
    local f28_local5 = 2
    local f28_local6 = 4
    Approach_Act_Flex(arg0, arg1, f28_local0, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6)
    local f28_local7 = 3009
    local f28_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f28_local9 = 0
    local f28_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f28_local7, TARGET_ENE_0, f28_local8, f28_local9, f28_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act30(arg0, arg1, arg2)
    local f29_local0 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f29_local1 = f29_local0 + 0
    local f29_local2 = f29_local0 + 0
    local f29_local3 = 100
    local f29_local4 = 0
    local f29_local5 = 2
    local f29_local6 = 4
    Approach_Act_Flex(arg0, arg1, f29_local0, f29_local1, f29_local2, f29_local3, f29_local4, f29_local5, f29_local6)
    local f29_local7 = 3010
    local f29_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f29_local9 = 0
    local f29_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f29_local7, TARGET_ENE_0, f29_local8, f29_local9, f29_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act31(arg0, arg1, arg2)
    local f30_local0 = 3011
    local f30_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f30_local2 = 0
    local f30_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f30_local0, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act32(arg0, arg1, arg2)
    local f31_local0 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f31_local1 = f31_local0 + 0
    local f31_local2 = f31_local0 + 0
    local f31_local3 = 100
    local f31_local4 = 0
    local f31_local5 = 2
    local f31_local6 = 4
    Approach_Act_Flex(arg0, arg1, f31_local0, f31_local1, f31_local2, f31_local3, f31_local4, f31_local5, f31_local6)
    local f31_local7 = 3015
    local f31_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f31_local9 = 0
    local f31_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f31_local7, TARGET_ENE_0, f31_local8, f31_local9, f31_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act33(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act34(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 15, TARGET_SELF, false, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act35(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_Act36(arg0, arg1, arg2)
    if InsideRange(arg0, arg1, 0, 360, 10, 99) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
    elseif InsideRange(arg0, arg1, 180, 130, 4, 10) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 2, TARGET_SELF, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_ToF, 2)
    elseif InsideRange(arg0, arg1, 180, 130, 0, 3) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3011, TARGET_ENE_0, 7, 0, 0, 0, 0)
    elseif InsideRange(arg0, arg1, 0, 130, 3, 99) then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 1, 3012, TARGET_ENE_0, 1)
    elseif InsideRange(arg0, arg1, 0, 160, 0, 99) then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 1, 3015, TARGET_ENE_0, 1)
    elseif InsideRange(arg0, arg1, 0, 240, 0, 99) and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 2, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, 2)
    elseif InsideRange(arg0, arg1, 0, 240, 0, 99) and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 2, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 2)
    end
    
end

function WarKingWarrior405000_Act50(arg0, arg1, arg2)
    if arg0:IsRiding(TARGET_SELF) == false then
        if arg0:ReserveRide(100) == true then
            arg1:AddSubGoal(GOAL_COMMON_Mount, 0.1, 1.2)
        end
    else
        local f36_local0 = 3003
        local f36_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
        local f36_local2 = 0
        local f36_local3 = 0
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f36_local0, TARGET_ENE_0, f36_local1, f36_local2, f36_local3, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WarKingWarrior405000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_WarKingWarrior405000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f40_local0 = arg1:GetDist(TARGET_ENE_0)
    local f40_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f40_local2 = arg1:GetRandam_Int(1, 100)
    local f40_local3 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsRiding(TARGET_SELF) == true then
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(79) then
            arg2:ClearSubGoal()
            if InsideRange(arg1, arg2, 180, 170, -1, 99) then
                if f40_local2 >= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 9, TARGET_SELF, false, 0)
                    arg2:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, -1, 0, 0)
                    WarKingWarrior405000_Act29(arg1, arg2)
                else
                    arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 13, TARGET_SELF, false, 0)
                    arg2:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, -1, 0, 0)
                    WarKingWarrior405000_Act32(arg1, arg2)
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2, TARGET_SELF, false, -1)
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3003, TARGET_ENE_0, DIST_None, 0, 0)
            end
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) and arg1:HasSpecialEffectId(TARGET_ENE_0, 90) then
            arg2:ClearSubGoal()
            if InsideRange(arg1, arg2, 180, 170, 0, 99) then
                if f40_local2 >= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 9, TARGET_SELF, false, 0)
                    arg2:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, -1, 0, 0)
                    WarKingWarrior405000_Act29(arg1, arg2)
                else
                    arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 13, TARGET_SELF, false, 0)
                    arg2:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, -1, 0, 0)
                    WarKingWarrior405000_Act32(arg1, arg2)
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2, TARGET_SELF, false, -1)
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3003, TARGET_ENE_0, DIST_None, 0, 0)
            end
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5034) and f40_local2 <= 60 and InsideRange(arg1, arg2, 180, 150, 0, 1.5) then
            arg2:ClearSubGoal()
            WarKingWarrior405000_Act31(arg1, arg2)
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5033) and f40_local2 <= 60 and InsideRange(arg1, arg2, 180, 240, 0, 99) then
            arg2:ClearSubGoal()
            WarKingWarrior405000_Act35(arg1, arg2)
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5037) then
            arg2:ClearSubGoal()
            return true
        end
    else
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(6992) then
            arg2:ClearSubGoal()
            WarKingWarrior405000_Act09(arg1, arg2)
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(79) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 4) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3001, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5035) and arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 130, 2.5) then
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 12800) then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 2, 3020, TARGET_ENE_0, 999, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 2, 3003, TARGET_ENE_0, 999, 0, 0)
            end
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 90, 5) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3013, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5038) and arg1:HasSpecialEffectId(TARGET_SELF, 12800) == true and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 90, 7) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) and arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 6) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) and arg1:HasSpecialEffectId(TARGET_ENE_0, 79) == false and arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == false and arg1:HasSpecialEffectId(TARGET_ENE_0, 6992) == false and arg1:HasSpecialEffectId(TARGET_SELF, 12800) == true then
            arg2:ClearSubGoal()
            if arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 5) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12800) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                end
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5032) then
            arg2:ClearSubGoal()
            if f40_local0 >= 5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, 180, 9) then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
                if arg1:HasSpecialEffectId(TARGET_SELF, 12800) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                end
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:HasSpecialEffectId(TARGET_SELF, 12800) == true and arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 4.5) then
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 12800) then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3021, TARGET_ENE_0, 999, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3010, TARGET_ENE_0, 999, 0, 0)
            end
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) and arg1:HasSpecialEffectId(TARGET_SELF, 12800) == true and arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 4.5) then
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 12800) then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3021, TARGET_ENE_0, 999, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3010, TARGET_ENE_0, 999, 0, 0)
            end
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12800) then
                f40_local2 = 100
            else
                f40_local2 = 0
            end
            if arg1:GetSpecialEffectActivateInterruptId(5036) and f40_local2 >= 40 and arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 300, 9) and f40_local0 >= 5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3005, TARGET_ENE_0, 999, 0, 0)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_Damaged) then
            if arg1:IsRiding(TARGET_ENE_0) == true then

            else
                if arg1:GetNumber(0) >= 2 then
                    arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                    f40_local2 = 100
                elseif arg1:GetNumber(0) >= 1 then
                    arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                    f40_local2 = f40_local2 + 10
                else
                    arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                    f40_local2 = f40_local2 + 5
                end
                if f40_local2 >= 60 and InsideRange(arg1, arg2, 0, 120, 0, 2.5) and arg1:GetTimer(0) <= 0 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
                    arg1:SetNumber(0, 0)
                    arg1:SetTimer(0, 7)
                    return true
                elseif f40_local2 >= 60 and InsideRange(arg1, arg2, 0, 150, 0, 5) and arg1:GetTimer(1) <= 0 then
                    arg2:ClearSubGoal()
                    WarKingWarrior405000_Act03(arg1, arg2)
                    arg1:SetNumber(0, 0)
                    arg1:SetTimer(1, 20)
                    return true
                elseif f40_local2 >= 60 and InsideRange(arg1, arg2, 0, 180, 0, 9) and f40_local0 >= 5 and arg1:GetTimer(2) <= 0 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    if arg1:HasSpecialEffectId(TARGET_SELF, 12800) then
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    end
                    arg1:SetNumber(0, 0)
                    arg1:SetTimer(2, 10)
                    return true
                elseif f40_local2 >= 40 and InsideRange(arg1, arg2, 0, 260, 0, 2.7) and f40_local0 >= 1.3 and arg1:GetTimer(3) <= 0 then
                    arg2:ClearSubGoal()
                    WarKingWarrior405000_Act08(arg1, arg2)
                    arg1:SetNumber(0, 0)
                    arg1:SetTimer(3, 10)
                    return true
                else

                end
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_WarKingWarrior405000_AfterAttackAct, "WarKingWarrior405000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WarKingWarrior405000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


