RegisterTableGoal(GOAL_SnakeSnail_414000_Battle, "SnakeSnail_414000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeSnail_414000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:GetStringIndexedNumber("firstattack")
    firstattack = arg1:GetRandam_Int(1, 1)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(2000000, 3001)
    arg1:EnableUnfavorableAttackCheck(2000000, 3002)
    arg1:EnableUnfavorableAttackCheck(2000000, 3003)
    arg1:EnableUnfavorableAttackCheck(2000000, 3004)
    arg1:SetNumber(1, 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    if FearOfFire(arg1, arg2, PLAN_SIDEWAYTYPE__NONE) == true and arg1:HasSpecialEffectId(TARGET_SELF, 15093) == false then
        return 
    end
    Init_Pseudo_Global(arg1, arg2)
    arg1:GetStringIndexedNumber("Rolling_Cnt")
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetHpRate(TARGET_ENE_0)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 15041)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 15042)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 15044)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 15050)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 15051)
    local f2_local12 = arg1:HasSpecialEffectId(TARGET_SELF, 15052)
    if arg1:HasSpecialEffectId(TARGET_SELF, 15090) == true then
        if f2_local10 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            f2_local0[7] = 100
        elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if f2_local3 >= 3 then
                f2_local0[14] = 40
                f2_local0[41] = 50
            else
                f2_local0[1] = 5
                f2_local0[14] = 40
                f2_local0[41] = 40
            end
        elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if f2_local3 >= 3 then
                f2_local0[3] = 10
                f2_local0[7] = 15
                f2_local0[14] = 30
                f2_local0[41] = 45
            else
                f2_local0[1] = 10
                f2_local0[14] = 40
                f2_local0[41] = 40
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            f2_local0[42] = 100
        elseif 1 == firstattack then
            f2_local0[1] = 20
            f2_local0[3] = 25
            f2_local0[7] = 5
            f2_local0[14] = 30
            f2_local0[41] = 25
        elseif f2_local3 >= 18 then
            f2_local0[40] = 100
        elseif f2_local3 >= 8 then
            f2_local0[1] = 10
            f2_local0[3] = 35
            f2_local0[41] = 25
        elseif f2_local3 >= 3 then
            f2_local0[1] = 15
            f2_local0[3] = 40
            f2_local0[7] = 20
            f2_local0[41] = 20
        else
            f2_local0[1] = 50
            f2_local0[14] = 20
            f2_local0[41] = 30
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15091) == true then
        if f2_local10 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            f2_local0[8] = 100
        elseif f2_local11 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            f2_local0[11] = 100
        elseif f2_local12 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            f2_local0[5] = 5
        elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if f2_local3 >= 3 then
                f2_local0[14] = 40
                f2_local0[41] = 50
            else
                f2_local0[2] = 5
                f2_local0[14] = 40
                f2_local0[41] = 40
            end
        elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if f2_local3 >= 3 then
                f2_local0[4] = 10
                f2_local0[8] = 15
                f2_local0[5] = 5
                f2_local0[14] = 25
                f2_local0[41] = 30
            else
                f2_local0[2] = 20
                f2_local0[11] = 40
                f2_local0[14] = 40
                f2_local0[41] = 20
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            f2_local0[42] = 100
        elseif f2_local3 >= 18 then
            f2_local0[40] = 100
        elseif f2_local3 >= 8 then
            f2_local0[4] = 10
            f2_local0[5] = 30
            f2_local0[11] = 20
            f2_local0[14] = 15
        elseif f2_local3 >= 3 then
            f2_local0[2] = 20
            f2_local0[4] = 40
            f2_local0[5] = 10
            f2_local0[8] = 35
            f2_local0[11] = 40
        else
            f2_local0[2] = 50
            f2_local0[11] = 40
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15092) == true then
        local f2_local13 = arg1:HasSpecialEffectId(TARGET_SELF, 15008)
        if f2_local7 == true then
            if f2_local8 == false then
                f2_local0[30] = 100
            elseif f2_local9 == true then
                f2_local0[32] = 100
            else
                f2_local0[34] = 100
            end
        elseif f2_local13 == true then
            f2_local0[12] = 100
        elseif 1 == firstattack then
            f2_local0[12] = 100
        elseif 0 == firstattack then
            if f2_local3 >= 6 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                    f2_local0[9] = 30
                    f2_local0[14] = 15
                end
                f2_local0[13] = 40
            else
                f2_local0[13] = 300
                f2_local0[16] = 10
            end
        elseif f2_local5 == 0 then
            f2_local0[14] = 20
        elseif f2_local3 >= 6 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                f2_local0[9] = 30
                f2_local0[14] = 5
            end
            f2_local0[9] = 150
            f2_local0[14] = 130
            f2_local0[13] = 10
            f2_local0[16] = 300
        else
            f2_local0[9] = 10
            f2_local0[13] = 300
            f2_local0[16] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15093) == true then
        if f2_local10 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            f2_local0[10] = 100
        elseif f2_local12 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            f2_local0[6] = 100
        elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if f2_local3 >= 3 then
                f2_local0[10] = 5
                f2_local0[6] = 5
                f2_local0[14] = 20
                f2_local0[41] = 40
                f2_local0[44] = 15
                f2_local0[45] = 15
            else
                f2_local0[14] = 30
                f2_local0[41] = 35
                f2_local0[44] = 10
                f2_local0[45] = 10
                f2_local0[23] = 10
            end
        elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if f2_local3 >= 3 then
                f2_local0[10] = 15
                f2_local0[6] = 15
                f2_local0[14] = 20
                f2_local0[41] = 15
                f2_local0[44] = 15
                f2_local0[45] = 15
            else
                f2_local0[14] = 30
                f2_local0[41] = 35
                f2_local0[44] = 10
                f2_local0[45] = 10
                f2_local0[23] = 10
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            f2_local0[42] = 60
            f2_local0[44] = 20
            f2_local0[45] = 20
        elseif 1 == firstattack then
            f2_local0[6] = 50
            f2_local0[10] = 5
            f2_local0[14] = 30
        elseif f2_local3 >= 18 then
            f2_local0[6] = 60
            f2_local0[40] = 40
        elseif f2_local3 >= 9 then
            f2_local0[6] = 40
        elseif f2_local3 >= 3 then
            f2_local0[6] = 20
            f2_local0[10] = 20
            f2_local0[44] = 10
            f2_local0[45] = 10
            f2_local0[23] = 10
        else
            f2_local0[6] = 15
            f2_local0[14] = 10
            f2_local0[44] = 10
            f2_local0[45] = 10
            f2_local0[23] = 35
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15094) == true then
        if f2_local10 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            f2_local0[26] = 100
        elseif f2_local11 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            f2_local0[25] = 100
        elseif f2_local12 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            f2_local0[27] = 100
        elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if f2_local3 >= 3 then
                f2_local0[14] = 40
                f2_local0[41] = 50
            else
                f2_local1[1] = 5
                f2_local0[14] = 40
                f2_local0[41] = 40
            end
        elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if f2_local3 >= 3 then
                f2_local0[3] = 10
                f2_local0[26] = 15
                f2_local0[27] = 5
                f2_local0[14] = 25
                f2_local0[41] = 30
            else
                f2_local1[1] = 20
                f2_local0[25] = 40
                f2_local0[14] = 40
                f2_local0[41] = 20
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            f2_local0[42] = 100
        elseif f2_local3 >= 18 then
            f2_local0[40] = 100
        elseif f2_local3 >= 8 then
            f2_local0[3] = 10
            f2_local0[27] = 30
            f2_local0[25] = 20
            f2_local0[14] = 15
        elseif f2_local3 >= 3 then
            f2_local1[1] = 20
            f2_local0[3] = 10
            f2_local0[27] = 10
            f2_local0[26] = 35
            f2_local0[25] = 40
        else
            f2_local1[1] = 50
            f2_local0[25] = 40
        end
    end
    if arg1:GetTimer(0) > 0 then
        f2_local0[5] = 0
        f2_local0[14] = 30
        f2_local0[16] = 0
        f2_local0[43] = 0
        f2_local0[44] = 0
        f2_local0[45] = 0
    end
    if arg1:GetTimer(1) > 0 then
        f2_local0[44] = 500
        f2_local0[45] = 500
    end
    if arg1:GetTimer(5) > 0 then
        f2_local0[33] = 0
    end
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 8, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3010, 8, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3005, 8, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3006, 8, f2_local0[11], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3007, 8, f2_local0[14], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 3011, 8, f2_local0[25], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 3012, 8, f2_local0[26], 1)
    f2_local0[27] = SetCoolTime(arg1, arg2, 3013, 8, f2_local0[27], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act27)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act35)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act47)
    local f2_local13 = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local13, f2_local2)
    
