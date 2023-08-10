RegisterTableGoal(GOAL_TreeGuardMagicPhantom325210_Battle, "GOAL_TreeGuardMagicPhantom325210_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TreeGuardMagicPhantom325210_Battle, true)
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
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3034)
    arg1:EnableUnfavorableAttackCheck(1000000, 3006)
    arg1:EnableUnfavorableAttackCheck(1000000, 3017)
    arg1:EnableUnfavorableAttackCheck(1000000, 3018)
    
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13804)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 51)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local9 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 13801) == true then
        if f2_local3 > 20 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                f2_local0[2] = 10
                f2_local0[7] = 10
                f2_local0[15] = 20
                f2_local0[16] = 20
                f2_local0[19] = 100
                f2_local0[21] = 20
                f2_local0[40] = 20
                f2_local0[41] = 0
                f2_local0[42] = 0
            else
                f2_local0[16] = 0
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            end
        elseif f2_local3 > 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                f2_local0[2] = 10
                f2_local0[7] = 10
                f2_local0[15] = 30
                f2_local0[16] = 30
                f2_local0[19] = 100
                f2_local0[21] = 10
                f2_local0[40] = 10
                f2_local0[41] = 0
                f2_local0[42] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                f2_local0[16] = 0
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                f2_local0[16] = 70
                f2_local0[19] = 100
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 30
            else
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            end
        elseif f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                f2_local0[2] = 10
                f2_local0[7] = 10
                f2_local0[15] = 25
                f2_local0[16] = 25
                f2_local0[19] = 100
                f2_local0[21] = 10
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 20
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                f2_local0[16] = 0
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                f2_local0[16] = 70
                f2_local0[19] = 100
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 30
            else
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            end
        elseif f2_local3 > 7.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 40
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 20
                f2_local0[16] = 20
                f2_local0[19] = 100
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 30
                f2_local0[19] = 100
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 50
            else
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            end
        elseif f2_local3 > 4 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[9] = 35
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 25
                f2_local0[16] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 20
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 40
                f2_local0[18] = 40
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 20
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 40
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 30
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 20
            else
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 50
            f2_local0[9] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[17] = 20
            f2_local0[18] = 20
            f2_local0[20] = 100
            f2_local0[21] = 0
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[9] = 0
            f2_local0[12] = 20
            f2_local0[13] = 20
            f2_local0[14] = 0
            f2_local0[17] = 20
            f2_local0[18] = 20
            f2_local0[20] = 100
            f2_local0[21] = 0
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 10
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[7] = 10
            f2_local0[9] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 20
            f2_local0[17] = 10
            f2_local0[18] = 10
            f2_local0[20] = 100
            f2_local0[21] = 0
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 0
        else
            f2_local0[10] = 70
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 30
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13800) == true then
        if arg1:GetHpRate(TARGET_SELF) < 0.5 then
            if f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                    f2_local0[8] = 100
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                    f2_local0[8] = 0
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                    f2_local0[8] = 100
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                else
                    f2_local0[8] = 0
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                f2_local0[8] = 100
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                f2_local0[8] = 0
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                f2_local0[8] = 100
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 0
            else
                f2_local0[8] = 0
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            end
        elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
            if f2_local3 > 20 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                    f2_local0[2] = 10
                    f2_local0[7] = 10
                    f2_local0[15] = 20
                    f2_local0[16] = 20
                    f2_local0[19] = 0
                    f2_local0[21] = 20
                    f2_local0[40] = 20
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                else
                    f2_local0[16] = 0
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                end
            elseif f2_local3 > 15 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                    f2_local0[2] = 10
                    f2_local0[7] = 10
                    f2_local0[15] = 30
                    f2_local0[16] = 30
                    f2_local0[19] = 0
                    f2_local0[21] = 10
                    f2_local0[40] = 10
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                    f2_local0[16] = 0
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                    f2_local0[16] = 70
                    f2_local0[19] = 0
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 30
                else
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                end
            elseif f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                    f2_local0[2] = 10
                    f2_local0[7] = 10
                    f2_local0[15] = 25
                    f2_local0[16] = 25
                    f2_local0[19] = 0
                    f2_local0[21] = 10
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 20
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                    f2_local0[16] = 0
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                    f2_local0[16] = 70
                    f2_local0[19] = 0
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 30
                else
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                end
            elseif f2_local3 > 7.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 40
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 10
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[15] = 20
                    f2_local0[16] = 20
                    f2_local0[19] = 0
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 10
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 20
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 30
                    f2_local0[19] = 0
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 50
                else
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                end
            elseif f2_local3 > 4 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 10
                    f2_local0[9] = 35
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[15] = 25
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 20
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 40
                    f2_local0[18] = 40
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 20
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 40
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 30
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 20
                else
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 50
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[17] = 20
                f2_local0[18] = 20
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[12] = 20
                f2_local0[13] = 20
                f2_local0[14] = 0
                f2_local0[17] = 20
                f2_local0[18] = 20
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 0
                f2_local0[3] = 10
                f2_local0[4] = 10
                f2_local0[5] = 10
                f2_local0[6] = 10
                f2_local0[7] = 10
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 20
                f2_local0[17] = 10
                f2_local0[18] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 0
            else
                f2_local0[10] = 70
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 30
            end
        elseif f2_local3 > 20 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                f2_local0[2] = 10
                f2_local0[7] = 10
                f2_local0[15] = 20
                f2_local0[16] = 20
                f2_local0[21] = 20
                f2_local0[40] = 20
                f2_local0[41] = 0
                f2_local0[42] = 0
            else
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            end
        elseif f2_local3 > 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                f2_local0[2] = 10
                f2_local0[7] = 10
                f2_local0[15] = 30
                f2_local0[16] = 30
                f2_local0[21] = 10
                f2_local0[40] = 10
                f2_local0[41] = 0
                f2_local0[42] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                f2_local0[16] = 0
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                f2_local0[16] = 70
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 30
            else
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            end
        elseif f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                f2_local0[2] = 10
                f2_local0[7] = 10
                f2_local0[15] = 25
                f2_local0[16] = 25
                f2_local0[21] = 10
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 20
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                f2_local0[16] = 0
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                f2_local0[16] = 70
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 30
            else
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            end
        elseif f2_local3 > 7.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 40
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 20
                f2_local0[16] = 20
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 30
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 50
            else
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            end
        elseif f2_local3 > 4 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 40
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 30
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 20
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 40
                f2_local0[18] = 40
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 20
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 50
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[16] = 30
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 20
            else
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 50
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[17] = 20
            f2_local0[18] = 20
            f2_local0[21] = 0
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[12] = 20
            f2_local0[13] = 20
            f2_local0[14] = 0
            f2_local0[17] = 20
            f2_local0[18] = 20
            f2_local0[21] = 0
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 10
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[7] = 10
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 10
            f2_local0[17] = 10
            f2_local0[18] = 10
            f2_local0[21] = 0
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 0
        else
            f2_local0[10] = 70
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 30
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13800) == false then
        if arg1:GetHpRate(TARGET_SELF) < 0.99 then
            if f2_local3 > 12 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                    f2_local0[11] = 100
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                    f2_local0[11] = 100
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                    f2_local0[11] = 100
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                else
                    f2_local0[21] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                f2_local0[11] = 100
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                f2_local0[11] = 100
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                f2_local0[11] = 100
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 0
            else
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            end
        elseif f2_local3 > 12 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                f2_local0[11] = 80
                f2_local0[21] = 10
                f2_local0[40] = 10
                f2_local0[41] = 0
                f2_local0[42] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            else
                f2_local0[21] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 100
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
            f2_local0[11] = 100
            f2_local0[21] = 0
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
            f2_local0[11] = 100
            f2_local0[21] = 0
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
            f2_local0[11] = 100
            f2_local0[21] = 0
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 0
        else
            f2_local0[21] = 0
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 100
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 20, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[5], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3025, 10, f2_local0[5], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3027, 15, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3009, 1, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3011, 15, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3012, 15, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3013, 1, f2_local0[11], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[11], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3025, 10, f2_local0[11], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3027, 15, f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3019, 10, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3020, 10, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3023, 15, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3024, 4, f2_local0[15], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3026, 15, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3025, 10, f2_local0[16], 0)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[16], 0)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3027, 15, f2_local0[16], 0)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3026, 15, f2_local0[17], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3027, 15, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3027, 15, f2_local0[18], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[18], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3025, 10, f2_local0[18], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3026, 15, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3035, 20, f2_local0[19], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3036, 20, f2_local0[19], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3036, 20, f2_local0[20], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3035, 20, f2_local0[20], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3030, 1, f2_local0[21], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3031, 1, f2_local0[21], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3026, 15, f2_local0[21], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3027, 15, f2_local0[21], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3034, 20, f2_local0[22], 1)
    f2_local0[40] = SetCoolTime(arg1, arg2, 6000, 1, f2_local0[40], 1)
    f2_local0[40] = SetCoolTime(arg1, arg2, 3026, 15, f2_local0[40], 1)
    f2_local0[40] = SetCoolTime(arg1, arg2, 3027, 15, f2_local0[40], 1)
    f2_local0[41] = SetCoolTime(arg1, arg2, 6001, 10, f2_local0[41], 0)
    f2_local0[41] = SetCoolTime(arg1, arg2, 3026, 15, f2_local0[41], 0)
    f2_local0[41] = SetCoolTime(arg1, arg2, 3027, 15, f2_local0[41], 0)
    f2_local0[42] = SetCoolTime(arg1, arg2, 6002, 1, f2_local0[42], 1)
    f2_local0[42] = SetCoolTime(arg1, arg2, 6003, 1, f2_local0[42], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act22)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_Act42)
    local f2_local10 = REGIST_FUNC(arg1, arg2, TreeGuardMagicPhantom325210_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function TreeGuardMagicPhantom325210_Act01(arg0, arg1, arg2)
    local f3_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act02(arg0, arg1, arg2)
    local f4_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 0
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f4_local8 = 3003
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act03(arg0, arg1, arg2)
    local f5_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f5_local8 = 3004
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act04(arg0, arg1, arg2)
    local f6_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f6_local8 = 3005
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local10 = 0
    local f6_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act05(arg0, arg1, arg2)
    local f7_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f7_local8 = 3006
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local10 = 0
    local f7_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f7_local8, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act06(arg0, arg1, arg2)
    local f8_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f8_local8 = 3007
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local10 = 0
    local f8_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act07(arg0, arg1, arg2)
    local f9_local0 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 5
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    local f9_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f9_local8 = 3008
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act08(arg0, arg1, arg2)
    local f10_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f10_local8 = 3009
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local10 = 0
    local f10_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f10_local8, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act09(arg0, arg1, arg2)
    local f11_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 5
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 3
    local f11_local7 = arg0:GetRandam_Int(1, 100)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f11_local8 = 3011
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local10 = 0
    local f11_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act10(arg0, arg1, arg2)
    local f12_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f12_local8 = 3012
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local10 = 0
    local f12_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act11(arg0, arg1, arg2)
    local f13_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 5
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 3
    local f13_local6 = 3
    local f13_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f13_local8 = 3013
    local f13_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local10 = 0
    local f13_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f13_local8, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act12(arg0, arg1, arg2)
    local f14_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 5
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 3
    local f14_local6 = 3
    local f14_local7 = arg0:GetRandam_Int(1, 100)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f14_local8 = 3019
    local f14_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local10 = 0
    local f14_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f14_local8, TARGET_ENE_0, f14_local9, f14_local10, f14_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act13(arg0, arg1, arg2)
    local f15_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f15_local8 = 3020
    local f15_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local10 = 0
    local f15_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f15_local8, TARGET_ENE_0, f15_local9, f15_local10, f15_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act14(arg0, arg1, arg2)
    local f16_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = f16_local0 + 0
    local f16_local2 = f16_local0 + 5
    local f16_local3 = 100
    local f16_local4 = 0
    local f16_local5 = 3
    local f16_local6 = 3
    local f16_local7 = arg0:GetRandam_Int(1, 100)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f16_local8 = 3023
    local f16_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f16_local10 = 0
    local f16_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f16_local8, TARGET_ENE_0, f16_local9, f16_local10, f16_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act15(arg0, arg1, arg2)
    local f17_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f17_local8 = 3024
    local f17_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f17_local10 = 0
    local f17_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f17_local8, TARGET_ENE_0, f17_local9, f17_local10, f17_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act16(arg0, arg1, arg2)
    local f18_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f18_local8 = 3025
    local f18_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f18_local10 = 0
    local f18_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f18_local8, TARGET_ENE_0, f18_local9, f18_local10, f18_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act17(arg0, arg1, arg2)
    local f19_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f19_local8 = 3026
    local f19_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f19_local10 = 0
    local f19_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f19_local8, TARGET_ENE_0, f19_local9, f19_local10, f19_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act18(arg0, arg1, arg2)
    local f20_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f20_local8 = 3027
    local f20_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f20_local10 = 0
    local f20_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f20_local8, TARGET_ENE_0, f20_local9, f20_local10, f20_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act19(arg0, arg1, arg2)
    local f21_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f21_local8 = 3035
    local f21_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f21_local10 = 0
    local f21_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f21_local8, TARGET_ENE_0, f21_local9, f21_local10, f21_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act20(arg0, arg1, arg2)
    local f22_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f22_local8 = 3036
    local f22_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f22_local10 = 0
    local f22_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f22_local8, TARGET_ENE_0, f22_local9, f22_local10, f22_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act21(arg0, arg1, arg2)
    local f23_local0 = arg0:GetRandam_Int(1, 100)
    local f23_local1 = arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local2 = 3030
    local f23_local3 = 3031
    local f23_local4 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local5 = 0
    local f23_local6 = 0
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 2, f23_local1, 0) >= 2 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3030, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3031, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
        end
    elseif arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, f23_local1, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    elseif arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, f23_local1, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act22(arg0, arg1, arg2)
    local f24_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13812)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13813)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13814)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13815)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13816)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13817)
    local f24_local8 = 3034
    local f24_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f24_local10 = 0
    local f24_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f24_local8, TARGET_ENE_0, f24_local9, f24_local10, f24_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act40(arg0, arg1, arg2)
    local f25_local0 = arg0:GetRandam_Int(1, 100)
    local f25_local1 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 2, f25_local1, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
    elseif arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, f25_local1, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    elseif arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, f25_local1, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act41(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_Act42(arg0, arg1, arg2)
    local f27_local0 = 6002
    local f27_local1 = 6003
    local f27_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f27_local3 = 0
    local f27_local4 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TreeGuardMagicPhantom325210_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_TreeGuardMagicPhantom325210_AfterAttackAct, 10)
    
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
    if arg1:IsInterupt(INTERUPT_UseItem) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then

    else

    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
        return true
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 2.5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 4.5) then
            if f31_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 1.5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        if f31_local4 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        if f31_local4 <= 20 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f31_local4 <= 40 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f31_local4 <= 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f31_local4 <= 80 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        if f31_local4 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
        if arg1:GetHpRate(TARGET_SELF) < 0.8 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
                if f31_local4 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
            if f31_local4 <= 25 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f31_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f31_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        if f31_local4 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5032) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13801) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                if f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
                if f31_local4 <= 10 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 15) and f31_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13800) == true then
            if arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                    if f31_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                    if f31_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
                    if f31_local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f31_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f31_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f31_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                if f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
                if f31_local4 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5033) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13801) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                if f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 7.5) then
                if f31_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 15) and f31_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13800) == true then
            if arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                    if f31_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                    if f31_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 7.5) then
                    if f31_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                if f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 7.5) then
                if f31_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 15) and f31_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5034) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 7.5) then
        if f31_local4 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f31_local4 <= 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5035) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        if f31_local4 <= 15 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f31_local4 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f31_local4 <= 45 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f31_local4 <= 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f31_local4 <= 75 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5036) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 360, 180, 99) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5037) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        if f31_local4 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5038) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13810) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13811) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13801) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                if f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
                if f31_local4 <= 10 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 10) and f31_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13800) == true then
            if arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                    if f31_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                    if f31_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
                    if f31_local4 <= 15 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f31_local4 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f31_local4 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f31_local4 <= 65 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f31_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                if f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
                if f31_local4 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13812) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13801) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                if f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
                if f31_local4 <= 10 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 90 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 10) and f31_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13800) == true then
            if arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                    if f31_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                    if f31_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
                    if f31_local4 <= 10 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f31_local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f31_local4 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f31_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f31_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f31_local4 <= 70 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f31_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f31_local4 <= 90 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                if f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 180, 5) then
                if f31_local4 <= 10 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13813) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13814) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13815) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 5) then
        if f31_local4 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13816) then
        if arg1:GetHpRate(TARGET_SELF) < 0.8 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 7.5) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 9) then
                if f31_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f31_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 17.5) and f31_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 7.5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 17.5) and f31_local4 <= 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13817) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13801) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 5) then
                if f31_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if f31_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13800) == true then
            if arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 5) then
                    if f31_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                    if f31_local4 <= 70 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 5) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) and f31_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_TreeGuardMagicPhantom325210_AfterAttackAct, "TreeGuardMagicPhantom325210_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TreeGuardMagicPhantom325210_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f32_local0 = arg1:GetDist(TARGET_ENE_0)
    local f32_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f32_local0 >= 5 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif f32_local0 >= 2 then
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


