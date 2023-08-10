RegisterTableGoal(GOAL_TreeGuardHead325100_Battle, "GOAL_TreeGuardHead325100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TreeGuardHead325100_Battle, true)
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
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3026)
    arg1:EnableUnfavorableAttackCheck(0, 3027)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3029)
    arg1:EnableUnfavorableAttackCheck(0, 3030)
    arg1:EnableUnfavorableAttackCheck(0, 3031)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    arg1:EnableUnfavorableAttackCheck(0, 3033)
    arg1:EnableUnfavorableAttackCheck(0, 3035)
    arg1:EnableUnfavorableAttackCheck(0, 3036)
    arg1:EnableUnfavorableAttackCheck(0, 3037)
    arg1:EnableUnfavorableAttackCheck(0, 3038)
    arg1:EnableUnfavorableAttackCheck(0, 3039)
    
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13770)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13771)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 51)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local9 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 13771) == true then
        if f2_local3 > 20 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 90
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 10
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                f2_local0[40] = 70
                f2_local0[41] = 0
                f2_local0[42] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                f2_local0[40] = 70
                f2_local0[41] = 0
                f2_local0[42] = 30
            else
                f2_local0[26] = 70
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 30
            end
        elseif f2_local3 > 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 60
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 10
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                f2_local0[40] = 70
                f2_local0[41] = 0
                f2_local0[42] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                f2_local0[40] = 70
                f2_local0[41] = 0
                f2_local0[42] = 30
            else
                f2_local0[26] = 70
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 30
            end
        elseif f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 60
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 10
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                f2_local0[40] = 70
                f2_local0[41] = 0
                f2_local0[42] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                f2_local0[40] = 70
                f2_local0[41] = 0
                f2_local0[42] = 30
            else
                f2_local0[26] = 70
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 30
            end
        elseif f2_local3 > 7.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 40
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 40
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[10] = 0
                f2_local0[12] = 100
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 20
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                f2_local0[12] = 100
                f2_local0[22] = 100
                f2_local0[40] = 70
                f2_local0[41] = 0
                f2_local0[42] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                f2_local0[5] = 60
                f2_local0[40] = 30
                f2_local0[41] = 0
                f2_local0[42] = 10
            else
                f2_local0[26] = 70
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 30
            end
        elseif f2_local3 > 4 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[10] = 0
                f2_local0[12] = 100
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 30
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 20
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 20
                f2_local0[29] = 0
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                f2_local0[10] = 100
                f2_local0[12] = 100
                f2_local0[22] = 100
                f2_local0[26] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 20
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 20
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 20
                f2_local0[28] = 20
                f2_local0[29] = 0
                f2_local0[30] = 0
            else
                f2_local0[26] = 30
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 70
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 100
            f2_local0[7] = 100
            f2_local0[8] = 0
            f2_local0[10] = 100
            f2_local0[12] = 100
            f2_local0[13] = 100
            f2_local0[14] = 15
            f2_local0[15] = 0
            f2_local0[16] = 15
            f2_local0[17] = 0
            f2_local0[21] = 0
            f2_local0[22] = 100
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[27] = 30
            f2_local0[28] = 0
            f2_local0[29] = 10
            f2_local0[30] = 10
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                f2_local0[10] = 100
                f2_local0[12] = 100
                f2_local0[13] = 100
                f2_local0[22] = 100
            elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                f2_local0[10] = 100
                f2_local0[12] = 100
                f2_local0[13] = 100
                f2_local0[16] = 50
                f2_local0[22] = 100
                f2_local0[26] = 30
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 20
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 100
            f2_local0[7] = 100
            f2_local0[8] = 0
            f2_local0[10] = 0
            f2_local0[12] = 0
            f2_local0[13] = 100
            f2_local0[14] = 10
            f2_local0[15] = 0
            f2_local0[16] = 10
            f2_local0[17] = 10
            f2_local0[21] = 10
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 10
            f2_local0[25] = 10
            f2_local0[26] = 0
            f2_local0[27] = 10
            f2_local0[28] = 0
            f2_local0[29] = 10
            f2_local0[30] = 10
        else
            f2_local0[13] = 100
            f2_local0[26] = 70
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 30
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13770) == true then
        if arg1:GetHpRate(TARGET_SELF) < 0.6 then
            if f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[40] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                    f2_local0[40] = 70
                    f2_local0[41] = 0
                    f2_local0[42] = 30
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                    f2_local0[40] = 70
                    f2_local0[41] = 0
                    f2_local0[42] = 30
                else
                    f2_local0[26] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[13] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                f2_local0[26] = 30
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 70
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                f2_local0[26] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            else
                f2_local0[26] = 30
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 70
            end
        elseif f2_local3 > 20 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 90
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[8] = 0
                f2_local0[14] = 0
                f2_local0[15] = 10
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                f2_local0[40] = 70
                f2_local0[41] = 0
                f2_local0[42] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                f2_local0[40] = 70
                f2_local0[41] = 0
                f2_local0[42] = 30
            else
                f2_local0[26] = 70
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 30
            end
        elseif f2_local3 > 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 60
                f2_local0[8] = 0
                f2_local0[14] = 0
                f2_local0[15] = 10
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                f2_local0[40] = 70
                f2_local0[41] = 0
                f2_local0[42] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                f2_local0[40] = 70
                f2_local0[41] = 0
                f2_local0[42] = 30
            else
                f2_local0[26] = 70
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 30
            end
        elseif f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 60
                f2_local0[8] = 0
                f2_local0[14] = 0
                f2_local0[15] = 10
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                f2_local0[40] = 70
                f2_local0[41] = 0
                f2_local0[42] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                f2_local0[40] = 70
                f2_local0[41] = 0
                f2_local0[42] = 30
            else
                f2_local0[26] = 70
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 30
            end
        elseif f2_local3 > 7.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 40
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 40
                f2_local0[8] = 0
                f2_local0[14] = 0
                f2_local0[15] = 20
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                f2_local0[40] = 70
                f2_local0[41] = 0
                f2_local0[42] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                f2_local0[5] = 60
                f2_local0[40] = 30
                f2_local0[41] = 0
                f2_local0[42] = 10
            else
                f2_local0[26] = 70
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 30
            end
        elseif f2_local3 > 4 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[8] = 0
                f2_local0[14] = 0
                f2_local0[15] = 30
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[21] = 0
                f2_local0[23] = 20
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 20
                f2_local0[29] = 0
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                f2_local0[26] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[8] = 0
                f2_local0[14] = 0
                f2_local0[15] = 20
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[21] = 0
                f2_local0[23] = 20
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 20
                f2_local0[28] = 20
                f2_local0[29] = 0
                f2_local0[30] = 0
            else
                f2_local0[26] = 30
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 70
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[8] = 0
            f2_local0[14] = 15
            f2_local0[15] = 0
            f2_local0[16] = 15
            f2_local0[17] = 0
            f2_local0[21] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[27] = 30
            f2_local0[28] = 0
            f2_local0[29] = 10
            f2_local0[30] = 10
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
            f2_local0[16] = 50
            f2_local0[26] = 30
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 20
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[8] = 0
            f2_local0[14] = 10
            f2_local0[15] = 0
            f2_local0[16] = 10
            f2_local0[17] = 10
            f2_local0[21] = 10
            f2_local0[23] = 0
            f2_local0[24] = 10
            f2_local0[25] = 10
            f2_local0[26] = 0
            f2_local0[27] = 10
            f2_local0[28] = 0
            f2_local0[29] = 10
            f2_local0[30] = 10
        else
            f2_local0[26] = 70
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 30
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13770) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13772) == true then
            if f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[18] = 100
                else
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[18] = 100
            else
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13772) == false then
            if f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[9] = 100
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                    f2_local0[40] = 70
                    f2_local0[41] = 0
                    f2_local0[42] = 30
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                    f2_local0[40] = 70
                    f2_local0[41] = 0
                    f2_local0[42] = 30
                else
                    f2_local0[26] = 70
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 30
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[9] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 100) then
                f2_local0[40] = 70
                f2_local0[41] = 0
                f2_local0[42] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 100) then
                f2_local0[40] = 70
                f2_local0[41] = 0
                f2_local0[42] = 30
            else
                f2_local0[26] = 70
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 30
            end
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3038, 10, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3039, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3007, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3009, 15, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3010, 20, f2_local0[6], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3011, 20, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3011, 20, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3010, 20, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3012, 15, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3013, 1, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3014, 15, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3017, 15, f2_local0[10], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[12], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3028, 15, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3017, 15, f2_local0[13], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3014, 15, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3018, 10, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3019, 10, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3020, 15, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3021, 10, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3022, 1, f2_local0[18], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3027, 10, f2_local0[21], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3028, 15, f2_local0[22], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[22], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3029, 10, f2_local0[23], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3030, 10, f2_local0[24], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 3031, 10, f2_local0[25], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 3034, 10, f2_local0[26], 1)
    f2_local0[27] = SetCoolTime(arg1, arg2, 3035, 10, f2_local0[27], 1)
    f2_local0[28] = SetCoolTime(arg1, arg2, 3037, 15, f2_local0[28], 1)
    f2_local0[29] = SetCoolTime(arg1, arg2, 3038, 10, f2_local0[29], 1)
    f2_local0[29] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[29], 1)
    f2_local0[29] = SetCoolTime(arg1, arg2, 3039, 10, f2_local0[29], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3039, 10, f2_local0[30], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[30], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3038, 10, f2_local0[30], 1)
    f2_local0[41] = SetCoolTime(arg1, arg2, 6000, 10, f2_local0[41], 1)
    f2_local0[42] = SetCoolTime(arg1, arg2, 6002, 10, f2_local0[42], 1)
    f2_local0[42] = SetCoolTime(arg1, arg2, 6003, 10, f2_local0[42], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act10)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act18)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act30)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_Act43)
    local f2_local10 = REGIST_FUNC(arg1, arg2, TreeGuardHead325100_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function TreeGuardHead325100_Act01(arg0, arg1, arg2)
    local f3_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 5
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    local f3_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act02(arg0, arg1, arg2)
    local f4_local0 = 13 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 5
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    local f4_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f4_local8 = 3001
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act03(arg0, arg1, arg2)
    local f5_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 5
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    local f5_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f5_local8 = 3005
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act04(arg0, arg1, arg2)
    local f6_local0 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 5
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    local f6_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f6_local8 = 3007
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local10 = 0
    local f6_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act05(arg0, arg1, arg2)
    local f7_local0 = 18 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 5
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    local f7_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f7_local8 = 3009
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local10 = 0
    local f7_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f7_local8, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act06(arg0, arg1, arg2)
    local f8_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 5
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    local f8_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f8_local8 = 3010
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local10 = 0
    local f8_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act07(arg0, arg1, arg2)
    local f9_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 5
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    local f9_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f9_local8 = 3011
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act08(arg0, arg1, arg2)
    local f10_local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 5
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 3
    local f10_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f10_local8 = 3012
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local10 = 0
    local f10_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f10_local8, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act09(arg0, arg1, arg2)
    local f11_local0 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 5
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 3
    local f11_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f11_local8 = 3013
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local10 = 0
    local f11_local11 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act10(arg0, arg1, arg2)
    local f12_local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 5
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 3
    local f12_local6 = 3
    local f12_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f12_local8 = 3014
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local10 = 0
    local f12_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act12(arg0, arg1, arg2)
    local f13_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 5
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 3
    local f13_local6 = 3
    local f13_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f13_local8 = 3016
    local f13_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local10 = 0
    local f13_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f13_local8, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act13(arg0, arg1, arg2)
    local f14_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 5
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 3
    local f14_local6 = 3
    local f14_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f14_local8 = 3017
    local f14_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local10 = 0
    local f14_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f14_local8, TARGET_ENE_0, f14_local9, f14_local10, f14_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act14(arg0, arg1, arg2)
    local f15_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = f15_local0 + 0
    local f15_local2 = f15_local0 + 5
    local f15_local3 = 100
    local f15_local4 = 0
    local f15_local5 = 3
    local f15_local6 = 3
    local f15_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f15_local8 = 3018
    local f15_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local10 = 0
    local f15_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f15_local8, TARGET_ENE_0, f15_local9, f15_local10, f15_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act15(arg0, arg1, arg2)
    local f16_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = f16_local0 + 0
    local f16_local2 = f16_local0 + 5
    local f16_local3 = 100
    local f16_local4 = 0
    local f16_local5 = 3
    local f16_local6 = 3
    local f16_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f16_local8 = 3019
    local f16_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f16_local10 = 0
    local f16_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f16_local8, TARGET_ENE_0, f16_local9, f16_local10, f16_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act16(arg0, arg1, arg2)
    local f17_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 5
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = 3
    local f17_local6 = 3
    local f17_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f17_local8 = 3020
    local f17_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f17_local10 = 0
    local f17_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f17_local8, TARGET_ENE_0, f17_local9, f17_local10, f17_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act17(arg0, arg1, arg2)
    local f18_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = f18_local0 + 0
    local f18_local2 = f18_local0 + 5
    local f18_local3 = 100
    local f18_local4 = 0
    local f18_local5 = 3
    local f18_local6 = 3
    local f18_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f18_local8 = 3021
    local f18_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f18_local10 = 0
    local f18_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f18_local8, TARGET_ENE_0, f18_local9, f18_local10, f18_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act18(arg0, arg1, arg2)
    local f19_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = f19_local0 + 0
    local f19_local2 = f19_local0 + 5
    local f19_local3 = 100
    local f19_local4 = 0
    local f19_local5 = 3
    local f19_local6 = 3
    local f19_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f19_local8 = 3022
    local f19_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f19_local10 = 0
    local f19_local11 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f19_local8, TARGET_ENE_0, f19_local9, f19_local10, f19_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act21(arg0, arg1, arg2)
    local f20_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = f20_local0 + 0
    local f20_local2 = f20_local0 + 5
    local f20_local3 = 100
    local f20_local4 = 0
    local f20_local5 = 3
    local f20_local6 = 3
    local f20_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f20_local8 = 3027
    local f20_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f20_local10 = 0
    local f20_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f20_local8, TARGET_ENE_0, f20_local9, f20_local10, f20_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act22(arg0, arg1, arg2)
    local f21_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local1 = f21_local0 + 0
    local f21_local2 = f21_local0 + 5
    local f21_local3 = 100
    local f21_local4 = 0
    local f21_local5 = 3
    local f21_local6 = 3
    local f21_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f21_local8 = 3028
    local f21_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f21_local10 = 0
    local f21_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f21_local8, TARGET_ENE_0, f21_local9, f21_local10, f21_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act23(arg0, arg1, arg2)
    local f22_local0 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = f22_local0 + 0
    local f22_local2 = f22_local0 + 5
    local f22_local3 = 100
    local f22_local4 = 0
    local f22_local5 = 3
    local f22_local6 = 3
    local f22_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f22_local8 = 3029
    local f22_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f22_local10 = 0
    local f22_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f22_local8, TARGET_ENE_0, f22_local9, f22_local10, f22_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act24(arg0, arg1, arg2)
    local f23_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local1 = f23_local0 + 0
    local f23_local2 = f23_local0 + 5
    local f23_local3 = 100
    local f23_local4 = 0
    local f23_local5 = 3
    local f23_local6 = 3
    local f23_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f23_local8 = 3030
    local f23_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f23_local10 = 0
    local f23_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f23_local8, TARGET_ENE_0, f23_local9, f23_local10, f23_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act25(arg0, arg1, arg2)
    local f24_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local1 = f24_local0 + 0
    local f24_local2 = f24_local0 + 5
    local f24_local3 = 100
    local f24_local4 = 0
    local f24_local5 = 3
    local f24_local6 = 3
    local f24_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f24_local8 = 3031
    local f24_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f24_local10 = 0
    local f24_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f24_local8, TARGET_ENE_0, f24_local9, f24_local10, f24_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act26(arg0, arg1, arg2)
    local f25_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local1 = f25_local0 + 0
    local f25_local2 = f25_local0 + 5
    local f25_local3 = 100
    local f25_local4 = 0
    local f25_local5 = 3
    local f25_local6 = 3
    local f25_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f25_local8 = 3034
    local f25_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f25_local10 = 0
    local f25_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f25_local8, TARGET_ENE_0, f25_local9, f25_local10, f25_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act27(arg0, arg1, arg2)
    local f26_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local1 = f26_local0 + 0
    local f26_local2 = f26_local0 + 5
    local f26_local3 = 100
    local f26_local4 = 0
    local f26_local5 = 3
    local f26_local6 = 3
    local f26_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f26_local8 = 3035
    local f26_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f26_local10 = 0
    local f26_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f26_local8, TARGET_ENE_0, f26_local9, f26_local10, f26_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act28(arg0, arg1, arg2)
    local f27_local0 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local1 = f27_local0 + 0
    local f27_local2 = f27_local0 + 5
    local f27_local3 = 100
    local f27_local4 = 0
    local f27_local5 = 3
    local f27_local6 = 3
    local f27_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f27_local8 = 3037
    local f27_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f27_local10 = 0
    local f27_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f27_local8, TARGET_ENE_0, f27_local9, f27_local10, f27_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act29(arg0, arg1, arg2)
    local f28_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local1 = f28_local0 + 0
    local f28_local2 = f28_local0 + 5
    local f28_local3 = 100
    local f28_local4 = 0
    local f28_local5 = 3
    local f28_local6 = 3
    local f28_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f28_local8 = 3038
    local f28_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f28_local10 = 0
    local f28_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f28_local8, TARGET_ENE_0, f28_local9, f28_local10, f28_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act30(arg0, arg1, arg2)
    local f29_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f29_local1 = f29_local0 + 0
    local f29_local2 = f29_local0 + 5
    local f29_local3 = 100
    local f29_local4 = 0
    local f29_local5 = 3
    local f29_local6 = 3
    local f29_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    local f29_local8 = 3039
    local f29_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f29_local10 = 0
    local f29_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f29_local8, TARGET_ENE_0, f29_local9, f29_local10, f29_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act41(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13752)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13753)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13754)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13755)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13756)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13757)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13758)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13759)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Guard, 5, 9910, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Success, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardHead325100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_TreeGuardHead325100_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f37_local0 = arg1:GetDist(TARGET_ENE_0)
    local f37_local1 = arg1:GetDistY(TARGET_ENE_0)
    local f37_local2 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f37_local3 = 0
    local f37_local4 = 0
    local f37_local5 = arg1:GetRandam_Int(1, 100)
    local f37_local6 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_UseItem) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then

    else

    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 6) then
            if f37_local1 > 2 then
                if f37_local5 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_Guard, 3, 9910, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Success, false)
                    return true
                else
                    return true
                end
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 30) then
            if f37_local5 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_Guard, 3, 9910, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Success, false)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then

    else

    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 4) then
            if f37_local5 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5.5) then
            if f37_local5 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        if f37_local5 <= 40 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 160, 180, 5.5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13771) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 160, 180, 4) then
                if f37_local5 <= 10 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 160, 180, 5) then
                if f37_local5 <= 10 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13770) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 160, 180, 4) then
                if f37_local5 <= 10 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 160, 180, 5) then
                if f37_local5 <= 10 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 4) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
            if f37_local5 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 4) then
            if f37_local5 <= 10 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
            if f37_local5 <= 10 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 4) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
            if f37_local5 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5032) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 4) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
            if f37_local5 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5033) and arg1:HasSpecialEffectId(TARGET_SELF, 13771) == true then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 4) then
            if f37_local5 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3028, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 7.5) then
            if f37_local5 <= 25 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3028, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5034) and arg1:HasSpecialEffectId(TARGET_SELF, 13771) == true then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 4) then
            if f37_local5 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3028, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 7.5) then
            if f37_local5 <= 25 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3028, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5035) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 4) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
            if f37_local5 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5036) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13771) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 4) then
                if f37_local5 <= 10 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 90 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3038, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3039, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
                if f37_local5 <= 10 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 90 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13770) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 4) then
                if f37_local5 <= 10 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 90 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3038, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3039, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
                if f37_local5 <= 10 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 90 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5037) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 4) then
        if f37_local5 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5038) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 4) then
            if f37_local5 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
            if f37_local5 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13752) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 160, 180, 5) then
        if f37_local5 <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13753) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 4) then
            if f37_local5 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
            if f37_local5 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13754) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 4) then
        if f37_local5 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13755) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 4) then
            if f37_local5 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
            if f37_local5 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13756) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 4) then
            if f37_local5 <= 25 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3039, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
            if f37_local5 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13757) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 4) then
            if f37_local5 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3038, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
            if f37_local5 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f37_local5 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13758) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13771) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 160, 180, 4) then
                if f37_local5 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 75 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 160, 180, 5) then
                if f37_local5 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13770) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 160, 180, 4) then
                if f37_local5 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 160, 180, 5) then
                if f37_local5 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13759) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13771) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 160, 180, 4) then
                if f37_local5 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 160, 180, 5) then
                if f37_local5 <= 10 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 90 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13770) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 160, 180, 4) then
                if f37_local5 <= 25 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 75 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 160, 180, 5) then
                if f37_local5 <= 10 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3029, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local5 <= 90 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_TreeGuardHead325100_AfterAttackAct, "TreeGuardHead325100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TreeGuardHead325100_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f38_local0 = arg1:GetDist(TARGET_ENE_0)
    local f38_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f38_local0 >= 5 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif f38_local0 >= 2 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 5)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 15)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


