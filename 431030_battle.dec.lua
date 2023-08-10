RegisterTableGoal(GOAL_RoamArmySpearmen431030_Battle, "RoamArmySpearmen431030_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamArmySpearmen431030_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(4, 3001)
    arg1:EnableUnfavorableAttackCheck(4, 3002)
    arg1:EnableUnfavorableAttackCheck(4, 3100)
    arg1:EnableUnfavorableAttackCheck(4, 3101)
    arg1:EnableUnfavorableAttackCheck(4, 3102)
    arg1:EnableUnfavorableAttackCheck(4, 3103)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:IsRiding(TARGET_ENE_0) and arg1:HasSpecialEffectId(TARGET_ENE_0, 5012) == false then
        if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            f2_local0[13] = 70
            f2_local0[16] = 30
        elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            f2_local0[13] = 0
            f2_local0[16] = 40
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            f2_local0[17] = 100
        elseif f2_local3 >= 6 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 70
            f2_local0[16] = 30
            f2_local0[17] = 0
            f2_local0[18] = 0
        elseif f2_local3 >= 3 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 50
            f2_local0[16] = 50
            f2_local0[17] = 0
            f2_local0[18] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 100
            f2_local0[17] = 0
            f2_local0[18] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13298) and arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
        f2_local0[30] = 100
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 15 then
            f2_local0[19] = 100
            if arg1:HasSpecialEffectId(TARGET_SELF, 13277) then
                f2_local0[23] = 0
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13280) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                    f2_local0[23] = 10
                    f2_local0[30] = 50
                else
                    f2_local0[23] = 10
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13281) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                    f2_local0[26] = 0
                    f2_local0[30] = 50
                else
                    f2_local0[26] = 0
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13285) then
                f2_local0[23] = 10
                f2_local0[22] = 0
                if arg1:HasSpecialEffectId(TARGET_SELF, 13284) then
                    f2_local0[25] = 10
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13282) then
                f2_local0[24] = 0
                f2_local0[25] = 10
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13283) then
                f2_local0[26] = 0
            end
        else
            f2_local0[13] = 50
            f2_local0[14] = 50
            if arg1:HasSpecialEffectId(TARGET_SELF, 13277) then
                f2_local0[23] = 0
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13280) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                    f2_local0[23] = 10
                    f2_local0[30] = 50
                else
                    f2_local0[23] = 10
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13281) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                    f2_local0[26] = 0
                    f2_local0[30] = 50
                else
                    f2_local0[26] = 0
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13285) then
                f2_local0[23] = 10
                f2_local0[22] = 0
                if arg1:HasSpecialEffectId(TARGET_SELF, 13284) then
                    f2_local0[25] = 10
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13282) then
                f2_local0[24] = 0
                f2_local0[25] = 10
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13283) then
                f2_local0[26] = 0
            end
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 15 then
            f2_local0[19] = 100
            if arg1:HasSpecialEffectId(TARGET_SELF, 13277) then
                f2_local0[20] = 0
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13280) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                    f2_local0[23] = 30
                    f2_local0[30] = 50
                else
                    f2_local0[23] = 30
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13281) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                    f2_local0[26] = 0
                    f2_local0[30] = 50
                else
                    f2_local0[26] = 0
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13285) then
                f2_local0[23] = 30
                f2_local0[22] = 0
                if arg1:HasSpecialEffectId(TARGET_SELF, 13284) then
                    f2_local0[25] = 30
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13282) then
                f2_local0[24] = 0
                f2_local0[25] = 10
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13283) then
                f2_local0[26] = 0
            end
        else
            f2_local0[13] = 20
            f2_local0[14] = 80
            if arg1:HasSpecialEffectId(TARGET_SELF, 13277) then
                f2_local0[20] = 0
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13280) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                    f2_local0[23] = 30
                    f2_local0[30] = 50
                else
                    f2_local0[23] = 30
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13281) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                    f2_local0[26] = 0
                    f2_local0[30] = 50
                else
                    f2_local0[26] = 0
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13285) then
                f2_local0[23] = 30
                f2_local0[22] = 0
                if arg1:HasSpecialEffectId(TARGET_SELF, 13284) then
                    f2_local0[25] = 30
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13282) then
                f2_local0[24] = 0
                f2_local0[25] = 10
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13283) then
                f2_local0[26] = 0
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            f2_local0[17] = 100
        elseif f2_local3 >= 3 then
            f2_local0[13] = 80
            f2_local0[14] = 20
        else
            f2_local0[1] = 0
            f2_local0[2] = 20
            f2_local0[3] = 0
            f2_local0[13] = 10
            f2_local0[14] = 70
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[18] = 0
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if f2_local3 >= 3 then
            f2_local0[17] = 100
        else
            f2_local0[2] = 40
            f2_local0[3] = 20
            f2_local0[17] = 60
        end
    elseif f2_local3 >= 4.5 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[13] = 50
        f2_local0[14] = 10
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[17] = 0
        f2_local0[18] = 0
        if arg1:HasSpecialEffectId(TARGET_SELF, 13277) then
            f2_local0[20] = 20
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13280) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                f2_local0[23] = 60
                f2_local0[30] = 50
            else
                f2_local0[23] = 60
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13281) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                f2_local0[26] = 0
                f2_local0[30] = 50
            else
                f2_local0[26] = 30
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13285) then
            f2_local0[23] = 30
            f2_local0[22] = 80
            if arg1:HasSpecialEffectId(TARGET_SELF, 13284) then
                f2_local0[25] = 30
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13282) then
            f2_local0[25] = 10
            if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                f2_local0[28] = 20
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13283) then
            f2_local0[26] = 30
        end
    elseif f2_local3 >= 1.7 then
        f2_local0[1] = 0
        f2_local0[2] = 35
        f2_local0[3] = 30
        f2_local0[13] = 0
        f2_local0[14] = 25
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[17] = 0
        f2_local0[18] = 0
        if arg1:HasSpecialEffectId(TARGET_SELF, 13277) then
            f2_local0[20] = 50
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13280) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                f2_local0[23] = 0
                f2_local0[30] = 50
            else
                f2_local0[23] = 0
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13281) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                f2_local0[26] = 0
                f2_local0[30] = 50
            else
                f2_local0[26] = 0
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13285) then
            f2_local0[23] = 10
            f2_local0[22] = 70
            if arg1:HasSpecialEffectId(TARGET_SELF, 13284) then
                f2_local0[25] = 30
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13282) then
            f2_local0[24] = 0
            f2_local0[25] = 10
            if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                f2_local0[28] = 30
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13283) then
            f2_local0[26] = 50
        end
    else
        f2_local0[1] = 80
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[13] = 0
        f2_local0[14] = 10
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[17] = 0
        f2_local0[18] = 10
        if arg1:HasSpecialEffectId(TARGET_SELF, 13277) then
            f2_local0[20] = 50
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13280) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                f2_local0[23] = 0
                f2_local0[30] = 50
            else
                f2_local0[23] = 10
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13281) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13289) then
                f2_local0[26] = 0
                f2_local0[30] = 50
            else
                f2_local0[26] = 50
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13285) then
            f2_local0[23] = 0
            f2_local0[22] = 50
            if arg1:HasSpecialEffectId(TARGET_SELF, 13284) then
                f2_local0[25] = 30
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13282) then
            f2_local0[24] = 0
            f2_local0[25] = 10
            if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                f2_local0[28] = 30
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13283) then
            f2_local0[26] = 50
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3102, 10, f2_local0[1], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[20], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[22], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3007, 5, f2_local0[23], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3025, 15, f2_local0[30], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act03)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act26)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030_Act30)
    local f2_local6 = REGIST_FUNC(arg1, arg2, RoamArmySpearmen431030ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function RoamArmySpearmen431030_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = arg0:GetDist(TARGET_ENE_0)
    local f3_local2 = arg0:GetDist(TARGET_ENE_0)
    local f3_local3 = 1.5
    local f3_local4 = 0
    local f3_local5 = 999
    local f3_local6 = 100
    local f3_local7 = 100
    local f3_local8 = 3
    local f3_local9 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 13282) then
        f3_local4 = 100
        f3_local5 = 999
        f3_local6 = 0
        f3_local8 = 5
        f3_local9 = 0
    end
    Approach_Act_Flex(arg0, arg1, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8, f3_local9)
    local f3_local10 = 5
    local f3_local11 = 3102
    local f3_local12 = 6011
    local f3_local13 = 3100
    local f3_local14 = TARGET_ENE_0
    local f3_local15 = 2.5
    local f3_local16 = 1.5
    local f3_local17 = 3
    local f3_local18 = 0
    local f3_local19 = 0
    local f3_local20 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13058)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f3_local10, f3_local11, f3_local14, f3_local15, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f3_local10, f3_local12, f3_local14, f3_local16, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f3_local10, f3_local13, f3_local14, f3_local17, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamArmySpearmen431030_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    if f4_local0 >= 3.2 then
        local f4_local1 = 3.2
        local f4_local2 = 0
        local f4_local3 = 999
        local f4_local4 = 100
        local f4_local5 = 100
        local f4_local6 = 0
        local f4_local7 = 3
        if arg0:HasSpecialEffectId(TARGET_SELF, 13282) then
            f4_local2 = 100
            f4_local3 = 999
            f4_local4 = 0
            f4_local6 = 5
            f4_local7 = 0
        end
        Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    else
        local f4_local1 = arg0:GetRandam_Int(1, 3)
        local f4_local2 = TARGET_ENE_0
        local f4_local3 = 3.2
        local f4_local4 = TARGET_ENE_0
        local f4_local5 = true
        local f4_local6 = arg0:GetDist(TARGET_ENE_0)
        local f4_local7 = 100
        local f4_local8 = arg0:GetRandam_Int(1, 100)
        local f4_local9 = -1
        if f4_local8 <= f4_local7 then
            f4_local9 = 9910
        end
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local9, resultTypeIfGuardSuccess, isLifeSuccessGuard)
    end
    local f4_local1 = 5
    local f4_local2 = 3100
    local f4_local3 = TARGET_ENE_0
    local f4_local4 = 5
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13066)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 13067)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f4_local1, f4_local2, f4_local3, f4_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamArmySpearmen431030_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    if f5_local0 >= 3.2 then
        local f5_local1 = 3.2
        local f5_local2 = 0
        local f5_local3 = 999
        local f5_local4 = 100
        local f5_local5 = 100
        local f5_local6 = 0
        local f5_local7 = 3
        if arg0:HasSpecialEffectId(TARGET_SELF, 13282) then
            f5_local2 = 100
            f5_local3 = 999
            f5_local4 = 0
            f5_local6 = 5
            f5_local7 = 0
            isWalk = true
        end
        Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    else
        local f5_local1 = arg0:GetRandam_Int(1, 3)
        local f5_local2 = TARGET_ENE_0
        local f5_local3 = 3.2
        local f5_local4 = TARGET_ENE_0
        local f5_local5 = true
        local f5_local6 = arg0:GetDist(TARGET_ENE_0)
        local f5_local7 = 100
        local f5_local8 = arg0:GetRandam_Int(1, 100)
        local f5_local9 = -1
        if f5_local8 <= f5_local7 then
            f5_local9 = 9910
        end
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local9, resultTypeIfGuardSuccess, isLifeSuccessGuard)
    end
    local f5_local1 = 5
    local f5_local2 = 3103
    local f5_local3 = TARGET_ENE_0
    local f5_local4 = 5
    local f5_local5 = 0
    local f5_local6 = 0
    local f5_local7 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13066)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 13068)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f5_local1, f5_local2, f5_local3, f5_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamArmySpearmen431030_Act13(arg0, arg1, arg2)
    local f6_local0 = 10
    local f6_local1 = TARGET_ENE_0
    local f6_local2 = 3
    local f6_local3 = TARGET_SELF
    local f6_local4 = false
    local f6_local5 = arg0:GetDist(TARGET_ENE_0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13282) then
        ForceWalkDist = 100
        ForceRunDist = 999
        Odds_Run = 0
        WalkLife = 5
        RunLife = 0
        f6_local4 = true
    end
    local f6_local6 = 100
    local f6_local7 = arg0:GetRandam_Int(1, 100)
    local f6_local8 = -1
    if f6_local7 <= f6_local6 then
        f6_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local8)
    
