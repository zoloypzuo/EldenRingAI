RegisterTableGoal(GOAL_PyroxeneMagician_370200_Battle, "PyroxeneMagician_370200_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PyroxeneMagician_370200_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(1, 3004)
    arg1:EnableUnfavorableAttackCheck(1, 3005)
    arg1:EnableUnfavorableAttackCheck(1, 3006)
    arg1:EnableUnfavorableAttackCheck(1, 3007)
    arg1:EnableUnfavorableAttackCheck(1, 3011)
    arg1:EnableUnfavorableAttackCheck(1, 3012)
    arg1:EnableUnfavorableAttackCheck(1, 3015)
    arg1:EnableUnfavorableAttackCheck(1, 3016)
    arg1:EnableUnfavorableAttackCheck(1, 3017)
    arg1:EnableUnfavorableAttackCheck(1, 3022)
    arg1:EnableUnfavorableAttackCheck(1, 3023)
    arg1:EnableUnfavorableAttackCheck(1, 3025)
    arg1:EnableUnfavorableAttackCheck(1, 3026)
    arg1:EnableUnfavorableAttackCheck(1, 3027)
    arg1:EnableUnfavorableAttackCheck(1, 3028)
    arg1:EnableUnfavorableAttackCheck(1, 3029)
    arg1:EnableUnfavorableAttackCheck(1, 3030)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14800) == true then
            f2_local0[1] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14801) == true then
            f2_local0[9] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14802) == true then
            f2_local0[31] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14803) == true then
            f2_local0[5] = 100
            f2_local0[6] = 0
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14804) == true then
            f2_local0[7] = 100
        end
        f2_local0[15] = 0
        f2_local0[16] = 300
        f2_local0[17] = 0
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14800) == true then
            f2_local0[1] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14801) == true then
            f2_local0[9] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14802) == true then
            f2_local0[31] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14803) == true then
            if f2_local3 >= 13 then
                f2_local0[5] = 70
                f2_local0[6] = 30
            else
                f2_local0[5] = 30
                f2_local0[6] = 70
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14804) == true then
            f2_local0[4] = 30
            f2_local0[7] = 70
        end
        f2_local0[15] = 0
        f2_local0[16] = 100
        f2_local0[17] = 0
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local0[24] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14800) == true then
        if f2_local3 >= 10 then
            f2_local0[1] = 80
            f2_local0[16] = 20
            f2_local0[17] = 0
        elseif f2_local3 >= 6 then
            f2_local0[1] = 70
            f2_local0[16] = 30
            f2_local0[17] = 0
        elseif f2_local3 >= 2 then
            f2_local0[1] = 40
            f2_local0[16] = 10
            f2_local0[17] = 50
        else
            f2_local0[1] = 0
            f2_local0[10] = 10
            f2_local0[11] = 30
            f2_local0[14] = 10
            f2_local0[16] = 0
            f2_local0[17] = 40
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14801) == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true or arg1:HasSpecialEffectId(TARGET_SELF, 14806) == true then
            if f2_local3 >= 6 then
                if arg1:IsFinishTimer(0) then
                    f2_local0[9] = 70
                else
                    f2_local0[2] = 80
                    f2_local0[16] = 20
                    f2_local0[17] = 0
                end
            elseif f2_local3 >= 3 then
                f2_local0[2] = 80
                f2_local0[16] = 20
                f2_local0[17] = 0
            else
                f2_local0[2] = 80
                f2_local0[10] = 20
                f2_local0[11] = 0
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 0
            end
        elseif f2_local3 >= 6 then
            if arg1:IsFinishTimer(0) then
                f2_local0[9] = 70
            else
                f2_local0[2] = 70
                f2_local0[16] = 30
                f2_local0[17] = 0
            end
        elseif f2_local3 >= 3 then
            f2_local0[2] = 40
            f2_local0[16] = 40
            f2_local0[17] = 20
        else
            f2_local0[2] = 0
            f2_local0[10] = 10
            f2_local0[11] = 30
            f2_local0[14] = 10
            f2_local0[16] = 10
            f2_local0[17] = 40
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14802) == true then
        if f2_local3 >= 6 then
            f2_local0[30] = 10
            f2_local0[31] = 60
            f2_local0[32] = 10
            f2_local0[33] = 20
            f2_local0[16] = 40
            f2_local0[17] = 0
        elseif f2_local3 >= 3 then
            f2_local0[30] = 20
            f2_local0[31] = 40
            f2_local0[32] = 20
            f2_local0[33] = 20
            f2_local0[16] = 20
            f2_local0[17] = 0
        else
            f2_local0[30] = 40
            f2_local0[31] = 0
            f2_local0[32] = 20
            f2_local0[33] = 20
            f2_local0[16] = 10
            f2_local0[17] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14803) == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
            if f2_local3 >= 13 then
                f2_local0[5] = 90
                f2_local0[6] = 0
                f2_local0[16] = 10
                f2_local0[17] = 0
            elseif f2_local3 >= 5.5 then
                f2_local0[5] = 70
                f2_local0[6] = 0
                f2_local0[16] = 30
                f2_local0[17] = 0
            elseif f2_local3 >= 2 then
                f2_local0[5] = 50
                f2_local0[6] = 50
                f2_local0[16] = 0
                f2_local0[17] = 0
            else
                f2_local0[5] = 0
                f2_local0[6] = 70
                f2_local0[10] = 30
                f2_local0[11] = 0
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14806) == true then
            if f2_local3 >= 13 then
                f2_local0[5] = 90
                f2_local0[6] = 0
                f2_local0[16] = 10
                f2_local0[17] = 0
            elseif f2_local3 >= 7 then
                f2_local0[5] = 30
                f2_local0[6] = 60
                f2_local0[16] = 10
                f2_local0[17] = 0
            elseif f2_local3 >= 2 then
                f2_local0[5] = 10
                f2_local0[6] = 50
                f2_local0[16] = 0
                f2_local0[17] = 40
            else
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 10
                f2_local0[11] = 30
                f2_local0[14] = 10
                f2_local0[16] = 10
                f2_local0[17] = 40
            end
        elseif f2_local3 >= 13 then
            f2_local0[5] = 90
            f2_local0[6] = 0
            f2_local0[16] = 10
            f2_local0[17] = 0
        elseif f2_local3 >= 7 then
            f2_local0[5] = 70
            f2_local0[6] = 0
            f2_local0[16] = 30
            f2_local0[17] = 0
        elseif f2_local3 >= 0.8 then
            f2_local0[5] = 0
            f2_local0[6] = 70
            f2_local0[16] = 0
            f2_local0[17] = 30
        else
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[10] = 10
            f2_local0[11] = 30
            f2_local0[14] = 10
            f2_local0[16] = 10
            f2_local0[17] = 40
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14804) == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14806) == true then
            if f2_local3 >= 6 then
                f2_local0[4] = 0
                f2_local0[7] = 90
                f2_local0[16] = 10
                f2_local0[17] = 0
            elseif f2_local3 >= 3 then
                f2_local0[4] = 70
                f2_local0[7] = 30
                f2_local0[16] = 20
                f2_local0[17] = 10
            else
                f2_local0[4] = 30
                f2_local0[7] = 0
                f2_local0[10] = 10
                f2_local0[11] = 5
                f2_local0[14] = 5
                f2_local0[16] = 0
                f2_local0[17] = 40
            end
        elseif f2_local3 >= 6 then
            f2_local0[4] = 30
            f2_local0[7] = 70
            f2_local0[16] = 10
            f2_local0[17] = 0
        elseif f2_local3 >= 3 then
            f2_local0[4] = 70
            f2_local0[7] = 30
            f2_local0[16] = 20
            f2_local0[17] = 10
        else
            f2_local0[4] = 30
            f2_local0[7] = 0
            f2_local0[10] = 10
            f2_local0[11] = 5
            f2_local0[14] = 5
            f2_local0[16] = 0
            f2_local0[17] = 40
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == false then
        f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[2], 1)
        f2_local0[3] = SetCoolTime(arg1, arg2, 3005, 7, f2_local0[3], 1)
        f2_local0[4] = SetCoolTime(arg1, arg2, 3008, 7, f2_local0[4], 1)
        f2_local0[7] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[7], 1)
        f2_local0[8] = SetCoolTime(arg1, arg2, 3004, 7, f2_local0[8], 1)
        f2_local0[10] = SetCoolTime(arg1, arg2, 3011, 7, f2_local0[10], 1)
        f2_local0[11] = SetCoolTime(arg1, arg2, 3012, 7, f2_local0[11], 1)
        f2_local0[30] = SetCoolTime(arg1, arg2, 3025, 5, f2_local0[30], 1)
        f2_local0[31] = SetCoolTime(arg1, arg2, 3027, 5, f2_local0[31], 1)
        f2_local0[32] = SetCoolTime(arg1, arg2, 3028, 5, f2_local0[32], 1)
        f2_local0[33] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[33], 1)
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act18)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act26)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, PyroxeneMagician_370200_Act33)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, atkAfterFunc, f2_local2)
    
