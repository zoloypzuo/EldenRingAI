RegisterTableGoal(GOAL_BeastProgenyStandard397000_Battle, "BeastProgenyStandard397000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BeastProgenyStandard397000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 0)
    arg1:SetNumber(2, 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetRandam_Int(1, 100)
    local f2_local4 = arg1:GetEventRequest()
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetDist(TARGET_ENE_0)
    local f2_local7 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 30)
    local f2_local8 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 30)
    local f2_local9 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 30)
    local f2_local10 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 30)
    local f2_local11 = arg1:GetDist(TARGET_ENE_0)
    local f2_local12 = arg1:GetRandam_Int(1, 100)
    local f2_local13 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local13 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14665) then
            if f2_local11 >= 12 then
                f2_local0[10] = 20
                f2_local0[24] = 80
            elseif f2_local11 >= 3 then
                f2_local0[10] = 10
                f2_local0[11] = 0
                f2_local0[24] = 60
                f2_local0[26] = 30
            else
                f2_local0[10] = 10
                f2_local0[11] = 0
                f2_local0[23] = 40
                f2_local0[25] = 40
            end
        elseif f2_local11 >= 12 then
            f2_local0[22] = 100
        elseif f2_local11 >= 3 then
            f2_local0[3] = 20
            f2_local0[9] = 20
            f2_local0[24] = 30
            f2_local0[26] = 30
        else
            f2_local0[7] = 20
            f2_local0[23] = 20
            f2_local0[25] = 30
            f2_local0[26] = 30
        end
    elseif f2_local13 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14665) then
            if f2_local11 >= 12 then
                f2_local0[10] = 30
                f2_local0[24] = 70
            elseif f2_local11 >= 7 then
                f2_local0[10] = 30
                f2_local0[11] = 0
                f2_local0[24] = 50
                f2_local0[26] = 20
            else
                f2_local0[10] = 20
                f2_local0[11] = 20
                f2_local0[23] = 40
                f2_local0[25] = 20
            end
        elseif f2_local11 >= 12 then
            f2_local0[22] = 100
        elseif f2_local11 >= 3 then
            f2_local0[3] = 20
            f2_local0[9] = 20
            f2_local0[24] = 30
            f2_local0[26] = 30
        else
            f2_local0[7] = 20
            f2_local0[23] = 20
            f2_local0[25] = 30
        end
    else
        if arg1:HasSpecialEffectId(TARGET_SELF, 14665) then
            local f2_local14 = 1
            if arg1:HasSpecialEffectId(TARGET_SELF, 14666) then
                f2_local14 = 0
            end
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 140, 90, 3) then
                if f2_local11 >= 6 then
                    f2_local0[21] = 100
                else
                    f2_local0[1] = 50 * f2_local14
                    f2_local0[2] = 0
                    f2_local0[3] = 20 * f2_local14
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[21] = 30
                end
            elseif f2_local11 >= 9 then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 80
                f2_local0[11] = 0
                f2_local0[22] = 0
                f2_local0[24] = 20
            elseif f2_local11 >= 6 then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 10 * f2_local14
                f2_local0[5] = 10 * f2_local14
                f2_local0[6] = 0
                f2_local0[10] = 70
                f2_local0[11] = 0
                f2_local0[24] = 20
            elseif f2_local11 >= 3.5 then
                f2_local0[1] = 10 * f2_local14
                f2_local0[2] = 10 * f2_local14
                f2_local0[3] = 10 * f2_local14
                f2_local0[5] = 10 * f2_local14
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 40
                f2_local0[24] = 20
                f2_local0[26] = 0
            else
                f2_local0[1] = 30 * f2_local14
                f2_local0[6] = 0
                f2_local0[7] = 20 * f2_local14
                f2_local0[17] = 20
                f2_local0[23] = 10
                f2_local0[25] = 40
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14660) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 140, 90, 3) then
                if f2_local11 >= 6 then
                    f2_local0[21] = 100
                else
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[21] = 30
                end
            elseif f2_local11 >= 12 then
                f2_local0[1] = 20
                f2_local0[2] = 50
                f2_local0[3] = 0
                f2_local0[5] = 30
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[17] = 0
            elseif f2_local11 >= 8 then
                f2_local0[1] = 20
                f2_local0[2] = 50
                f2_local0[3] = 20
                f2_local0[5] = 20
                f2_local0[6] = 20
                f2_local0[7] = 0
                f2_local0[17] = 0
                f2_local0[24] = 20
            elseif f2_local11 >= 4.5 then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 20
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[7] = 0
                f2_local0[17] = 20
                f2_local0[23] = 10
                f2_local0[24] = 20
            else
                f2_local0[1] = 20
                f2_local0[2] = 0
                f2_local0[3] = 20
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[7] = 10
                f2_local0[17] = 10
                f2_local0[23] = 10
                f2_local0[24] = 20
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 140, 90, 3) then
            if f2_local11 >= 6 then
                f2_local0[21] = 100
            else
                f2_local0[1] = 50
                f2_local0[2] = 0
                f2_local0[3] = 20
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[21] = 30
            end
        elseif f2_local11 >= 12 then
            f2_local0[1] = 20
            f2_local0[2] = 50
            f2_local0[3] = 0
            f2_local0[5] = 30
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[17] = 0
        elseif f2_local11 >= 8 then
            f2_local0[1] = 20
            f2_local0[2] = 30
            f2_local0[3] = 0
            f2_local0[5] = 30
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[17] = 0
            f2_local0[23] = 0
            f2_local0[24] = 20
        elseif f2_local11 >= 4.5 then
            f2_local0[1] = 20
            f2_local0[2] = 10
            f2_local0[3] = 20
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 10
            f2_local0[17] = 20
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 20
        else
            f2_local0[1] = 20
            f2_local0[2] = 0
            f2_local0[3] = 20
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 10
            f2_local0[17] = 10
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 20
            f2_local0[26] = 20
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14663) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14661) then
                f2_local0[9] = 1000
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14662) then
                f2_local0[8] = 1000
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14665) then
                f2_local0[10] = 1000
            end
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 7, f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3011, 7, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 7, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 7, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 7, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[7], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3031, 7, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3008, 25, f2_local0[9], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3015, 5, f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3016, 25, f2_local0[11], 0)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3016, 7, f2_local0[17], 0)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6001, 10, f2_local0[25], 0)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6002, 7, f2_local0[26], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act11)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act17)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_Act26)
    local f2_local14 = REGIST_FUNC(arg1, arg2, BeastProgenyStandard397000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local14, f2_local2)
    