end

function RoamArmySpearmen431030_Act14(arg0, arg1, arg2)
    local f7_local0 = arg0:GetRandam_Int(1, 3)
    local f7_local1 = TARGET_ENE_0
    local f7_local2 = arg0:GetRandam_Int(0, 1)
    local f7_local3 = 180
    local f7_local4 = 0
    local f7_local5 = TARGET_SELF
    local f7_local6 = true
    local f7_local7 = false
    local f7_local8 = arg0:GetDist(TARGET_ENE_0)
    local f7_local9 = 100
    local f7_local10 = arg0:GetRandam_Int(1, 100)
    local f7_local11 = -1
    if f7_local10 <= f7_local9 then
        f7_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f7_local0, f7_local1, f7_local2, f7_local3, f7_local6, f7_local7, f7_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamArmySpearmen431030_Act15(arg0, arg1, arg2)
    local f8_local0 = arg0:GetRandam_Int(1, 3)
    local f8_local1 = TARGET_ENE_0
    local f8_local2 = arg0:GetRandam_Int(0, 1)
    local f8_local3 = 180
    local f8_local4 = 0
    local f8_local5 = TARGET_SELF
    local f8_local6 = true
    local f8_local7 = false
    local f8_local8 = arg0:GetDist(TARGET_ENE_0)
    local f8_local9 = 100
    local f8_local10 = arg0:GetRandam_Int(1, 100)
    local f8_local11 = -1
    if f8_local10 <= f8_local9 then
        f8_local11 = 9920
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13060)
    local f8_local12 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f8_local0, f8_local1, f8_local4, f8_local5, f8_local6, f8_local11)
    f8_local12:SetTargetRange(1, 6, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamArmySpearmen431030_Act16(arg0, arg1, arg2)
    local f9_local0 = arg0:GetRandam_Int(1, 3)
    local f9_local1 = TARGET_ENE_0
    local f9_local2 = arg0:GetRandam_Int(0, 1)
    local f9_local3 = 180
    local f9_local4 = 0
    local f9_local5 = TARGET_SELF
    local f9_local6 = true
    local f9_local7 = false
    local f9_local8 = arg0:GetDist(TARGET_ENE_0)
    local f9_local9 = 100
    local f9_local10 = arg0:GetRandam_Int(1, 100)
    local f9_local11 = -1
    if f9_local10 <= f9_local9 then
        f9_local11 = 9920
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13060)
    local f9_local12 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f9_local0, f9_local1, f9_local2, f9_local3, f9_local6, f9_local7, f9_local11)
    f9_local12:SetTargetRange(1, 6, 100)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamArmySpearmen431030_Act17(arg0, arg1, arg2)
    local f10_local0 = 2
    local f10_local1 = TARGET_ENE_0
    local f10_local2 = 90
    local f10_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f10_local4 = true
    local f10_local5 = 100
    local f10_local6 = arg0:GetRandam_Int(1, 100)
    local f10_local7 = -1
    if f10_local6 <= f10_local5 then
        f10_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f10_local0, f10_local1, f10_local2, f10_local7, f10_local3, f10_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamArmySpearmen431030_Act18(arg0, arg1, arg2)
    local f11_local0 = 1
    local f11_local1 = TARGET_ENE_0
    local f11_local2 = 2
    local f11_local3 = TARGET_ENE_0
    local f11_local4 = true
    local f11_local5 = arg0:GetDist(TARGET_ENE_0)
    local f11_local6 = 100
    local f11_local7 = arg0:GetRandam_Int(1, 100)
    local f11_local8 = -1
    if f11_local7 <= f11_local6 then
        f11_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local8, resultTypeIfGuardSuccess, isLifeSuccessGuard)
    
