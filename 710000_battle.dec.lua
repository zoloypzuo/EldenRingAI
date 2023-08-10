RegisterTableGoal(GOAL_BuddyUnique710000_Battle, "BuddyUnique710000_Battle")
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
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 16950)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 16951)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 16954)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16951) == true then
            if f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 10
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 30
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 10
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 10
                    f2_local0[25] = 0
                    f2_local0[26] = 10
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 80
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                    f2_local0[26] = 10
                end
            elseif f2_local3 >= 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 40
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 40
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 10
                    f2_local0[25] = 0
                    f2_local0[26] = 10
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 80
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                    f2_local0[26] = 10
                end
            elseif f2_local3 >= 2 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 80
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 20
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 80
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                    f2_local0[26] = 10
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 30
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 20
                f2_local0[18] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
                f2_local0[26] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 30
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 50
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
                f2_local0[26] = 10
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16950) == true then
            if f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 10
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 40
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 10
                    f2_local0[25] = 0
                    f2_local0[26] = 10
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 80
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                    f2_local0[26] = 10
                end
            elseif f2_local3 >= 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 40
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 40
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 10
                    f2_local0[25] = 0
                    f2_local0[26] = 10
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 80
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                    f2_local0[26] = 10
                end
            elseif f2_local3 >= 2 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 80
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 20
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 80
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                    f2_local0[26] = 10
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 20
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 30
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
                f2_local0[26] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 30
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 50
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
                f2_local0[26] = 10
            end
        end
    elseif f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16951) == true then
            if f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 10
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 30
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 10
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 10
                    f2_local0[25] = 0
                    f2_local0[26] = 10
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 80
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                    f2_local0[26] = 10
                end
            elseif f2_local3 >= 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 40
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 40
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 10
                    f2_local0[25] = 0
                    f2_local0[26] = 10
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 80
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                    f2_local0[26] = 10
                end
            elseif f2_local3 >= 2 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 80
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 20
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 80
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                    f2_local0[26] = 10
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 30
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 20
                f2_local0[18] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
                f2_local0[26] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 30
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 50
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
                f2_local0[26] = 10
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16950) == true then
            if f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 10
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 40
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 10
                    f2_local0[25] = 0
                    f2_local0[26] = 10
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 80
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                    f2_local0[26] = 10
                end
            elseif f2_local3 >= 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 40
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 40
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 10
                    f2_local0[25] = 0
                    f2_local0[26] = 10
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 80
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                    f2_local0[26] = 10
                end
            elseif f2_local3 >= 2 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 80
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 20
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 80
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                    f2_local0[26] = 10
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 20
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 30
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
                f2_local0[26] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 30
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 50
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
                f2_local0[26] = 10
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16951) == true then
        if f2_local3 > 25 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 20
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 30
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[20] = 0
                f2_local0[24] = 100
                f2_local0[25] = 0
                f2_local0[26] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 0
                f2_local0[22] = 0
                f2_local0[26] = 100
            end
        elseif f2_local3 >= 20 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 30
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[20] = 0
                f2_local0[24] = 100
                f2_local0[25] = 0
                f2_local0[26] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 0
                f2_local0[22] = 0
                f2_local0[26] = 100
            end
        elseif f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 30
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 0
                f2_local0[14] = 100
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[20] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 150
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 0
                f2_local0[22] = 0
                f2_local0[26] = 100
            end
        elseif f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 30
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 0
                f2_local0[14] = 100
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 150
                f2_local0[25] = 0
                f2_local0[26] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 0
                f2_local0[22] = 0
                f2_local0[26] = 100
            end
        elseif f2_local3 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 0
                f2_local0[14] = 100
                f2_local0[16] = 100
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[22] = 20
                f2_local0[23] = 0
                f2_local0[24] = 150
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 100
            else
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 100
            end
        elseif f2_local3 >= 2 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 100
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 100
                f2_local0[14] = 0
                f2_local0[16] = 100
                f2_local0[17] = 0
                f2_local0[18] = 100
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 100
            else
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 100
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 20
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[6] = 0
            f2_local0[7] = 100
            f2_local0[9] = 0
            f2_local0[10] = 40
            f2_local0[13] = 100
            f2_local0[14] = 0
            f2_local0[16] = 0
            f2_local0[17] = 100
            f2_local0[18] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 30
            f2_local0[6] = 0
            f2_local0[7] = 100
            f2_local0[9] = 0
            f2_local0[10] = 30
            f2_local0[13] = 100
            f2_local0[14] = 0
            f2_local0[16] = 0
            f2_local0[17] = 100
            f2_local0[18] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 40
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[6] = 0
            f2_local0[7] = 100
            f2_local0[9] = 0
            f2_local0[10] = 20
            f2_local0[13] = 100
            f2_local0[14] = 0
            f2_local0[16] = 0
            f2_local0[17] = 100
            f2_local0[18] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 40
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 10
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[9] = 50
            f2_local0[10] = 10
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 30
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16950) == true then
        if arg1:GetHpRate(TARGET_SELF) < 0.6 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16958) == false then
                f2_local0[12] = 100
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 16958) == true then
                if f2_local3 > 25 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 20
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 30
                        f2_local0[9] = 0
                        f2_local0[10] = 0
                        f2_local0[20] = 50
                        f2_local0[22] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[9] = 0
                        f2_local0[10] = 0
                        f2_local0[20] = 100
                        f2_local0[22] = 0
                        f2_local0[26] = 0
                    end
                elseif f2_local3 >= 20 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 10
                        f2_local0[3] = 30
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 30
                        f2_local0[9] = 0
                        f2_local0[10] = 0
                        f2_local0[20] = 30
                        f2_local0[22] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[9] = 0
                        f2_local0[10] = 0
                        f2_local0[20] = 100
                        f2_local0[22] = 0
                        f2_local0[26] = 0
                    end
                elseif f2_local3 >= 15 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 10
                        f2_local0[3] = 30
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 30
                        f2_local0[9] = 0
                        f2_local0[10] = 0
                        f2_local0[20] = 30
                        f2_local0[22] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[9] = 0
                        f2_local0[10] = 0
                        f2_local0[20] = 100
                        f2_local0[22] = 0
                        f2_local0[26] = 0
                    end
                elseif f2_local3 >= 10 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 10
                        f2_local0[2] = 30
                        f2_local0[3] = 10
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 20
                        f2_local0[9] = 0
                        f2_local0[10] = 0
                        f2_local0[20] = 0
                        f2_local0[22] = 30
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[9] = 0
                        f2_local0[10] = 0
                        f2_local0[20] = 100
                        f2_local0[22] = 0
                        f2_local0[26] = 0
                    end
                elseif f2_local3 >= 5 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 30
                        f2_local0[2] = 30
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 20
                        f2_local0[7] = 0
                        f2_local0[9] = 0
                        f2_local0[10] = 0
                        f2_local0[20] = 0
                        f2_local0[22] = 20
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[20] = 0
                        f2_local0[22] = 100
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[20] = 0
                        f2_local0[22] = 100
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[20] = 100
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif f2_local3 >= 2.5 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 70
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[9] = 0
                        f2_local0[10] = 0
                        f2_local0[22] = 30
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 100
                    else
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 25
                    f2_local0[5] = 25
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 40
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 30
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 40
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 20
                    f2_local0[5] = 20
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 20
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 40
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 10
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 50
                    f2_local0[10] = 10
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 30
                end
            end
        elseif f2_local3 > 25 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 20
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 30
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 50
                f2_local0[22] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 100
                f2_local0[22] = 0
                f2_local0[26] = 0
            end
        elseif f2_local3 >= 20 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 10
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 30
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 30
                f2_local0[22] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 100
                f2_local0[22] = 0
                f2_local0[26] = 0
            end
        elseif f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 10
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 30
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 30
                f2_local0[22] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 100
                f2_local0[22] = 0
                f2_local0[26] = 0
            end
        elseif f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 30
                f2_local0[3] = 10
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 0
                f2_local0[22] = 30
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 100
                f2_local0[22] = 0
                f2_local0[26] = 0
            end
        elseif f2_local3 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 0
                f2_local0[22] = 20
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[20] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[20] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            else
                f2_local0[20] = 100
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            end
        elseif f2_local3 >= 2.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[22] = 30
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 100
            else
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 100
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 25
            f2_local0[5] = 25
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[9] = 0
            f2_local0[10] = 40
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 30
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[9] = 0
            f2_local0[10] = 30
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 40
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 20
            f2_local0[5] = 20
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[9] = 0
            f2_local0[10] = 20
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 40
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 10
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[9] = 50
            f2_local0[10] = 10
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 30
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3009, 20, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3010, 40, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3011, 120, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3013, 20, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3014, 1, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3015, 1, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3016, 40, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3017, 20, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3018, 1, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3019, 15, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3021, 15, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3023, 25, f2_local0[18], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6001, 1, f2_local0[24], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6001, 1, f2_local0[25], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6002, 1, f2_local0[26], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6003, 1, f2_local0[26], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act18)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, BuddyUnique710000_Act26)
    local f2_local8 = REGIST_FUNC(arg1, arg2, BuddyUnique710000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function BuddyUnique710000_Act01(arg0, arg1, arg2)
    local f3_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 30
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act02(arg0, arg1, arg2)
    local f4_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 30
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 2
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3004
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act03(arg0, arg1, arg2)
    local f5_local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 30
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3005
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act04(arg0, arg1, arg2)
    local f6_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 30
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 2
    local f6_local7 = 3006
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act05(arg0, arg1, arg2)
    local f7_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 30
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 2
    local f7_local7 = 3007
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act06(arg0, arg1, arg2)
    local f8_local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 30
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 2
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3009
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act07(arg0, arg1, arg2)
    local f9_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 30
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 2
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f9_local7 = 3010
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act08(arg0, arg1, arg2)
    local f10_local0 = 3011
    local f10_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local2 = 0
    local f10_local3 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 35, f10_local0, TARGET_ENE_0, f10_local1, f10_local2, f10_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act09(arg0, arg1, arg2)
    local f11_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 30
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 2
    local f11_local6 = 1
    local f11_local7 = 3012
    local f11_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local9 = 0
    local f11_local10 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act10(arg0, arg1, arg2)
    local f12_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 30
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 1
    local f12_local7 = 3013
    local f12_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local9 = 0
    local f12_local10 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act11(arg0, arg1, arg2)
    local f13_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 10
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 1
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3014
    local f13_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local9 = 0
    local f13_local10 = 360
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16951)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 3015
    local f14_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local3 = 0
    local f14_local4 = 360
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if f14_local0 > 7.5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, f14_local1, TARGET_ENE_0, f14_local2, f14_local3, f14_local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, f14_local1, TARGET_ENE_0, f14_local2, f14_local3, f14_local4, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act13(arg0, arg1, arg2)
    local f15_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = f15_local0 + 0
    local f15_local2 = f15_local0 + 30
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 2
    local f15_local6 = 1
    local f15_local7 = 3016
    local f15_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local9 = 0
    local f15_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act14(arg0, arg1, arg2)
    local f16_local0 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = f16_local0 + 0
    local f16_local2 = f16_local0 + 30
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 2
    local f16_local6 = 2
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 3017
    local f16_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f16_local9 = 0
    local f16_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f16_local7, TARGET_ENE_0, f16_local8, f16_local9, f16_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act15(arg0, arg1, arg2)
    local f17_local0 = 3018
    local f17_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f17_local2 = 0
    local f17_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f17_local0, TARGET_ENE_0, f17_local1, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act16(arg0, arg1, arg2)
    local f18_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = f18_local0 + 0
    local f18_local2 = f18_local0 + 30
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = 2
    local f18_local6 = 2
    Approach_Act_Flex(arg0, arg1, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f18_local7 = 3019
    local f18_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f18_local9 = 0
    local f18_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f18_local7, TARGET_ENE_0, f18_local8, f18_local9, f18_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act17(arg0, arg1, arg2)
    local f19_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = f19_local0 + 0
    local f19_local2 = f19_local0 + 30
    local f19_local3 = 0
    local f19_local4 = 0
    local f19_local5 = 2
    local f19_local6 = 2
    local f19_local7 = 3021
    local f19_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f19_local9 = 0
    local f19_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f19_local7, TARGET_ENE_0, f19_local8, f19_local9, f19_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act18(arg0, arg1, arg2)
    local f20_local0 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = f20_local0 + 0
    local f20_local2 = f20_local0 + 30
    local f20_local3 = 0
    local f20_local4 = 0
    local f20_local5 = 2
    local f20_local6 = 2
    Approach_Act_Flex(arg0, arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local f20_local7 = 3023
    local f20_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f20_local9 = 0
    local f20_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f20_local7, TARGET_ENE_0, f20_local8, f20_local9, f20_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act21(arg0, arg1, arg2)
    local f22_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f22_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_Act26(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BuddyUnique710000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BuddyUnique710000_AfterAttackAct, 0.1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f31_local0 = arg1:GetDist(TARGET_ENE_0)
    local f31_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f31_local2 = 0
    local f31_local3 = 0
    local f31_local4 = arg1:GetRandam_Int(1, 100)
    local f31_local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_UseItem) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16950) == false and arg1:HasSpecialEffectId(TARGET_SELF, 16951) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if f31_local4 <= 25 then
                    arg2:ClearSubGoal()
                    BuddyUnique710000_Act02(arg1, arg2, paramTbl)
                    return true
                elseif f31_local4 <= 50 then
                    arg2:ClearSubGoal()
                    BuddyUnique710000_Act16(arg1, arg2, paramTbl)
                    return true
                elseif f31_local4 <= 75 then
                    arg2:ClearSubGoal()
                    BuddyUnique710000_Act18(arg1, arg2, paramTbl)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
                if f31_local4 <= 25 then
                    arg2:ClearSubGoal()
                    BuddyUnique710000_Act03(arg1, arg2, paramTbl)
                    return true
                elseif f31_local4 <= 50 then
                    arg2:ClearSubGoal()
                    BuddyUnique710000_Act06(arg1, arg2, paramTbl)
                    return true
                elseif f31_local4 <= 75 then
                    arg2:ClearSubGoal()
                    BuddyUnique710000_Act14(arg1, arg2, paramTbl)
                    return true
                else
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16950) == true and arg1:HasSpecialEffectId(TARGET_SELF, 16951) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if f31_local4 <= 70 then
                    arg2:ClearSubGoal()
                    BuddyUnique710000_Act02(arg1, arg2, paramTbl)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
                if f31_local4 <= 35 then
                    arg2:ClearSubGoal()
                    BuddyUnique710000_Act03(arg1, arg2, paramTbl)
                    return true
                elseif f31_local4 <= 70 then
                    arg2:ClearSubGoal()
                    BuddyUnique710000_Act06(arg1, arg2, paramTbl)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 30) then
            if f31_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, 1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 30) then
            if f31_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 30) then
            if f31_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif f31_local4 <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, 1, TARGET_ENE_0, 0, 0, true)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4) then
        if f31_local4 <= 40 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16950) == false and arg1:HasSpecialEffectId(TARGET_SELF, 16951) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3) then
                if f31_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16950) == true and arg1:HasSpecialEffectId(TARGET_SELF, 16951) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16950) == false and arg1:HasSpecialEffectId(TARGET_SELF, 16951) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3.5) then
                if f31_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16950) == true and arg1:HasSpecialEffectId(TARGET_SELF, 16951) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if f31_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f31_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 15) then
            if f31_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 20) then
            if f31_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5) then
            if f31_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 11) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3) then
            if f31_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_BuddyUnique710000_AfterAttackAct, "BuddyUnique710000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BuddyUnique710000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


