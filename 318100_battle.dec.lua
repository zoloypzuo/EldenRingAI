RegisterTableGoal(GOAL_RuneWolf318100_Battle, "RuneWolf318100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneWolf318100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 0)
    arg1:SetNumber(2, 0)
    arg1:SetNumber(3, 0)
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
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    
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
    local f2_local6 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 90, 50)
    local f2_local7 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 90, 50)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 16902)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16903)
    if arg1:HasSpecialEffectId(TARGET_SELF, 16904) and f2_local3 <= 50 then
        f2_local0[8] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16941) then
        f2_local0[8] = 100
    elseif arg1:GetNumber(2) == 0 and f2_local3 >= 7 then
        f2_local0[23] = 100
    else
        local f2_local9 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
        if f2_local9 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            f2_local0[22] = 20
            f2_local0[24] = 80
            if arg1:HasSpecialEffectId(TARGET_SELF, 16940) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                f2_local0[8] = 50
            end
        elseif f2_local9 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            f2_local0[3] = 10
            f2_local0[6] = 30
            f2_local0[24] = 60
            if arg1:HasSpecialEffectId(TARGET_SELF, 16940) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                f2_local0[8] = 50
            end
        elseif f2_local8 == true then
            if f2_local7 == true then
                if f2_local3 <= 5 then
                    f2_local0[5] = 50
                    f2_local0[27] = 50
                else
                    f2_local0[27] = 100
                end
            elseif f2_local6 == true then
                if f2_local3 <= 7 then
                    f2_local0[1] = 30
                    f2_local0[2] = 10
                    f2_local0[10] = 30
                    f2_local0[11] = 25
                    f2_local0[13] = 10
                elseif f2_local3 <= 15 then
                    f2_local0[1] = 20
                    f2_local0[6] = 25
                    f2_local0[10] = 45
                    f2_local0[26] = 20
                else
                    f2_local0[3] = 20
                    f2_local0[6] = 35
                    f2_local0[14] = 25
                    f2_local0[23] = 20
                end
            elseif f2_local3 <= 7 then
                f2_local0[2] = 30
                f2_local0[13] = 20
                f2_local0[26] = 30
                f2_local0[25] = 10
                f2_local0[27] = 10
            elseif f2_local3 <= 15 then
                f2_local0[1] = 25
                f2_local0[2] = 30
                f2_local0[10] = 20
                f2_local0[26] = 25
            else
                f2_local0[6] = 20
                f2_local0[10] = 10
                f2_local0[14] = 30
                f2_local0[23] = 40
            end
        elseif f2_local7 == true then
            if f2_local3 <= 5 then
                f2_local0[5] = 50
                f2_local0[27] = 50
            else
                f2_local0[27] = 100
            end
        elseif f2_local6 == true then
            if f2_local3 <= 7 then
                f2_local0[1] = 40
                f2_local0[2] = 20
                f2_local0[25] = 20
                f2_local0[26] = 20
            elseif f2_local3 <= 15 then
                f2_local0[1] = 10
                f2_local0[3] = 35
                f2_local0[4] = 15
                f2_local0[6] = 35
                f2_local0[26] = 20
            else
                f2_local0[1] = 15
                f2_local0[3] = 40
                f2_local0[4] = 10
                f2_local0[6] = 55
            end
        elseif f2_local3 <= 12 then
            f2_local0[1] = 20
            f2_local0[2] = 40
            f2_local0[26] = 30
            f2_local0[27] = 10
        elseif f2_local3 <= 15 then
            f2_local0[1] = 15
            f2_local0[4] = 25
            f2_local0[6] = 20
            f2_local0[26] = 40
        else
            f2_local0[3] = 25
            f2_local0[4] = 25
            f2_local0[23] = 20
            f2_local0[24] = 30
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 7 + arg1:GetRandam_Int(3, 5), f2_local0[1], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 7 + arg1:GetRandam_Int(3, 5), f2_local0[2], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 7 + arg1:GetRandam_Int(0, 5), f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 7 + arg1:GetRandam_Int(0, 5), f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3007, 7 + arg1:GetRandam_Int(0, 5), f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3015, 10 + arg1:GetRandam_Int(0, 5), f2_local0[6], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3016, 10 + arg1:GetRandam_Int(0, 5), f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3017, 15 + arg1:GetRandam_Int(0, 5), f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3018, 30, f2_local0[8], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3019, 7 + arg1:GetRandam_Int(0, 5), f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3003, 10 + arg1:GetRandam_Int(0, 5), f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3008, 10 + arg1:GetRandam_Int(0, 5), f2_local0[12], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3021, 15 + arg1:GetRandam_Int(0, 5), f2_local0[13], 0)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3022, 15 + arg1:GetRandam_Int(0, 5), f2_local0[14], 0)
    f2_local0[25] = SetCoolTime(arg1, arg2, 3010, 5 + arg1:GetRandam_Int(0, 5), f2_local0[25], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 3011, 5 + arg1:GetRandam_Int(0, 5), f2_local0[25], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 3012, 5 + arg1:GetRandam_Int(0, 5), f2_local0[25], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6001, 5 + arg1:GetRandam_Int(0, 5), f2_local0[25], 0)
    f2_local0[26] = SetCoolTime(arg1, arg2, 3010, 8 + arg1:GetRandam_Int(0, 5), f2_local0[26], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 3011, 8 + arg1:GetRandam_Int(0, 5), f2_local0[26], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 3012, 8 + arg1:GetRandam_Int(0, 5), f2_local0[26], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6001, 8 + arg1:GetRandam_Int(0, 5), f2_local0[26], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6002, 8 + arg1:GetRandam_Int(0, 5), f2_local0[26], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6003, 8 + arg1:GetRandam_Int(0, 5), f2_local0[26], 1)
    f2_local0[27] = SetCoolTime(arg1, arg2, 6000, 8 + arg1:GetRandam_Int(0, 5), f2_local0[27], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act14)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, RuneWolf3181_Act27)
    local f2_local9 = REGIST_FUNC(arg1, arg2, HoundOfBorus_419000_Act02_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function RuneWolf3181_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 6
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 0
    local f3_local7 = 3
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = TARGET_ENE_0
    local f3_local11 = 10
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f3_local8, f3_local9, f3_local10, f3_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 7
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 3
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 5
    local f4_local9 = 3001
    local f4_local10 = TARGET_ENE_0
    local f4_local11 = 10
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 40
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local8, f4_local9, f4_local10, f4_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = arg0:GetDist(TARGET_ENE_0)
    local f5_local2 = 17
    local f5_local3 = 0
    local f5_local4 = 999
    local f5_local5 = 100
    local f5_local6 = 0
    local f5_local7 = 0
    local f5_local8 = 3
    Approach_Act_Flex(arg0, arg1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7, f5_local8)
    local f5_local9 = 5
    local f5_local10 = 3002
    local f5_local11 = TARGET_ENE_0
    local f5_local12 = 10
    local f5_local13 = 0
    local f5_local14 = 0
    local f5_local15 = 40
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local9, f5_local10, f5_local11, f5_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 12
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 0
    local f6_local7 = 3
    local f6_local8 = arg0:HasSpecialEffectId(TARGET_SELF, 16902)
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local9 = 5
    local f6_local10 = 3005
    local f6_local11 = 3004
    local f6_local12 = TARGET_ENE_0
    local f6_local13 = 10
    local f6_local14 = 0
    local f6_local15 = 0
    local f6_local16 = 120
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local9, f6_local10, f6_local12, f6_local13, 0, 0, 0)
    if f6_local8 == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 2.5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 6, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act05(arg0, arg1, arg2)
    local f7_local0 = 2
    local f7_local1 = 3009
    local f7_local2 = TARGET_ENE_0
    local f7_local3 = 10
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 0
    local f7_local7 = arg0:HasSpecialEffectId(TARGET_SELF, 16902)
    if f7_local7 == true then
        f7_local1 = 3007
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, f7_local2, f7_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetRandam_Int(1, 100)
    local f8_local1 = arg0:GetDist(TARGET_ENE_0)
    local f8_local2 = 5
    local f8_local3 = 3015
    local f8_local4 = 3016
    local f8_local5 = TARGET_ENE_0
    local f8_local6 = 10
    local f8_local7 = 0
    local f8_local8 = 0
    local f8_local9 = 0
    local f8_local10 = arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 90, 90, ATT_MAX)
    local f8_local11 = arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 90, 90, ATT_MAX)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if f8_local11 == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local2, f8_local3, f8_local5, f8_local6, 0, 0, 0)
    elseif f8_local10 == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local2, f8_local4, f8_local5, f8_local6, 0, 0, 0)
    elseif f8_local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local2, f8_local3, f8_local5, f8_local6, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local2, f8_local4, f8_local5, f8_local6, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 30
    local f9_local2 = 0
    local f9_local3 = 999
    local f9_local4 = 100
    local f9_local5 = 0
    local f9_local6 = 0
    local f9_local7 = 3
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    local f9_local8 = 5
    local f9_local9 = 3017
    local f9_local10 = TARGET_ENE_0
    local f9_local11 = 10
    local f9_local12 = 0
    local f9_local13 = 0
    local f9_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local8, f9_local9, f9_local10, f9_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act08(arg0, arg1, arg2)
    local f10_local0 = 5
    local f10_local1 = 3018
    local f10_local2 = TARGET_ENE_0
    local f10_local3 = 50
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f10_local0, f10_local1, f10_local2, f10_local3, 0, 0, 0)
    arg0:SetNumber(1, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act09(arg0, arg1, arg2)
    local f11_local0 = 5
    local f11_local1 = 3015
    local f11_local2 = 3016
    local f11_local3 = 3017
    local f11_local4 = TARGET_ENE_0
    local f11_local5 = 50
    local f11_local6 = 0
    local f11_local7 = 0
    local f11_local8 = 0
    local f11_local9 = arg0:HasSpecialEffectId(TARGET_SELF, 16902)
    if f11_local9 == true then
        f11_local3 = 3022
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f11_local0, f11_local1, f11_local4, f11_local5, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local1, TARGET_ENE_0, f11_local5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local3, TARGET_ENE_0, f11_local5, 0, 0)
    arg0:SetNumber(3, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 6
    local f12_local2 = 0
    local f12_local3 = 999
    local f12_local4 = 100
    local f12_local5 = 0
    local f12_local6 = 0
    local f12_local7 = 3
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    local f12_local8 = 5
    local f12_local9 = 3019
    local f12_local10 = 3023
    local f12_local11 = 3020
    local f12_local12 = TARGET_ENE_0
    local f12_local13 = 0
    local f12_local14 = 0
    local f12_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f12_local8, f12_local9, f12_local12, 7, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local10, TARGET_ENE_0, 2.5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local11, TARGET_ENE_0, 8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act11(arg0, arg1, arg2)
    local f13_local0 = 5
    local f13_local1 = 3003
    local f13_local2 = TARGET_ENE_0
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f13_local0, f13_local1, f13_local2, 7, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 7
    local f14_local2 = 0
    local f14_local3 = 999
    local f14_local4 = 100
    local f14_local5 = 0
    local f14_local6 = 0
    local f14_local7 = 3
    Approach_Act_Flex(arg0, arg1, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f14_local8 = 5
    local f14_local9 = 3008
    local f14_local10 = TARGET_ENE_0
    local f14_local11 = 0
    local f14_local12 = 0
    local f14_local13 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f14_local8, f14_local9, f14_local10, 7, 0, 180, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act13(arg0, arg1, arg2)
    local f15_local0 = 5
    local f15_local1 = 3021
    local f15_local2 = TARGET_ENE_0
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f15_local0, f15_local1, f15_local2, 6, 0, 180, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act14(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 20
    local f16_local2 = 0
    local f16_local3 = 999
    local f16_local4 = 100
    local f16_local5 = 0
    local f16_local6 = 0
    local f16_local7 = 3
    Approach_Act_Flex(arg0, arg1, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7)
    local f16_local8 = 5
    local f16_local9 = 3022
    local f16_local10 = TARGET_ENE_0
    local f16_local11 = 0
    local f16_local12 = 0
    local f16_local13 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f16_local8, f16_local9, f16_local10, 20, 0, 180, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act20(arg0, arg1, arg2)
    local f17_local0 = 5
    local f17_local1 = TARGET_ENE_0
    local f17_local2 = 7
    local f17_local3 = TARGET_SELF
    local f17_local4 = true
    local f17_local5 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act21(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 2
    local f18_local2 = TARGET_ENE_0
    local f18_local3 = 5
    local f18_local4 = TARGET_SELF
    local f18_local5 = false
    local f18_local6 = 20
    local f18_local7 = -1
    local f18_local8 = 50
    local f18_local9 = arg0:GetRandam_Int(0, 100)
    local f18_local10 = AI_DIR_TYPE_ToR
    if f18_local9 <= f18_local8 then
        f18_local10 = AI_DIR_TYPE_ToL
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, -1, f18_local10, f18_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act22(arg0, arg1, arg2)
    local f19_local0 = 2
    local f19_local1 = TARGET_ENE_0
    local f19_local2 = 4
    local f19_local3 = TARGET_ENE_0
    local f19_local4 = true
    local f19_local5 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, 6001)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act23(arg0, arg1, arg2)
    local f20_local0 = arg0:GetRandam_Float(2.5, 3)
    local f20_local1 = TARGET_ENE_0
    local f20_local2 = arg0:GetRandam_Int(0, 1)
    local f20_local3 = arg0:GetRandam_Int(30, 45)
    local f20_local4 = TARGET_SELF
    local f20_local5 = true
    local f20_local6 = true
    local f20_local7 = arg0:GetDist(TARGET_ENE_0)
    local f20_local8 = 0
    local f20_local9 = arg0:GetRandam_Int(1, 100)
    local f20_local10 = -1
    if f20_local9 <= f20_local8 then
        f20_local10 = 9910
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16903)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f20_local0, f20_local1, f20_local2, f20_local3, f20_local5, f20_local6, f20_local10)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act24(arg0, arg1, arg2)
    local f21_local0 = 2
    local f21_local1 = TARGET_ENE_0
    local f21_local2 = 45
    local f21_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f21_local4 = true
    local f21_local5 = 0
    local f21_local6 = arg0:GetRandam_Int(1, 100)
    local f21_local7 = -1
    arg1:AddSubGoal(GOAL_COMMON_Turn, f21_local0, f21_local1, f21_local2, f21_local7, f21_local3, f21_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act25(arg0, arg1, arg2)
    local f22_local0 = 5
    local f22_local1 = -1
    local f22_local2 = 1
    local f22_local3 = -1
    local f22_local4 = -1
    local f22_local5 = TARGET_ENE_0
    local f22_local6 = 3
    local f22_local7 = 0
    local f22_local8 = true
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6, f22_local7, f22_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneWolf3181_Act26(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local f23_local0 = 4
        local f23_local1 = 6003
        local f23_local2 = TARGET_ENE_0
        local f23_local3 = 0
        local f23_local4 = AI_DIR_TYPE_R
        local f23_local5 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f23_local0 = arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180)
        if f23_local0 then
            f23_local0 = 4
            local f23_local1 = 6002
            local f23_local2 = TARGET_ENE_0
            local f23_local3 = 0
            local f23_local4 = AI_DIR_TYPE_L
            local f23_local5 = 0
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    
end

function RuneWolf3181_Act27(arg0, arg1, arg2)
    local f24_local0 = 5
    local f24_local1 = 1
    local f24_local2 = -1
    local f24_local3 = -1
    local f24_local4 = -1
    local f24_local5 = TARGET_ENE_0
    local f24_local6 = 3
    local f24_local7 = 0
    local f24_local8 = true
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6, f24_local7, f24_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GraftSpider_469000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RuneWolf318100_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f28_local0 = arg1:GetDist(TARGET_ENE_0)
    local f28_local1 = arg1:GetRandam_Int(1, 100)
    local f28_local2 = arg1:GetRandam_Int(1, 100)
    local f28_local3 = arg1:GetRandam_Int(0, 10)
    local f28_local4 = arg1:GetRandam_Int(0, 5)
    local f28_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 16902)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            local f28_local6 = arg1:GetDist(TARGET_ENE_0)
            arg2:ClearSubGoal()
            if f28_local1 <= 30 and f28_local6 >= 7 and arg1:GetAttackPassedTime(3002) >= 15 then
                RuneWolf3181_Act03(arg1, arg2, paramTbl)
                return true
            elseif f28_local1 <= 30 and f28_local6 >= 10 and arg1:GetAttackPassedTime(3022) >= 15 and f28_local5 == true then
                RuneWolf3181_Act22(arg1, arg2, paramTbl)
                return true
            elseif arg1:GetHpRate(TARGET_SELF) <= 0.7 and f28_local6 >= 15 and f28_local1 <= 50 and arg1:GetAttackPassedTime(3017) >= 20 then
                RuneWolf3181_Act07(arg1, arg2, paramTbl)
                return true
            else
                if f28_local1 <= 40 and f28_local6 >= 8 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16903)
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3), TARGET_ENE_0, 1, arg1:GetRandam_Int(30, 45), true, true, -1)
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 5, 0, 0)
                return true
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            arg2:ClearSubGoal()
            local f28_local6 = arg1:GetDist(TARGET_ENE_0)
            if f28_local1 <= 30 and f28_local6 >= 7 and arg1:GetAttackPassedTime(3002) >= 15 then
                RuneWolf3181_Act03(arg1, arg2, paramTbl)
                return true
            elseif f28_local1 <= 30 and f28_local6 >= 10 and arg1:GetAttackPassedTime(3022) >= 15 and f28_local5 == true then
                RuneWolf3181_Act22(arg1, arg2, paramTbl)
                return true
            elseif arg1:GetHpRate(TARGET_SELF) <= 0.7 and f28_local6 >= 15 and f28_local1 <= 50 and arg1:GetAttackPassedTime(3017) >= 20 then
                RuneWolf3181_Act07(arg1, arg2, paramTbl)
                return true
            else
                if f28_local1 <= 40 and f28_local6 >= 8 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16903)
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3), TARGET_ENE_0, 0, arg1:GetRandam_Int(30, 45), true, true, -1)
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3013, TARGET_ENE_0, 5, 0, 0)
                return true
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            local f28_local6 = arg1:GetDist(TARGET_ENE_0)
            local f28_local7 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 90, 20)
            local f28_local8 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 210, 90, 20)
            local f28_local9 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 60, 90, 5)
            local f28_local10 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 45, 90, 20)
            local f28_local11 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 45, 90, 20)
            arg2:ClearSubGoal()
            if f28_local5 == true then
                local f28_local12 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 20)
                if f28_local12 == true and f28_local6 <= 6 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3007, TARGET_ENE_0, 5, 0, 0)
                    return true
                elseif f28_local9 == true then
                    if arg1:GetAttackPassedTime(3019) >= 20 and f28_local6 <= 5 and f28_local1 <= 60 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 10, 0, 0)
                        return true
                    end
                elseif f28_local7 == true then
                    if arg1:GetAttackPassedTime(3019) >= 20 and f28_local6 >= 3 and f28_local6 <= 7 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 6, 0, 0)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 2.5, 0, 0)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 6, 0, 0)
                        return true
                    elseif arg1:GetAttackPassedTime(3003) >= 20 and f28_local6 >= 3 and f28_local6 <= 5 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3003, TARGET_ENE_0, 10, 0, 0)
                        return true
                    elseif f28_local6 >= 8 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3010, TARGET_ENE_0, 8, 0, 0)
                        return true
                    end
                end
            elseif f28_local8 == true and f28_local6 <= 6 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 10, 0, 0)
                return true
            elseif f28_local7 == true and f28_local6 >= 8 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3010, TARGET_ENE_0, 10, 0, 0)
                return true
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            local f28_local6 = arg1:GetDist(TARGET_ENE_0)
            arg2:ClearSubGoal()
            if arg1:GetHpRate(TARGET_SELF) <= 0.3 and arg1:GetNumber(3) == 0 and f28_local6 >= 7 then
                RuneWolf3181_Act09(arg1, arg2, paramTbl)
                arg1:SetNumber(3, 1)
                return true
            elseif arg1:GetHpRate(TARGET_SELF) <= 0.7 and f28_local6 >= 15 and f28_local2 <= 70 and arg1:GetAttackPassedTime(3017) >= 20 then
                RuneWolf3181_Act07(arg1, arg2, paramTbl)
                return true
            elseif f28_local6 >= 12 and f28_local1 <= 30 then
                if f28_local1 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                end
                RuneWolf3181_Act06(arg1, arg2)
                return true
            else
                if f28_local1 <= 50 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16903)
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                end
                RuneWolf3181_Act04(arg1, arg2)
                return true
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            local f28_local6 = arg1:GetDist(TARGET_ENE_0)
            arg2:ClearSubGoal()
            if f28_local5 == true then
                if arg1:GetAttackPassedTime(3019) >= 15 and f28_local6 <= 5 and f28_local1 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 6, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 2.5, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 6, 0, 0)
                    return true
                elseif arg1:GetAttackPassedTime(3003) >= 20 and f28_local6 <= 5 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 6, 0, 0)
                    return true
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 90, 5) and f28_local1 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 6, 0, 0)
                    return true
                else
                    RuneWolf3181_Act26(arg1, arg2, paramTbl)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 90, 5) and f28_local1 > 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 6, 0, 0)
                return true
            else
                RuneWolf3181_Act26(arg1, arg2, paramTbl)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            local f28_local6 = arg1:GetDist(TARGET_ENE_0)
            arg2:ClearSubGoal()
            if arg1:GetHpRate(TARGET_SELF) <= 0.3 and arg1:GetNumber(3) == 0 then
                arg2:ClearSubGoal()
                RuneWolf3181_Act09(arg1, arg2, paramTbl)
                arg1:SetNumber(3, 1)
                return true
            elseif arg1:GetHpRate(TARGET_SELF) <= 0.7 and f28_local6 >= 15 and f28_local2 <= 70 and arg1:GetAttackPassedTime(3017) >= 20 then
                arg2:ClearSubGoal()
                RuneWolf3181_Act07(arg1, arg2, paramTbl)
                return true
            elseif f28_local6 >= 12 and arg1:GetAttackPassedTime(3015) >= 10 and arg1:GetAttackPassedTime(3016) >= 10 then
                arg2:ClearSubGoal()
                RuneWolf3181_Act06(arg1, arg2)
                return true
            elseif f28_local1 <= 50 then
                arg2:ClearSubGoal()
                if f28_local1 <= 40 and f28_local6 >= 8 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16903)
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3013, TARGET_ENE_0, 5, 0, 0)
            else
                arg2:ClearSubGoal()
                if f28_local1 <= 40 and f28_local6 >= 8 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16903)
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 5, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            arg2:ClearSubGoal()
            local f28_local6 = arg1:GetDist(TARGET_ENE_0)
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 90, 7.5) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 5, 0, 0)
                return true
            elseif f28_local5 == true and f28_local6 <= 7.5 and arg1:GetAttackPassedTime(3019) >= 10 then
                RuneWolf3181_Act10(arg1, arg2, paramTbl)
                return true
            elseif f28_local6 <= 5 and f28_local1 <= 70 and arg1:GetAttackPassedTime(3000) >= 15 then
                RuneWolf3181_Act01(arg1, arg2, paramTbl)
                return true
            elseif f28_local6 <= 5 and arg1:GetAttackPassedTime(3001) >= 15 then
                RuneWolf3181_Act02(arg1, arg2, paramTbl)
                return true
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
            local f28_local6 = arg1:GetDist(TARGET_ENE_0)
            arg2:ClearSubGoal()
            if f28_local5 == true then
                if f28_local6 >= 12 and f28_local6 <= 22 and arg1:GetAttackPassedTime(3022) >= 20 then
                    RuneWolf3181_Act14(arg1, arg2)
                    return true
                elseif f28_local6 <= 12 then
                    if arg1:GetAttackPassedTime(3017) >= 20 and f28_local1 > 70 then
                        RuneWolf3181_Act07(arg1, arg2, paramTbl)
                    else
                        RuneWolf3181_Act04(arg1, arg2)
                    end
                    return true
                elseif f28_local6 > 12 then
                    if f28_local1 > 40 then
                        RuneWolf3181_Act26(arg1, arg2)
                    else
                        RuneWolf3181_Act04(arg1, arg2)
                    end
                    return true
                end
            elseif arg1:GetHpRate(TARGET_SELF) <= 0.6 and f28_local6 >= 20 and f28_local2 <= 70 and arg1:GetAttackPassedTime(3017) >= 15 then
                RuneWolf3181_Act07(arg1, arg2, paramTbl)
                return true
            elseif f28_local6 >= 7 then
                RuneWolf3181_Act03(arg1, arg2)
                return true
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16903) then
            local f28_local6 = arg1:GetDist(TARGET_ENE_0)
            local f28_local7 = 5
            if f28_local6 <= f28_local7 then
                arg2:ClearSubGoal()
                RuneWolf3181_Act26(arg1, arg2, paramTbl)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local f28_local6 = arg1:GetDist(TARGET_ENE_0)
        local f28_local7 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 90, 20)
        local f28_local8 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 210, 90, 20)
        local f28_local9 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 90, 5)
        if f28_local5 == true then
            if f28_local6 <= 5 then
                if f28_local1 <= 5 and arg1:GetAttackPassedTime(3021) >= 15 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3021, TARGET_ENE_0, 5, 0, 180, 0, 0)
                    return true
                elseif f28_local1 <= 10 and arg1:GetAttackPassedTime(3003) >= 15 and f28_local7 == true then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3003, TARGET_ENE_0, 6, 0, 180, 0, 0)
                    return true
                elseif f28_local1 <= 15 and arg1:GetAttackPassedTime(3008) >= 15 and f28_local9 == true then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3008, TARGET_ENE_0, 5, 0, 180, 0, 0)
                    return true
                end
            elseif f28_local1 <= 50 and arg1:GetAttackPassedTime(3007) >= 15 and f28_local6 <= 6 then
                arg2:ClearSubGoal()
                RuneWolf3181_Act05(arg1, arg2, paramTbl)
                return true
            elseif f28_local1 <= 65 then
                arg2:ClearSubGoal()
                RuneWolf3181_Act27(arg1, arg2, paramTbl)
                return true
            elseif f28_local1 <= 80 then
                arg2:ClearSubGoal()
                RuneWolf3181_Act26(arg1, arg2, paramTbl)
                return true
            end
        elseif f28_local6 <= 10 and f28_local7 == true then
            if f28_local1 <= 20 then
                arg2:ClearSubGoal()
                RuneWolf3181_Act25(arg1, arg2, paramTbl)
                return true
            elseif f28_local1 <= 40 then
                arg2:ClearSubGoal()
                RuneWolf3181_Act26(arg1, arg2, paramTbl)
                return true
            end
        elseif f28_local1 <= 20 then
            arg2:ClearSubGoal()
            RuneWolf3181_Act27(arg1, arg2, paramTbl)
            return true
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        local f28_local6 = arg1:GetDist(TARGET_ENE_0)
        local f28_local7 = arg1:GetRandam_Int(1, 100)
        local f28_local8 = arg1:GetRandam_Int(1, 100)
        if f28_local6 >= 7 then
            if f28_local8 <= 35 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3013, TARGET_ENE_0, 5, 0, 0)
                return true
            elseif f28_local7 <= 70 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 5, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                RuneWolf3181_Act03(arg1, arg2, paramTbl)
                return true
            end
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_ENE_0, 6992) and arg1:GetAttackPassedTime(3011) >= 10 then
        arg2:ClearSubGoal()
        RuneWolf3181_Act02(arg1, arg2, paramTbl)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_RuneWolf318100_AfterAttackAct, "RuneWolf318100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneWolf318100_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