end

function BeastProgenyStandard397000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 2.9
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
        f3_local5 = 100
    end
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = 3003
    local f3_local11 = TARGET_ENE_0
    local f3_local12 = 3
    local f3_local13 = 0
    local f3_local14 = 0
    local f3_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f3_local8, f3_local9, f3_local11, f3_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f3_local8, f3_local10, f3_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 4.5
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
        f4_local5 = 100
    end
    if f4_local0 <= 5 + arg0:GetMapHitRadius(TARGET_SELF) - 1.5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    else
        Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    end
    local f4_local8 = 5
    local f4_local9 = 3001
    local f4_local10 = 3011
    local f4_local11 = TARGET_ENE_0
    local f4_local12 = 5
    local f4_local13 = 0
    local f4_local14 = 0
    local f4_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f4_local8, f4_local9, f4_local11, f4_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f4_local8, f4_local10, f4_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 4.5
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
        f5_local5 = 100
    end
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 5
    local f5_local9 = 3002
    local f5_local10 = 3012
    local f5_local11 = TARGET_ENE_0
    local f5_local12 = 5
    local f5_local13 = 0
    local f5_local14 = 0
    local f5_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f5_local8, f5_local9, f5_local11, f5_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f5_local8, f5_local10, f5_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 4
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
        f6_local5 = 100
    end
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 5
    local f6_local9 = 3003
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 10
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 10
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
        f7_local5 = 100
    end
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 5
    local f7_local9 = 3004
    local f7_local10 = TARGET_ENE_0
    local f7_local11 = 10
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f7_local8, f7_local9, f7_local10, f7_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 1.5
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 100
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
        f8_local5 = 100
    end
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local8 = 5
    local f8_local9 = 3005
    local f8_local10 = 3014
    local f8_local11 = TARGET_ENE_0
    local f8_local12 = 5
    local f8_local13 = 0
    local f8_local14 = 0
    local f8_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f8_local8, f8_local9, f8_local11, f8_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f8_local8, f8_local10, f8_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_Act07(arg0, arg1, arg2)
    local f9_local0 = 5
    local f9_local1 = 3006
    local f9_local2 = TARGET_ENE_0
    local f9_local3 = 10
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f9_local0, f9_local1, f9_local2, f9_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    if f10_local0 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    local f10_local1 = 5
    local f10_local2 = 3009
    local f10_local3 = TARGET_ENE_0
    local f10_local4 = 10
    local f10_local5 = 0
    local f10_local6 = 0
    local f10_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f10_local1, f10_local2, f10_local3, f10_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    if f11_local0 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    local f11_local1 = 5
    local f11_local2 = 3008
    local f11_local3 = TARGET_ENE_0
    local f11_local4 = 10
    local f11_local5 = 0
    local f11_local6 = 0
    local f11_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f11_local1, f11_local2, f11_local3, f11_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_Act10(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f12_local0 = 5
    local f12_local1 = 3015
    local f12_local2 = TARGET_ENE_0
    local f12_local3 = 30
    local f12_local4 = 80
    local f12_local5 = 80
    local f12_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_Act11(arg0, arg1, arg2)
    local f13_local0 = 5
    local f13_local1 = 3016
    local f13_local2 = TARGET_ENE_0
    local f13_local3 = 20
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f13_local0, f13_local1, f13_local2, f13_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_Act17(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 4
    local f14_local2 = 0
    local f14_local3 = 999
    local f14_local4 = 100
    local f14_local5 = 0
    local f14_local6 = 3
    local f14_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
        f14_local5 = 100
    end
    Approach_Act_Flex(arg0, arg1, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7)
    local f14_local8 = 5
    local f14_local9 = 3031
    local f14_local10 = 3032
    local f14_local11 = TARGET_ENE_0
    local f14_local12 = 10
    local f14_local13 = 0
    local f14_local14 = 0
    local f14_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f14_local8, f14_local9, f14_local11, f14_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f14_local8, f14_local10, f14_local11, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_Act21(arg0, arg1, arg2)
    local f15_local0 = 2
    local f15_local1 = TARGET_ENE_0
    local f15_local2 = 45
    local f15_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f15_local4 = true
    local f15_local5 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
        f15_local5 = 100
    end
    local f15_local6 = arg0:GetRandam_Int(1, 100)
    local f15_local7 = -1
    if f15_local6 <= f15_local5 then
        f15_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f15_local0, f15_local1, f15_local2, f15_local7, f15_local3, f15_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_Act22(arg0, arg1, arg2)
    local f16_local0 = 10
    local f16_local1 = TARGET_ENE_0
    local f16_local2 = 5
    local f16_local3 = TARGET_SELF
    local f16_local4 = false
    local f16_local5 = arg0:GetDist(TARGET_ENE_0)
    local f16_local6 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
        f16_local6 = 100
    end
    local f16_local7 = arg0:GetRandam_Int(1, 100)
    local f16_local8 = -1
    if f16_local7 <= f16_local6 then
        f16_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_Act23(arg0, arg1, arg2)
    local f17_local0 = arg0:GetRandam_Int(1, 3)
    local f17_local1 = TARGET_ENE_0
    local f17_local2 = 10
    local f17_local3 = TARGET_ENE_0
    local f17_local4 = true
    local f17_local5 = arg0:GetDist(TARGET_ENE_0)
    local f17_local6 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
        f17_local6 = 100
    end
    local f17_local7 = arg0:GetRandam_Int(1, 100)
    local f17_local8 = -1
    if f17_local7 <= f17_local6 then
        f17_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_Act24(arg0, arg1, arg2)
    local f18_local0 = arg0:GetRandam_Int(1, 2)
    local f18_local1 = TARGET_ENE_0
    local f18_local2 = arg0:GetRandam_Int(0, 1)
    local f18_local3 = arg0:GetRandam_Int(30, 45)
    local f18_local4 = 3
    local f18_local5 = TARGET_SELF
    local f18_local6 = true
    local f18_local7 = true
    local f18_local8 = arg0:GetDist(TARGET_ENE_0)
    local f18_local9 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 14660) then
        f18_local9 = 100
    end
    local f18_local10 = arg0:GetRandam_Int(1, 100)
    local f18_local11 = -1
    if f18_local10 <= f18_local9 then
        f18_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f18_local0, f18_local1, f18_local2, f18_local3, f18_local6, f18_local7, f18_local11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_Act25(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_Act26(arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = arg0:GetRandam_Int(6002, 6003)
    local f20_local2 = AI_DIR_TYPE_L
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 90, 30) then
        f20_local1 = 6003
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 90, 30) then
        f20_local1 = 6002
    end
    if f20_local1 == 6003 then
        f20_local2 = AI_DIR_TYPE_R
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f20_local1, TARGET_ENE_0, 0, f20_local2, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BeastProgenyStandard397000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BeastProgenyStandard397000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f24_local0 = arg1:GetDist(TARGET_ENE_0)
    local f24_local1 = arg1:GetDist(TARGET_FRI_0)
    local f24_local2 = arg1:GetRandam_Int(1, 100)
    local f24_local3 = arg1:GetHpRate(TARGET_SELF)
    local f24_local4 = arg1:GetPrevTargetState()
    local f24_local5 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    local f24_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 14660)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14666) == false then
            if f24_local0 <= 12 and f24_local0 >= 4 and arg1:GetAttackPassedTime(3004) >= 25 and f24_local2 <= 60 then
                arg2:ClearSubGoal()
                BeastProgenyStandard397000_Act05(arg1, arg2, paramTbl)
                return true
            elseif f24_local0 >= 3 and f24_local2 <= 40 and arg1:GetAttackPassedTime(3008) >= 20 then
                arg2:ClearSubGoal()
                BeastProgenyStandard397000_Act09(arg1, arg2, paramTbl)
                return true
            elseif f24_local0 >= 4 and f24_local2 <= 60 and arg1:GetAttackPassedTime(3002) >= 15 then
                arg2:ClearSubGoal()
                BeastProgenyStandard397000_Act03(arg1, arg2, paramTbl)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            arg2:ClearSubGoal()
            local f24_local7 = arg1:GetDist(TARGET_ENE_0)
            local f24_local8 = arg1:GetRandam_Int(1, 100)
            if f24_local7 >= 8 and f24_local8 <= 60 then
                local f24_local9 = 5
                local f24_local10 = TARGET_ENE_0
                local f24_local11 = 100
                local f24_local12 = 0
                local f24_local13 = 0
                local f24_local14 = 0
                local f24_local15 = 3017
                if f24_local8 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local9, f24_local15, f24_local10, f24_local11, 80, 80, 80)
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f24_local9, f24_local15, f24_local10, f24_local11, 80, 80, 80)
            end
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        if f24_local0 >= 4 then
            BeastProgenyStandard397000_Act26(arg1, arg2)
            BeastProgenyStandard397000_Act22(arg1, arg2)
        elseif f24_local2 <= 60 then
            BeastProgenyStandard397000_Act03(arg1, arg2)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) and f24_local6 == false then
        if f24_local0 <= 2.5 and f24_local2 <= 40 and arg1:GetAttackPassedTime(3005) >= 10 then
            arg2:ClearSubGoal()
            BeastProgenyStandard397000_Act06(arg1, arg2)
            return true
        elseif f24_local2 <= 60 and f24_local0 <= 3 and arg1:GetAttackPassedTime(3006) >= 10 then
            arg2:ClearSubGoal()
            BeastProgenyStandard397000_Act07(arg1, arg2)
            return true
        elseif f24_local2 <= 80 and f24_local0 <= 3 then
            arg2:ClearSubGoal()
            BeastProgenyStandard397000_Act25(arg1, arg2)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 180, 30) then
            arg2:ClearSubGoal()
            if arg1:GetAttackPassedTime(6001) >= 6 and arg1:GetAttackPassedTime(6002) >= 6 and arg1:GetAttackPassedTime(6003) >= 6 and f24_local2 <= 50 then
                arg2:ClearSubGoal()
                BeastProgenyStandard397000_Act26(arg1, arg2)
            elseif f24_local0 <= 3 and arg1:GetAttackPassedTime(3006) >= 10 and f24_local2 <= 50 then
                arg2:ClearSubGoal()
                BeastProgenyStandard397000_Act07(arg1, arg2)
            end
        elseif f24_local2 <= 25 and arg1:HasSpecialEffectId(TARGET_SELF, 14660) then
            arg2:ClearSubGoal()
            BeastProgenyStandard397000_Act23(arg1, arg2, paramTbl)
        elseif f24_local2 <= 40 and arg1:HasSpecialEffectId(TARGET_SELF, 14660) then
            arg2:ClearSubGoal()
            BeastProgenyStandard397000_Act24(arg1, arg2, paramTbl)
        elseif f24_local2 <= 15 then
            arg2:ClearSubGoal()
            BeastProgenyStandard397000_Act26(arg1, arg2)
        elseif f24_local2 <= 25 then
            arg2:ClearSubGoal()
            BeastProgenyStandard397000_Act25(arg1, arg2)
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_BeastProgenyStandard397000_AfterAttackAct, "BeastProgenyStandard397000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BeastProgenyStandard397000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