end

function RoamArmySpearmen431030_Act19(arg0, arg1, arg2)
    local f12_local0 = 10
    local f12_local1 = TARGET_ENE_0
    local f12_local2 = 10
    local f12_local3 = TARGET_SELF
    local f12_local4 = true
    local f12_local5 = arg0:GetDist(TARGET_ENE_0)
    local f12_local6 = 100
    local f12_local7 = arg0:GetRandam_Int(1, 100)
    local f12_local8 = -1
    if f12_local7 <= f12_local6 then
        f12_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local8)
    
end

function RoamArmySpearmen431030_Act20(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 3.5
    local f13_local2 = 0
    local f13_local3 = 999
    local f13_local4 = 100
    local f13_local5 = 0
    local f13_local6 = 3
    local f13_local7 = 3
    Approach_Act_Flex(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    local f13_local8 = 5
    local f13_local9 = 3008
    local f13_local10 = TARGET_ENE_0
    local f13_local11 = 10
    local f13_local12 = 0
    local f13_local13 = 0
    local f13_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local8, f13_local9, f13_local10, f13_local11, 0, 0, 0)
    
end

function RoamArmySpearmen431030_Act21(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 3.5
    local f14_local2 = 0
    local f14_local3 = 999
    local f14_local4 = 100
    local f14_local5 = 0
    local f14_local6 = 3
    local f14_local7 = 3
    Approach_Act_Flex(arg0, arg1, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7)
    local f14_local8 = 5
    local f14_local9 = 3009
    local f14_local10 = TARGET_ENE_0
    local f14_local11 = 10
    local f14_local12 = 0
    local f14_local13 = 0
    local f14_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local8, f14_local9, f14_local10, f14_local11, 0, 0, 0)
    
end

function RoamArmySpearmen431030_Act22(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = arg0:GetRandam_Int(1, 100)
    if f15_local0 >= 6 then
        local f15_local2 = arg0:GetDist(TARGET_ENE_0)
        local f15_local3 = 5.5
        local f15_local4 = 0
        local f15_local5 = 999
        local f15_local6 = 100
        local f15_local7 = 100
        local f15_local8 = 3
        local f15_local9 = 3
        Approach_Act_Flex(arg0, arg1, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7, f15_local8, f15_local9)
    elseif f15_local0 <= 3 then
        local f15_local2 = 5
        local f15_local3 = 6001
        local f15_local4 = TARGET_ENE_0
        local f15_local5 = 10
        local f15_local6 = 0
        local f15_local7 = 0
        local f15_local8 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local2, f15_local3, f15_local4, f15_local5, 0, 0, 0)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f15_local2 = 5
    local f15_local3 = 3010
    local f15_local4 = TARGET_ENE_0
    local f15_local5 = 10
    local f15_local6 = 0
    local f15_local7 = 0
    local f15_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local2, f15_local3, f15_local4, f15_local5, 0, 0, 0)
    
