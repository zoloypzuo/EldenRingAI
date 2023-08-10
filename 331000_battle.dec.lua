RegisterTableGoal(GOAL_MarikaLineageWomanSword331000_Battle, "MarikaLineageWomanSword331000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MarikaLineageWomanSword331000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(1, 3000)
    arg1:EnableUnfavorableAttackCheck(1, 3001)
    arg1:EnableUnfavorableAttackCheck(1, 3002)
    arg1:EnableUnfavorableAttackCheck(1, 3003)
    arg1:EnableUnfavorableAttackCheck(1, 3004)
    arg1:EnableUnfavorableAttackCheck(1, 3010)
    arg1:EnableUnfavorableAttackCheck(1, 3011)
    arg1:EnableUnfavorableAttackCheck(1, 3012)
    arg1:EnableUnfavorableAttackCheck(1, 3013)
    arg1:EnableUnfavorableAttackCheck(1, 3014)
    arg1:EnableUnfavorableAttackCheck(1, 3015)
    arg1:EnableUnfavorableAttackCheck(1, 3016)
    arg1:EnableUnfavorableAttackCheck(1, 3020)
    arg1:EnableUnfavorableAttackCheck(1, 3021)
    arg1:EnableUnfavorableAttackCheck(1, 3022)
    arg1:EnableUnfavorableAttackCheck(4, 3000)
    arg1:EnableUnfavorableAttackCheck(4, 3001)
    arg1:EnableUnfavorableAttackCheck(4, 3010)
    arg1:EnableUnfavorableAttackCheck(4, 3011)
    arg1:EnableUnfavorableAttackCheck(4, 3012)
    arg1:EnableUnfavorableAttackCheck(4, 3013)
    arg1:EnableUnfavorableAttackCheck(4, 3014)
    arg1:EnableUnfavorableAttackCheck(4, 3015)
    arg1:EnableUnfavorableAttackCheck(4, 3029)
    arg1:EnableUnfavorableAttackCheck(4, 3020)
    arg1:EnableUnfavorableAttackCheck(4, 3031)
    arg1:EnableUnfavorableAttackCheck(4, 3033)
    arg1:EnableUnfavorableAttackCheck(4, 3036)
    arg1:EnableUnfavorableAttackCheck(4, 3037)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    if arg1:IsRiding(TARGET_SELF) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 79)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 83)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetHpRate(TARGET_SELF)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:IsRiding(TARGET_SELF) == false then
        if not (f2_local6 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku) or f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            f2_local0[4] = 20
            f2_local0[31] = 80
        elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 79) == true then
            f2_local0[37] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            f2_local0[35] = 100
        elseif f2_local3 >= 15 then
            f2_local0[30] = 100
        elseif f2_local3 >= 7 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[5] = 30
            f2_local0[6] = 10
            f2_local0[7] = 20
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[30] = 0
            f2_local0[31] = 20
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 0
        elseif f2_local3 >= 2.7 then
            f2_local0[1] = 20
            f2_local0[2] = 0
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 20
            f2_local0[8] = 0
            f2_local0[9] = 10
            f2_local0[10] = 0
            f2_local0[19] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 30
            f2_local0[35] = 0
        else
            f2_local0[1] = 40
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 20
            f2_local0[10] = 10
            f2_local0[19] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 20
            f2_local0[35] = 0
        end
    elseif arg1:IsRiding(TARGET_SELF) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 50) then
            if f2_local3 >= 15 then
                f2_local0[30] = 100
            elseif f2_local3 >= 8 then
                f2_local0[11] = 20
                f2_local0[12] = 10
                f2_local0[17] = 30
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 0
            elseif f2_local3 >= 3 then
                f2_local0[11] = 10
                f2_local0[12] = 20
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[17] = 20
                f2_local0[18] = 10
                f2_local0[19] = 10
                f2_local0[20] = 0
                f2_local0[21] = 20
                f2_local0[22] = 20
            else
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[15] = 10
                f2_local0[16] = 10
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 15
                f2_local0[21] = 30
                f2_local0[22] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 50) then
            if f2_local3 >= 15 then
                f2_local0[35] = 100
            elseif f2_local3 >= 5 then
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[36] = 100
            else
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 40
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 40
                f2_local0[36] = 60
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 50) then
            if f2_local3 >= 15 then
                f2_local0[30] = 100
            elseif f2_local3 >= 5 then
                f2_local0[11] = 20
                f2_local0[12] = 10
                f2_local0[13] = 0
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[24] = 30
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[36] = 10
            elseif f2_local3 >= 2 then
                f2_local0[11] = 0
                f2_local0[12] = 10
                f2_local0[13] = 20
                f2_local0[17] = 0
                f2_local0[18] = 40
                f2_local0[19] = 20
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 10
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[36] = 30
            else
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 50
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 10
                f2_local0[19] = 10
                f2_local0[20] = 25
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[24] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 10
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 50) then
            if f2_local3 >= 15 then
                f2_local0[30] = 100
            elseif f2_local3 >= 6 then
                f2_local0[11] = 20
                f2_local0[12] = 0
                f2_local0[14] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 30
            elseif f2_local3 >= 3 then
                f2_local0[11] = 0
                f2_local0[12] = 20
                f2_local0[14] = 40
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 20
            else
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[14] = 40
                f2_local0[15] = 10
                f2_local0[16] = 10
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 30
            end
        end
    end
    f2_local0[5] = SetCoolTime(arg1, arg2, 3020, 10, f2_local0[6], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3021, 10, f2_local0[6], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3021, 10, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3015, 4, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3021, 10, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3020, 10, f2_local0[14], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3020, 10, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3036, 7, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3029, 7, f2_local0[19], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3030, 7, f2_local0[20], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3031, 7, f2_local0[21], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3033, 7, f2_local0[22], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[32], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[32], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act6)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act7)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act8)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act9)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act24)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act36)
    f2_local1[37] = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_Act37)
    local f2_local7 = REGIST_FUNC(arg1, arg2, MarikaLineageWomanSword331000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function MarikaLineageWomanSword331000_Act1(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 3.3
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 80
    local f3_local5 = 0
    local f3_local6 = 2
    local f3_local7 = 2
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f3_local8 = 3
    local f3_local9 = 3000
    local f3_local10 = 3001
    local f3_local11 = TARGET_ENE_0
    local f3_local12 = 10
    local f3_local13 = 0
    local f3_local14 = 0
    local f3_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local8, f3_local9, f3_local11, f3_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act2(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 3
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 80
    local f4_local5 = 0
    local f4_local6 = 2
    local f4_local7 = 2
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f4_local8 = 3
    local f4_local9 = 3001
    local f4_local10 = 3001
    local f4_local11 = TARGET_ENE_0
    local f4_local12 = 10
    local f4_local13 = 0
    local f4_local14 = 0
    local f4_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local8, f4_local9, f4_local11, f4_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act3(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 5.5
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 80
    local f5_local5 = 0
    local f5_local6 = 2
    local f5_local7 = 2
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f5_local8 = 3
    local f5_local9 = 3002
    local f5_local10 = 3001
    local f5_local11 = TARGET_ENE_0
    local f5_local12 = 10
    local f5_local13 = 0
    local f5_local14 = 0
    local f5_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local8, f5_local9, f5_local11, f5_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act4(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 7.5
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 3
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f6_local8 = 5
    local f6_local9 = 3003
    local f6_local10 = 3001
    local f6_local11 = TARGET_ENE_0
    local f6_local12 = 10
    local f6_local13 = 0
    local f6_local14 = 0
    local f6_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local8, f6_local9, f6_local11, f6_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act5(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 8.5
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 3
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f7_local8 = 5
    local f7_local9 = 3010
    local f7_local10 = 3001
    local f7_local11 = TARGET_ENE_0
    local f7_local12 = 10
    local f7_local13 = 0
    local f7_local14 = 0
    local f7_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local8, f7_local9, f7_local11, f7_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act6(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 8.5
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 3
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f8_local8 = 5
    local f8_local9 = 3015
    local f8_local10 = 3001
    local f8_local11 = TARGET_ENE_0
    local f8_local12 = 10
    local f8_local13 = 0
    local f8_local14 = 0
    local f8_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local8, f8_local9, f8_local11, f8_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act7(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 8
    local f9_local2 = 0
    local f9_local3 = 999
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 3
    local f9_local7 = 3
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f9_local8 = 5
    local f9_local9 = 3016
    local f9_local10 = 3001
    local f9_local11 = TARGET_ENE_0
    local f9_local12 = 10
    local f9_local13 = 0
    local f9_local14 = 0
    local f9_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local8, f9_local9, f9_local11, f9_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act8(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 5.5
    local f10_local2 = 0
    local f10_local3 = 999
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 3
    local f10_local7 = 3
    Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    local f10_local8 = 5
    local f10_local9 = 3013
    local f10_local10 = 3001
    local f10_local11 = TARGET_ENE_0
    local f10_local12 = 10
    local f10_local13 = 0
    local f10_local14 = 0
    local f10_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local8, f10_local9, f10_local11, f10_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act9(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 3.5
    local f11_local2 = 0
    local f11_local3 = 999
    local f11_local4 = 80
    local f11_local5 = 0
    local f11_local6 = 2
    local f11_local7 = 2
    Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f11_local8 = 3
    local f11_local9 = 3020
    local f11_local10 = 3001
    local f11_local11 = TARGET_ENE_0
    local f11_local12 = 10
    local f11_local13 = 0
    local f11_local14 = 0
    local f11_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local8, f11_local9, f11_local11, f11_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 3.5
    local f12_local2 = 0
    local f12_local3 = 999
    local f12_local4 = 80
    local f12_local5 = 0
    local f12_local6 = 2
    local f12_local7 = 2
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f12_local8 = 3
    local f12_local9 = 3021
    local f12_local10 = 3001
    local f12_local11 = TARGET_ENE_0
    local f12_local12 = 10
    local f12_local13 = 0
    local f12_local14 = 0
    local f12_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local8, f12_local9, f12_local11, f12_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 10
    local f13_local2 = 0
    local f13_local3 = 999
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 3
    local f13_local7 = 3
    Approach_Act_Flex(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    local f13_local8 = 5
    local f13_local9 = 3010
    local f13_local10 = TARGET_ENE_0
    local f13_local11 = 12
    local f13_local12 = 0
    local f13_local13 = 0
    local f13_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local8, f13_local9, f13_local10, f13_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 8
    local f14_local2 = 0
    local f14_local3 = 999
    local f14_local4 = 0
    local f14_local5 = 0
    local f14_local6 = 3
    local f14_local7 = 3
    Approach_Act_Flex(arg0, arg1, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7)
    local f14_local8 = 5
    local f14_local9 = 3011
    local f14_local10 = TARGET_ENE_0
    local f14_local11 = 12
    local f14_local12 = 0
    local f14_local13 = 0
    local f14_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local8, f14_local9, f14_local10, f14_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act13(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 4
    local f15_local2 = 0
    local f15_local3 = 999
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 3
    local f15_local7 = 3
    Approach_Act_Flex(arg0, arg1, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7)
    local f15_local8 = 5
    local f15_local9 = 3012
    local f15_local10 = 3013
    local f15_local11 = TARGET_ENE_0
    local f15_local12 = 7
    local f15_local13 = 2.5
    local f15_local14 = 0
    local f15_local15 = 0
    local f15_local16 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f15_local8, f15_local9, f15_local11, f15_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f15_local8, f15_local10, f15_local11, f15_local13, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act14(arg0, arg1, arg2)
    local f16_local0 = 5
    local f16_local1 = 3014
    local f16_local2 = TARGET_ENE_0
    local f16_local3 = 12
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f16_local0, f16_local1, f16_local2, f16_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act15(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 4.5
    local f17_local2 = 0
    local f17_local3 = 999
    local f17_local4 = 0
    local f17_local5 = 0
    local f17_local6 = 3
    local f17_local7 = 3
    Approach_Act_Flex(arg0, arg1, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6, f17_local7)
    local f17_local8 = 5
    local f17_local9 = 3000
    local f17_local10 = TARGET_ENE_0
    local f17_local11 = 12
    local f17_local12 = 0
    local f17_local13 = 0
    local f17_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f17_local8, f17_local9, f17_local10, f17_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act16(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 4
    local f18_local2 = 0
    local f18_local3 = 999
    local f18_local4 = 0
    local f18_local5 = 0
    local f18_local6 = 3
    local f18_local7 = 3
    Approach_Act_Flex(arg0, arg1, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6, f18_local7)
    local f18_local8 = 5
    local f18_local9 = 3001
    local f18_local10 = TARGET_ENE_0
    local f18_local11 = 12
    local f18_local12 = 0
    local f18_local13 = 0
    local f18_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local8, f18_local9, f18_local10, f18_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act17(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 9
    local f19_local2 = 0
    local f19_local3 = 999
    local f19_local4 = 0
    local f19_local5 = 0
    local f19_local6 = 3
    local f19_local7 = 3
    Approach_Act_Flex(arg0, arg1, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6, f19_local7)
    local f19_local8 = 5
    local f19_local9 = 3015
    local f19_local10 = TARGET_ENE_0
    local f19_local11 = 12
    local f19_local12 = 0
    local f19_local13 = 0
    local f19_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local8, f19_local9, f19_local10, f19_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act18(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f20_local0 = 5
    local f20_local1 = arg0:GetRandam_Int(3036, 3037)
    local f20_local2 = TARGET_ENE_0
    local f20_local3 = 20
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f20_local0, f20_local1, f20_local2, f20_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act19(arg0, arg1, arg2)
    local f21_local0 = 5
    local f21_local1 = 3029
    local f21_local2 = TARGET_ENE_0
    local f21_local3 = 20
    local f21_local4 = 0
    local f21_local5 = 0
    local f21_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f21_local0, f21_local1, f21_local2, f21_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act20(arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = 6
    local f22_local2 = 0
    local f22_local3 = 999
    local f22_local4 = 100
    local f22_local5 = 0
    local f22_local6 = 3
    local f22_local7 = 3
    Approach_Act_Flex(arg0, arg1, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6, f22_local7)
    local f22_local8 = 5
    local f22_local9 = 3030
    local f22_local10 = TARGET_ENE_0
    local f22_local11 = 20
    local f22_local12 = 0
    local f22_local13 = 0
    local f22_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f22_local8, f22_local9, f22_local10, f22_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act21(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f23_local0 = 5
    local f23_local1 = 3031
    local f23_local2 = TARGET_ENE_0
    local f23_local3 = 20
    local f23_local4 = 0
    local f23_local5 = 0
    local f23_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f23_local0, f23_local1, f23_local2, f23_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act22(arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = 5.5
    local f24_local2 = 0
    local f24_local3 = 999
    local f24_local4 = 0
    local f24_local5 = 0
    local f24_local6 = 3
    local f24_local7 = 3
    Approach_Act_Flex(arg0, arg1, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6, f24_local7)
    local f24_local8 = 5
    local f24_local9 = 3033
    local f24_local10 = TARGET_ENE_0
    local f24_local11 = 20
    local f24_local12 = 0
    local f24_local13 = 0
    local f24_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f24_local8, f24_local9, f24_local10, f24_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act23(arg0, arg1, arg2)
    local f25_local0 = 5
    local f25_local1 = 3032
    local f25_local2 = TARGET_ENE_0
    local f25_local3 = 20
    local f25_local4 = 0
    local f25_local5 = 0
    local f25_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f25_local0, f25_local1, f25_local2, f25_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act24(arg0, arg1, arg2)
    local f26_local0 = arg0:GetDist(TARGET_ENE_0)
    local f26_local1 = 1.3
    local f26_local2 = TARGET_ENE_0
    local f26_local3 = 1
    local f26_local4 = TARGET_SELF
    local f26_local5 = false
    local f26_local6 = 3
    local f26_local7 = 0
    local f26_local8 = arg0:GetRandam_Int(1, 100)
    local f26_local9 = -1
    if f26_local8 <= f26_local7 then
        f26_local9 = 9910
    end
    local f26_local10 = 100
    local f26_local11 = arg0:GetRandam_Int(0, 100)
    local f26_local12 = AI_DIR_TYPE_ToR
    if f26_local11 <= f26_local10 then
        f26_local12 = AI_DIR_TYPE_ToL
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f26_local1, f26_local2, f26_local3, f26_local4, f26_local5, f26_local9, f26_local12, f26_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act30(arg0, arg1, arg2)
    local f27_local0 = 10
    local f27_local1 = TARGET_ENE_0
    local f27_local2 = 12
    local f27_local3 = TARGET_SELF
    local f27_local4 = false
    local f27_local5 = arg0:GetDist(TARGET_ENE_0)
    local f27_local6 = 0
    local f27_local7 = arg0:GetRandam_Int(1, 100)
    local f27_local8 = -1
    if f27_local7 <= f27_local6 then
        f27_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f27_local0, f27_local1, f27_local2, f27_local3, f27_local4, f27_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act31(arg0, arg1, arg2)
    local f28_local0 = arg0:GetRandam_Int(1, 2)
    local f28_local1 = TARGET_ENE_0
    local f28_local2 = arg0:GetRandam_Int(0, 1)
    local f28_local3 = arg0:GetRandam_Int(30, 45)
    local f28_local4 = 5
    local f28_local5 = TARGET_SELF
    local f28_local6 = true
    local f28_local7 = true
    local f28_local8 = arg0:GetDist(TARGET_ENE_0)
    local f28_local9 = 0
    local f28_local10 = arg0:GetRandam_Int(1, 100)
    local f28_local11 = -1
    if f28_local10 <= f28_local9 then
        f28_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f28_local0, f28_local1, f28_local2, f28_local3, f28_local6, f28_local7, f28_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act32(arg0, arg1, arg2)
    local f29_local0 = 5
    local f29_local1 = -1
    local f29_local2 = -1
    local f29_local3 = -1
    local f29_local4 = -1
    local f29_local5 = TARGET_ENE_0
    local f29_local6 = 3
    local f29_local7 = 0
    local f29_local8 = true
    local f29_local9 = arg0:GetRandam_Int(1, 100)
    if f29_local9 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f29_local0, f29_local1, f29_local2, 2, f29_local4, f29_local5, f29_local6, f29_local7, f29_local8)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f29_local0, f29_local1, f29_local2, f29_local3, 2, f29_local5, f29_local6, f29_local7, f29_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act33(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act34(arg0, arg1, arg2)
    local f31_local0 = 5
    local f31_local1 = -1
    local f31_local2 = 1
    local f31_local3 = 1
    local f31_local4 = 1
    local f31_local5 = TARGET_ENE_0
    local f31_local6 = 3
    local f31_local7 = 0
    local f31_local8 = true
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f31_local0, f31_local1, 1, f31_local3, f31_local4, f31_local5, f31_local6, f31_local7, f31_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act35(arg0, arg1, arg2)
    local f32_local0 = 2
    local f32_local1 = TARGET_ENE_0
    local f32_local2 = 45
    local f32_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f32_local4 = true
    local f32_local5 = 0
    local f32_local6 = arg0:GetRandam_Int(1, 100)
    local f32_local7 = -1
    if f32_local6 <= f32_local5 then
        f32_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f32_local0, f32_local1, f32_local2, f32_local7, f32_local3, f32_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act36(arg0, arg1, arg2)
    local f33_local0 = 5
    local f33_local1 = -1
    local f33_local2 = -1
    local f33_local3 = 1
    local f33_local4 = 2
    local f33_local5 = TARGET_ENE_0
    local f33_local6 = 3
    local f33_local7 = 0
    local f33_local8 = true
    if arg0:IsRiding(TARGET_SELF) then
        local f33_local9 = 5
        local f33_local10 = TARGET_ENE_0
        local f33_local11 = 10
        local f33_local12 = 0
        local f33_local13 = 0
        local f33_local14 = 0
        local f33_local15 = 3000
        if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            f33_local15 = 6013
        elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
            f33_local15 = 6013
        elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
            f33_local15 = 6012
        end
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f33_local9, f33_local15, f33_local10, f33_local11, 0, 0, 0)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f33_local0, f33_local1, f33_local2, f33_local3, f33_local4, f33_local5, f33_local6, f33_local7, f33_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f33_local0, f33_local1, f33_local2, 1, -1, f33_local5, f33_local6, f33_local7, f33_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f33_local0, f33_local1, f33_local2, -1, 1, f33_local5, f33_local6, f33_local7, f33_local8)
    end
    local f33_local9 = 2
    local f33_local10 = TARGET_ENE_0
    local f33_local11 = 45
    local f33_local12 = GUARD_GOAL_DESIRE_RET_Continue
    local f33_local13 = true
    local f33_local14 = 0
    local f33_local15 = arg0:GetRandam_Int(1, 100)
    local f33_local16 = -1
    if f33_local15 <= f33_local14 then
        f33_local16 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f33_local9, f33_local10, f33_local11, f33_local16, f33_local12, f33_local13)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_Act37(arg0, arg1, arg2)
    local f34_local0 = arg0:GetDist(TARGET_ENE_0)
    local f34_local1 = 0.1
    local f34_local2 = 0
    local f34_local3 = 999
    local f34_local4 = 100
    local f34_local5 = 0
    local f34_local6 = 3
    local f34_local7 = 3
    Approach_Act_Flex(arg0, arg1, f34_local1, f34_local2, f34_local3, f34_local4, f34_local5, f34_local6, f34_local7)
    local f34_local8 = 3110
    local f34_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f34_local10 = 0
    local f34_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 0.5, f34_local8, TARGET_ENE_0, f34_local9, f34_local10, f34_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MarikaLineageWomanSword331000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MarikaLineageWomanSword331000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f38_local0 = arg1:GetDist(TARGET_ENE_0)
    local f38_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f38_local2 = arg1:GetRandam_Int(1, 100)
    local f38_local3 = arg1:GetHpRate(TARGET_SELF)
    if arg1:IsRiding(TARGET_SELF) then
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                arg2:ClearSubGoal()
                local f38_local4 = arg1:GetDist(TARGET_ENE_0)
                local f38_local5 = arg1:GetRandam_Int(1, 100)
                if f38_local5 >= 90 then
                    local f38_local6 = 5
                    local f38_local7 = 3037
                    local f38_local8 = TARGET_ENE_0
                    local f38_local9 = 10
                    local f38_local10 = 0
                    local f38_local11 = 0
                    local f38_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                elseif f38_local5 >= 40 then
                    if f38_local4 <= 3 then
                        local f38_local6 = 5
                        local f38_local7 = 6000
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    elseif f38_local4 <= 7 then
                        local f38_local6 = 5
                        local f38_local7 = 3029
                        if f38_local5 <= 70 then
                            f38_local7 = 3013
                        end
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    end
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg2:ClearSubGoal()
                local f38_local4 = arg1:GetDist(TARGET_ENE_0)
                local f38_local5 = arg1:GetRandam_Int(1, 100)
                if f38_local5 <= 70 then
                    if f38_local4 <= 3 then
                        local f38_local6 = 5
                        local f38_local7 = 6000
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    elseif f38_local4 <= 7 then
                        local f38_local6 = 5
                        local f38_local7 = 3013
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        if f38_local5 >= 20 then
                            f38_local7 = 3037
                        end
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    end
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                arg2:ClearSubGoal()
                local f38_local4 = arg1:GetDist(TARGET_ENE_0)
                local f38_local5 = arg1:GetRandam_Int(1, 100)
                if f38_local4 <= 4 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 190, 180, 50) and f38_local5 <= 70 then
                    local f38_local6 = 5
                    local f38_local7 = 3001
                    local f38_local8 = TARGET_ENE_0
                    local f38_local9 = 10
                    local f38_local10 = 0
                    local f38_local11 = 0
                    local f38_local12 = 0
                    if f38_local5 >= 20 then
                        f38_local7 = 3000
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_Shoot) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            arg2:ClearSubGoal()
            if f38_local4 <= 5.5 then

            elseif f38_local4 <= 15 then
                local f38_local6 = 5
                local f38_local7 = 6010
                local f38_local8 = TARGET_ENE_0
                local f38_local9 = 10
                local f38_local10 = 0
                local f38_local11 = 0
                local f38_local12 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f38_local6, f38_local7, f38_local8, f38_local9, 0, 0, 0)
            else
                local f38_local6 = 10
                local f38_local7 = TARGET_ENE_0
                local f38_local8 = 10
                local f38_local9 = TARGET_SELF
                local f38_local10 = false
                local f38_local11 = arg1:GetDist(TARGET_ENE_0)
                local f38_local12 = 0
                local f38_local13 = arg1:GetRandam_Int(1, 100)
                local f38_local14 = -1
                if f38_local13 <= f38_local12 then
                    f38_local14 = 9910
                end
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, f38_local6, f38_local7, f38_local8, f38_local9, f38_local10, f38_local14)
            end
            return true
        end
    else
        if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
            return false
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
            if arg1:GetSpecialEffectActivateInterruptId(79) then
                arg2:ClearSubGoal()
                arg1:Replaning()
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                arg2:ClearSubGoal()
                local f38_local4 = arg1:GetDist(TARGET_ENE_0)
                local f38_local5 = arg1:GetRandam_Int(1, 100)
                if f38_local4 <= 3 then
                    if f38_local5 <= 70 then
                        local f38_local6 = 5
                        local f38_local7 = 3022
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    else
                        local f38_local6 = 5
                        local f38_local7 = 3001
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    end
                else
                    local f38_local6 = 5
                    local f38_local7 = 3022
                    local f38_local8 = TARGET_ENE_0
                    local f38_local9 = 10
                    local f38_local10 = 0
                    local f38_local11 = 0
                    local f38_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg2:ClearSubGoal()
                local f38_local4 = arg1:GetDist(TARGET_ENE_0)
                local f38_local5 = arg1:GetRandam_Int(1, 100)
                if f38_local4 <= 3 then
                    if f38_local5 <= 80 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                        local f38_local6 = 5
                        local f38_local7 = 3000
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    else
                        local f38_local6 = 5
                        local f38_local7 = 3021
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    end
                    return true
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                arg2:ClearSubGoal()
                local f38_local4 = arg1:GetDist(TARGET_ENE_0)
                local f38_local5 = arg1:GetRandam_Int(1, 100)
                if f38_local4 <= 3 then
                    if f38_local5 <= 80 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                        local f38_local6 = 5
                        local f38_local7 = 3001
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    else
                        local f38_local6 = 5
                        local f38_local7 = 3021
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    end
                    return true
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                arg2:ClearSubGoal()
                local f38_local4 = arg1:GetDist(TARGET_ENE_0)
                local f38_local5 = arg1:GetRandam_Int(1, 100)
                if f38_local4 <= 7 then
                    if f38_local5 <= 30 then
                        local f38_local6 = 5
                        local f38_local7 = 3004
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    else
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                        local f38_local6 = 5
                        local f38_local7 = 3011
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    end
                    return true
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg2:ClearSubGoal()
                local f38_local4 = arg1:GetDist(TARGET_ENE_0)
                local f38_local5 = arg1:GetRandam_Int(1, 100)
                if f38_local4 >= 3 then
                    if f38_local5 <= 65 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                        local f38_local6 = 5
                        local f38_local7 = 3011
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    else
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                        local f38_local6 = 5
                        local f38_local7 = 3012
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    end
                else
                    local f38_local6 = 5
                    local f38_local7 = 3021
                    local f38_local8 = TARGET_ENE_0
                    local f38_local9 = 10
                    local f38_local10 = 0
                    local f38_local11 = 0
                    local f38_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    return true
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                arg2:ClearSubGoal()
                local f38_local4 = arg1:GetDist(TARGET_ENE_0)
                local f38_local5 = arg1:GetRandam_Int(1, 100)
                if f38_local4 >= 3 then
                    if f38_local5 <= 70 then
                        local f38_local6 = 5
                        local f38_local7 = 3012
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    else
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                        local f38_local6 = 5
                        local f38_local7 = 3013
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    end
                else
                    local f38_local6 = 5
                    local f38_local7 = 3021
                    local f38_local8 = TARGET_ENE_0
                    local f38_local9 = 10
                    local f38_local10 = 0
                    local f38_local11 = 0
                    local f38_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    return true
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                arg2:ClearSubGoal()
                local f38_local4 = arg1:GetDist(TARGET_ENE_0)
                local f38_local5 = arg1:GetRandam_Int(1, 100)
                if f38_local4 >= 4 then
                    if f38_local5 <= 65 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                        local f38_local6 = 5
                        local f38_local7 = 3011
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    else
                        local f38_local6 = 5
                        local f38_local7 = 3004
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    end
                else
                    local f38_local6 = 5
                    local f38_local7 = 3021
                    local f38_local8 = TARGET_ENE_0
                    local f38_local9 = 10
                    local f38_local10 = 0
                    local f38_local11 = 0
                    local f38_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    return true
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                arg2:ClearSubGoal()
                local f38_local4 = arg1:GetDist(TARGET_ENE_0)
                local f38_local5 = arg1:GetRandam_Int(1, 100)
                if f38_local4 <= 3 then
                    local f38_local6 = 5
                    local f38_local7 = 3021
                    local f38_local8 = TARGET_ENE_0
                    local f38_local9 = 10
                    local f38_local10 = 0
                    local f38_local11 = 0
                    local f38_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    return true
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
                arg2:ClearSubGoal()
                local f38_local4 = arg1:GetDist(TARGET_ENE_0)
                local f38_local5 = arg1:GetRandam_Int(1, 100)
                if f38_local4 <= 3 then
                    if f38_local5 <= 70 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                        local f38_local6 = 5
                        local f38_local7 = 3000
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    else
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
                        local f38_local6 = 5
                        local f38_local7 = 3021
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    end
                    return true
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5034) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
                arg2:ClearSubGoal()
                local f38_local4 = arg1:GetDist(TARGET_ENE_0)
                local f38_local5 = arg1:GetRandam_Int(1, 100)
                if f38_local4 <= 3 then
                    if f38_local5 <= 40 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                        local f38_local6 = 5
                        local f38_local7 = 3000
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    else
                        local f38_local6 = 5
                        local f38_local7 = 3022
                        local f38_local8 = TARGET_ENE_0
                        local f38_local9 = 10
                        local f38_local10 = 0
                        local f38_local11 = 0
                        local f38_local12 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f38_local6, f38_local7, f38_local8, successDist2, 0, 0, 0)
                    end
                    return true
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_FindAttack) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            if f38_local4 <= 5.5 then
                if f38_local5 <= 70 then
                    arg2:ClearSubGoal()
                    MarikaLineageWomanSword331000_Act34(arg1, arg2)
                end
            elseif f38_local4 <= 9 then
                if f38_local5 <= 70 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                    local f38_local6 = 5
                    local f38_local7 = 3016
                    local f38_local8 = TARGET_ENE_0
                    local f38_local9 = 10
                    local f38_local10 = 0
                    local f38_local11 = 0
                    local f38_local12 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f38_local6, f38_local7, f38_local8, f38_local9, 0, 0, 0)
                end
            else
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_Shoot) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            if f38_local5 < 80 then
                arg2:ClearSubGoal()
                MarikaLineageWomanSword331000_Act32(arg1, arg2)
            end
            return true
        end
        if arg1:IsInterupt(INTERUPT_Damaged) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            if f38_local4 <= 7 and f38_local5 <= 90 and arg1:IsFinishTimer(1) then
                arg2:ClearSubGoal()
                arg1:SetTimer(1, 4)
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 210, 90, 5) then
                    arg2:ClearSubGoal()
                    MarikaLineageWomanSword331000_Act32(arg1, arg2)
                    return true
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 150, 90, 5) then
                    arg2:ClearSubGoal()
                    MarikaLineageWomanSword331000_Act32(arg1, arg2)
                    return true
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(83) then
            arg2:ClearSubGoal()
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_MarikaLineageWomanSword331000_AfterAttackAct, "MarikaLineageWomanSword331000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MarikaLineageWomanSword331000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