end

function SnakeSnail_414000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 2.8
    local f3_local2 = 999
    local f3_local3 = 999
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 5
    local f3_local7 = 5
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 3000
    local f3_local9 = 3008
    local f3_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 0
    local f3_local12 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f3_local8, TARGET_ENE_0, f3_local10, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f3_local9, TARGET_ENE_0, f3_local10, 0, 0, 0, 0)
    if firstattack >= 1 then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 2.8
    local f4_local2 = 999
    local f4_local3 = 999
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 5
    local f4_local7 = 5
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 3001
    local f4_local9 = 3009
    local f4_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local11 = 0
    local f4_local12 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f4_local8, TARGET_ENE_0, f4_local10, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f4_local9, TARGET_ENE_0, f4_local10, 0, 0, 0, 0)
    if firstattack >= 1 then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 5
    local f5_local2 = 999
    local f5_local3 = 999
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 5
    local f5_local7 = 5
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 3002
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local8, TARGET_ENE_0, f5_local9, 0, 0, 0, 0)
    if firstattack >= 1 then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 5
    local f6_local2 = 999
    local f6_local3 = 999
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 5
    local f6_local7 = 5
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 3003
    local f6_local9 = 0
    local f6_local10 = 0
    local f6_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    if firstattack >= 1 then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act05(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 3010
    local f7_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 0
    local f7_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local1, TARGET_ENE_0, f7_local2, 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act06(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 25
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 100
    local f8_local5 = 0
    local f8_local6 = 5
    local f8_local7 = 5
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    Rolling_Cnt = 0
    local f8_local8 = 10
    local f8_local9 = 3003
    local f8_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local11 = 0
    local f8_local12 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local8, f8_local9, TARGET_ENE_0, f8_local10, f8_local11, f8_local12, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act07(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 9
    local f9_local2 = 999
    local f9_local3 = 999
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 5
    local f9_local7 = 5
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    local f9_local8 = 3004
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local8, TARGET_ENE_0, f9_local9, 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act08(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 9
    local f10_local2 = 999
    local f10_local3 = 999
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 5
    local f10_local7 = 5
    Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    local f10_local8 = 3005
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 0
    local f10_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local8, TARGET_ENE_0, f10_local9, 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act09(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 9
    local f11_local2 = 999
    local f11_local3 = 999
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 5
    local f11_local7 = 5
    local f11_local8 = 3000
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local10 = 2
    local f11_local11 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act10(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f12_local0 = 3001
    local f12_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 0
    local f12_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local0, TARGET_ENE_0, f12_local1, 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act11(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f13_local0 = 3006
    local f13_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 0
    local f13_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f13_local0, TARGET_ENE_0, f13_local1, 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act12(arg0, arg1, arg2)
    arg0:SetTimer(2, 300)
    local f14_local0 = 3002
    local f14_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 0
    local f14_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local1, 0, 0, 0, 0)
    if firstattack == 1 then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act13(arg0, arg1, arg2)
    if firstattack == 0 then
        firstattack = 2
    end
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 6
    local f15_local2 = 999
    local f15_local3 = 999
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 5
    local f15_local7 = 5
    Approach_Act_Flex(arg0, arg1, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7)
    local f15_local8 = 3001
    local f15_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local10 = 2
    local f15_local11 = 80
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f15_local8, TARGET_ENE_0, f15_local9, f15_local10, f15_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act14(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    if f16_local0 <= 5 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f16_local1 = 3007
        local f16_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f16_local3 = 0
        local f16_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local1, TARGET_ENE_0, f16_local2, 0, 0, 0, 0)
        if firstattack >= 1 then
            firstattack = 0
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function SnakeSnail_414000_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 13, TARGET_SELF, false, -1)
    if 1 <= firstattack then
        firstattack = 0
    end
    
end

function SnakeSnail_414000_Act16(arg0, arg1, arg2)
    local f18_local0 = arg0:GetRandam_Int(1, 100)
    local f18_local1 = -1
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(3, 4), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f18_local1)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act18(arg0, arg1, arg2)
    local f20_local0 = 5
    local f20_local1 = -1
    local f20_local2 = 1
    local f20_local3 = -1
    local f20_local4 = -1
    local f20_local5 = TARGET_ENE_0
    local f20_local6 = 3
    local f20_local7 = 0
    local f20_local8 = true
    arg0:SetTimer(0, 10)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7, f20_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act19(arg0, arg1, arg2)
    local f21_local0 = 5
    local f21_local1 = -1
    local f21_local2 = -1
    local f21_local3 = 1
    local f21_local4 = -1
    local f21_local5 = TARGET_ENE_0
    local f21_local6 = 3
    local f21_local7 = 0
    local f21_local8 = true
    arg0:SetTimer(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f21_local0, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6, f21_local7, f21_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act20(arg0, arg1, arg2)
    local f22_local0 = 5
    local f22_local1 = -1
    local f22_local2 = -1
    local f22_local3 = -1
    local f22_local4 = 1
    local f22_local5 = TARGET_ENE_0
    local f22_local6 = 3
    local f22_local7 = 0
    local f22_local8 = true
    arg0:SetTimer(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6, f22_local7, f22_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
    if firstattack == 2 then
        firstattack = 3
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act22(arg0, arg1, arg2)
    arg0:SetEnableUsePath(false)
    local f24_local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 12, TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToB, 99)
    f24_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act23(arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = 2.8
    local f25_local2 = 0
    local f25_local3 = 999
    local f25_local4 = 100
    local f25_local5 = 0
    local f25_local6 = 5
    local f25_local7 = 5
    Approach_Act_Flex(arg0, arg1, f25_local1, f25_local2, f25_local3, f25_local4, f25_local5, f25_local6, f25_local7)
    local f25_local8 = 3000
    local f25_local9 = 3008
    local f25_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local11 = 0
    local f25_local12 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f25_local8, TARGET_ENE_0, f25_local10, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f25_local9, TARGET_ENE_0, f25_local10, 0, 0, 0, 0)
    if firstattack >= 1 then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act24(arg0, arg1, arg2)
    local f26_local0 = arg0:GetDist(TARGET_ENE_0)
    local f26_local1 = 4
    local f26_local2 = 0
    local f26_local3 = 999
    local f26_local4 = 100
    local f26_local5 = 0
    local f26_local6 = 5
    local f26_local7 = 5
    Approach_Act_Flex(arg0, arg1, f26_local1, f26_local2, f26_local3, f26_local4, f26_local5, f26_local6, f26_local7)
    local f26_local8 = 3002
    local f26_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local10 = 0
    local f26_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f26_local8, TARGET_ENE_0, f26_local9, 0, 0, 0, 0)
    if firstattack >= 1 then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act25(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f27_local0 = arg0:GetDist(TARGET_ENE_0)
    local f27_local1 = 12
    local f27_local2 = 0
    local f27_local3 = 999
    local f27_local4 = 100
    local f27_local5 = 0
    local f27_local6 = 5
    local f27_local7 = 5
    Approach_Act_Flex(arg0, arg1, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5, f27_local6, f27_local7)
    local f27_local8 = 3011
    local f27_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local10 = 0
    local f27_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f27_local8, TARGET_ENE_0, f27_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act26(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    local f28_local1 = 9
    local f28_local2 = 999
    local f28_local3 = 999
    local f28_local4 = 0
    local f28_local5 = 0
    local f28_local6 = 5
    local f28_local7 = 5
    Approach_Act_Flex(arg0, arg1, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6, f28_local7)
    local f28_local8 = 3012
    local f28_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local10 = 0
    local f28_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f28_local8, TARGET_ENE_0, f28_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act27(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f29_local0 = arg0:GetDist(TARGET_ENE_0)
    local f29_local1 = 3013
    local f29_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f29_local3 = 0
    local f29_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f29_local1, TARGET_ENE_0, f29_local2, 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act30(arg0, arg1, arg2)
    local f30_local0 = arg0:GetDist(TARGET_ENE_0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15046)
    local f30_local1 = arg0:GetDist(TARGET_ENE_0)
    local f30_local2 = arg0:GetRandam_Int(1, 100)
    local f30_local3 = 3010
    local f30_local4 = 90
    local f30_local5 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f30_local6 = 0
    local f30_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f30_local3, TARGET_ENE_0, f30_local4, f30_local6, f30_local7, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act31(arg0, arg1, arg2)
    local f31_local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act32(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15046)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f32_local0 = arg0:GetDist(TARGET_ENE_0)
    local f32_local1 = arg0:GetRandam_Int(1, 100)
    local f32_local2 = 3011
    local f32_local3 = 90
    local f32_local4 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f32_local5 = 0
    local f32_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f32_local2, TARGET_ENE_0, f32_local3, f32_local5, f32_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act33(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15046)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f33_local0 = arg0:GetDist(TARGET_ENE_0)
    local f33_local1 = arg0:GetRandam_Int(1, 100)
    local f33_local2 = 3013
    local f33_local3 = 90
    local f33_local4 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f33_local5 = 0
    local f33_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f33_local2, TARGET_ENE_0, f33_local3, f33_local5, f33_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act34(arg0, arg1, arg2)
    local f34_local0 = arg0:GetRandam_Int(1, 100)
    local f34_local1 = -1
    arg0:SetTimer(0, 5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(100, 120), true, true, f34_local1)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act35(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15046)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f35_local0 = arg0:GetDist(TARGET_ENE_0)
    local f35_local1 = arg0:GetRandam_Int(1, 100)
    local f35_local2 = 20005
    local f35_local3 = 90
    local f35_local4 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f35_local5 = 0
    local f35_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f35_local2, TARGET_ENE_0, f35_local3, f35_local5, f35_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 13, TARGET_SELF, false, -1)
    if 1 <= firstattack then
        firstattack = 0
    end
    
end

function SnakeSnail_414000_Act41(arg0, arg1, arg2)
    local f37_local0 = arg0:GetRandam_Int(1, 100)
    local f37_local1 = -1
    arg0:SetTimer(0, 5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f37_local1)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act43(arg0, arg1, arg2)
    local f39_local0 = 5
    local f39_local1 = -1
    local f39_local2 = 1
    local f39_local3 = -1
    local f39_local4 = -1
    local f39_local5 = TARGET_ENE_0
    local f39_local6 = 3
    local f39_local7 = 0
    local f39_local8 = true
    arg0:SetTimer(0, 10)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f39_local0, f39_local1, f39_local2, f39_local3, f39_local4, f39_local5, f39_local6, f39_local7, f39_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act44(arg0, arg1, arg2)
    local f40_local0 = 5
    local f40_local1 = -1
    local f40_local2 = -1
    local f40_local3 = 1
    local f40_local4 = -1
    local f40_local5 = TARGET_ENE_0
    local f40_local6 = 3
    local f40_local7 = 0
    local f40_local8 = true
    arg0:SetTimer(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f40_local0, f40_local1, f40_local2, f40_local3, f40_local4, f40_local5, f40_local6, f40_local7, f40_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act45(arg0, arg1, arg2)
    local f41_local0 = 5
    local f41_local1 = -1
    local f41_local2 = -1
    local f41_local3 = -1
    local f41_local4 = 1
    local f41_local5 = TARGET_ENE_0
    local f41_local6 = 3
    local f41_local7 = 0
    local f41_local8 = true
    arg0:SetTimer(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f41_local0, f41_local1, f41_local2, f41_local3, f41_local4, f41_local5, f41_local6, f41_local7, f41_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
    if firstattack == 2 then
        firstattack = 3
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_Act47(arg0, arg1, arg2)
    arg0:SetEnableUsePath(false)
    local f43_local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 12, TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToB, 99)
    f43_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SnakeSnail_414000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_SnakeSnail_414000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f47_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f47_local1 = 0
    local f47_local2 = 20
    local f47_local3 = arg1:GetDist(TARGET_ENE_0)
    local f47_local4 = arg1:GetRandam_Int(1, 100)
    local f47_local5 = STEP_CANCELDIST
    local f47_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 15008)
    if f47_local6 == true and arg1:IsInterupt(INTERUPT_Damaged) then
        local f47_local7 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 10) then
            arg2:ClearSubGoal()
            SnakeSnail_414000_Act21(arg1, arg2)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
        arg2:ClearSubGoal()
        Rolling_Cnt = Rolling_Cnt + 1
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
        Rolling_Cnt = Rolling_Cnt + 1
        if Rolling_Cnt >= 12 then
            arg2:ClearSubGoal()
            arg1:SetTimer(1, 5)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and f47_local3 > 2 then
            arg2:ClearSubGoal()
            arg1:SetTimer(1, 5)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(15046) then
        arg1:SetTimer(5, 15)
    end
    return false
    
end

RegisterTableGoal(GOAL_SnakeSnail_414000_AfterAttackAct, "SnakeSnail_414000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeSnail_414000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


