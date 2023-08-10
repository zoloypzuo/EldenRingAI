RegisterTableGoal(GOAL_RuneKnightsHalberdShoulderHorn250030_Battle, "RuneKnightsHalberdShoulderHorn250030_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneKnightsHalberdShoulderHorn250030_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
    arg1:EnableUnfavorableAttackCheck(1000000, 3003)
    arg1:EnableUnfavorableAttackCheck(1000000, 3005)
    arg1:EnableUnfavorableAttackCheck(1000000, 3006)
    arg1:EnableUnfavorableAttackCheck(1000000, 3007)
    arg1:EnableUnfavorableAttackCheck(1000000, 3009)
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
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14613)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14647)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 51)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local9 = arg1:GetEventRequest()
    local f2_local10 = arg1:GetDist(TARGET_ENE_0)
    local f2_local11 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local12 = arg1:GetHpRate(TARGET_SELF)
    local f2_local13 = arg1:GetRandam_Int(1, 100)
    local f2_local14 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local15 = arg1:GetEventRequest()
    if not (f2_local14 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku) or f2_local14 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local10 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 7.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 4.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 25
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 25
                f2_local0[7] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 50
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 3 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 25
                f2_local0[4] = 0
                f2_local0[6] = 25
                f2_local0[7] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 50
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 70
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 2 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 0
                f2_local0[3] = 20
                f2_local0[4] = 0
                f2_local0[6] = 20
                f2_local0[7] = 0
                f2_local0[20] = 0
                f2_local0[21] = 20
                f2_local0[22] = 20
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 20
            f2_local0[2] = 0
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[6] = 0
            f2_local0[7] = 20
            f2_local0[20] = 0
            f2_local0[21] = 40
            f2_local0[22] = 0
            f2_local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[20] = 100
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 30
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[20] = 70
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[20] = 100
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
        if f2_local10 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 70
                f2_local0[5] = 0
                f2_local0[6] = 30
                f2_local0[7] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 70
                f2_local0[5] = 100
                f2_local0[6] = 30
                f2_local0[7] = 0
                f2_local0[10] = 100
                f2_local0[12] = 100
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[10] = 100
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 7.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 70
                f2_local0[5] = 100
                f2_local0[6] = 30
                f2_local0[7] = 0
                f2_local0[10] = 100
                f2_local0[12] = 100
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[10] = 100
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 40
                f2_local0[5] = 100
                f2_local0[6] = 20
                f2_local0[7] = 0
                f2_local0[10] = 100
                f2_local0[12] = 100
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 40
                f2_local0[23] = 0
            else
                f2_local0[10] = 100
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 4.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 25
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 20
                f2_local0[5] = 100
                f2_local0[6] = 20
                f2_local0[7] = 0
                f2_local0[10] = 100
                f2_local0[11] = 0
                f2_local0[12] = 100
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 35
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[10] = 100
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 30
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[10] = 100
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 30
                f2_local0[23] = 0
            else
                f2_local0[10] = 100
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 3 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 20
                f2_local0[3] = 40
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[7] = 0
                f2_local0[10] = 100
                f2_local0[11] = 0
                f2_local0[12] = 100
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 70
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 30
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 30
                f2_local0[23] = 0
            else
                f2_local0[10] = 100
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 2 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 30
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[7] = 0
                f2_local0[10] = 100
                f2_local0[12] = 100
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 70
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[10] = 100
                f2_local0[11] = 0
                f2_local0[12] = 100
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[10] = 100
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[10] = 100
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 30
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 40
            f2_local0[10] = 100
            f2_local0[12] = 100
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 20
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 60
            f2_local0[10] = 100
            f2_local0[11] = 0
            f2_local0[12] = 100
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 20
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 60
            f2_local0[10] = 100
            f2_local0[12] = 0
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[10] = 100
            f2_local0[20] = 100
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
        if arg1:GetHpRate(TARGET_SELF) < 0.6 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[13] = 100
            else
                f2_local0[20] = 100
            end
        elseif f2_local10 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 70
                f2_local0[6] = 30
                f2_local0[7] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 70
                f2_local0[6] = 30
                f2_local0[7] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 7.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 70
                f2_local0[6] = 30
                f2_local0[7] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 50
                f2_local0[6] = 20
                f2_local0[7] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 30
                f2_local0[23] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 4.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 20
                f2_local0[6] = 30
                f2_local0[7] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 30
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 30
                f2_local0[23] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 3 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 40
                f2_local0[3] = 40
                f2_local0[4] = 0
                f2_local0[6] = 10
                f2_local0[7] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 70
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            end
        elseif f2_local10 >= 2 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 30
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[6] = 20
                f2_local0[7] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 70
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 70
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[6] = 0
                f2_local0[7] = 70
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 30
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[6] = 0
            f2_local0[7] = 40
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 30
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[6] = 0
            f2_local0[7] = 50
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 30
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[6] = 0
            f2_local0[7] = 50
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[6] = 0
            f2_local0[7] = 80
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3023, 15, f2_local0[7], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[10], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3021, 10, f2_local0[12], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3022, 10, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3024, 1, f2_local0[13], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RuneKnightsHalberdShoulderHorn250030_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RuneKnightsHalberdShoulderHorn250030_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RuneKnightsHalberdShoulderHorn250030_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RuneKnightsHalberdShoulderHorn250030_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RuneKnightsHalberdShoulderHorn250030_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RuneKnightsHalberdShoulderHorn250030_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, RuneKnightsHalberdShoulderHorn250030_Act07)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, RuneKnightsHalberdShoulderHorn250030_Act10)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, RuneKnightsHalberdShoulderHorn250030_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, RuneKnightsHalberdShoulderHorn250030_Act13)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RuneKnightsHalberdShoulderHorn250030_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, RuneKnightsHalberdShoulderHorn250030_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, RuneKnightsHalberdShoulderHorn250030_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, RuneKnightsHalberdShoulderHorn250030_Act23)
    local f2_local16 = REGIST_FUNC(arg1, arg2, RuneKnightsHalberdShoulderHorn250030_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local16, f2_local2)
    
