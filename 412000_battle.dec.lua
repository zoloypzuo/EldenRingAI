RegisterTableGoal(GOAL_DemiHumanBerserk412000_Battle, "DemiHumanBerserk412000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DemiHumanBerserk412000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10539)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10541)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10543)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:HasSpecialEffectId(TARGET_SELF, 10543) == true then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 10
            f2_local0[6] = 20
            f2_local0[7] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10539) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10541) == true then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 10
            f2_local0[6] = 20
            f2_local0[7] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10539) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10541) == false then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[7] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 10
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10539) == false and f2_local3 < 100 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[20] = 100
            else
                f2_local0[30] = 100
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 0
            end
        end
    elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:HasSpecialEffectId(TARGET_SELF, 10543) == true then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 15
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[7] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10539) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10541) == true then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 15
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[7] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10539) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10541) == false then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[7] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 10
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10539) == false and f2_local3 < 100 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[20] = 100
            else
                f2_local0[30] = 100
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 0
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10543) == true then
        if f2_local3 > 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 30
                f2_local0[6] = 15
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 25
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 25
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 5
            else
                f2_local0[1] = 0
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[7] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 15
                f2_local0[36] = 15
            end
        elseif f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 30
                f2_local0[6] = 15
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 25
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 25
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 5
            else
                f2_local0[1] = 0
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[7] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 15
                f2_local0[36] = 15
            end
        elseif f2_local3 > 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 25
                f2_local0[5] = 20
                f2_local0[6] = 10
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[6] = 10
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[6] = 10
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 10
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 10
                f2_local0[7] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 15
                f2_local0[36] = 15
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 25
            f2_local0[2] = 20
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 10
            f2_local0[7] = 25
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 50
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 15
            f2_local0[36] = 15
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 50
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 15
            f2_local0[36] = 15
        else
            f2_local0[1] = 0
            f2_local0[2] = 50
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 15
            f2_local0[36] = 15
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10539) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10541) == true then
        if f2_local3 > 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 30
                f2_local0[6] = 15
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 25
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 25
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 5
            else
                f2_local0[1] = 0
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[7] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 15
                f2_local0[36] = 15
            end
        elseif f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 30
                f2_local0[6] = 15
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 25
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 25
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 5
            else
                f2_local0[1] = 0
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 20
                f2_local0[7] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 15
                f2_local0[36] = 15
            end
        elseif f2_local3 > 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 25
                f2_local0[5] = 20
                f2_local0[6] = 10
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[6] = 10
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[6] = 10
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 10
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 10
                f2_local0[7] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 15
                f2_local0[36] = 15
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 25
            f2_local0[2] = 20
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 10
            f2_local0[7] = 25
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 50
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 15
            f2_local0[36] = 15
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 50
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 15
            f2_local0[36] = 15
        else
            f2_local0[1] = 0
            f2_local0[2] = 50
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 15
            f2_local0[36] = 15
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10539) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10541) == false then
        if f2_local3 > 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[6] = 5
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 5
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 5
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 5
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 15
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 5
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 5
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 5
            else
                f2_local0[1] = 0
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 10
                f2_local0[7] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 10
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
            end
        elseif f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[6] = 5
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 5
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 5
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 5
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 15
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 5
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 5
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 5
            else
                f2_local0[1] = 0
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 10
                f2_local0[7] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 10
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
            end
        elseif f2_local3 > 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 5
                f2_local0[3] = 20
                f2_local0[4] = 20
                f2_local0[5] = 20
                f2_local0[6] = 5
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 10
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 15
                f2_local0[2] = 5
                f2_local0[3] = 20
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[6] = 5
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 10
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 5
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 15
                f2_local0[2] = 5
                f2_local0[3] = 20
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[6] = 5
                f2_local0[7] = 5
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 10
                f2_local0[34] = 0
                f2_local0[35] = 5
                f2_local0[36] = 5
            else
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 10
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 10
                f2_local0[7] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 10
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 25
            f2_local0[2] = 20
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 10
            f2_local0[7] = 25
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 50
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 15
            f2_local0[36] = 15
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 50
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 15
            f2_local0[36] = 15
        else
            f2_local0[1] = 0
            f2_local0[2] = 50
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 15
            f2_local0[36] = 15
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10539) == false and f2_local3 < 100 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[20] = 100
        else
            f2_local0[30] = 100
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 0
            f2_local0[36] = 0
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 7, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[4], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3026, 5, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 5, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3009, 7, f2_local0[7], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[20], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3026, 10, f2_local0[20], 1)
    f2_local0[35] = SetCoolTime(arg1, arg2, 6001, 10, f2_local0[35], 0)
    f2_local0[36] = SetCoolTime(arg1, arg2, 6002, 10, f2_local0[36], 0)
    f2_local0[36] = SetCoolTime(arg1, arg2, 6003, 10, f2_local0[36], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, DemiHumanBerserk412000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, DemiHumanBerserk412000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, DemiHumanBerserk412000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, DemiHumanBerserk412000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, DemiHumanBerserk412000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, DemiHumanBerserk412000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, DemiHumanBerserk412000_Act07)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, DemiHumanBerserk412000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, DemiHumanBerserk412000_Act21)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, DemiHumanBerserk412000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, DemiHumanBerserk412000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, DemiHumanBerserk412000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, DemiHumanBerserk412000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, DemiHumanBerserk412000_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, DemiHumanBerserk412000_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, DemiHumanBerserk412000_Act36)
    local f2_local9 = REGIST_FUNC(arg1, arg2, DemiHumanBerserk412000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function DemiHumanBerserk412000_Act01(arg0, arg1, arg2)
    local f3_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 10
    local f3_local3 = 90
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
    if arg0:HasSpecialEffectId(TARGET_SELF, 10541) == true or arg0:HasSpecialEffectId(TARGET_SELF, 10543) == true then
        f3_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanBerserk412000_Act02(arg0, arg1, arg2)
    local f4_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 10
    local f4_local3 = 90
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 2
    if arg0:HasSpecialEffectId(TARGET_SELF, 10541) == true or arg0:HasSpecialEffectId(TARGET_SELF, 10543) == true then
        f4_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f4_local7 = 3001
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanBerserk412000_Act03(arg0, arg1, arg2)
    local f5_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 10
    local f5_local3 = 90
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    if arg0:HasSpecialEffectId(TARGET_SELF, 10541) == true or arg0:HasSpecialEffectId(TARGET_SELF, 10543) == true then
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

function DemiHumanBerserk412000_Act04(arg0, arg1, arg2)
    local f6_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 10
    local f6_local3 = 90
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 2
    if arg0:HasSpecialEffectId(TARGET_SELF, 10541) == true or arg0:HasSpecialEffectId(TARGET_SELF, 10543) == true then
        f6_local3 = 100
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f6_local7 = 3003
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanBerserk412000_Act05(arg0, arg1, arg2)
    local f7_local0 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 10
    local f7_local3 = 90
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 2
    if arg0:HasSpecialEffectId(TARGET_SELF, 10541) == true or arg0:HasSpecialEffectId(TARGET_SELF, 10543) == true then
        f7_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3006
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanBerserk412000_Act06(arg0, arg1, arg2)
    local f8_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 10
    local f8_local3 = 90
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 2
    if arg0:HasSpecialEffectId(TARGET_SELF, 10541) == true or arg0:HasSpecialEffectId(TARGET_SELF, 10543) == true then
        f8_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f8_local7 = 3007
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanBerserk412000_Act07(arg0, arg1, arg2)
    local f9_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 10
    local f9_local3 = 90
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 2
    if arg0:HasSpecialEffectId(TARGET_SELF, 10541) == true or arg0:HasSpecialEffectId(TARGET_SELF, 10543) == true then
        f9_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f9_local7 = 3009
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanBerserk412000_Act20(arg0, arg1, arg2)
    local f10_local0 = 3026
    local f10_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local2 = 0
    local f10_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local0, TARGET_SELF, f10_local1, f10_local2, f10_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanBerserk412000_Act21(arg0, arg1, arg2)
    local f11_local0 = 3039
    local f11_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local2 = 0
    local f11_local3 = 360
    local f11_local4 = arg0:GetRandam_Int(1, 100)
    if f11_local4 <= 35 then
        local f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local0, TARGET_ENE_0, f11_local1, f11_local2, f11_local3, 0, 0)
    elseif f11_local4 <= 70 then
        local f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local0, TARGET_ENE_0, f11_local1, f11_local2, f11_local3, 0, 0)
    else
        local f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f11_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f11_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local0, TARGET_ENE_0, f11_local1, f11_local2, f11_local3, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanBerserk412000_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanBerserk412000_Act31(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local f13_local2 = arg0:GetRandam_Int(1, 100)
    local f13_local3 = arg0:GetRandam_Int(PHASE_BT_DIST_MIN, PHASE_BT_DIST_MAX)
    if f13_local2 >= 50 then
        arg0:SetAIFixedMoveTarget(TARGET_ENE_0, AI_DIR_TYPE_ToL, f13_local3 * 2)
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, POINT_AI_FIXED_POS, 45, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(2, 4), TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, f13_local3 * 2)
    else
        arg0:SetAIFixedMoveTarget(TARGET_ENE_0, AI_DIR_TYPE_ToR, f13_local3 * 2)
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, POINT_AI_FIXED_POS, 45, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(2, 4), TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, f13_local3 * 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanBerserk412000_Act32(arg0, arg1, arg2)
    local f14_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f14_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanBerserk412000_Act33(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanBerserk412000_Act34(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanBerserk412000_Act35(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanBerserk412000_Act36(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanBerserk412000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DemiHumanBerserk412000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f22_local0 = arg1:GetDist(TARGET_ENE_0)
    local f22_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f22_local2 = 0
    local f22_local3 = 0
    local f22_local4 = arg1:GetRandam_Int(1, 100)
    local f22_local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4) then
        if f22_local4 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3) then
        if f22_local4 <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3) then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 2.5) then
        if f22_local4 <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3) then
        if f22_local4 <= 1 then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3005, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3) then
            if f22_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3005, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 10543) == true then
                if f22_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10539) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10541) == true then
                if f22_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10539) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10541) == false then
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7.5) then
            if f22_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3006, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5032) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
        if f22_local4 <= 40 then
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
            if f22_local4 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 1.5, -1, 1, 1, 1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 4) then
            if f22_local4 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 1.5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 4) then
            if f22_local4 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 1.5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif f22_local4 <= 50 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 1.5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7) then
            if f22_local4 <= 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 0.8, -1, -1, 1, 1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if f22_local4 <= 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 0.8, 3006, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                return true
            elseif f22_local4 <= 90 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 0.8, -1, -1, 1, 1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 15) then
            if f22_local4 <= 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 0.8, -1, -1, 1, 1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_ENE_0, 30) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4) then
            if f22_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 2, 3002, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 7) then
            if f22_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 2, 3006, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                return true
            else
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_DemiHumanBerserk412000_AfterAttackAct, "DemiHumanBerserk412000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DemiHumanBerserk412000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


