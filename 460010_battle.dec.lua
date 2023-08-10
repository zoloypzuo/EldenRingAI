RegisterTableGoal(GOAL_Troll_Carriage_460010_Battle, "Troll_Carriage_460010_Battle")
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
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3029)
    arg1:EnableUnfavorableAttackCheck(0, 3030)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10147)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10148)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10131)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10134)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10133) == true then
        if f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 50
                f2_local0[2] = 25
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[13] = 25
            else
                f2_local0[40] = 100
                f2_local0[41] = 0
                f2_local0[42] = 0
                f2_local0[43] = 0
            end
        elseif f2_local3 > 8.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 10155) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10156) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 25
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 25
                    f2_local0[16] = 100
                    f2_local0[17] = 100
                else
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10155) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 25
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 25
                    f2_local0[16] = 0
                    f2_local0[17] = 100
                else
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10156) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 25
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 25
                    f2_local0[16] = 100
                    f2_local0[17] = 0
                else
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 50
                f2_local0[2] = 25
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[13] = 25
            else
                f2_local0[40] = 100
                f2_local0[41] = 0
                f2_local0[42] = 0
                f2_local0[43] = 0
            end
        elseif f2_local3 > 7.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 10155) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10156) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 40
                    f2_local0[2] = 25
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 25
                    f2_local0[16] = 100
                    f2_local0[17] = 100
                    f2_local0[42] = 10
                else
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                    f2_local0[43] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10155) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 40
                    f2_local0[2] = 25
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 25
                    f2_local0[16] = 0
                    f2_local0[17] = 100
                    f2_local0[42] = 10
                else
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                    f2_local0[43] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10156) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 40
                    f2_local0[2] = 25
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 25
                    f2_local0[16] = 100
                    f2_local0[17] = 0
                    f2_local0[42] = 10
                else
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                    f2_local0[43] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 40
                f2_local0[2] = 25
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[13] = 25
                f2_local0[42] = 10
            else
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
                f2_local0[43] = 0
            end
        elseif f2_local3 > 5 then
            if f2_local4 > 5 then
                f2_local0[7] = 80
                f2_local0[41] = 10
                f2_local0[42] = 10
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10155) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10156) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 40
                    f2_local0[2] = 25
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 25
                    f2_local0[16] = 100
                    f2_local0[17] = 100
                    f2_local0[42] = 10
                else
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                    f2_local0[43] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10155) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 40
                    f2_local0[2] = 25
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 25
                    f2_local0[16] = 0
                    f2_local0[17] = 100
                    f2_local0[42] = 10
                else
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                    f2_local0[43] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10156) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 40
                    f2_local0[2] = 25
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 25
                    f2_local0[16] = 100
                    f2_local0[17] = 0
                    f2_local0[42] = 10
                else
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                    f2_local0[43] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 40
                f2_local0[2] = 25
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[13] = 25
                f2_local0[42] = 10
            else
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
                f2_local0[43] = 0
            end
        elseif f2_local3 > 2.5 then
            if f2_local4 > 5 then
                f2_local0[7] = 80
                f2_local0[41] = 10
                f2_local0[42] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 15
                f2_local0[2] = 40
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[13] = 40
                f2_local0[42] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[13] = 95
                f2_local0[42] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 65
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[42] = 5
            else
                f2_local0[6] = 90
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 10
                f2_local0[43] = 0
            end
        elseif f2_local3 > 2 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 15
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 10
                f2_local0[9] = 10
                f2_local0[12] = 45
                f2_local0[13] = 15
                f2_local0[42] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 0
                f2_local0[9] = 30
                f2_local0[12] = 0
                f2_local0[13] = 65
                f2_local0[42] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 65
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 30
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[42] = 5
            else
                f2_local0[6] = 90
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 10
                f2_local0[43] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[4] = 5
            f2_local0[5] = 5
            f2_local0[6] = 0
            f2_local0[8] = 5
            f2_local0[9] = 5
            f2_local0[12] = 45
            f2_local0[13] = 0
            f2_local0[42] = 5
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 45
            f2_local0[4] = 0
            f2_local0[5] = 10
            f2_local0[6] = 0
            f2_local0[8] = 0
            f2_local0[9] = 10
            f2_local0[12] = 0
            f2_local0[13] = 30
            f2_local0[42] = 5
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 30
            f2_local0[3] = 45
            f2_local0[4] = 0
            f2_local0[5] = 10
            f2_local0[6] = 0
            f2_local0[8] = 0
            f2_local0[9] = 10
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[42] = 5
        else
            f2_local0[6] = 90
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 10
            f2_local0[43] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10133) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[14] = 100
        else
            f2_local0[40] = 100
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 20, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 20, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 5, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3005, 20, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3007, 5, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3008, 5, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[10], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3018, 30, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3028, 10, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3031, 1, f2_local0[14], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3025, 20, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3027, 15, f2_local0[17], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act10)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act14)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act17)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_Act43)
    local f2_local9 = REGIST_FUNC(arg1, arg2, Troll_Carriage_460010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function Troll_Carriage_460010_Act01(arg0, arg1, arg2)
    local f3_local0 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 10
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 4
    if arg0:HasSpecialEffectId(TARGET_SELF, 10134) == true then
        f3_local3 = 0
        f3_local4 = 100
    end
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act02(arg0, arg1, arg2)
    local f4_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 10
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 4
    if arg0:HasSpecialEffectId(TARGET_SELF, 10134) == true then
        f4_local3 = 0
        f4_local4 = 100
    end
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10147)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10148)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act03(arg0, arg1, arg2)
    local f5_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 10
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 4
    local f5_local7 = 3002
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act04(arg0, arg1, arg2)
    local f6_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 10
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 4
    local f6_local7 = 3003
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act05(arg0, arg1, arg2)
    local f7_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 10
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 4
    local f7_local7 = 3004
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act06(arg0, arg1, arg2)
    local f8_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 10
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 4
    local f8_local7 = 3005
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local9 = 0
    local f8_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10147)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10148)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act07(arg0, arg1, arg2)
    local f9_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 10
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 4
    local f9_local7 = 3006
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act08(arg0, arg1, arg2)
    local f10_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 10
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 4
    local f10_local7 = 3007
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local9 = 0
    local f10_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act09(arg0, arg1, arg2)
    local f11_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 10
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 4
    local f11_local7 = 3008
    local f11_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local9 = 0
    local f11_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act10(arg0, arg1, arg2)
    local f12_local0 = ATT3009_DIST_MAX
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 10
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 4
    local f12_local6 = 4
    local f12_local7 = 3009
    local f12_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local9 = 0
    local f12_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10147)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10148)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act12(arg0, arg1, arg2)
    local f13_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 10
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 4
    local f13_local6 = 4
    local f13_local7 = 3018
    local f13_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local9 = 0
    local f13_local10 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act13(arg0, arg1, arg2)
    local f14_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 10
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 4
    local f14_local6 = 4
    if arg0:HasSpecialEffectId(TARGET_SELF, 10134) == true then
        f14_local3 = 0
        f14_local4 = 100
    end
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3028
    local f14_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local9 = 0
    local f14_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10147)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10148)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act14(arg0, arg1, arg2)
    local f15_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = f15_local0 + 0
    local f15_local2 = f15_local0 + 10
    local f15_local3 = 100
    local f15_local4 = 0
    local f15_local5 = 4
    local f15_local6 = 4
    if arg0:HasSpecialEffectId(TARGET_SELF, 10134) == true then
        f15_local3 = 0
        f15_local4 = 100
    end
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 3031
    local f15_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local9 = 0
    local f15_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act16(arg0, arg1, arg2)
    local f16_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = f16_local0 + 0
    local f16_local2 = f16_local0 + 10
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 4
    local f16_local6 = 4
    local f16_local7 = arg0:HasSpecialEffectId(TARGET_SELF, 10134)
    if f16_local7 == true then
        f16_local3 = 0
        f16_local4 = 100
    end
    f16_local7 = 3025
    local f16_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f16_local9 = 0
    local f16_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f16_local7, TARGET_ENE_0, f16_local8, f16_local9, f16_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act17(arg0, arg1, arg2)
    local f17_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 10
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 4
    local f17_local6 = 4
    local f17_local7 = arg0:HasSpecialEffectId(TARGET_SELF, 10134)
    if f17_local7 == true then
        f17_local3 = 0
        f17_local4 = 100
    end
    f17_local7 = 3027
    local f17_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f17_local9 = 0
    local f17_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f17_local7, TARGET_ENE_0, f17_local8, f17_local9, f17_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act40(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 10134) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, 40, TARGET_ENE_0, true, 9910)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 10134) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, 40, TARGET_ENE_0, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act41(arg0, arg1, arg2)
    local f19_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f19_local0, 0) >= 2 then
        if arg0:HasSpecialEffectId(TARGET_SELF, 10134) == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, 9910)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 10134) == false then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 10134) == true then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 10134) == false then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act42(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 10134) == true then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 10134) == false then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 90, -1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Troll_Carriage_460010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Troll_Carriage_460010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f25_local0 = arg1:GetDist(TARGET_ENE_0)
    local f25_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f25_local2 = 0
    local f25_local3 = 0
    local f25_local4 = arg1:GetRandam_Int(1, 100)
    local f25_local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 10134) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7.5) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 20) then
                if f25_local4 <= 40 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, 5, TARGET_ENE_0, true, 9910)
                    return true
                else
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10134) == false then
            if f25_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 2.5) then
            if f25_local4 <= 30 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 3, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f25_local4 <= 60 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 3, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 2.5) then
            if f25_local4 <= 30 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 3, 3003, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f25_local4 <= 60 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 3, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 10131) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 10) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 3) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 10) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 3) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                if f25_local4 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f25_local4 <= 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f25_local4 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f25_local4 <= 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 3) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                if f25_local4 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f25_local4 <= 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f25_local4 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f25_local4 <= 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 10131) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 4.5) then
                if f25_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 5) then
            if f25_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) and arg1:HasSpecialEffectId(TARGET_SELF, 10131) == true then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 9) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 7) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 7) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 7) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 20) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 30) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) and arg1:HasSpecialEffectId(TARGET_SELF, 10140) == true then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 15) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 30) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5032) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 10131) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 1) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 8) then
                if f25_local4 <= 15 then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3029, TARGET_ENE_0, 999, f25_local2, f25_local3, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 1) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 8) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5033) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 10) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 15) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5034) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 10) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5035) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 10) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 15) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5036) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5037) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 30) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5038) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 30) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(10147) and arg1:HasSpecialEffectId(TARGET_SELF, 10131) == true and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 12.5) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_Troll_Carriage_460010_AfterAttackAct, "Troll_Carriage_460010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Troll_Carriage_460010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