end

function RuneKnightsHalberdShoulderHorn250030_Act01(arg0, arg1, arg2)
    local f3_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 10
    local f3_local3 = 70
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local9 = 0
    local f3_local10 = 0
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14613)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneKnightsHalberdShoulderHorn250030_Act02(arg0, arg1, arg2)
    local f4_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 10
    local f4_local3 = 70
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3003
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14613)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneKnightsHalberdShoulderHorn250030_Act03(arg0, arg1, arg2)
    local f5_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 10
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    local f5_local7 = 3004
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14613)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneKnightsHalberdShoulderHorn250030_Act04(arg0, arg1, arg2)
    local f6_local0 = 11 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 10
    local f6_local3 = 70
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3005
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14613)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneKnightsHalberdShoulderHorn250030_Act05(arg0, arg1, arg2)
    local f7_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 10
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    local f7_local7 = 3008
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 0
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14613)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneKnightsHalberdShoulderHorn250030_Act06(arg0, arg1, arg2)
    local f8_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 10
    local f8_local3 = 70
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3012
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local9 = 0
    local f8_local10 = 0
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14613)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneKnightsHalberdShoulderHorn250030_Act07(arg0, arg1, arg2)
    local f9_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 10
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    local f9_local7 = 3023
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local9 = 0
    local f9_local10 = 0
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14613)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneKnightsHalberdShoulderHorn250030_Act10(arg0, arg1, arg2)
    local f10_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 10
    local f10_local3 = 0
    local f10_local4 = 100
    local f10_local5 = 3
    local f10_local6 = 3
    local f10_local7 = 3011
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local9 = 0
    local f10_local10 = 0
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14613)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneKnightsHalberdShoulderHorn250030_Act12(arg0, arg1, arg2)
    local f11_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 10
    local f11_local3 = 0
    local f11_local4 = 100
    local f11_local5 = 3
    local f11_local6 = 3
    local f11_local7 = arg0:GetDist(TARGET_ENE_0)
    local f11_local8 = 3021
    local f11_local9 = 3022
    local f11_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local11 = 0
    local f11_local12 = 0
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14613)
    if f11_local7 >= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local8, TARGET_ENE_0, f11_local10, f11_local11, f11_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local9, TARGET_ENE_0, f11_local10, f11_local11, f11_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneKnightsHalberdShoulderHorn250030_Act13(arg0, arg1, arg2)
    local f12_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 10
    local f12_local3 = 0
    local f12_local4 = 100
    local f12_local5 = 3
    local f12_local6 = 3
    local f12_local7 = 3024
    local f12_local8 = 3025
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local10 = 0
    local f12_local11 = 360
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14613)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14604) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f12_local7, TARGET_ENE_0, 999, f12_local10, f12_local11, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14605) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f12_local8, TARGET_ENE_0, 999, f12_local10, f12_local11, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneKnightsHalberdShoulderHorn250030_Act20(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    if f13_local0 >= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, 5, TARGET_SELF, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneKnightsHalberdShoulderHorn250030_Act21(arg0, arg1, arg2)
    local f14_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f14_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 4.5, TARGET_ENE_0, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneKnightsHalberdShoulderHorn250030_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneKnightsHalberdShoulderHorn250030_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2.5, TARGET_ENE_0, 90, -1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneKnightsHalberdShoulderHorn250030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RuneKnightsHalberdShoulderHorn250030_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f20_local0 = arg1:GetDist(TARGET_ENE_0)
    local f20_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f20_local2 = 0
    local f20_local3 = 0
    local f20_local4 = arg1:GetRandam_Int(1, 100)
    local f20_local5 = arg1:GetHpRate(TARGET_SELF)
    local f20_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f20_local7 = arg1:GetDist(TARGET_FRI_0)
    local f20_local8 = arg1:GetMapHitRadius(TARGET_SELF)
    local f20_local9 = arg1:GetPrevTargetState()
    local f20_local10 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14613)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_ILLNESS) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 14647) == true then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, TARGET_ENE_0, 1, TARGET_SELF, true, -1, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_UseItem) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if f20_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f20_local4 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
                return true
            elseif f20_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_SELF, false, -1)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f20_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_SELF, false, -1)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7.5) then
            if f20_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f20_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_SELF, false, -1)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f20_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_SELF, false, -1)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
        if f20_local4 <= 50 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
            return true
        elseif f20_local4 <= 70 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 50 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 70 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 70 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 50 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 70 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 70 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if f20_local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 70 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 4.5) and arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
            if f20_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 40 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 80 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 10 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 20 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 30 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 50 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    if f20_local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 10 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 40 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 50 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 60 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    if f20_local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4.54) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 20 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 30 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 40 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 60 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 80 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 20 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 40 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 60 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 30 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 60 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if f20_local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        if f20_local4 <= 50 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                            return true
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 20 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 40 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    if f20_local4 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 4.5) and arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
            if f20_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5032) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        if f20_local4 <= 50 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                            return true
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 20 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 40 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    if f20_local4 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 4.5) and arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
            if f20_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5033) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 40 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 80 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 70 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 70 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 90 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 4.5) and arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
            if f20_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5034) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 40 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 80 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 60 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5035) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 70 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true and arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, arg1:GetRandam_Int(2, 3), TARGET_ENE_0, 7.5, TARGET_ENE_0, true, -1)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4.5) and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
            if f20_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5036) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 10 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 50 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 60 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 10 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 10 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 80 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 90 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 10 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 90 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if f20_local4 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5037) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 10 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 20 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 50 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    if f20_local4 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 10 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 30 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 60 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    if f20_local4 <= 25 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 75 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if f20_local4 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5038) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 40 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 80 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14603) == true then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(14610) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            if f20_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if f20_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f20_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f20_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4.5) then
            if f20_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 4.5) then
            if f20_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 4.5) then
            if f20_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(14611) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            if f20_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if f20_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f20_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f20_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4.5) then
            if f20_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 4.5) then
            if f20_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 4.5) then
            if f20_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(14612) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                        if f20_local4 <= 30 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f20_local4 <= 70 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                            return true
                        end
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 70 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14605) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14603) == true then
                    if f20_local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f20_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if f20_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f20_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if f20_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(14613) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 15) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_RuneKnightsHalberdShoulderHorn250030_AfterAttackAct, "RuneKnightsHalberdShoulderHorn250030_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneKnightsHalberdShoulderHorn250030_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


