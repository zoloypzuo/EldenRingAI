RegisterTableGoal(GOAL_GodSkinFatherSlim356000_Battle, "GodSkinFatherSlim356000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GodSkinFatherSlim356000_Battle, true)
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
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3030)
    arg1:EnableUnfavorableAttackCheck(0, 3031)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    arg1:EnableUnfavorableAttackCheck(0, 3033)
    arg1:EnableUnfavorableAttackCheck(0, 3034)
    arg1:EnableUnfavorableAttackCheck(0, 3035)
    arg1:EnableUnfavorableAttackCheck(0, 3036)
    arg1:EnableUnfavorableAttackCheck(0, 3037)
    
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 15457)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 15450)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 15451)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 30)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 15454) == true then
        f2_local0[18] = 100
    end
    if arg1:HasSpecialEffectId(TARGET_FRI_0, 5110) == true then
        f2_local0[19] = 100
    end
    if f2_local7 <= 7 then
        if arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
            f2_local0[22] = 100
        else
            f2_local0[22] = 100
        end
    end
    if f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 10
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 30
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 60
                f2_local0[24] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 80
                f2_local0[23] = 20
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 30
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 20
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 50
                f2_local0[24] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 80
                f2_local0[23] = 20
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 7.5 then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 30
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 20
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 20
                f2_local0[24] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 80
                f2_local0[23] = 20
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 25
                f2_local0[20] = 50
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 25
                f2_local0[24] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 80
                f2_local0[23] = 20
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 3 then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 20
                f2_local0[20] = 0
                f2_local0[21] = 60
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 2 then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[10] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[20] = 0
            f2_local0[21] = 70
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[10] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 100
            f2_local0[23] = 0
            f2_local0[24] = 0
        end
    elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 10
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 30
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 60
                f2_local0[24] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 80
                f2_local0[23] = 20
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 30
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 20
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 50
                f2_local0[24] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 80
                f2_local0[23] = 20
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 7.5 then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 30
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 20
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 20
                f2_local0[24] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 80
                f2_local0[23] = 20
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 25
                f2_local0[20] = 50
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 25
                f2_local0[24] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 80
                f2_local0[23] = 20
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 3 then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 20
                f2_local0[20] = 0
                f2_local0[21] = 60
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 2 then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[10] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[20] = 0
            f2_local0[21] = 70
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[10] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 100
            f2_local0[23] = 0
            f2_local0[24] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15451) == true then
        if f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 50
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 30
                f2_local0[17] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 20
                f2_local0[24] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 50
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 30
                f2_local0[17] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 20
                f2_local0[24] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 7.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 100
                f2_local0[7] = 100
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 50
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 30
                f2_local0[17] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 20
                f2_local0[24] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 100
                f2_local0[7] = 100
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 50
                f2_local0[17] = 0
                f2_local0[20] = 20
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 30
                f2_local0[24] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 3 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 25
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 100
                f2_local0[9] = 100
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 10
                f2_local0[14] = 10
                f2_local0[15] = 0
                f2_local0[16] = 10
                f2_local0[17] = 100
                f2_local0[20] = 25
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 100
                f2_local0[9] = 100
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 20
                f2_local0[17] = 100
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 50
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 100
                f2_local0[9] = 100
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 25
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 25
                f2_local0[17] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 50
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 100
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 50
                f2_local0[17] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 50
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 2 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 20
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 100
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 10
                f2_local0[14] = 10
                f2_local0[15] = 10
                f2_local0[16] = 10
                f2_local0[17] = 100
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 20
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 100
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 10
                f2_local0[16] = 10
                f2_local0[17] = 100
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 30
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 100
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 10
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 10
                f2_local0[17] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 50
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 25
                f2_local0[16] = 25
                f2_local0[17] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 50
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 100
            f2_local0[10] = 0
            f2_local0[12] = 20
            f2_local0[13] = 10
            f2_local0[14] = 10
            f2_local0[15] = 10
            f2_local0[16] = 10
            f2_local0[17] = 100
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 100
            f2_local0[10] = 0
            f2_local0[12] = 20
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 10
            f2_local0[16] = 10
            f2_local0[17] = 100
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 30
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 100
            f2_local0[10] = 0
            f2_local0[12] = 20
            f2_local0[13] = 10
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 10
            f2_local0[17] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 40
            f2_local0[23] = 0
            f2_local0[24] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 10
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[12] = 0
            f2_local0[13] = 20
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 20
            f2_local0[17] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 50
            f2_local0[23] = 0
            f2_local0[24] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15450) == true then
        if arg1:GetHpRate(TARGET_SELF) < 0.6 then
            f2_local0[11] = 100
        elseif f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 50
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 30
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 20
                f2_local0[24] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 50
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 30
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 20
                f2_local0[24] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 7.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 50
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 30
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 20
                f2_local0[24] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 50
                f2_local0[20] = 20
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 30
                f2_local0[24] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 3 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 25
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 10
                f2_local0[14] = 10
                f2_local0[15] = 0
                f2_local0[16] = 10
                f2_local0[20] = 25
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 20
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 50
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 25
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 25
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 50
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 50
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 50
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 2 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 20
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 10
                f2_local0[14] = 10
                f2_local0[15] = 10
                f2_local0[16] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 20
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 10
                f2_local0[16] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 30
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 10
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 50
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 25
                f2_local0[16] = 25
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 50
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[10] = 0
            f2_local0[12] = 20
            f2_local0[13] = 10
            f2_local0[14] = 10
            f2_local0[15] = 10
            f2_local0[16] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[10] = 0
            f2_local0[12] = 20
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 10
            f2_local0[16] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 30
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[10] = 0
            f2_local0[12] = 20
            f2_local0[13] = 10
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 40
            f2_local0[23] = 0
            f2_local0[24] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 10
            f2_local0[10] = 0
            f2_local0[12] = 0
            f2_local0[13] = 15
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 60
            f2_local0[23] = 0
            f2_local0[24] = 0
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3006, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3011, 20, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3013, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3021, 20, f2_local0[6], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3022, 5, f2_local0[6], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3025, 5, f2_local0[6], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3026, 5, f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3022, 20, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3021, 5, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3025, 5, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3026, 5, f2_local0[7], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3025, 20, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3022, 5, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3021, 5, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3026, 5, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3026, 30, f2_local0[9], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3025, 5, f2_local0[9], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3022, 5, f2_local0[9], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3021, 5, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3027, 3.5, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3029, 1, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3030, 15, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3031, 10, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3032, 10, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3033, 20, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3034, 20, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3036, 20, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3038, 5, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3039, 5, f2_local0[19], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 6001, 5, f2_local0[21], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[22], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[22], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act6)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act7)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act8)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act9)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act24)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_Act30)
    local f2_local9 = REGIST_FUNC(arg1, arg2, GodSkinFatherSlim356000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function GodSkinFatherSlim356000_Act1(arg0, arg1, arg2)
    local f3_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 25
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14457)
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act2(arg0, arg1, arg2)
    local f4_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 25
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 2
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14457)
    local f4_local7 = 3006
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act3(arg0, arg1, arg2)
    local f5_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 25
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    local f5_local7 = 3011
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act4(arg0, arg1, arg2)
    local f6_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 25
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 2
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14457)
    local f6_local7 = 3012
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act5(arg0, arg1, arg2)
    local f7_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 25
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 2
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14457)
    local f7_local7 = 3013
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act6(arg0, arg1, arg2)
    local f8_local0 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 25
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3021
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act7(arg0, arg1, arg2)
    local f9_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 25
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3022
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act8(arg0, arg1, arg2)
    local f10_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 25
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 2
    local f10_local6 = 2
    local f10_local7 = 3025
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act9(arg0, arg1, arg2)
    local f11_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 25
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 2
    local f11_local6 = 2
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14457)
    local f11_local7 = 3026
    local f11_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local9 = 0
    local f11_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act10(arg0, arg1, arg2)
    local f12_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 25
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 3
    local f12_local6 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 15451) == true then
        f12_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = arg0:GetDist(TARGET_ENE_0)
    local f12_local8 = arg0:GetDistY(TARGET_ENE_0)
    local f12_local9 = arg0:GetHpRate(TARGET_SELF)
    local f12_local10 = arg0:GetRandam_Int(1, 100)
    local f12_local11 = arg0:GetDist(TARGET_FRI_0)
    local f12_local12 = 3027
    local f12_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local14 = 0
    local f12_local15 = 0
    if arg0:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_BL, 90, 180, 100) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f12_local12, TARGET_ENE_0, f12_local13, f12_local14, f12_local15, 0, 0)
    elseif arg0:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_BR, 90, 180, 100) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f12_local12, TARGET_ENE_0, f12_local13, f12_local14, f12_local15, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f12_local12, TARGET_ENE_0, f12_local13, f12_local14, f12_local15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act11(arg0, arg1, arg2)
    local f13_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 25
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 2
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14457)
    local f13_local7 = 3029
    local f13_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local9 = 0
    local f13_local10 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act12(arg0, arg1, arg2)
    local f14_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 25
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 2
    local f14_local6 = 2
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14457)
    local f14_local7 = 3030
    local f14_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local9 = 0
    local f14_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act13(arg0, arg1, arg2)
    local f15_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = f15_local0 + 0
    local f15_local2 = f15_local0 + 25
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 2
    local f15_local6 = 2
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14457)
    local f15_local7 = 3031
    local f15_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local9 = 0
    local f15_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act14(arg0, arg1, arg2)
    local f16_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = f16_local0 + 0
    local f16_local2 = f16_local0 + 25
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 2
    local f16_local6 = 2
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14457)
    local f16_local7 = 3032
    local f16_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f16_local9 = 0
    local f16_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f16_local7, TARGET_ENE_0, f16_local8, f16_local9, f16_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act15(arg0, arg1, arg2)
    local f17_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 25
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 2
    local f17_local6 = 2
    local f17_local7 = 3033
    local f17_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f17_local9 = 0
    local f17_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f17_local7, TARGET_ENE_0, f17_local8, f17_local9, f17_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act16(arg0, arg1, arg2)
    local f18_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = f18_local0 + 0
    local f18_local2 = f18_local0 + 25
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = 3
    local f18_local6 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 15451) == true then
        f18_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14457)
    local f18_local7 = 3034
    local f18_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f18_local9 = 0
    local f18_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f18_local7, TARGET_ENE_0, f18_local8, f18_local9, f18_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act17(arg0, arg1, arg2)
    local f19_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = f19_local0 + 0
    local f19_local2 = f19_local0 + 25
    local f19_local3 = 100
    local f19_local4 = 0
    local f19_local5 = 3
    local f19_local6 = 3
    Approach_Act_Flex(arg0, arg1, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6)
    local f19_local7 = 3036
    local f19_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f19_local9 = 0
    local f19_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f19_local7, TARGET_ENE_0, f19_local8, f19_local9, f19_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act18(arg0, arg1, arg2)
    local f20_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = f20_local0 + 0
    local f20_local2 = f20_local0 + 25
    local f20_local3 = 0
    local f20_local4 = 0
    local f20_local5 = 2
    local f20_local6 = 2
    local f20_local7 = 3038
    local f20_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f20_local9 = 0
    local f20_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f20_local7, TARGET_ENE_0, f20_local8, f20_local9, f20_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act19(arg0, arg1, arg2)
    local f21_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local1 = f21_local0 + 0
    local f21_local2 = f21_local0 + 25
    local f21_local3 = 0
    local f21_local4 = 0
    local f21_local5 = 2
    local f21_local6 = 2
    local f21_local7 = 3039
    local f21_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f21_local9 = 0
    local f21_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f21_local7, TARGET_ENE_0, f21_local8, f21_local9, f21_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act22(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act23(arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = arg0:GetDistY(TARGET_ENE_0)
    local f25_local2 = arg0:GetHpRate(TARGET_SELF)
    local f25_local3 = arg0:GetRandam_Int(1, 100)
    local f25_local4 = arg0:GetDist(TARGET_FRI_0)
    local f25_local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f25_local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg0:GetHpRate(TARGET_SELF) > 0.99 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
        elseif f25_local0 >= 7.5 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 7, TARGET_ENE_0, false, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
        end
    elseif f25_local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg0:GetHpRate(TARGET_SELF) > 0.99 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
        elseif f25_local0 >= 7.5 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 7, TARGET_ENE_0, false, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 15451) == true then
        if f25_local0 >= 7.5 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 5.5, TARGET_ENE_0, false, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 15450) == true then
        if arg0:GetHpRate(TARGET_SELF) > 0.99 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
        elseif f25_local0 >= 7.5 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 5.5, TARGET_ENE_0, false, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_Act30(arg0, arg1, arg2)
    local f26_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local1 = f26_local0 + 0
    local f26_local2 = f26_local0 + 5
    local f26_local3 = 0
    local f26_local4 = 0
    local f26_local5 = 2
    local f26_local6 = 2
    local f26_local7 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 15451) == true then
        f26_local3 = 80
    end
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14457)
    local f26_local8 = 3032
    local f26_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f26_local10 = 0
    local f26_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f26_local8, TARGET_ENE_0, f26_local9, f26_local10, f26_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodSkinFatherSlim356000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_GodSkinFatherSlim356000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f30_local0 = arg1:GetDist(TARGET_ENE_0)
    local f30_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f30_local2 = 0
    local f30_local3 = 0
    local f30_local4 = arg1:GetRandam_Int(1, 100)
    local f30_local5 = arg1:GetHpRate(TARGET_SELF)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14457)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_UseItem) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15451) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2.5) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                if f30_local4 <= 30 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
                    return true
                elseif f30_local4 <= 60 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3034, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
                    return true
                elseif f30_local4 <= 90 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3036, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if f30_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
                if f30_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15450) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2.5) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                if f30_local4 <= 40 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
                    return true
                elseif f30_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3034, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if f30_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
                if f30_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15451) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5.5) then
                if f30_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3034, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if f30_local4 <= 40 then
                    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                        return true
                    end
                elseif f30_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3036, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 30) then
                if f30_local4 <= 65 then
                    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                        return true
                    end
                elseif f30_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
                    return true
                end
            elseif f30_local4 <= 80 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                    return true
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15450) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5.5) then
                if f30_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3034, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7) then
                if f30_local4 <= 80 then
                    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                        return true
                    end
                else
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 30) then
                if f30_local4 <= 65 then
                    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                        return true
                    end
                elseif f30_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
                    return true
                end
            elseif f30_local4 <= 80 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                    return true
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2.5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if f30_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 1.5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            elseif f30_local4 <= 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3034, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
            if f30_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif f30_local4 <= 40 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f30_local4 <= 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f30_local4 <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f30_local4 <= 80 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15451) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    if f30_local4 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif f30_local4 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 7.5) then
                if f30_local4 <= 25 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 75 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15451) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    if f30_local4 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif f30_local4 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 7.5) then
                if f30_local4 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 3.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                if f30_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f30_local4 <= 5 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 10 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 85 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4.5) then
            if f30_local4 <= 5 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 10 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 85 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15451) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 5.5) then
                if f30_local4 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif f30_local4 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) and arg1:HasSpecialEffectId(TARGET_SELF, 15451) == true then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                if f30_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 75 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f30_local4 <= 25 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if f30_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if f30_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) then
            if f30_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 3.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                if f30_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 75 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f30_local4 <= 15 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 45 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4.5) then
            if f30_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5032) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5.5) then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f30_local4 <= 20 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f30_local4 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f30_local4 <= 40 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f30_local4 <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5033) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                if f30_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f30_local4 <= 10 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
            if f30_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5034) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
            if f30_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 10) then
            if f30_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 55 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 15) then
            if f30_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5035) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 10) then
            if f30_local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 15) then
            if f30_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5036) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15451) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 10) then
                if f30_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 55 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 15) then
                if f30_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 9) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 20) then
            if f30_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5037) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15451) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                    if f30_local4 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f30_local4 <= 70 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f30_local4 <= 85 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif f30_local4 <= 10 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 85 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 10) then
                if f30_local4 <= 25 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 75 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                if f30_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f30_local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 10) then
            if f30_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5038) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 3.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) == true then
                if f30_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f30_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f30_local4 <= 15 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4.5) then
            if f30_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(15457) and arg1:HasSpecialEffectId(TARGET_SELF, 15451) == true then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if f30_local4 <= 25 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if f30_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if f30_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) then
            if f30_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f30_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_GodSkinFatherSlim356000_AfterAttackAct, "GodSkinFatherSlim356000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GodSkinFatherSlim356000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


