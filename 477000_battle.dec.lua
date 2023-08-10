RegisterTableGoal(GOAL_CastleGargoyle477000_Battle, "CastleGargoyle477000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CastleGargoyle477000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(0, 0)
    arg1:SetNumber(7, 0)
    arg1:SetNumber(9, 0)
    arg1:SetStringIndexedNumber("Run_Odds", 0)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3026)
    arg1:EnableUnfavorableAttackCheck(0, 3027)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
    arg1:EnableUnfavorableAttackCheck(1000000, 3003)
    arg1:EnableUnfavorableAttackCheck(1000000, 3004)
    arg1:EnableUnfavorableAttackCheck(1000000, 3005)
    arg1:EnableUnfavorableAttackCheck(1000000, 3006)
    arg1:EnableUnfavorableAttackCheck(1000000, 3007)
    arg1:EnableUnfavorableAttackCheck(1000000, 3008)
    arg1:EnableUnfavorableAttackCheck(1000000, 3010)
    arg1:EnableUnfavorableAttackCheck(1000000, 3011)
    arg1:EnableUnfavorableAttackCheck(1000000, 3012)
    arg1:EnableUnfavorableAttackCheck(1000000, 3013)
    arg1:EnableUnfavorableAttackCheck(1000000, 3014)
    arg1:EnableUnfavorableAttackCheck(1000000, 3015)
    arg1:EnableUnfavorableAttackCheck(1000000, 3016)
    arg1:EnableUnfavorableAttackCheck(1000000, 3017)
    arg1:EnableUnfavorableAttackCheck(1000000, 3018)
    arg1:EnableUnfavorableAttackCheck(1000000, 3019)
    arg1:EnableUnfavorableAttackCheck(1000000, 3020)
    arg1:EnableUnfavorableAttackCheck(1000000, 3021)
    arg1:EnableUnfavorableAttackCheck(1000000, 3022)
    arg1:EnableUnfavorableAttackCheck(1000000, 3023)
    arg1:EnableUnfavorableAttackCheck(1000000, 3024)
    arg1:EnableUnfavorableAttackCheck(1000000, 3025)
    arg1:EnableUnfavorableAttackCheck(1000000, 3026)
    arg1:EnableUnfavorableAttackCheck(1000000, 3027)
    arg1:EnableUnfavorableAttackCheck(1000000, 3028)
    arg1:EnableUnfavorableAttackCheck(1000000, 3029)
    arg1:EnableUnfavorableAttackCheck(1000000, 3030)
    arg1:EnableUnfavorableAttackCheck(1000000, 3031)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:GetStringIndexedNumber("Rolling_Cnt")
    arg1:GetStringIndexedNumber("Warcry_Cnt")
    arg1:GetStringIndexedNumber("Beam_Cnt")
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetDist(TARGET_ENE_0)
    local f2_local6 = arg1:GetDist(TARGET_FRI_0)
    local f2_local7 = arg1:GetDist(TARGET_SOUND)
    local f2_local8 = arg1:GetRandam_Int(1, 100)
    local f2_local9 = arg1:GetEventRequest()
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f2_local10 = 1
    local f2_local11 = 1
    arg1:SetNumber(4, 0)
    arg1:SetNumber(6, 0)
    local f2_local12 = arg1:HasSpecialEffectId(TARGET_SELF, 5400)
    local f2_local13 = arg1:HasSpecialEffectId(TARGET_SELF, 5401)
    local f2_local14 = arg1:HasSpecialEffectId(TARGET_SELF, 17640)
    local f2_local15 = arg1:HasSpecialEffectId(TARGET_SELF, 17641)
    local f2_local16 = arg1:HasSpecialEffectId(TARGET_SELF, 17642)
    local f2_local17 = arg1:HasSpecialEffectId(TARGET_SELF, 17643)
    local f2_local18 = arg1:HasSpecialEffectId(TARGET_SELF, 17644)
    local f2_local19 = arg1:HasSpecialEffectId(TARGET_SELF, 17645)
    local f2_local20 = arg1:HasSpecialEffectId(TARGET_SELF, 17648)
    local f2_local21 = arg1:HasSpecialEffectId(TARGET_SELF, 17649)
    local f2_local22 = arg1:HasSpecialEffectId(TARGET_SELF, 17646)
    local f2_local23 = arg1:HasSpecialEffectId(TARGET_SELF, 17638)
    local f2_local24 = arg1:HasSpecialEffectId(TARGET_SELF, 17637)
    local f2_local25 = arg1:HasSpecialEffectId(TARGET_SELF, 17636)
    local f2_local26 = arg1:HasSpecialEffectId(TARGET_SELF, 17626)
    local f2_local27 = arg1:HasSpecialEffectId(TARGET_SELF, 17631)
    if arg1:GetNumber(7) == 0 and arg1:GetHpRate(TARGET_SELF) <= 0.5 then
        f2_local10 = arg1:GetRandam_Int(100, 120)
    end
    if f2_local27 == true then
        f2_local10 = arg1:GetRandam_Int(80, 180)
        f2_local11 = 3
    end
    local f2_local28 = 1
    local f2_local29 = arg1:HasSpecialEffectId(TARGET_SELF, 17603)
    local f2_local30 = true
    if f2_local29 == f2_local30 then
        f2_local28 = 0
    end
    f2_local30 = 1
    local f2_local31 = arg1:HasSpecialEffectId(TARGET_SELF, 17635)
    local f2_local32 = true
    if f2_local31 == f2_local32 then
        f2_local30 = 0
    end
    f2_local32 = 0
    local f2_local33 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 7)
    if f2_local33 == false then
        f2_local32 = 1
    end
    f2_local33 = 0
    local f2_local34 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 200, 90, 20)
    if f2_local34 == false then
        f2_local33 = 1
    end
    f2_local34 = 0
    local f2_local35 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, 90, 3)
    if f2_local35 then
        f2_local34 = 1
    end
    f2_local35 = 0
    local f2_local36 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, 90, 3)
    if f2_local36 then
        f2_local35 = 1
    end
    f2_local36 = 0
    local f2_local37 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 7)
    if f2_local37 == false then
        f2_local36 = 1
    end
    f2_local37 = 0
    local f2_local38 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 15)
    if f2_local38 == true then
        f2_local37 = 1
    end
    f2_local38 = 0
    local f2_local39 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 7)
    if f2_local39 == false then
        f2_local38 = 1
    end
    f2_local39 = 0
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 1500, 90, 30) == true and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 90, 20) == false then
        f2_local39 = 1
    end
    local f2_local40 = 0
    local f2_local41 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 90, 90, 10)
    if f2_local41 == true then
        f2_local40 = 1
    end
    f2_local41 = 0
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 15) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 30) == true then
        f2_local41 = 1
    end
    arg1:SetStringIndexedNumber("Run_Odds", 0)
    if arg1:GetNumber(9) == 1 then
        arg1:SetStringIndexedNumber("Run_Odds", 100)
        arg1:SetNumber(9, 0)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16461)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16462)
    local f2_local42 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if (f2_local20 == true or f2_local21 == true) and f2_local42 == 0 and (arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki) then
        arg1:SetNumber(2, 0)
        if arg1:GetLatestSoundBehaviorID() == 477000 then
            f2_local0[25] = 50
            if f2_local14 then
                f2_local0[25] = 10
                f2_local0[5] = 50
                f2_local0[9] = 50
                f2_local0[10] = 50
                f2_local0[7] = 1
                if f2_local5 > 15 then
                    f2_local0[5] = 0
                    f2_local0[9] = 0
                end
                if f2_local5 > 17 then
                    f2_local0[10] = 0
                end
            elseif f2_local17 then
                f2_local0[25] = 10
                f2_local0[41] = 50
                f2_local0[44] = 50
                f2_local0[48] = 50 * f2_local41
                f2_local0[46] = 1
                if f2_local5 > 15 then
                    f2_local0[41] = 0
                end
                if f2_local5 > 20 then
                    f2_local0[44] = 0
                end
                if f2_local5 > 30 then
                    f2_local0[48] = 0
                end
            elseif f2_local16 then
                f2_local0[35] = 50
                f2_local0[25] = 10
                f2_local0[34] = 1
                if f2_local5 > 19 then
                    f2_local0[35] = 0
                end
            elseif f2_local15 then
                f2_local0[25] = 10
                f2_local0[12] = 50
                f2_local0[15] = 50
                f2_local0[14] = 1
            end
            if f2_local5 > 25 then
                f2_local0[12] = 0
            end
            if f2_local5 > 35 then
                f2_local0[15] = 0
            end
            if f2_local5 < 18 then
                f2_local0[15] = 0
                f2_local0[25] = 0
            end
        elseif f2_local5 > 25 then
            f2_local0[23] = 50
            f2_local0[19] = 25
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_FRI_0, AI_DIR_TYPE_F, 360, 20, 5) then
                f2_local0[23] = 0
                f2_local0[24] = 15
            end
        elseif f2_local5 > 10 then
            f2_local0[23] = 15
            f2_local0[24] = 15
            f2_local0[19] = 50
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_FRI_0, AI_DIR_TYPE_F, 360, 20, 5) then
                f2_local0[23] = 0
            end
        else
            f2_local0[24] = 15
            f2_local0[21] = 15
            f2_local0[19] = 25
            f2_local0[4] = 25
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_FRI_0, AI_DIR_TYPE_F, 360, 20, 5) then
                f2_local0[24] = 0
            end
        end
    elseif f2_local18 == true then
        f2_local0[50] = 1
    elseif f2_local14 then
        if f2_local10 >= 100 then
            f2_local0[7] = 1
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            if f2_local5 < 5 then
                f2_local0[3] = 50 * f2_local11
                f2_local0[4] = 40
                f2_local0[26] = 25
                f2_local0[27] = 25
                f2_local0[28] = 25
            elseif f2_local5 < 15 then
                f2_local0[26] = 25
                f2_local0[27] = 25
            else
                f2_local0[29] = 100
            end
        elseif f2_local5 > 15 then
            f2_local0[22] = 50 * f2_local28
            f2_local0[25] = 50 * f2_local39
            f2_local0[24] = 1
            f2_local0[30] = 50
        elseif f2_local5 > 5 then
            f2_local0[1] = 30 * f2_local28
            f2_local0[2] = 30 * f2_local32 * f2_local28
            f2_local0[3] = 30 * f2_local11
            f2_local0[5] = 30 * f2_local33
            f2_local0[9] = 30
            f2_local0[10] = 30
            f2_local0[24] = 50 * f2_local30
            f2_local0[30] = 50
        elseif f2_local5 > 2.5 then
            f2_local0[1] = 30
            f2_local0[3] = 25 * f2_local11
            f2_local0[4] = 40
            f2_local0[5] = 30 * f2_local33
            f2_local0[6] = 40 * f2_local34
            f2_local0[8] = 50 * f2_local35
            f2_local0[9] = 30
            f2_local0[24] = 15 * f2_local30
            f2_local0[26] = 25
            f2_local0[27] = 25
        else
            f2_local0[3] = 25 * f2_local11
            f2_local0[4] = 40
            f2_local0[5] = 30 * f2_local33
            f2_local0[6] = 40
            f2_local0[8] = 50
            f2_local0[26] = 15
            f2_local0[27] = 15
        end
    elseif f2_local15 == true then
        if f2_local10 >= 100 and f2_local5 < 10 then
            f2_local0[14] = 1
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            if f2_local5 < 5 then
                f2_local0[4] = 40
                f2_local0[26] = 25
                f2_local0[27] = 25
                f2_local0[28] = 25
            elseif f2_local5 < 15 then
                f2_local0[15] = 25
                f2_local0[26] = 25
                f2_local0[27] = 25
            else
                f2_local0[29] = 100
            end
        elseif f2_local5 > 25 then
            f2_local0[22] = 50 * f2_local28
            f2_local0[25] = 50 * f2_local39
            f2_local0[24] = 1
            f2_local0[30] = 50
        elseif f2_local5 > 7 then
            f2_local0[11] = 30 * f2_local28 * f2_local36
            f2_local0[12] = 45
            f2_local0[13] = 40 * f2_local11 * f2_local37
            f2_local0[15] = 30
            f2_local0[17] = 30 * f2_local28 * f2_local38
            f2_local0[24] = 15 * f2_local30
            f2_local0[30] = 50
        else
            f2_local0[4] = 30
            f2_local0[12] = 45
            f2_local0[13] = 30 * f2_local11 * f2_local37
            f2_local0[15] = 30
            f2_local0[16] = 50
            f2_local0[17] = 50 * f2_local28 * f2_local38
            f2_local0[18] = 30 * f2_local28
            f2_local0[26] = 30
            f2_local0[27] = 30
            f2_local0[28] = 20
        end
    elseif f2_local16 then
        if f2_local10 >= 100 then
            f2_local0[34] = 1
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            if f2_local5 < 5 then
                f2_local0[4] = 40
                f2_local0[36] = 30 * f2_local28
                f2_local0[26] = 25
                f2_local0[27] = 25
                f2_local0[28] = 25
            elseif f2_local5 < 15 then
                f2_local0[26] = 25
                f2_local0[27] = 25
            else
                f2_local0[29] = 100
            end
        elseif f2_local5 > 15 then
            f2_local0[22] = 50 * f2_local28
            f2_local0[25] = 50 * f2_local39
            f2_local0[24] = 1 * f2_local30
            f2_local0[30] = 50
        elseif f2_local5 > 7 then
            f2_local0[31] = 30 * f2_local28
            f2_local0[32] = 30 * f2_local28
            f2_local0[33] = 30 * f2_local11
            f2_local0[35] = 50
            f2_local0[36] = 30 * f2_local28
            f2_local0[24] = 50 * f2_local30
            f2_local0[30] = 50
        elseif f2_local5 > 4 then
            f2_local0[31] = 30 * f2_local28
            f2_local0[32] = 30 * f2_local28
            f2_local0[33] = 30 * f2_local11
            f2_local0[35] = 50
            f2_local0[36] = 30 * f2_local28
            f2_local0[38] = 30
            f2_local0[4] = 40
            f2_local0[24] = 15 * f2_local30
            f2_local0[26] = 25
            f2_local0[27] = 25
        else
            f2_local0[32] = 30 * f2_local28
            f2_local0[33] = 30 * f2_local11
            f2_local0[37] = 30
            f2_local0[38] = 30
            f2_local0[4] = 30
            f2_local0[26] = 25
            f2_local0[27] = 25
        end
    elseif f2_local17 then
        if f2_local10 >= 100 then
            f2_local0[46] = 1
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            if f2_local5 < 5 then
                f2_local0[4] = 40
                f2_local0[42] = 30
                f2_local0[49] = 25
                f2_local0[26] = 25
                f2_local0[27] = 25
                f2_local0[28] = 25
            elseif f2_local5 < 15 then
                f2_local0[26] = 25
                f2_local0[27] = 25
            else
                f2_local0[29] = 100
            end
        elseif f2_local5 > 15 then
            f2_local0[22] = 30 * f2_local28
            f2_local0[25] = 30 * f2_local39
            f2_local0[24] = 1
            f2_local0[48] = 70 * f2_local41
            f2_local0[30] = 50
        elseif f2_local5 > 5 then
            f2_local0[40] = 40
            f2_local0[41] = 30 * f2_local28
            f2_local0[44] = 30
            f2_local0[48] = 30 * f2_local41
            f2_local0[43] = 30 * f2_local11
            f2_local0[24] = 50 * f2_local30
            f2_local0[30] = 50
        elseif f2_local5 > 3 then
            f2_local0[40] = 40
            f2_local0[42] = 30
            f2_local0[43] = 25 * f2_local11
            f2_local0[45] = 30 * f2_local40
            f2_local0[47] = 30
            f2_local0[4] = 40
            f2_local0[24] = 15 * f2_local30
            f2_local0[26] = 25
            f2_local0[27] = 25
        else
            f2_local0[40] = 30
            f2_local0[42] = 30
            f2_local0[43] = 25 * f2_local11
            f2_local0[44] = 30
            f2_local0[45] = 30 * f2_local40
            f2_local0[4] = 40
            f2_local0[26] = 25
            f2_local0[27] = 25
        end
    end
    local f2_local43 = 1
    if arg1:GetNumber(2) >= 40 then
        f2_local43 = arg1:GetRandam_Int(100, 150)
    elseif arg1:GetNumber(2) >= 30 then
        f2_local43 = arg1:GetRandam_Int(70, 150)
    elseif arg1:GetNumber(2) >= 20 then
        f2_local43 = arg1:GetRandam_Int(50, 150)
    else
        f2_local43 = arg1:GetRandam_Int(1, 10)
    end
    if (f2_local20 == true or f2_local21 == true) and arg1:GetNumber(2) >= 15 and arg1:GetHpRate(TARGET_FRI_0) > 0 then
        if f2_local14 == true then
            f2_local0[3] = 9999
            f2_local0[26] = 9999
            f2_local0[27] = 9999
            f2_local0[28] = 9999
        elseif f2_local17 == true then
            f2_local0[26] = 9999
            f2_local0[27] = 9999
            f2_local0[28] = 9999
        elseif f2_local16 == true then
            f2_local0[26] = 9999
            f2_local0[27] = 9999
            f2_local0[28] = 9999
        elseif f2_local15 == true then
            f2_local0[14] = 9999
            f2_local0[26] = 9999
            f2_local0[27] = 9999
            f2_local0[28] = 9999
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3006, 30, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3010, 30, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3033, 30, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3034, 30, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3035, 30, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[6], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3032, 10, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3012, 20, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3031, 20, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[11], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[18], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3006, 30, f2_local0[12], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3005, 40, f2_local0[13], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3032, 40, f2_local0[13], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3001, 20, f2_local0[15], 0)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3000, 20, f2_local0[16], 0)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[17], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[18], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[11], 0)
    f2_local0[30] = SetCoolTime(arg1, arg2, 20025, 10, f2_local0[30], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 20026, 10, f2_local0[30], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[31], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 3015, 15, f2_local0[32], 0)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3022, 40, f2_local0[33], 0)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3028, 40, f2_local0[33], 0)
    f2_local0[35] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[35], 1)
    f2_local0[36] = SetCoolTime(arg1, arg2, 3020, 10, f2_local0[36], 1)
    f2_local0[38] = SetCoolTime(arg1, arg2, 3026, 15, f2_local0[38], 1)
    f2_local0[38] = SetCoolTime(arg1, arg2, 3027, 15, f2_local0[38], 1)
    f2_local0[40] = SetCoolTime(arg1, arg2, 3018, 15, f2_local0[40], 0)
    f2_local0[41] = SetCoolTime(arg1, arg2, 3019, 20, f2_local0[41], 0)
    f2_local0[43] = SetCoolTime(arg1, arg2, 3022, 40, f2_local0[43], 0)
    f2_local0[43] = SetCoolTime(arg1, arg2, 3033, 40, f2_local0[43], 0)
    f2_local0[44] = SetCoolTime(arg1, arg2, 3026, 20, f2_local0[44], 1)
    f2_local0[45] = SetCoolTime(arg1, arg2, 3027, 30, f2_local0[45], 0)
    f2_local0[48] = SetCoolTime(arg1, arg2, 3021, 30, f2_local0[48], 0)
    f2_local0[19] = SetCoolTime(arg1, arg2, 20020, 15, f2_local0[19], 0)
    f2_local0[20] = SetCoolTime(arg1, arg2, 20021, 15, f2_local0[20], 0)
    if f2_local24 == true then
        f2_local0[28] = 0
        f2_local0[12] = 0
        f2_local0[16] = 0
        if f2_local5 < 7 then
            f2_local0[3] = 0
        end
    end
    if arg1:GetTimer(2) > 15 then
        f2_local0[26] = f2_local0[26] / 3
        f2_local0[27] = f2_local0[27] / 3
        f2_local0[28] = f2_local0[28] / 3
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 50) then
            f2_local0[26] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 50) then
            f2_local0[27] = 0
        end
    end
    if f2_local19 == false then
        f2_local0[4] = 0
    end
    f2_local0[30] = 0
    if f2_local5 > 25 then
        f2_local0[30] = f2_local0[30] * 2
    elseif f2_local5 < 15 then
        f2_local0[30] = f2_local0[30] * 2
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act36)
    f2_local1[37] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act37)
    f2_local1[38] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act38)
    f2_local1[39] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act39)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act47)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act48)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act49)
    f2_local1[50] = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_Act50)
    local f2_local44 = REGIST_FUNC(arg1, arg2, CastleGargoyle477000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local44, f2_local2)
    