end

function PyroxeneMagician_370200_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 45.5
    local f3_local2 = 999
    local f3_local3 = 999
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 14806) == false then
        Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = TARGET_ENE_0
    local f3_local11 = 12
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local8, f3_local9, f3_local10, f3_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 45.5
    local f4_local2 = 999
    local f4_local3 = 999
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 14806) == false then
        Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f4_local8 = 5
    local f4_local9 = 3001
    local f4_local10 = TARGET_ENE_0
    local f4_local11 = 10
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local8, f4_local9, f4_local10, f4_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 3
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 0
    local f5_local7 = 3
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 5
    local f5_local9 = 3005
    local f5_local10 = 3006
    local f5_local11 = 3007
    local f5_local12 = TARGET_ENE_0
    local f5_local13 = 3
    local f5_local14 = 2.5
    local f5_local15 = 0
    local f5_local16 = 0
    local f5_local17 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local8, f5_local9, f5_local12, f5_local13, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f5_local8, f5_local10, f5_local12, f5_local14, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f5_local8, f5_local11, f5_local12, f5_local14, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f5_local8, f5_local10, f5_local12, f5_local14, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f5_local8, f5_local11, f5_local12, f5_local14, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 12
    local f6_local2 = 999
    local f6_local3 = 999
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 3
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 5
    local f6_local9 = 3008
    local f6_local10 = 3009
    local f6_local11 = 3010
    local f6_local12 = TARGET_ENE_0
    local f6_local13 = 17
    local f6_local14 = 17.5
    local f6_local15 = 0
    local f6_local16 = 0
    local f6_local17 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local8, f6_local9, f6_local12, f6_local13, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f6_local8, f6_local10, f6_local12, f6_local14, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f6_local8, f6_local11, f6_local12, f6_local14, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f6_local8, f6_local10, f6_local12, f6_local14, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f6_local8, f6_local11, f6_local12, f6_local14, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 45.5
    local f7_local2 = 999
    local f7_local3 = 999
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 14806) == false then
        Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    end
    local f7_local8 = 5
    local f7_local9 = 3000
    local f7_local10 = TARGET_ENE_0
    local f7_local11 = 17
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local8, f7_local9, f7_local10, f7_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 9.5
    local f8_local2 = 999
    local f8_local3 = 999
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 3
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local8 = 5
    local f8_local9 = 3002
    local f8_local10 = TARGET_ENE_0
    local f8_local11 = 10
    local f8_local12 = 0
    local f8_local13 = 0
    local f8_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local8, f8_local9, f8_local10, f8_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 45.5
    local f9_local2 = 999
    local f9_local3 = 999
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 3
    local f9_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 14806) == false then
        Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    end
    local f9_local8 = 5
    local f9_local9 = 3013
    local f9_local10 = TARGET_ENE_0
    local f9_local11 = 15
    local f9_local12 = 0
    local f9_local13 = 0
    local f9_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local8, f9_local9, f9_local10, f9_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 3.5
    local f10_local2 = 0
    local f10_local3 = 999
    local f10_local4 = 100
    local f10_local5 = 0
    local f10_local6 = 0
    local f10_local7 = 3
    Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    local f10_local8 = 5
    local f10_local9 = 3004
    local f10_local10 = TARGET_ENE_0
    local f10_local11 = 4
    local f10_local12 = 0
    local f10_local13 = 0
    local f10_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local8, f10_local9, f10_local10, f10_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetRandam_Int(0, 1)
    local f11_local1 = TARGET_ENE_0
    arg1:AddSubGoal(GOAL_COMMON_Wait, f11_local0, f11_local1)
    local f11_local2 = 5
    local f11_local3 = 3001
    local f11_local4 = TARGET_ENE_0
    local f11_local5 = 30
    local f11_local6 = 0
    local f11_local7 = 0
    local f11_local8 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local2, f11_local3, f11_local4, f11_local5, 0, 0, 0)
    local f11_local9 = arg0:GetRandam_Int(0, 2)
    local f11_local10 = TARGET_ENE_0
    arg1:AddSubGoal(GOAL_COMMON_Wait, f11_local9, f11_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 2.5
    local f12_local2 = 0
    local f12_local3 = 999
    local f12_local4 = 100
    local f12_local5 = 0
    local f12_local6 = 0
    local f12_local7 = 3
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    local f12_local8 = 5
    local f12_local9 = 3011
    local f12_local10 = TARGET_ENE_0
    local f12_local11 = 3
    local f12_local12 = 0
    local f12_local13 = 0
    local f12_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local8, f12_local9, f12_local10, f12_local11, 0, 0, 0)
    arg0:SetTimer(0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 2.5
    local f13_local2 = 0
    local f13_local3 = 999
    local f13_local4 = 100
    local f13_local5 = 0
    local f13_local6 = 0
    local f13_local7 = 3
    Approach_Act_Flex(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    local f13_local8 = 5
    local f13_local9 = 3012
    local f13_local10 = 3022
    local f13_local11 = TARGET_ENE_0
    local f13_local12 = 2
    local f13_local13 = 0
    local f13_local14 = 0
    local f13_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local8, f13_local9, f13_local11, f13_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f13_local8, f13_local10, f13_local11, successDist2, 0, 0, 0)
    arg0:SetTimer(0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 1
    local f14_local2 = 0
    local f14_local3 = 999
    local f14_local4 = 100
    local f14_local5 = 0
    local f14_local6 = 0
    local f14_local7 = 3
    Approach_Act_Flex(arg0, arg1, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7)
    local f14_local8 = 5
    local f14_local9 = 3015
    local f14_local10 = 3016
    local f14_local11 = TARGET_ENE_0
    local f14_local12 = 1.5
    local f14_local13 = 0
    local f14_local14 = 0
    local f14_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local8, f14_local9, f14_local11, f14_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f14_local8, f14_local10, f14_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act13(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 1.5
    local f15_local2 = 999
    local f15_local3 = 999
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 3
    local f15_local7 = 3
    Approach_Act_Flex(arg0, arg1, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7)
    local f15_local8 = 5
    local f15_local9 = 3017
    local f15_local10 = TARGET_ENE_0
    local f15_local11 = 5
    local f15_local12 = 0
    local f15_local13 = 0
    local f15_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local8, f15_local9, f15_local10, f15_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act14(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 2.5
    local f16_local2 = 0
    local f16_local3 = 999
    local f16_local4 = 100
    local f16_local5 = 0
    local f16_local6 = 0
    local f16_local7 = 3
    Approach_Act_Flex(arg0, arg1, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7)
    local f16_local8 = 5
    local f16_local9 = 3023
    local f16_local10 = TARGET_ENE_0
    local f16_local11 = 2
    local f16_local12 = 0
    local f16_local13 = 0
    local f16_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local8, f16_local9, f16_local10, f16_local11, 0, 0, 0)
    arg0:SetTimer(0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act15(arg0, arg1, arg2)
    local f17_local0 = 20
    local f17_local1 = TARGET_ENE_0
    local f17_local2 = arg0:GetRandam_Int(6, 10)
    local f17_local3 = TARGET_SELF
    local f17_local4 = true
    local f17_local5 = arg0:GetDist(TARGET_ENE_0)
    local f17_local6 = 0
    local f17_local7 = arg0:GetRandam_Int(1, 100)
    local f17_local8 = -1
    if f17_local7 <= f17_local6 then
        f17_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act16(arg0, arg1, arg2)
    local f18_local0 = arg0:GetRandam_Int(1, 2)
    local f18_local1 = TARGET_ENE_0
    local f18_local2 = arg0:GetRandam_Int(0, 1)
    local f18_local3 = arg0:GetRandam_Int(30, 45)
    local f18_local4 = 5
    local f18_local5 = TARGET_SELF
    local f18_local6 = true
    local f18_local7 = true
    local f18_local8 = arg0:GetDist(TARGET_ENE_0)
    local f18_local9 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 14802) == true then
        f18_local9 = 100
    end
    local f18_local10 = arg0:GetRandam_Int(1, 100)
    local f18_local11 = -1
    if f18_local10 <= f18_local9 then
        f18_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f18_local0, f18_local1, f18_local2, f18_local3, f18_local6, f18_local7, f18_local11)
    arg0:SetTimer(0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act17(arg0, arg1, arg2)
    local f19_local0 = arg0:GetRandam_Int(1, 3)
    local f19_local1 = TARGET_ENE_0
    local f19_local2 = 10
    local f19_local3 = TARGET_ENE_0
    local f19_local4 = true
    local f19_local5 = arg0:GetDist(TARGET_ENE_0)
    local f19_local6 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 14802) == true then
        f19_local6 = 100
    end
    local f19_local7 = arg0:GetRandam_Int(1, 100)
    local f19_local8 = -1
    if f19_local7 <= f19_local6 then
        f19_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local8)
    arg0:SetTimer(0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act18(arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = 2
    local f20_local2 = 0
    local f20_local3 = 999
    local f20_local4 = 100
    local f20_local5 = 0
    local f20_local6 = 0
    local f20_local7 = 7
    Approach_Act_Flex(arg0, arg1, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7)
    local f20_local8 = 5
    local f20_local9 = 3002
    local f20_local10 = TARGET_ENE_0
    local f20_local11 = 2.5
    local f20_local12 = 0
    local f20_local13 = 0
    local f20_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local8, f20_local9, f20_local10, f20_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act20(arg0, arg1, arg2)
    local f21_local0 = 10
    local f21_local1 = TARGET_ENE_0
    local f21_local2 = 2
    local f21_local3 = TARGET_SELF
    local f21_local4 = false
    local f21_local5 = arg0:GetDist(TARGET_ENE_0)
    local f21_local6 = 100
    local f21_local7 = arg0:GetRandam_Int(1, 100)
    local f21_local8 = -1
    if f21_local7 <= f21_local6 then
        f21_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f21_local0, f21_local1, f21_local2, f21_local3, f21_local4, f21_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act21(arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = 3
    local f22_local2 = TARGET_ENE_0
    local f22_local3 = 1
    local f22_local4 = TARGET_SELF
    local f22_local5 = true
    local f22_local6 = arg0:GetRandam_Int(5, 20)
    local f22_local7 = 100
    local f22_local8 = arg0:GetRandam_Int(1, 100)
    local f22_local9 = -1
    if f22_local8 <= f22_local7 then
        f22_local9 = 9910
    end
    local f22_local10 = 50
    local f22_local11 = arg0:GetRandam_Int(0, 100)
    local f22_local12 = AI_DIR_TYPE_ToR
    if f22_local11 <= f22_local10 then
        f22_local12 = AI_DIR_TYPE_ToL
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, 9910, f22_local12, f22_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act22(arg0, arg1, arg2)
    local f23_local0 = arg0:GetRandam_Int(1, 3)
    local f23_local1 = TARGET_ENE_0
    local f23_local2 = 10
    local f23_local3 = TARGET_ENE_0
    local f23_local4 = true
    local f23_local5 = arg0:GetDist(TARGET_ENE_0)
    local f23_local6 = 100
    local f23_local7 = arg0:GetRandam_Int(1, 100)
    local f23_local8 = -1
    if f23_local7 <= f23_local6 then
        f23_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act23(arg0, arg1, arg2)
    local f24_local0 = arg0:GetRandam_Int(1, 2)
    local f24_local1 = TARGET_ENE_0
    local f24_local2 = arg0:GetRandam_Int(0, 1)
    local f24_local3 = arg0:GetRandam_Int(30, 45)
    local f24_local4 = 3
    local f24_local5 = TARGET_SELF
    local f24_local6 = true
    local f24_local7 = true
    local f24_local8 = arg0:GetDist(TARGET_ENE_0)
    local f24_local9 = 100
    local f24_local10 = arg0:GetRandam_Int(1, 100)
    local f24_local11 = -1
    if f24_local10 <= f24_local9 then
        f24_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local0, f24_local1, f24_local2, f24_local3, f24_local6, f24_local7, f24_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act24(arg0, arg1, arg2)
    local f25_local0 = 2
    local f25_local1 = TARGET_ENE_0
    local f25_local2 = 45
    local f25_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f25_local4 = true
    local f25_local5 = 0
    local f25_local6 = arg0:GetRandam_Int(1, 100)
    local f25_local7 = -1
    if f25_local6 <= f25_local5 then
        f25_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f25_local0, f25_local1, f25_local2, f25_local7, f25_local3, f25_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act25(arg0, arg1, arg2)
    local f26_local0 = 5
    local f26_local1 = -1
    local f26_local2 = 1
    local f26_local3 = -1
    local f26_local4 = -1
    local f26_local5 = TARGET_ENE_0
    local f26_local6 = 3
    local f26_local7 = 0
    local f26_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f26_local0, f26_local1, f26_local2, f26_local3, f26_local4, f26_local5, f26_local6, f26_local7, f26_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act26(arg0, arg1, arg2)
    local f27_local0 = 5
    local f27_local1 = -1
    local f27_local2 = -1
    local f27_local3 = 1
    local f27_local4 = 1
    local f27_local5 = TARGET_ENE_0
    local f27_local6 = 3
    local f27_local7 = 0
    local f27_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f27_local0, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5, f27_local6, f27_local7, f27_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act30(arg0, arg1, arg2)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    local f28_local1 = 2.5
    local f28_local2 = 0
    local f28_local3 = 999
    local f28_local4 = 100
    local f28_local5 = 100
    local f28_local6 = 3
    local f28_local7 = 3
    Approach_Act_Flex(arg0, arg1, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6, f28_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f28_local8 = 5
    local f28_local9 = 3025
    local f28_local10 = TARGET_ENE_0
    local f28_local11 = 10
    local f28_local12 = 0
    local f28_local13 = 0
    local f28_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f28_local8, f28_local9, f28_local10, f28_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act31(arg0, arg1, arg2)
    local f29_local0 = arg0:GetDist(TARGET_ENE_0)
    local f29_local1 = 4.5
    local f29_local2 = 0
    local f29_local3 = 999
    local f29_local4 = 100
    local f29_local5 = 100
    local f29_local6 = 3
    local f29_local7 = 3
    Approach_Act_Flex(arg0, arg1, f29_local1, f29_local2, f29_local3, f29_local4, f29_local5, f29_local6, f29_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f29_local8 = 5
    local f29_local9 = 3027
    local f29_local10 = TARGET_ENE_0
    local f29_local11 = 10
    local f29_local12 = 0
    local f29_local13 = 0
    local f29_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f29_local8, f29_local9, f29_local10, f29_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act32(arg0, arg1, arg2)
    local f30_local0 = arg0:GetDist(TARGET_ENE_0)
    local f30_local1 = 2.5
    local f30_local2 = 0
    local f30_local3 = 999
    local f30_local4 = 100
    local f30_local5 = 100
    local f30_local6 = 3
    local f30_local7 = 3
    Approach_Act_Flex(arg0, arg1, f30_local1, f30_local2, f30_local3, f30_local4, f30_local5, f30_local6, f30_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f30_local8 = 5
    local f30_local9 = 3028
    local f30_local10 = TARGET_ENE_0
    local f30_local11 = 10
    local f30_local12 = 0
    local f30_local13 = 0
    local f30_local14 = 0
    local f30_local15 = arg0:GetRandam_Int(1, 100)
    if f30_local15 <= 30 then
        f30_local9 = 3030
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f30_local8, f30_local9, f30_local10, f30_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_Act33(arg0, arg1, arg2)
    local f31_local0 = arg0:GetDist(TARGET_ENE_0)
    local f31_local1 = 4.2
    local f31_local2 = 0
    local f31_local3 = 999
    local f31_local4 = 100
    local f31_local5 = 0
    local f31_local6 = 0
    local f31_local7 = 3
    Approach_Act_Flex(arg0, arg1, f31_local1, f31_local2, f31_local3, f31_local4, f31_local5, f31_local6, f31_local7)
    local f31_local8 = 5
    local f31_local9 = 3004
    local f31_local10 = TARGET_ENE_0
    local f31_local11 = 10
    local f31_local12 = 0
    local f31_local13 = 0
    local f31_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f31_local8, f31_local9, f31_local10, f31_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PyroxeneMagician_370200_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_PyroxeneMagician_370200_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14800) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                local f35_local0 = arg1:GetDist(TARGET_ENE_0)
                if f35_local0 >= 3 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                    local f35_local1 = 5
                    local f35_local2 = 3018
                    local f35_local3 = TARGET_ENE_0
                    local f35_local4 = 10
                    local f35_local5 = 0
                    local f35_local6 = 0
                    local f35_local7 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local1, f35_local2, f35_local3, successDist2, 0, 0, 0)
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                local f35_local0 = arg1:GetDist(TARGET_ENE_0)
                if f35_local0 >= 3 then
                    local f35_local1 = arg1:GetRandam_Int(1, 100)
                    if f35_local1 <= 60 then
                        arg2:ClearSubGoal()
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                        local f35_local2 = 5
                        local f35_local3 = 3019
                        local f35_local4 = TARGET_ENE_0
                        local f35_local5 = 10
                        local f35_local6 = 0
                        local f35_local7 = 0
                        local f35_local8 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local2, f35_local3, f35_local4, successDist2, 0, 0, 0)
                    end
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                local f35_local0 = arg1:GetDist(TARGET_ENE_0)
                if f35_local0 >= 3 then
                    local f35_local1 = arg1:GetRandam_Int(1, 100)
                    if f35_local1 <= 30 then
                        arg2:ClearSubGoal()
                        local f35_local2 = 5
                        local f35_local3 = 3018
                        local f35_local4 = TARGET_ENE_0
                        local f35_local5 = 10
                        local f35_local6 = 0
                        local f35_local7 = 0
                        local f35_local8 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local2, f35_local3, f35_local4, successDist2, 0, 0, 0)
                    end
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14801) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                local f35_local0 = arg1:GetDist(TARGET_ENE_0)
                if f35_local0 <= 7 then
                    arg2:ClearSubGoal()
                    local f35_local1 = 5
                    local f35_local2 = 3020
                    local f35_local3 = TARGET_ENE_0
                    local f35_local4 = 10
                    local f35_local5 = 0
                    local f35_local6 = 0
                    local f35_local7 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local1, f35_local2, f35_local3, successDist2, 0, 0, 0)
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14802) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                local f35_local0 = arg1:GetDist(TARGET_ENE_0)
                if f35_local0 <= 2 then
                    arg2:ClearSubGoal()
                    local f35_local1 = 5
                    local f35_local2 = 3026
                    local f35_local3 = TARGET_ENE_0
                    local f35_local4 = 10
                    local f35_local5 = 0
                    local f35_local6 = 0
                    local f35_local7 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local1, f35_local2, f35_local3, successDist2, 0, 0, 0)
                elseif f35_local0 <= 4 then
                    arg2:ClearSubGoal()
                    local f35_local1 = 5
                    local f35_local2 = 3027
                    local f35_local3 = TARGET_ENE_0
                    local f35_local4 = 10
                    local f35_local5 = 0
                    local f35_local6 = 0
                    local f35_local7 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local1, f35_local2, f35_local3, successDist2, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                local f35_local0 = arg1:GetDist(TARGET_ENE_0)
                if f35_local0 <= 2 then
                    arg2:ClearSubGoal()
                    local f35_local1 = 5
                    local f35_local2 = 3028
                    local f35_local3 = TARGET_ENE_0
                    local f35_local4 = 10
                    local f35_local5 = 0
                    local f35_local6 = 0
                    local f35_local7 = 0
                    local f35_local8 = arg1:GetRandam_Int(1, 100)
                    if f35_local8 <= 60 then
                        f35_local2 = 3026
                        local f35_local9 = 3025
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local1, f35_local9, f35_local3, successDist2, 0, 0, 0)
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local1, f35_local2, f35_local3, successDist2, 0, 0, 0)
                end
                return true
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                local f35_local0 = arg1:GetDist(TARGET_ENE_0)
                if f35_local0 <= 2 then
                    arg2:ClearSubGoal()
                    local f35_local1 = 5
                    local f35_local2 = 3029
                    local f35_local3 = TARGET_ENE_0
                    local f35_local4 = 10
                    local f35_local5 = 0
                    local f35_local6 = 0
                    local f35_local7 = 0
                    local f35_local8 = arg1:GetRandam_Int(1, 100)
                    if f35_local8 <= 60 then
                        f35_local2 = 3026
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local1, f35_local2, f35_local3, successDist2, 0, 0, 0)
                elseif f35_local0 <= 4 then
                    arg2:ClearSubGoal()
                    local f35_local1 = 5
                    local f35_local2 = 6001
                    local f35_local3 = TARGET_ENE_0
                    local f35_local4 = 10
                    local f35_local5 = 0
                    local f35_local6 = 0
                    local f35_local7 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f35_local1, f35_local2, f35_local3, successDist2, 0, 0, 0)
                end
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) then
        local f35_local0 = arg1:GetDist(TARGET_ENE_0)
        local f35_local1 = arg1:GetRandam_Int(1, 100)
        local f35_local2 = arg1:GetRandam_Int(1, 100)
        if arg1:HasSpecialEffectId(TARGET_SELF, 14802) == true and f35_local0 <= 5 and f35_local1 <= 25 and arg1:IsFinishTimer(1) then
            arg1:SetTimer(1, 5)
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            local f35_local3 = 5
            local f35_local4 = 3028
            local f35_local5 = TARGET_ENE_0
            local f35_local6 = 10
            local f35_local7 = 0
            local f35_local8 = 0
            local f35_local9 = 0
            local f35_local10 = arg1:GetRandam_Int(1, 100)
            if f35_local10 <= 80 then
                f35_local4 = 3030
            end
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f35_local3, f35_local4, f35_local5, f35_local6, 0, 0, 0)
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_PyroxeneMagician_370200_AfterAttackAct, "PyroxeneMagician_370200_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PyroxeneMagician_370200_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


