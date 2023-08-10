RegisterTableGoal(GOAL_HeavypriestofGiantsfire_h391000_Battle, "HeavypriestofGiantsfire_h391000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HeavypriestofGiantsfire_h391000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3026)
    arg1:EnableUnfavorableAttackCheck(0, 3029)
    
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 30)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 > 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 40
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 30
                f2_local0[13] = 0
                f2_local0[20] = 20
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            else
                f2_local0[1] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 20
                f2_local0[23] = 80
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            end
        elseif f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 40
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 30
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 20
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            else
                f2_local0[1] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 20
                f2_local0[23] = 80
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            end
        elseif f2_local3 > 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 40
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 30
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 20
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 40
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 25
                f2_local0[23] = 25
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 40
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 25
                f2_local0[23] = 25
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            else
                f2_local0[1] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 20
                f2_local0[23] = 80
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 50
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 50
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 50
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 30
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 20
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 50
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 30
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 20
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        else
            f2_local0[1] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 20
            f2_local0[23] = 80
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        end
    elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 > 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 40
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 30
                f2_local0[13] = 0
                f2_local0[20] = 20
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            else
                f2_local0[1] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 20
                f2_local0[23] = 80
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            end
        elseif f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 40
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 30
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 20
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            else
                f2_local0[1] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 20
                f2_local0[23] = 80
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            end
        elseif f2_local3 > 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 40
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 30
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 20
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 40
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 25
                f2_local0[23] = 25
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 40
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 25
                f2_local0[23] = 25
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            else
                f2_local0[1] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 20
                f2_local0[23] = 80
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 50
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 50
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 50
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 30
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 20
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 50
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 30
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 20
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        else
            f2_local0[1] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 20
            f2_local0[23] = 80
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        end
    elseif arg1:GetHpRate(TARGET_SELF) < 0.6 then
        if f2_local3 > 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 30
                f2_local0[9] = 10
                f2_local0[11] = 0
                f2_local0[12] = 40
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 20
                f2_local0[9] = 10
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 50
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 20
                f2_local0[9] = 10
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 50
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            else
                f2_local0[1] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 20
                f2_local0[23] = 80
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            end
        elseif f2_local3 >= 8 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 40
                f2_local0[9] = 10
                f2_local0[11] = 0
                f2_local0[12] = 30
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 20
                f2_local0[9] = 10
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 50
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 20
                f2_local0[9] = 10
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 50
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            else
                f2_local0[1] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 20
                f2_local0[23] = 80
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            end
        elseif f2_local3 >= 5.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 15
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 15
                f2_local0[8] = 40
                f2_local0[9] = 15
                f2_local0[11] = 0
                f2_local0[12] = 15
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 15
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 20
                f2_local0[8] = 35
                f2_local0[9] = 20
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[4] = 15
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 20
                f2_local0[8] = 35
                f2_local0[9] = 20
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            else
                f2_local0[1] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 30
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 70
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            end
        elseif f2_local3 >= 2.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 15
                f2_local0[4] = 0
                f2_local0[5] = 15
                f2_local0[6] = 15
                f2_local0[7] = 10
                f2_local0[8] = 25
                f2_local0[9] = 10
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 15
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 20
                f2_local0[7] = 10
                f2_local0[8] = 0
                f2_local0[9] = 15
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 15
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 20
                f2_local0[7] = 10
                f2_local0[8] = 0
                f2_local0[9] = 15
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            else
                f2_local0[1] = 25
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 25
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 50
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 20
            f2_local0[4] = 0
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[7] = 10
            f2_local0[8] = 0
            f2_local0[9] = 10
            f2_local0[11] = 30
            f2_local0[12] = 0
            f2_local0[13] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 20
            f2_local0[4] = 0
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[7] = 10
            f2_local0[8] = 0
            f2_local0[9] = 10
            f2_local0[11] = 20
            f2_local0[12] = 0
            f2_local0[13] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 20
            f2_local0[4] = 0
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[7] = 10
            f2_local0[8] = 0
            f2_local0[9] = 10
            f2_local0[11] = 20
            f2_local0[12] = 0
            f2_local0[13] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        else
            f2_local0[1] = 25
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 25
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 50
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        end
    elseif f2_local3 > 15 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 20
            f2_local0[8] = 0
            f2_local0[9] = 20
            f2_local0[11] = 0
            f2_local0[12] = 50
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 20
            f2_local0[8] = 0
            f2_local0[9] = 20
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 50
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 20
            f2_local0[8] = 0
            f2_local0[9] = 20
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 50
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        else
            f2_local0[1] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 20
            f2_local0[23] = 80
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        end
    elseif f2_local3 >= 8 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 20
            f2_local0[8] = 0
            f2_local0[9] = 10
            f2_local0[11] = 0
            f2_local0[12] = 50
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 10
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 20
            f2_local0[8] = 0
            f2_local0[9] = 10
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 10
            f2_local0[23] = 50
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 20
            f2_local0[8] = 0
            f2_local0[9] = 10
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 10
            f2_local0[23] = 50
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        else
            f2_local0[1] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 20
            f2_local0[23] = 80
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        end
    elseif f2_local3 >= 5.5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[4] = 20
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 25
            f2_local0[8] = 0
            f2_local0[9] = 20
            f2_local0[11] = 0
            f2_local0[12] = 25
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 10
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[4] = 25
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 25
            f2_local0[8] = 0
            f2_local0[9] = 30
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 10
            f2_local0[23] = 10
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[4] = 25
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 25
            f2_local0[8] = 0
            f2_local0[9] = 30
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 10
            f2_local0[23] = 10
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        else
            f2_local0[1] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 20
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 10
            f2_local0[23] = 70
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        end
    elseif f2_local3 >= 2.5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 15
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[6] = 20
            f2_local0[7] = 15
            f2_local0[8] = 0
            f2_local0[9] = 15
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 15
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[6] = 20
            f2_local0[7] = 10
            f2_local0[8] = 0
            f2_local0[9] = 15
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 15
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[6] = 20
            f2_local0[7] = 10
            f2_local0[8] = 0
            f2_local0[9] = 15
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        else
            f2_local0[1] = 25
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 25
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 50
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
        f2_local0[1] = 20
        f2_local0[4] = 0
        f2_local0[5] = 10
        f2_local0[6] = 10
        f2_local0[7] = 10
        f2_local0[8] = 0
        f2_local0[9] = 10
        f2_local0[11] = 30
        f2_local0[12] = 0
        f2_local0[13] = 10
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[24] = 0
        f2_local0[25] = 0
        f2_local0[26] = 0
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
        f2_local0[1] = 20
        f2_local0[4] = 0
        f2_local0[5] = 10
        f2_local0[6] = 10
        f2_local0[7] = 10
        f2_local0[8] = 0
        f2_local0[9] = 10
        f2_local0[11] = 20
        f2_local0[12] = 0
        f2_local0[13] = 10
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 10
        f2_local0[24] = 0
        f2_local0[25] = 0
        f2_local0[26] = 0
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
        f2_local0[1] = 20
        f2_local0[4] = 0
        f2_local0[5] = 10
        f2_local0[6] = 10
        f2_local0[7] = 10
        f2_local0[8] = 0
        f2_local0[9] = 10
        f2_local0[11] = 20
        f2_local0[12] = 0
        f2_local0[13] = 10
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 10
        f2_local0[24] = 0
        f2_local0[25] = 0
        f2_local0[26] = 0
    else
        f2_local0[1] = 25
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 25
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 50
        f2_local0[24] = 0
        f2_local0[25] = 0
        f2_local0[26] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 20, f2_local0[1], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 60, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 20, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[4], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3029, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3013, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3014, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3015, 30, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3018, 20, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3025, 5, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3026, 10, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3027, 5, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3029, 10, f2_local0[13], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[13], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6000, 5, f2_local0[24], 0)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6001, 5, f2_local0[25], 0)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[26], 0)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[26], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act13)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_Act26)
    local f2_local9 = REGIST_FUNC(arg1, arg2, HeavypriestofGiantsfire_h391000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function HeavypriestofGiantsfire_h391000_Act01(arg0, arg1, arg2)
    local f3_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 20
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
    if arg0:GetHpRate(TARGET_SELF) < 0.6 then
        f3_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act02(arg0, arg1, arg2)
    local f4_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 20
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 2
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f4_local7 = 3001
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act03(arg0, arg1, arg2)
    local f5_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 20
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    if arg0:GetHpRate(TARGET_SELF) < 0.6 then
        f5_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3002
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act04(arg0, arg1, arg2)
    local f6_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 20
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 2
    if arg0:GetHpRate(TARGET_SELF) < 0.6 then
        f6_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f6_local7 = 3010
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act05(arg0, arg1, arg2)
    local f7_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 20
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 2
    if arg0:GetHpRate(TARGET_SELF) < 0.6 then
        f7_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3012
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act06(arg0, arg1, arg2)
    local f8_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 20
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 2
    if arg0:GetHpRate(TARGET_SELF) < 0.6 then
        f8_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3013
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act07(arg0, arg1, arg2)
    local f9_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 20
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 2
    if arg0:GetHpRate(TARGET_SELF) < 0.6 then
        f9_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f9_local7 = 3014
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act08(arg0, arg1, arg2)
    local f10_local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 20
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 2
    local f10_local6 = 2
    if arg0:GetHpRate(TARGET_SELF) < 0.6 then
        f10_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f10_local7 = 3015
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local9 = 0
    local f10_local10 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act09(arg0, arg1, arg2)
    local f11_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 20
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 2
    local f11_local6 = 2
    if arg0:GetHpRate(TARGET_SELF) < 0.6 then
        f11_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3018
    local f11_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local9 = 0
    local f11_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act10(arg0, arg1, arg2)
    local f12_local0 = 25 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 20
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 2
    if arg0:GetHpRate(TARGET_SELF) < 0.6 then
        f12_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f12_local7 = 3025
    local f12_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local9 = 0
    local f12_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act11(arg0, arg1, arg2)
    local f13_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 20
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 2
    if arg0:GetHpRate(TARGET_SELF) < 0.6 then
        f13_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f13_local7 = 3026
    local f13_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local9 = 0
    local f13_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act12(arg0, arg1, arg2)
    local f14_local0 = 25 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 20
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 2
    local f14_local6 = 2
    if arg0:GetHpRate(TARGET_SELF) < 0.6 then
        f14_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3027
    local f14_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local9 = 0
    local f14_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act13(arg0, arg1, arg2)
    local f15_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = f15_local0 + 0
    local f15_local2 = f15_local0 + 20
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 2
    local f15_local6 = 2
    if arg0:GetHpRate(TARGET_SELF) < 0.6 then
        f15_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f15_local7 = 3029
    local f15_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local9 = 0
    local f15_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act21(arg0, arg1, arg2)
    local f17_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f17_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_Act26(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function HeavypriestofGiantsfire_h391000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_HeavypriestofGiantsfire_h391000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f26_local0 = arg1:GetDist(TARGET_ENE_0)
    local f26_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f26_local2 = 0
    local f26_local3 = 0
    local f26_local4 = arg1:GetRandam_Int(1, 100)
    local f26_local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5.5) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 30) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5.5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 999) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
        if f26_local0 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif f26_local0 >= 4 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 6) then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 30) then
            if f26_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5033) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 30) then
            if f26_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5034) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5.5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 2.5) then
        if f26_local4 <= 40 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 1.5, 3026, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5.5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f26_local4 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5.5, TARGET_ENE_0, false, -1)
                return true
            elseif f26_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, 3027, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
                return true
            else
                return true
            end
        elseif f26_local4 <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5.5, TARGET_ENE_0, false, -1)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_ENE_0, 30) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2.5) then
        if f26_local4 <= 40 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 2, 3026, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_UseItem) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2.5) then
            if f26_local4 <= 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 2, 3026, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5.5) then
            if f26_local4 <= 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 2, 3012, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f26_local4 <= 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5.5, TARGET_ENE_0, false, -1)
                return true
            else
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_HeavypriestofGiantsfire_h391000_AfterAttackAct, "HeavypriestofGiantsfire_h391000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_HeavypriestofGiantsfire_h391000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