end

function CastleGargoyle477000_Act01(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = arg0:GetRandam_Int(1, 100)
    local f3_local2 = 8
    local f3_local3 = 0
    local f3_local4 = 999
    local f3_local5 = arg0:GetStringIndexedNumber("Run_Odds")
    local f3_local6 = 0
    local f3_local7 = 3
    local f3_local8 = 6
    Approach_Act_Flex(arg0, arg1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8)
    arg0:SetNumber(2, arg0:GetNumber(2) + 4)
    local f3_local9 = 10
    local f3_local10 = 3000
    local f3_local11 = 3001
    local f3_local12 = 3009
    local f3_local13 = 999
    local f3_local14 = 0
    local f3_local15 = 120
    local f3_local16 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17601)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local9, f3_local10, TARGET_ENE_0, f3_local13, f3_local14, f3_local15, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act02(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f4_local0 = 10
    local f4_local1 = 3002
    local f4_local2 = 3001
    local f4_local3 = 3002
    local f4_local4 = 999
    local f4_local5 = 0
    local f4_local6 = 120
    local f4_local7 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, arg0:GetNumber(2) + 4)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local0, f4_local1, TARGET_ENE_0, f4_local4, f4_local5, f4_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act03(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f5_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 17646)
    local f5_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 17637)
    local f5_local2 = arg0:GetRandam_Int(1, 100)
    if f5_local0 == true then
        local f5_local3 = arg0:GetDist(TARGET_ENE_0)
        local f5_local4 = 10
        local f5_local5 = 3033
        local f5_local6 = 3034
        local f5_local7 = 3002
        local f5_local8 = 999
        local f5_local9 = 0
        local f5_local10 = 120
        if f5_local3 > 10 or f5_local1 == true then
            arg0:SetNumber(2, arg0:GetNumber(2) + 8)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local4, f5_local5, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
        else
            arg0:SetNumber(2, arg0:GetNumber(2) + 8)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local4, f5_local6, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
        end
    else
        local f5_local3 = arg0:GetDist(TARGET_ENE_0)
        local f5_local4 = 10
        local f5_local5 = 3006
        local f5_local6 = 3010
        local f5_local7 = 3002
        local f5_local8 = 999
        local f5_local9 = 0
        local f5_local10 = 120
        if f5_local3 > 10 or f5_local1 == true then
            arg0:SetNumber(2, arg0:GetNumber(2) + 8)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local4, f5_local5, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
        else
            arg0:SetNumber(2, arg0:GetNumber(2) + 8)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local4, f5_local6, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act04(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f6_local0 = 10
    local f6_local1 = 3035
    local f6_local2 = 3001
    local f6_local3 = 3002
    local f6_local4 = 999
    local f6_local5 = 0
    local f6_local6 = 120
    local f6_local7 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, arg0:GetNumber(2) + 4)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local1, TARGET_ENE_0, f6_local4, f6_local5, f6_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act05(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f7_local0 = 10
    local f7_local1 = 3005
    local f7_local2 = 3001
    local f7_local3 = 3002
    local f7_local4 = 999
    local f7_local5 = 0
    local f7_local6 = 120
    local f7_local7 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, TARGET_ENE_0, f7_local4, f7_local5, f7_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act06(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f8_local0 = 10
    local f8_local1 = 3008
    local f8_local2 = 3001
    local f8_local3 = 3002
    local f8_local4 = 999
    local f8_local5 = 0
    local f8_local6 = 120
    local f8_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17601)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    arg0:SetNumber(2, arg0:GetNumber(2) + 4)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local0, f8_local1, TARGET_ENE_0, f8_local4, f8_local5, f8_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act07(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f9_local0 = 10
    local f9_local1 = 3007
    local f9_local2 = 3001
    local f9_local3 = 3002
    local f9_local4 = 999
    local f9_local5 = 0
    local f9_local6 = 120
    local f9_local7 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(7, 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local0, f9_local1, TARGET_ENE_0, f9_local4, f9_local5, f9_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act08(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    local f10_local0 = 10
    local f10_local1 = 3032
    local f10_local2 = 999
    local f10_local3 = 0
    local f10_local4 = 120
    local f10_local5 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17601)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local0, f10_local1, TARGET_ENE_0, f10_local2, f10_local3, f10_local4, 0, 0)
    
end

function CastleGargoyle477000_Act09(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetRandam_Int(1, 100)
    local f11_local2 = 13
    local f11_local3 = 0
    local f11_local4 = 999
    local f11_local5 = arg0:GetStringIndexedNumber("Run_Odds")
    local f11_local6 = 0
    local f11_local7 = 3
    local f11_local8 = 6
    Approach_Act_Flex(arg0, arg1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7, f11_local8)
    arg0:SetNumber(2, arg0:GetNumber(2) + 4)
    local f11_local9 = 10
    local f11_local10 = 3012
    local f11_local11 = 3014
    local f11_local12 = 3009
    local f11_local13 = 999
    local f11_local14 = 0
    local f11_local15 = 120
    local f11_local16 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17601)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local9, f11_local10, TARGET_ENE_0, f11_local13, f11_local14, f11_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 10, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act10(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetRandam_Int(1, 100)
    local f12_local2 = 20
    local f12_local3 = 0
    local f12_local4 = 999
    local f12_local5 = arg0:GetStringIndexedNumber("Run_Odds")
    local f12_local6 = 0
    local f12_local7 = 3
    local f12_local8 = 6
    Approach_Act_Flex(arg0, arg1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7, f12_local8)
    arg0:SetNumber(2, arg0:GetNumber(2) + 4)
    local f12_local9 = 10
    local f12_local10 = 3012
    local f12_local11 = 3014
    local f12_local12 = 3009
    local f12_local13 = 999
    local f12_local14 = 0
    local f12_local15 = 120
    local f12_local16 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17601)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local9, f12_local10, TARGET_ENE_0, f12_local13, f12_local14, f12_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 10, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act11(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetRandam_Int(1, 100)
    local f13_local2 = 8
    local f13_local3 = 0
    local f13_local4 = 999
    local f13_local5 = arg0:GetStringIndexedNumber("Run_Odds")
    local f13_local6 = 0
    local f13_local7 = 3
    local f13_local8 = 6
    Approach_Act_Flex(arg0, arg1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7, f13_local8)
    local f13_local9 = arg0:GetDist(TARGET_ENE_0)
    local f13_local10 = arg0:GetRandam_Int(1, 100)
    local f13_local11 = 10
    local f13_local12 = 3012
    local f13_local13 = 3002
    local f13_local14 = 3009
    local f13_local15 = 999
    local f13_local16 = 0
    local f13_local17 = 120
    local f13_local18 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17605)
    if f13_local9 < 5 then
        arg0:SetNumber(2, arg0:GetNumber(2) + 8)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local11, f13_local12, TARGET_ENE_0, f13_local15, f13_local16, f13_local17, 0, 0)
    else
        arg0:SetNumber(2, arg0:GetNumber(2) + 8)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local11, f13_local13, TARGET_ENE_0, f13_local15, f13_local16, f13_local17, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act12(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    local f14_local2 = 25
    local f14_local3 = 0
    local f14_local4 = 999
    local f14_local5 = arg0:GetStringIndexedNumber("Run_Odds")
    local f14_local6 = 0
    local f14_local7 = 3
    local f14_local8 = 6
    Approach_Act_Flex(arg0, arg1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7, f14_local8)
    local f14_local9 = 10
    local f14_local10 = 3006
    local f14_local11 = 3014
    local f14_local12 = 3009
    local f14_local13 = 999
    local f14_local14 = 0
    local f14_local15 = 120
    local f14_local16 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17601)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    arg0:SetNumber(2, arg0:GetNumber(2) + 16)
    if f14_local0 > 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local9, f14_local10, TARGET_ENE_0, f14_local13, f14_local14, f14_local15, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local9, f14_local11, TARGET_ENE_0, f14_local13, f14_local14, f14_local15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act13(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f15_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 17646)
    local f15_local1 = arg0:GetRandam_Int(1, 100)
    if f15_local0 == true then
        local f15_local2 = 10
        local f15_local3 = 3032
        local f15_local4 = 999
        local f15_local5 = 0
        local f15_local6 = 120
        local f15_local7 = arg0:GetRandam_Int(1, 100)
        local f15_local8 = arg0:GetDist(TARGET_ENE_0)
        arg0:SetNumber(2, arg0:GetNumber(2) + 16)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local2, f15_local3, TARGET_ENE_0, f15_local4, f15_local5, f15_local6, 0, 0)
    else
        local f15_local2 = 10
        local f15_local3 = 3005
        local f15_local4 = 999
        local f15_local5 = 0
        local f15_local6 = 120
        local f15_local7 = arg0:GetRandam_Int(1, 100)
        local f15_local8 = arg0:GetDist(TARGET_ENE_0)
        arg0:SetNumber(2, arg0:GetNumber(2) + 16)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local2, f15_local3, TARGET_ENE_0, f15_local4, f15_local5, f15_local6, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act14(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17602)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17607)
    local f16_local0 = 10
    local f16_local1 = 3009
    local f16_local2 = 3003
    local f16_local3 = 3009
    local f16_local4 = 999
    local f16_local5 = 0
    local f16_local6 = 120
    local f16_local7 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(7, 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local0, f16_local1, TARGET_ENE_0, f16_local4, f16_local5, f16_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act15(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17604)
    local f17_local0 = 10
    local f17_local1 = 3001
    local f17_local2 = 3003
    local f17_local3 = 3009
    local f17_local4 = 999
    local f17_local5 = 0
    local f17_local6 = 120
    local f17_local7 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, arg0:GetNumber(2) + 16)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f17_local0, f17_local1, TARGET_ENE_0, f17_local4, f17_local5, f17_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act16(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f18_local0 = 10
    local f18_local1 = 3000
    local f18_local2 = 3003
    local f18_local3 = 3009
    local f18_local4 = 999
    local f18_local5 = 0
    local f18_local6 = 120
    local f18_local7 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local0, f18_local1, TARGET_ENE_0, f18_local4, f18_local5, f18_local6, 0, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17604)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act17(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetRandam_Int(1, 100)
    local f19_local2 = 8
    local f19_local3 = 0
    local f19_local4 = 999
    local f19_local5 = arg0:GetStringIndexedNumber("Run_Odds")
    local f19_local6 = 0
    local f19_local7 = 3
    local f19_local8 = 6
    Approach_Act_Flex(arg0, arg1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6, f19_local7, f19_local8)
    local f19_local9 = 10
    local f19_local10 = 3004
    local f19_local11 = 3003
    local f19_local12 = 3009
    local f19_local13 = 999
    local f19_local14 = 0
    local f19_local15 = 120
    local f19_local16 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local9, f19_local10, TARGET_ENE_0, f19_local13, f19_local14, f19_local15, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act18(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = arg0:GetRandam_Int(1, 100)
    local f20_local2 = 8
    local f20_local3 = 0
    local f20_local4 = 999
    local f20_local5 = arg0:GetStringIndexedNumber("Run_Odds")
    local f20_local6 = 0
    local f20_local7 = 3
    local f20_local8 = 6
    Approach_Act_Flex(arg0, arg1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7, f20_local8)
    local f20_local9 = 10
    local f20_local10 = 3012
    local f20_local11 = 999
    local f20_local12 = 0
    local f20_local13 = 120
    local f20_local14 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17605)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local9, f20_local10, TARGET_ENE_0, f20_local11, f20_local12, f20_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act19(arg0, arg1, arg2)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = arg0:GetRandam_Int(1, 100)
    local f21_local2 = 28
    local f21_local3 = 0
    local f21_local4 = 999
    local f21_local5 = arg0:GetStringIndexedNumber("Run_Odds")
    local f21_local6 = 0
    local f21_local7 = 3
    local f21_local8 = 6
    Approach_Act_Flex(arg0, arg1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6, f21_local7, f21_local8)
    local f21_local9 = 10
    local f21_local10 = 20020
    local f21_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local12 = 3
    local f21_local13 = 45
    arg0:SetTimer(6, 18)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f21_local9, f21_local10, TARGET_ENE_0, f21_local11, f21_local12, f21_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act20(arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = arg0:GetRandam_Int(1, 100)
    local f22_local2 = 28
    local f22_local3 = 0
    local f22_local4 = 999
    local f22_local5 = arg0:GetStringIndexedNumber("Run_Odds")
    local f22_local6 = 0
    local f22_local7 = 3
    local f22_local8 = 6
    Approach_Act_Flex(arg0, arg1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6, f22_local7, f22_local8)
    local f22_local9 = 10
    local f22_local10 = 3039
    local f22_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local12 = 3
    local f22_local13 = 90
    arg0:SetTimer(6, 18)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local9, f22_local10, TARGET_ENE_0, f22_local11, f22_local12, f22_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act21(arg0, arg1, arg2)
    arg0:SetNumber(2, arg0:GetNumber(2) + 2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 15, TARGET_ENE_0, RunSwitch, IsGuard)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act22(arg0, arg1, arg2)
    arg0:SetNumber(2, arg0:GetNumber(2) + 2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Int(3, 5), TARGET_ENE_0, 10, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act23(arg0, arg1, arg2)
    local f25_local0 = arg0:GetRandam_Int(1, 100)
    local f25_local1 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_FRI_0, AI_DIR_TYPE_F, 90, 20, 999) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Int(3, 5), TARGET_ENE_0, 15, TARGET_SELF, true, -1)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_FRI_0, AI_DIR_TYPE_L, 180, 20, 999) then
        arg0:SetAIFixedMoveTargetSpecifyAngle(TARGET_ENE_0, 90, f25_local1 / 1.8, AI_SPA_DIR_TYPE_ToTarget)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Int(3, 5), POINT_AI_FIXED_POS, 20, TARGET_SELF, true, -1)
    else
        arg0:SetAIFixedMoveTargetSpecifyAngle(TARGET_ENE_0, -90, f25_local1 / 1.8, AI_SPA_DIR_TYPE_ToTarget)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Int(3, 5), POINT_AI_FIXED_POS, 20, TARGET_SELF, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act24(arg0, arg1, arg2)
    local f26_local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNumber(3) == 1 then
        arg0:SetNumber(3, 1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(1, 3), TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif arg0:GetNumber(3) == 2 then
        arg0:SetNumber(3, 2)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(1, 3), TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif f26_local0 > 50 then
        arg0:SetNumber(3, 1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(1, 3), TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg0:SetNumber(3, 2)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(1, 3), TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act25(arg0, arg1, arg2)
    arg0:SetNumber(2, arg0:GetNumber(2) + 4)
    local f27_local0 = 5
    local f27_local1 = 1
    local f27_local2 = -1
    local f27_local3 = -1
    local f27_local4 = -1
    local f27_local5 = TARGET_ENE_0
    local f27_local6 = 0
    local f27_local7 = 2
    local f27_local8 = true
    arg0:SetTimer(2, 20)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17600)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f27_local0, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5, f27_local6, f27_local7, f27_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act26(arg0, arg1, arg2)
    arg0:SetNumber(2, 0)
    local f28_local0 = 5
    local f28_local1 = -1
    local f28_local2 = -1
    local f28_local3 = 1
    local f28_local4 = -1
    local f28_local5 = TARGET_ENE_0
    local f28_local6 = 3
    local f28_local7 = 0
    local f28_local8 = true
    arg0:SetTimer(2, 20)
    arg0:SetNumber(3, 1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17600)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f28_local0, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6, f28_local7, f28_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act27(arg0, arg1, arg2)
    arg0:SetNumber(2, 0)
    local f29_local0 = 5
    local f29_local1 = -1
    local f29_local2 = -1
    local f29_local3 = -1
    local f29_local4 = 1
    local f29_local5 = TARGET_ENE_0
    local f29_local6 = 3
    local f29_local7 = 0
    local f29_local8 = true
    arg0:SetTimer(2, 20)
    arg0:SetNumber(3, 2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17600)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f29_local0, f29_local1, f29_local2, f29_local3, f29_local4, f29_local5, f29_local6, f29_local7, f29_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act28(arg0, arg1, arg2)
    arg0:SetNumber(2, 0)
    local f30_local0 = 1
    local f30_local1 = 5
    local f30_local2 = -1
    local f30_local3 = 1
    local f30_local4 = -1
    local f30_local5 = -1
    local f30_local6 = TARGET_ENE_0
    local f30_local7 = 3
    local f30_local8 = 0
    local f30_local9 = true
    arg0:SetTimer(2, 20)
    local f30_local10 = arg0:GetDist(TARGET_ENE_0)
    arg0:SetAIFixedMoveTargetSpecifyAngle(TARGET_ENE_0, -90, f30_local10 / 2, AI_SPA_DIR_TYPE_ToTarget)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 30, 6001, POINT_AI_FIXED_POS, 0, AI_DIR_TYPE_B, 0)
    f30_local0 = 0
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act29(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act30(arg0, arg1, arg2)
    local f32_local0 = 10
    local f32_local1 = 20025
    local f32_local2 = 20026
    local f32_local3 = 999
    local f32_local4 = 0
    local f32_local5 = 120
    local f32_local6 = arg0:HasSpecialEffectId(TARGET_SELF, 17646)
    local f32_local7 = arg0:GetRandam_Int(1, 100)
    if f32_local6 == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f32_local0, f32_local2, TARGET_ENE_0, f32_local3, f32_local4, f32_local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f32_local0, f32_local1, TARGET_ENE_0, f32_local3, f32_local4, f32_local5, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act31(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f33_local0 = arg0:GetDist(TARGET_ENE_0)
    local f33_local1 = arg0:GetRandam_Int(1, 100)
    local f33_local2 = 8
    local f33_local3 = 0
    local f33_local4 = 999
    local f33_local5 = arg0:GetStringIndexedNumber("Run_Odds")
    local f33_local6 = 0
    local f33_local7 = 3
    local f33_local8 = 6
    Approach_Act_Flex(arg0, arg1, f33_local2, f33_local3, f33_local4, f33_local5, f33_local6, f33_local7, f33_local8)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17608)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17620)
    local f33_local9 = 10
    local f33_local10 = 3017
    local f33_local11 = 3003
    local f33_local12 = 3009
    local f33_local13 = 999
    local f33_local14 = 0
    local f33_local15 = 120
    local f33_local16 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f33_local9, f33_local10, TARGET_ENE_0, f33_local13, f33_local14, f33_local15, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act32(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f34_local0 = arg0:GetDist(TARGET_ENE_0)
    local f34_local1 = arg0:GetRandam_Int(1, 100)
    local f34_local2 = 8
    local f34_local3 = 0
    local f34_local4 = 999
    local f34_local5 = arg0:GetStringIndexedNumber("Run_Odds")
    local f34_local6 = 0
    local f34_local7 = 3
    local f34_local8 = 6
    Approach_Act_Flex(arg0, arg1, f34_local2, f34_local3, f34_local4, f34_local5, f34_local6, f34_local7, f34_local8)
    local f34_local9 = 10
    local f34_local10 = 3015
    local f34_local11 = 3003
    local f34_local12 = 3009
    local f34_local13 = 999
    local f34_local14 = 0
    local f34_local15 = 120
    local f34_local16 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17618)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f34_local9, f34_local10, TARGET_ENE_0, f34_local13, f34_local14, f34_local15, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act33(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f35_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 17646)
    local f35_local1 = arg0:GetRandam_Int(1, 100)
    if f35_local0 == true then
        local f35_local2 = 10
        local f35_local3 = 3028
        local f35_local4 = 999
        local f35_local5 = 0
        local f35_local6 = 120
        local f35_local7 = arg0:GetRandam_Int(1, 100)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17608)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17617)
        arg0:SetNumber(2, arg0:GetNumber(2) + 8)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f35_local2, f35_local3, TARGET_ENE_0, f35_local4, f35_local5, f35_local6, 0, 0)
    else
        local f35_local2 = 10
        local f35_local3 = 3022
        local f35_local4 = 999
        local f35_local5 = 0
        local f35_local6 = 120
        local f35_local7 = arg0:GetRandam_Int(1, 100)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17608)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17617)
        arg0:SetNumber(2, arg0:GetNumber(2) + 8)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f35_local2, f35_local3, TARGET_ENE_0, f35_local4, f35_local5, f35_local6, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act34(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f36_local0 = 10
    local f36_local1 = 3023
    local f36_local2 = 3003
    local f36_local3 = 3009
    local f36_local4 = 999
    local f36_local5 = 0
    local f36_local6 = 120
    local f36_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    arg0:SetNumber(7, 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f36_local0, f36_local1, TARGET_ENE_0, f36_local4, f36_local5, f36_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act35(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f37_local0 = arg0:GetDist(TARGET_ENE_0)
    local f37_local1 = arg0:GetRandam_Int(1, 100)
    local f37_local2 = 20
    local f37_local3 = 0
    local f37_local4 = 999
    local f37_local5 = 100
    local f37_local6 = 0
    local f37_local7 = 3
    local f37_local8 = 6
    Approach_Act_Flex(arg0, arg1, f37_local2, f37_local3, f37_local4, f37_local5, f37_local6, f37_local7, f37_local8)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17608)
    local f37_local9 = 10
    local f37_local10 = 3016
    local f37_local11 = 3003
    local f37_local12 = 3009
    local f37_local13 = 999
    local f37_local14 = 0
    local f37_local15 = 120
    local f37_local16 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f37_local9, f37_local10, TARGET_ENE_0, f37_local13, f37_local14, f37_local15, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act36(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f38_local0 = arg0:GetDist(TARGET_ENE_0)
    local f38_local1 = arg0:GetRandam_Int(1, 100)
    local f38_local2 = 10
    local f38_local3 = 0
    local f38_local4 = 999
    local f38_local5 = arg0:GetStringIndexedNumber("Run_Odds")
    local f38_local6 = 0
    local f38_local7 = 3
    local f38_local8 = 6
    Approach_Act_Flex(arg0, arg1, f38_local2, f38_local3, f38_local4, f38_local5, f38_local6, f38_local7, f38_local8)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17608)
    local f38_local9 = 10
    local f38_local10 = 3020
    local f38_local11 = 3003
    local f38_local12 = 3009
    local f38_local13 = 999
    local f38_local14 = 0
    local f38_local15 = 120
    local f38_local16 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f38_local9, f38_local10, TARGET_ENE_0, f38_local13, f38_local14, f38_local15, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act37(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f39_local0 = arg0:GetDist(TARGET_ENE_0)
    local f39_local1 = arg0:GetRandam_Int(1, 100)
    local f39_local2 = 10
    local f39_local3 = 0
    local f39_local4 = 999
    local f39_local5 = arg0:GetStringIndexedNumber("Run_Odds")
    local f39_local6 = 0
    local f39_local7 = 3
    local f39_local8 = 6
    Approach_Act_Flex(arg0, arg1, f39_local2, f39_local3, f39_local4, f39_local5, f39_local6, f39_local7, f39_local8)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17608)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17620)
    local f39_local9 = 10
    local f39_local10 = 3024
    local f39_local11 = 3003
    local f39_local12 = 3009
    local f39_local13 = 999
    local f39_local14 = 0
    local f39_local15 = 120
    local f39_local16 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f39_local9, f39_local10, TARGET_ENE_0, f39_local13, f39_local14, f39_local15, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act38(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f40_local0 = arg0:GetDist(TARGET_ENE_0)
    local f40_local1 = arg0:GetRandam_Int(1, 100)
    local f40_local2 = 15
    local f40_local3 = 0
    local f40_local4 = 999
    local f40_local5 = arg0:GetStringIndexedNumber("Run_Odds")
    local f40_local6 = 0
    local f40_local7 = 3
    local f40_local8 = 6
    Approach_Act_Flex(arg0, arg1, f40_local2, f40_local3, f40_local4, f40_local5, f40_local6, f40_local7, f40_local8)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17608)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17620)
    local f40_local9 = 10
    local f40_local10 = 3026
    local f40_local11 = 999
    local f40_local12 = 0
    local f40_local13 = 120
    local f40_local14 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f40_local9, f40_local10, TARGET_ENE_0, f40_local11, f40_local12, f40_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act40(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f41_local0 = arg0:GetDist(TARGET_ENE_0)
    local f41_local1 = arg0:GetRandam_Int(1, 100)
    local f41_local2 = 6
    local f41_local3 = 0
    local f41_local4 = 999
    local f41_local5 = arg0:GetStringIndexedNumber("Run_Odds")
    local f41_local6 = 0
    local f41_local7 = 3
    local f41_local8 = 6
    Approach_Act_Flex(arg0, arg1, f41_local2, f41_local3, f41_local4, f41_local5, f41_local6, f41_local7, f41_local8)
    local f41_local9 = 10
    local f41_local10 = 3018
    local f41_local11 = 3003
    local f41_local12 = 3009
    local f41_local13 = 999
    local f41_local14 = 0
    local f41_local15 = 120
    local f41_local16 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17616)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17619)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f41_local9, f41_local10, TARGET_ENE_0, f41_local13, f41_local14, f41_local15, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act41(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f42_local0 = 10
    local f42_local1 = 3019
    local f42_local2 = 3003
    local f42_local3 = 3009
    local f42_local4 = 999
    local f42_local5 = 0
    local f42_local6 = 120
    local f42_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17616)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f42_local0, f42_local1, TARGET_ENE_0, f42_local4, f42_local5, f42_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act42(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f43_local0 = 10
    local f43_local1 = 3015
    local f43_local2 = 3003
    local f43_local3 = 3009
    local f43_local4 = 999
    local f43_local5 = 0
    local f43_local6 = 120
    local f43_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17616)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg0:SetNumber(6, arg0:GetNumber(6) + 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f43_local0, f43_local1, TARGET_ENE_0, f43_local4, f43_local5, f43_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act43(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f44_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 17646)
    local f44_local1 = arg0:GetRandam_Int(1, 100)
    if f44_local0 == true then
        local f44_local2 = 10
        local f44_local3 = 3033
        local f44_local4 = 999
        local f44_local5 = 0
        local f44_local6 = 120
        local f44_local7 = arg0:GetRandam_Int(1, 100)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17616)
        arg0:SetNumber(2, arg0:GetNumber(2) + 8)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f44_local2, f44_local3, TARGET_ENE_0, f44_local4, f44_local5, f44_local6, 0, 0)
    else
        local f44_local2 = 10
        local f44_local3 = 3022
        local f44_local4 = 999
        local f44_local5 = 0
        local f44_local6 = 120
        local f44_local7 = arg0:GetRandam_Int(1, 100)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17616)
        arg0:SetNumber(2, arg0:GetNumber(2) + 8)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f44_local2, f44_local3, TARGET_ENE_0, f44_local4, f44_local5, f44_local6, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act44(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f45_local0 = 10
    local f45_local1 = 3026
    local f45_local2 = 3003
    local f45_local3 = 3009
    local f45_local4 = 999
    local f45_local5 = 0
    local f45_local6 = 120
    arg0:SetNumber(6, arg0:GetNumber(6) + 1)
    local f45_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17616)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f45_local0, f45_local1, TARGET_ENE_0, f45_local4, f45_local5, f45_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act45(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f46_local0 = 10
    local f46_local1 = 3027
    local f46_local2 = 3003
    local f46_local3 = 3009
    local f46_local4 = 999
    local f46_local5 = 0
    local f46_local6 = 120
    local f46_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f46_local0, f46_local1, TARGET_ENE_0, f46_local4, f46_local5, f46_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act46(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f47_local0 = arg0:GetDist(TARGET_ENE_0)
    local f47_local1 = arg0:GetRandam_Int(1, 100)
    local f47_local2 = 10
    local f47_local3 = 0
    local f47_local4 = 999
    local f47_local5 = arg0:GetStringIndexedNumber("Run_Odds")
    local f47_local6 = 0
    local f47_local7 = 3
    local f47_local8 = 6
    Approach_Act_Flex(arg0, arg1, f47_local2, f47_local3, f47_local4, f47_local5, f47_local6, f47_local7, f47_local8)
    local f47_local9 = 10
    local f47_local10 = 3023
    local f47_local11 = 3003
    local f47_local12 = 3009
    local f47_local13 = 999
    local f47_local14 = 0
    local f47_local15 = 120
    local f47_local16 = arg0:GetRandam_Int(1, 100)
    local f47_local17 = arg0:HasSpecialEffectId(TARGET_SELF, 17646)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    arg0:SetNumber(7, 1)
    if f47_local17 == true then
        local f47_local18 = 3025
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f47_local9, f47_local18, TARGET_ENE_0, f47_local13, f47_local14, f47_local15, 0, 0)
    else
        local f47_local18 = 3023
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f47_local9, f47_local18, TARGET_ENE_0, f47_local13, f47_local14, f47_local15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act47(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f48_local0 = 10
    local f48_local1 = 3016
    local f48_local2 = 3003
    local f48_local3 = 3009
    local f48_local4 = 999
    local f48_local5 = 0
    local f48_local6 = 120
    local f48_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17616)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg0:SetNumber(4, 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f48_local0, f48_local1, TARGET_ENE_0, f48_local4, f48_local5, f48_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act48(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f49_local0 = 10
    local f49_local1 = 3021
    local f49_local2 = 3003
    local f49_local3 = 3009
    local f49_local4 = 999
    local f49_local5 = 0
    local f49_local6 = 120
    local f49_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f49_local0, f49_local1, TARGET_ENE_0, f49_local4, f49_local5, f49_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act49(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f50_local0 = 10
    local f50_local1 = 3020
    local f50_local2 = 3003
    local f50_local3 = 3009
    local f50_local4 = 999
    local f50_local5 = 0
    local f50_local6 = 120
    local f50_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17609)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17613)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17614)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17615)
    arg0:SetNumber(2, arg0:GetNumber(2) + 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f50_local0, f50_local1, TARGET_ENE_0, f50_local4, f50_local5, f50_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_Act50(arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    local f51_local0 = 10
    local f51_local1 = 3000
    local f51_local2 = 3003
    local f51_local3 = 3009
    local f51_local4 = 999
    local f51_local5 = 0
    local f51_local6 = 0
    local f51_local7 = arg0:GetRandam_Int(1, 100)
    local f51_local8 = arg0:HasSpecialEffectId(TARGET_SELF, 17644)
    local f51_local9 = arg0:HasSpecialEffectId(TARGET_SELF, 17638)
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 17638) or arg0:HasSpecialEffectId(TARGET_SELF, 17639) then
        if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 150, 180, 45) then
            local f51_local10 = 3006
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f51_local0, f51_local10, TARGET_ENE_0, f51_local4, f51_local5, f51_local6, 0, 0)
        end
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 150, 180, 45) then
        local f51_local10 = 3000
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f51_local0, f51_local10, TARGET_ENE_0, f51_local4, f51_local5, f51_local6, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CastleGargoyle477000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_CastleGargoyle477000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f55_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f55_local1 = 0
    local f55_local2 = 20
    local f55_local3 = arg1:GetDist(TARGET_ENE_0)
    local f55_local4 = arg1:GetRandam_Int(1, 100)
    local f55_local5 = STEP_CANCELDIST
    local f55_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 5401)
    local f55_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 17644)
    local f55_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 17636)
    local f55_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 17626)
    local f55_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 17640)
    local f55_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 17641)
    local f55_local12 = arg1:HasSpecialEffectId(TARGET_SELF, 17642)
    local f55_local13 = arg1:HasSpecialEffectId(TARGET_SELF, 17643)
    local f55_local14 = arg1:HasSpecialEffectId(TARGET_SELF, 17646)
    if arg1:GetNumber(2) >= 150 then
        rateswitch = arg1:GetRandam_Int(100, 120)
        ratearts = 20
    elseif arg1:GetNumber(2) >= 100 then
        rateswitch = arg1:GetRandam_Int(90, 120)
        ratearts = 10
    elseif arg1:GetNumber(2) >= 75 then
        rateswitch = arg1:GetRandam_Int(60, 120)
        ratearts = 5
    elseif arg1:GetNumber(2) >= 50 then
        rateswitch = arg1:GetRandam_Int(10, 110)
        ratearts = 2
    else
        rateswitch = arg1:GetRandam_Int(1, 10)
        ratearts = 1
    end
    local f55_local15 = arg1:HasSpecialEffectId(TARGET_SELF, 17603)
    if arg1:IsInterupt(INTERUPT_Damaged) and f55_local15 == true then
        local f55_local16 = arg1:GetDist(TARGET_ENE_0)
        local f55_local17 = arg1:GetRandam_Int(1, 100)
        local f55_local18 = arg1:GetRandam_Int(1, 100)
        arg2:ClearSubGoal()
        return true
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and f55_local9 == true then
        if f55_local10 == true then
            if f55_local4 > 60 then
                if f55_local3 < 12 and f55_local4 > 70 then
                    arg2:ClearSubGoal()
                    CastleGargoyle477000_Act05(arg1, arg2)
                    return true
                elseif f55_local3 < 20 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 200, 90, 20) == false and f55_local4 > 85 then
                    arg2:ClearSubGoal()
                    CastleGargoyle477000_Act05(arg1, arg2)
                    return true
                elseif f55_local3 < 30 then
                    arg2:ClearSubGoal()
                    CastleGargoyle477000_Act3(arg1, arg2)
                    return true
                end
            else
                arg2:ClearSubGoal()
                arg1:SetNumber(9, 1)
                CastleGargoyle477000_Act26(arg1, arg2)
                return true
            end
        elseif f55_local11 == true then
            if f55_local4 > 40 then
                if f55_local3 < 25 and f55_local4 > 70 then
                    arg2:ClearSubGoal()
                    CastleGargoyle477000_Act12(arg1, arg2)
                    return true
                elseif f55_local3 < 30 then
                    arg2:ClearSubGoal()
                    CastleGargoyle477000_Act15(arg1, arg2)
                    return true
                end
            else
                arg2:ClearSubGoal()
                arg1:SetNumber(9, 1)
                CastleGargoyle477000_Act26(arg1, arg2)
                return true
            end
        elseif f55_local12 == true then
            if f55_local3 < 20 and f55_local4 > 60 then
                arg2:ClearSubGoal()
                CastleGargoyle477000_Act35(arg1, arg2)
                return true
            else
                arg2:ClearSubGoal()
                arg1:SetNumber(9, 1)
                CastleGargoyle477000_Act26(arg1, arg2)
                return true
            end
        elseif f55_local13 == true then
            if f55_local3 < 15 and f55_local4 > 60 then
                arg2:ClearSubGoal()
                CastleGargoyle477000_Act44(arg1, arg2)
                return true
            elseif f55_local3 > 15 and f55_local3 < 30 and f55_local4 > 60 then
                arg2:ClearSubGoal()
                CastleGargoyle477000_Act48(arg1, arg2)
                return true
            else
                arg2:ClearSubGoal()
                arg1:SetNumber(9, 1)
                CastleGargoyle477000_Act26(arg1, arg2)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(17601) then
            local f55_local16 = arg1:GetDist(TARGET_ENE_0)
            local f55_local17 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                if f55_local16 <= 4 then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(2, arg1:GetNumber(2) + 4)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif f55_local16 <= 13 then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(2, arg1:GetNumber(2) + 4)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(17602) then
            local f55_local16 = arg1:GetDist(TARGET_ENE_0)
            local f55_local17 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and f55_local16 <= 10 and f55_local16 >= 4 then
                arg2:ClearSubGoal()
                arg1:SetNumber(2, arg1:GetNumber(2) + 4)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(17607) then
            local f55_local16 = arg1:GetDist(TARGET_ENE_0)
            local f55_local17 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and f55_local16 <= 15 and f55_local16 >= 4 then
                arg2:ClearSubGoal()
                arg1:SetNumber(2, arg1:GetNumber(2) + 4)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 17604) then
            local f55_local16 = arg1:GetDist(TARGET_ENE_0)
            local f55_local17 = arg1:GetRandam_Int(1, 100)
            if f55_local16 <= 7 then
                arg2:ClearSubGoal()
                arg1:SetNumber(2, arg1:GetNumber(2) + 8)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(17605) then
            local f55_local16 = arg1:GetDist(TARGET_ENE_0)
            local f55_local17 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                if f55_local16 < 6 then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(2, arg1:GetNumber(2) + 8)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif f55_local16 <= 15 then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(2, arg1:GetNumber(2) + 8)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(17608) then
            local f55_local16 = arg1:GetDist(TARGET_ENE_0)
            local f55_local17 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                if f55_local16 <= 4 then
                    if arg1:GetAttackPassedTime(3027) >= 20 and f55_local17 > 30 then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 6)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif f55_local17 > 80 then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 6)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif f55_local16 <= 8 then
                    if arg1:GetAttackPassedTime(3019) >= 20 and f55_local17 > 30 then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 6)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif arg1:GetAttackPassedTime(3027) >= 20 and f55_local17 > 30 then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 6)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif f55_local17 > 90 then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 6)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif f55_local17 > 80 then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 6)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(17620) then
            local f55_local16 = arg1:GetDist(TARGET_ENE_0)
            local f55_local17 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                if f55_local16 <= 4 then
                    if f55_local17 > 70 and arg1:GetAttackPassedTime(3027) >= 15 then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 6)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif f55_local17 > 40 and arg1:GetAttackPassedTime(3019) >= 15 then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 6)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif f55_local16 <= 9 then
                    if f55_local17 > 70 and arg1:GetAttackPassedTime(3027) >= 15 then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 6)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 6)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif f55_local16 < 12 and arg1:GetAttackPassedTime(3027) >= 15 then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(2, arg1:GetNumber(2) + 6)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(17617) then
            local f55_local16 = arg1:GetDist(TARGET_ENE_0)
            local f55_local17 = arg1:GetRandam_Int(1, 100)
            if f55_local14 == true then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                    if f55_local16 >= 6 and f55_local17 > 50 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif f55_local16 >= 12 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                if f55_local16 >= 6 and f55_local17 > 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif f55_local16 >= 12 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(17618) then
            local f55_local16 = arg1:GetDist(TARGET_ENE_0)
            local f55_local17 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                if f55_local16 <= 2.5 then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(2, arg1:GetNumber(2) + 6)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif f55_local16 >= 6 then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(2, arg1:GetNumber(2) + 6)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(17609) then
            local f55_local16 = arg1:GetDist(TARGET_ENE_0)
            local f55_local17 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and f55_local16 <= 30 then
                if f55_local16 < 8 then
                    if arg1:GetNumber(6) <= 2 and f55_local17 > 40 then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                        arg1:SetNumber(6, arg1:GetNumber(6) + 1)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 100, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif f55_local16 < 18 then
                    if f55_local17 > 60 and arg1:GetNumber(6) <= 2 then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                        arg1:SetNumber(6, arg1:GetNumber(6) + 1)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        if arg1:GetAttackPassedTime(3022) <= 40 ~= false or f55_local17 <= 40 then
                            local f55_local18 = arg1:GetAttackPassedTime(3033) <= 40
                            if f55_local18 ~= false or f55_local17 <= 40 then
                                f55_local18 = false
                            else
                                f55_local18 = true
                            end
                            if f55_local18 == true then
                                if f55_local14 == true then
                                    arg2:ClearSubGoal()
                                    arg1:SetNumber(2, arg1:GetNumber(2) + 4)
                                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
                                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                    return true
                                else
                                    arg2:ClearSubGoal()
                                    arg1:SetNumber(2, arg1:GetNumber(2) + 4)
                                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
                                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                    return true
                                end
                            else
                                arg2:ClearSubGoal()
                                arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            end
                        end
                        if f55_local14 == true then
                            arg2:ClearSubGoal()
                            arg1:SetNumber(2, arg1:GetNumber(2) + 4)
                            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        else
                            arg2:ClearSubGoal()
                            arg1:SetNumber(2, arg1:GetNumber(2) + 4)
                            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 17611)
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    end
                elseif f55_local16 < 25 then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 100, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(17610) then
            local f55_local16 = arg1:GetDist(TARGET_ENE_0)
            local f55_local17 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                if arg1:GetNumber(4) == 1 then
                    if f55_local16 <= 7 and f55_local16 > 2 then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif f55_local16 < 10 then
                        if f55_local17 > 40 then
                            arg2:ClearSubGoal()
                            arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        else
                            arg2:ClearSubGoal()
                            arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    elseif f55_local16 < 20 then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif f55_local16 < 2 then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                    arg1:SetNumber(4, 1)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif f55_local16 < 10 then
                    if f55_local17 > 40 then
                        arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                        arg1:SetNumber(4, 1)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif f55_local16 < 20 then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                    arg1:SetNumber(4, 1)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(17616) then
            local f55_local16 = arg1:GetDist(TARGET_ENE_0)
            local f55_local17 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and f55_local16 >= 12 and f55_local16 < 40 then
                if f55_local14 == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(17613) then
            local f55_local16 = arg1:GetDist(TARGET_ENE_0)
            local f55_local17 = arg1:GetRandam_Int(1, 100)
            local f55_local18 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                if arg1:GetNumber(6) >= 2 or f55_local17 > 70 then
                    if f55_local16 <= 10 then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif f55_local16 > 12 and f55_local17 > 20 then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(17611) then
            local f55_local16 = arg1:GetDist(TARGET_ENE_0)
            local f55_local17 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and f55_local16 <= 30 then
                if f55_local16 < 8 and arg1:GetNumber(6) <= 2 then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                    arg1:SetNumber(6, arg1:GetNumber(6) + 1)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif f55_local16 < 15 then
                    if arg1:GetAttackPassedTime(3022) <= 40 ~= false or f55_local17 <= 70 then
                        local f55_local18 = arg1:GetAttackPassedTime(3033) <= 40
                        if f55_local18 ~= false or f55_local17 <= 70 then
                            f55_local18 = false
                        else
                            f55_local18 = true
                        end
                        if f55_local18 == true then
                            if f55_local14 == true then
                                arg2:ClearSubGoal()
                                arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            else
                                arg2:ClearSubGoal()
                                arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            end
                        elseif f55_local17 > 40 and arg1:GetNumber(6) <= 2 then
                            arg2:ClearSubGoal()
                            arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        else
                            arg2:ClearSubGoal()
                            arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    end
                    if f55_local14 == true then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif f55_local16 < 30 then
                    if arg1:GetAttackPassedTime(3022) <= 40 == false and f55_local17 > 60 then
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(17619) then
            local f55_local16 = arg1:GetDist(TARGET_ENE_0)
            local f55_local17 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and f55_local16 <= 4 then
                arg2:ClearSubGoal()
                arg1:SetNumber(2, arg1:GetNumber(2) + 2)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3030, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_CastleGargoyle477000_AfterAttackAct, "CastleGargoyle477000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CastleGargoyle477000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