end

function RoamArmySpearmen431030_Act23(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 8.5
    local f16_local2 = 0
    local f16_local3 = 999
    local f16_local4 = 100
    local f16_local5 = 0
    local f16_local6 = 3
    local f16_local7 = 3
    Approach_Act_Flex(arg0, arg1, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7)
    local f16_local8 = 5
    local f16_local9 = 3007
    local f16_local10 = TARGET_ENE_0
    local f16_local11 = 10
    local f16_local12 = 0
    local f16_local13 = 0
    local f16_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local8, f16_local9, f16_local10, f16_local11, 0, 0, 0)
    
end

function RoamArmySpearmen431030_Act24(arg0, arg1, arg2)
    local f17_local0 = 5
    local f17_local1 = 3026
    local f17_local2 = TARGET_ENE_0
    local f17_local3 = 10
    local f17_local4 = 0
    local f17_local5 = 0
    local f17_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f17_local0, f17_local1, f17_local2, f17_local3, 0, 0, 0)
    local f17_local7 = 4
    local f17_local8 = TARGET_ENE_0
    local f17_local9 = 0.1
    local f17_local10 = TARGET_SELF
    local f17_local11 = true
    local f17_local12 = arg0:GetDist(TARGET_ENE_0)
    local f17_local13 = 100
    local f17_local14 = arg0:GetRandam_Int(1, 100)
    local f17_local15 = -1
    if f17_local14 <= f17_local13 then
        f17_local15 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local7, f17_local8, f17_local9, f17_local10, f17_local11, f17_local15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamArmySpearmen431030_Act25(arg0, arg1, arg2)
    local f18_local0 = 5
    local f18_local1 = arg0:GetRandam_Int(3027, 3028)
    local f18_local2 = TARGET_ENE_0
    local f18_local3 = 10
    local f18_local4 = 0
    local f18_local5 = 0
    local f18_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local0, f18_local1, f18_local2, f18_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamArmySpearmen431030_Act26(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetRandam_Int(1, 100)
    if f19_local0 >= 3 then
        local f19_local2 = 4
        local f19_local3 = TARGET_ENE_0
        local f19_local4 = 0.1
        local f19_local5 = TARGET_SELF
        local f19_local6 = true
        local f19_local7 = arg0:GetDist(TARGET_ENE_0)
        local f19_local8 = 100
        local f19_local9 = arg0:GetRandam_Int(1, 100)
        local f19_local10 = -1
        if f19_local9 <= f19_local8 then
            f19_local10 = 9910
        end
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6, f19_local10)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f19_local2 = arg0:GetRandam_Int(1, 2)
        local f19_local3 = TARGET_ENE_0
        local f19_local4 = arg0:GetRandam_Int(0, 1)
        local f19_local5 = arg0:GetRandam_Int(30, 45)
        local f19_local6 = 0.1
        local f19_local7 = TARGET_SELF
        local f19_local8 = true
        local f19_local9 = true
        local f19_local10 = arg0:GetDist(TARGET_ENE_0)
        local f19_local11 = 100
        local f19_local12 = arg0:GetRandam_Int(1, 100)
        local f19_local13 = -1
        if f19_local12 <= f19_local11 then
            f19_local13 = 9910
        end
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local2, f19_local3, f19_local4, f19_local5, f19_local8, f19_local9, f19_local13)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function RoamArmySpearmen431030_Act30(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13298) then
        local f20_local0 = arg0:GetDist(TARGET_ENE_0)
        local f20_local1 = 8.5
        local f20_local2 = 0
        local f20_local3 = 999
        local f20_local4 = 100
        local f20_local5 = 0
        local f20_local6 = 3
        local f20_local7 = 3
        if arg0:HasSpecialEffectId(TARGET_SELF, 13055) then
            f20_local5 = 0
        end
        if arg0:HasSpecialEffectId(TARGET_SELF, 13282) then
            f20_local2 = 100
            f20_local3 = 999
            f20_local4 = 0
            f20_local6 = 5
            f20_local7 = 0
        end
        Approach_Act_Flex(arg0, arg1, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7)
    end
    local f20_local0 = 5
    local f20_local1 = 3025
    local f20_local2 = TARGET_ENE_0
    local f20_local3 = 10
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local0, f20_local1, f20_local2, f20_local3, 0, 0, 0)
    
