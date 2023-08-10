RegisterTableGoal(GOAL_Deracine_Male457000_Battle, "Deracine_Male457000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Deracine_Male457000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 > 15 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16581) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 25
                    f2_local0[8] = 25
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 25
                    f2_local0[14] = 0
                    f2_local0[20] = 25
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                else
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 10
                f2_local0[7] = 30
                f2_local0[8] = 5
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 5
                f2_local0[14] = 10
                f2_local0[20] = 10
                f2_local0[21] = 25
                f2_local0[22] = 0
                f2_local0[23] = 5
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 20
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 20
                f2_local0[20] = 15
                f2_local0[21] = 25
                f2_local0[22] = 20
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 10 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16581) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 25
                    f2_local0[8] = 25
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 25
                    f2_local0[14] = 0
                    f2_local0[20] = 25
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                else
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 5
                f2_local0[5] = 0
                f2_local0[6] = 5
                f2_local0[7] = 30
                f2_local0[8] = 5
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 5
                f2_local0[14] = 5
                f2_local0[20] = 10
                f2_local0[21] = 25
                f2_local0[22] = 0
                f2_local0[23] = 5
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 20
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 20
                f2_local0[20] = 15
                f2_local0[21] = 25
                f2_local0[22] = 20
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16581) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 30
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 50
                    f2_local0[14] = 0
                    f2_local0[20] = 20
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                else
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 5
                f2_local0[3] = 0
                f2_local0[4] = 5
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 25
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 5
                f2_local0[14] = 5
                f2_local0[20] = 15
                f2_local0[21] = 20
                f2_local0[22] = 10
                f2_local0[23] = 5
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 20
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 20
                f2_local0[20] = 15
                f2_local0[21] = 25
                f2_local0[22] = 20
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 5
            f2_local0[2] = 5
            f2_local0[3] = 0
            f2_local0[4] = 5
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 35
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 5
            f2_local0[14] = 0
            f2_local0[20] = 15
            f2_local0[21] = 5
            f2_local0[22] = 20
            f2_local0[23] = 5
            f2_local0[24] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 20
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 20
            f2_local0[20] = 15
            f2_local0[21] = 25
            f2_local0[22] = 20
            f2_local0[23] = 0
            f2_local0[24] = 0
        end
    elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 > 15 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16581) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 25
                    f2_local0[8] = 25
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 25
                    f2_local0[14] = 0
                    f2_local0[20] = 25
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                else
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 10
                f2_local0[7] = 30
                f2_local0[8] = 5
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 5
                f2_local0[14] = 10
                f2_local0[20] = 10
                f2_local0[21] = 25
                f2_local0[22] = 0
                f2_local0[23] = 5
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 20
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 20
                f2_local0[20] = 15
                f2_local0[21] = 25
                f2_local0[22] = 20
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 10 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16581) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 25
                    f2_local0[8] = 25
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 25
                    f2_local0[14] = 0
                    f2_local0[20] = 25
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                else
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 5
                f2_local0[5] = 0
                f2_local0[6] = 5
                f2_local0[7] = 30
                f2_local0[8] = 5
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 5
                f2_local0[14] = 5
                f2_local0[20] = 10
                f2_local0[21] = 25
                f2_local0[22] = 0
                f2_local0[23] = 5
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 20
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 20
                f2_local0[20] = 15
                f2_local0[21] = 25
                f2_local0[22] = 20
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16581) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 30
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 50
                    f2_local0[14] = 0
                    f2_local0[20] = 20
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                else
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 5
                f2_local0[3] = 0
                f2_local0[4] = 5
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 25
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 5
                f2_local0[14] = 5
                f2_local0[20] = 15
                f2_local0[21] = 20
                f2_local0[22] = 10
                f2_local0[23] = 5
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 20
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 20
                f2_local0[20] = 15
                f2_local0[21] = 25
                f2_local0[22] = 20
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 5
            f2_local0[2] = 5
            f2_local0[3] = 0
            f2_local0[4] = 5
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 35
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 5
            f2_local0[14] = 0
            f2_local0[20] = 15
            f2_local0[21] = 5
            f2_local0[22] = 20
            f2_local0[23] = 5
            f2_local0[24] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 20
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 20
            f2_local0[20] = 15
            f2_local0[21] = 25
            f2_local0[22] = 20
            f2_local0[23] = 0
            f2_local0[24] = 0
        end
    elseif f2_local3 > 25 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16581) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 20
                f2_local0[9] = 20
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 20
                f2_local0[14] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[14] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 5
            f2_local0[2] = 5
            f2_local0[3] = 0
            f2_local0[4] = 5
            f2_local0[5] = 20
            f2_local0[6] = 0
            f2_local0[7] = 10
            f2_local0[8] = 15
            f2_local0[9] = 15
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 10
            f2_local0[14] = 10
            f2_local0[20] = 5
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        else
            f2_local0[14] = 40
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 20
            f2_local0[24] = 20
        end
    elseif f2_local3 > 20 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16581) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 20
                f2_local0[9] = 20
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 20
                f2_local0[14] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[14] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 5
            f2_local0[2] = 5
            f2_local0[3] = 0
            f2_local0[4] = 5
            f2_local0[5] = 20
            f2_local0[6] = 0
            f2_local0[7] = 10
            f2_local0[8] = 15
            f2_local0[9] = 15
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 10
            f2_local0[14] = 10
            f2_local0[20] = 5
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        else
            f2_local0[14] = 40
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 20
            f2_local0[24] = 20
        end
    elseif f2_local3 > 15 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16581) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 20
                f2_local0[9] = 20
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 20
                f2_local0[14] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[14] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 5
            f2_local0[2] = 5
            f2_local0[3] = 0
            f2_local0[4] = 5
            f2_local0[5] = 20
            f2_local0[6] = 0
            f2_local0[7] = 10
            f2_local0[8] = 10
            f2_local0[9] = 15
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 10
            f2_local0[14] = 5
            f2_local0[20] = 15
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        else
            f2_local0[14] = 40
            f2_local0[20] = 40
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 10
        end
    elseif f2_local3 > 10 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16581) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 20
                f2_local0[9] = 20
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 20
                f2_local0[14] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 5
            f2_local0[2] = 5
            f2_local0[3] = 0
            f2_local0[4] = 5
            f2_local0[5] = 15
            f2_local0[6] = 0
            f2_local0[7] = 10
            f2_local0[8] = 10
            f2_local0[9] = 15
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 10
            f2_local0[14] = 5
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[5] = 20
            f2_local0[6] = 0
            f2_local0[7] = 10
            f2_local0[8] = 0
            f2_local0[9] = 15
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 10
            f2_local0[14] = 5
            f2_local0[20] = 10
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[5] = 20
            f2_local0[6] = 0
            f2_local0[7] = 10
            f2_local0[8] = 0
            f2_local0[9] = 15
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 10
            f2_local0[14] = 5
            f2_local0[20] = 10
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        else
            f2_local0[1] = 20
            f2_local0[2] = 20
            f2_local0[3] = 0
            f2_local0[4] = 20
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 10
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 10
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        end
    elseif f2_local3 >= 5 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16581) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 10
                f2_local0[7] = 20
                f2_local0[8] = 0
                f2_local0[9] = 30
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 30
                f2_local0[14] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 15
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 15
            f2_local0[5] = 0
            f2_local0[6] = 5
            f2_local0[7] = 10
            f2_local0[8] = 0
            f2_local0[9] = 15
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 10
            f2_local0[14] = 0
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 15
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 15
            f2_local0[5] = 0
            f2_local0[6] = 5
            f2_local0[7] = 10
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 25
            f2_local0[14] = 0
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 15
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 15
            f2_local0[5] = 0
            f2_local0[6] = 5
            f2_local0[7] = 10
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 25
            f2_local0[14] = 0
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        else
            f2_local0[1] = 20
            f2_local0[2] = 20
            f2_local0[3] = 0
            f2_local0[4] = 20
            f2_local0[5] = 0
            f2_local0[6] = 5
            f2_local0[7] = 15
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        end
    elseif f2_local3 >= 3 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 15
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 15
            f2_local0[5] = 0
            f2_local0[6] = 10
            f2_local0[7] = 20
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 10
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 10
            f2_local0[7] = 25
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 15
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 10
            f2_local0[7] = 25
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 15
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        else
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 10
            f2_local0[7] = 25
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 15
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 10
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 40
        f2_local0[7] = 30
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 20
        f2_local0[13] = 0
        f2_local0[14] = 0
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
        f2_local0[5] = 0
        f2_local0[6] = 30
        f2_local0[7] = 30
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 20
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[24] = 10
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 10
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 30
        f2_local0[7] = 30
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 20
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[24] = 10
    else
        f2_local0[1] = 0
        f2_local0[2] = 10
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 30
        f2_local0[7] = 30
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 20
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[24] = 10
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3010, 15, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3011, 40, f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3012, 15, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3013, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3014, 10, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3015, 15, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3017, 5, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3018, 5, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3020, 0, f2_local0[14], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act6)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act7)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act8)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act9)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act14)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, Deracine_Male457000_Act24)
    local f2_local9 = REGIST_FUNC(arg1, arg2, Deracine_Male457000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function Deracine_Male457000_Act1(arg0, arg1, arg2)
    local f3_local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 20
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act2(arg0, arg1, arg2)
    local f4_local0 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 20
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 2
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f4_local7 = 3003
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act3(arg0, arg1, arg2)
    local f5_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 20
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    local f5_local7 = 3004
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act4(arg0, arg1, arg2)
    local f6_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 20
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 2
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    local f6_local7 = 3005
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act5(arg0, arg1, arg2)
    local f7_local0 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 20
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 2
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3010
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act6(arg0, arg1, arg2)
    local f8_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 20
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 2
    local f8_local7 = 3011
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act7(arg0, arg1, arg2)
    local f9_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 20
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 2
    local f9_local7 = 3012
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act8(arg0, arg1, arg2)
    local f10_local0 = 17 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 20
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 2
    local f10_local6 = 2
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3013
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act9(arg0, arg1, arg2)
    local f11_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 20
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 2
    local f11_local6 = 2
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3014
    local f11_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local9 = 0
    local f11_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act10(arg0, arg1, arg2)
    local f12_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 20
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 2
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3015
    local f12_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local9 = 0
    local f12_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act11(arg0, arg1, arg2)
    local f13_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 20
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 2
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3016
    local f13_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local9 = 0
    local f13_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act12(arg0, arg1, arg2)
    local f14_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 20
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 2
    local f14_local6 = 2
    local f14_local7 = 3017
    local f14_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local9 = 0
    local f14_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act13(arg0, arg1, arg2)
    local f15_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = f15_local0 + 0
    local f15_local2 = f15_local0 + 20
    local f15_local3 = 100
    local f15_local4 = 0
    local f15_local5 = 2
    local f15_local6 = 2
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 3018
    local f15_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local9 = 0
    local f15_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act14(arg0, arg1, arg2)
    local f16_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = f16_local0 + 0
    local f16_local2 = f16_local0 + 20
    local f16_local3 = 100
    local f16_local4 = 0
    local f16_local5 = 2
    local f16_local6 = 2
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 3020
    local f16_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f16_local9 = 0
    local f16_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f16_local7, TARGET_ENE_0, f16_local8, f16_local9, f16_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act22(arg0, arg1, arg2)
    local f19_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f19_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Deracine_Male457000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Deracine_Male457000_AfterAttackAct, 10)
    
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
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f25_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3018, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            elseif f25_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3020, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f25_local4 <= 20 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3013, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            elseif f25_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3014, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            elseif f25_local4 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3018, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            elseif f25_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3020, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 20) then
            if f25_local4 <= 20 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3013, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            elseif f25_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3014, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            elseif f25_local4 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3018, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            elseif f25_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3020, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 25) then
            if f25_local4 <= 20 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3013, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            elseif f25_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3014, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            elseif f25_local4 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3018, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            elseif f25_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3020, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 30) then
            if f25_local4 <= 20 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3013, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            elseif f25_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3014, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            elseif f25_local4 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3018, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            elseif f25_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3020, TARGET_ENE_0, f25_local1, 0, 0, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_UseItem) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f25_local4 <= 40 then
                arg2:ClearSubGoal()
                Deracine_Male457000_Act13(arg1, arg2, paramTbl)
                return true
            elseif f25_local4 <= 80 then
                arg2:ClearSubGoal()
                Deracine_Male457000_Act14(arg1, arg2, paramTbl)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f25_local4 <= 20 then
                arg2:ClearSubGoal()
                Deracine_Male457000_Act8(arg1, arg2, paramTbl)
                return true
            elseif f25_local4 <= 40 then
                arg2:ClearSubGoal()
                Deracine_Male457000_Act9(arg1, arg2, paramTbl)
                return true
            elseif f25_local4 <= 60 then
                arg2:ClearSubGoal()
                Deracine_Male457000_Act13(arg1, arg2, paramTbl)
                return true
            elseif f25_local4 <= 80 then
                arg2:ClearSubGoal()
                Deracine_Male457000_Act14(arg1, arg2, paramTbl)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 2) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 5) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 3) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 7) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 3) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 7) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 2) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 5) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 3) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 7) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5032) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 3) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 7) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Deracine_Male457000_AfterAttackAct, "Deracine_Male457000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Deracine_Male457000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