end

function RoamArmySpearmen431030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RoamArmySpearmen431030_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f24_local0 = arg1:GetDist(TARGET_ENE_0)
    local f24_local1 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13060) and f24_local0 <= 6 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_None, 0, 90)
        end
        if arg1:GetSpecialEffectActivateInterruptId(13067) then
            arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 13068)
            if f24_local0 <= 3.5 then
                if arg1:IsInterupt(INTERUPT_TargetIsGuard) then
                    if arg1:GetSpecialEffectActivateInterruptId(13068) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3103, TARGET_ENE_0, 4, 0, 90)
                    end
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 4, 0, 90)
                end
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(13068) and f24_local0 <= 3.5 then
            if arg1:IsInterupt(INTERUPT_TargetIsGuard) then
                arg2:ClearSubGoal()
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 4, 0, 90)
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            local f24_local2 = arg1:GetDist(TARGET_ENE_0)
            if f24_local2 <= 2 then
                arg2:ClearSubGoal()
                local f24_local3 = 5
                local f24_local4 = 3011
                local f24_local5 = TARGET_ENE_0
                local f24_local6 = 2.5
                local f24_local7 = 0
                local f24_local8 = 0
                local f24_local9 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f24_local3, f24_local4, f24_local5, f24_local6, 0, 0, 0)
            end
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false then
        if f24_local0 <= 3 then
            if not not arg1:HasSpecialEffectId(TARGET_SELF, 13281) or arg1:HasSpecialEffectId(TARGET_SELF, 13283) then
                if f24_local1 <= 50 then
                    arg2:ClearSubGoal()
                    local f24_local2 = 5
                    local f24_local3 = 3009
                    local f24_local4 = TARGET_ENE_0
                    local f24_local5 = 2.5
                    local f24_local6 = 0
                    local f24_local7 = 0
                    local f24_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f24_local2, f24_local3, f24_local4, f24_local5, 0, 0, 0)
                end
            elseif f24_local1 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3101, TARGET_ENE_0, 3, 0, 0, 0, 0)
            end
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false then
        local f24_local2 = arg1:GetDist(TARGET_ENE_0)
        if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
            arg2:ClearSubGoal()
            local f24_local3 = 0.5
            local f24_local4 = TARGET_ENE_0
            local f24_local5 = 10
            local f24_local6 = 0
            local f24_local7 = 0
            local f24_local8 = 0
            local f24_local9 = 3024
            local f24_local10 = arg1:GetRandam_Int(1, 100)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f24_local3, f24_local9, f24_local4, f24_local5, 0, 0, 0)
        elseif f24_local2 >= 4 then
            arg2:ClearSubGoal()
            local f24_local3 = 10
            local f24_local4 = TARGET_ENE_0
            local f24_local5 = 3
            local f24_local6 = TARGET_SELF
            local f24_local7 = false
            local f24_local8 = arg1:GetDist(TARGET_ENE_0)
            local f24_local9 = 100
            local f24_local10 = arg1:GetRandam_Int(1, 100)
            local f24_local11 = -1
            if f24_local10 <= f24_local9 then
                f24_local11 = 9910
            end
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, f24_local3, f24_local4, f24_local5, f24_local6, f24_local7, f24_local11)
        else
            arg2:ClearSubGoal()
            local f24_local3 = 0.8
            local f24_local4 = TARGET_ENE_0
            local f24_local5 = 1
            local f24_local6 = TARGET_ENE_0
            local f24_local7 = true
            local f24_local8 = arg1:GetDist(TARGET_ENE_0)
            local f24_local9 = 30
            local f24_local10 = arg1:GetRandam_Int(1, 100)
            local f24_local11 = -1
            if f24_local10 <= f24_local9 then
                f24_local11 = 9910
            end
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f24_local3, f24_local4, f24_local5, f24_local6, f24_local7, f24_local11, resultTypeIfGuardSuccess, isLifeSuccessGuard)
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_RoamArmySpearmen431030_AfterAttackAct, "RoamArmySpearmen431030_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamArmySpearmen431030_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


