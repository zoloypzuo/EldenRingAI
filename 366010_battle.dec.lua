RegisterTableGoal(GOAL_RuneSlaveSpear_366010_Battle, "RuneSlaveSpear_366010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneSlaveSpear_366010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
    arg1:EnableUnfavorableAttackCheck(1000000, 3003)
    arg1:EnableUnfavorableAttackCheck(1000000, 3004)
    arg1:EnableUnfavorableAttackCheck(1000000, 3005)
    arg1:EnableUnfavorableAttackCheck(1000000, 3006)
    arg1:EnableUnfavorableAttackCheck(1000000, 3021)
    
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 > 20 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14703) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 80
                    f2_local0[13] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 20
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 70
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
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
            elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
                f2_local0[23] = 0
            end
        elseif f2_local3 > 10 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14703) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 80
                    f2_local0[13] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 20
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[20] = 60
                    f2_local0[21] = 20
                    f2_local0[22] = 20
                    f2_local0[23] = 0
                else
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 60
                f2_local0[21] = 20
                f2_local0[22] = 20
                f2_local0[23] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
                f2_local0[23] = 0
            end
        elseif f2_local3 > 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14703) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 80
                    f2_local0[13] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 20
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[20] = 30
                    f2_local0[21] = 30
                    f2_local0[22] = 40
                    f2_local0[23] = 0
                else
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 30
                f2_local0[21] = 30
                f2_local0[22] = 40
                f2_local0[23] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
                f2_local0[23] = 0
            end
        elseif f2_local3 > 3.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 40
                    f2_local0[22] = 60
                    f2_local0[23] = 0
                else
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 40
                f2_local0[22] = 60
                f2_local0[23] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
                f2_local0[23] = 0
            end
        elseif f2_local3 > 2.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 70
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                else
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
                f2_local0[23] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
                f2_local0[23] = 0
            end
        elseif f2_local3 > 1.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 70
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                else
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 30
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
                f2_local0[23] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[10] = 0
            f2_local0[11] = 30
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 70
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[20] = 0
            f2_local0[21] = 70
            f2_local0[22] = 30
            f2_local0[23] = 0
        end
    elseif f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 > 20 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14703) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 80
                    f2_local0[13] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 20
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 70
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 30
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
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
            elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 50
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
                f2_local0[23] = 0
            end
        elseif f2_local3 > 10 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14703) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 80
                    f2_local0[13] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 20
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 30
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
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
            elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 50
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
                f2_local0[23] = 0
            end
        elseif f2_local3 > 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14703) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 80
                    f2_local0[13] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 20
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 5
                    f2_local0[2] = 5
                    f2_local0[3] = 0
                    f2_local0[4] = 30
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[15] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 20
                    f2_local0[23] = 0
                else
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 5
                f2_local0[3] = 0
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 40
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 20
                f2_local0[23] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
                f2_local0[23] = 0
            end
        elseif f2_local3 > 3.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 25
                    f2_local0[2] = 25
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[15] = 100
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
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14708) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 25
                    f2_local0[2] = 25
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 10
                    f2_local0[22] = 40
                    f2_local0[23] = 0
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 70
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 25
                f2_local0[2] = 25
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 40
                f2_local0[23] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
                f2_local0[23] = 0
            end
        elseif f2_local3 > 2.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 30
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[15] = 100
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
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14708) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 30
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 20
                    f2_local0[22] = 20
                    f2_local0[23] = 0
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 70
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 20
                f2_local0[22] = 20
                f2_local0[23] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
                f2_local0[23] = 0
            end
        elseif f2_local3 > 1.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
                if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 20
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
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
            elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 20
                f2_local0[10] = 0
                f2_local0[11] = 40
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 20
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
                f2_local0[23] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 10
                f2_local0[6] = 10
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
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
        elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[4] = 0
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[10] = 0
            f2_local0[11] = 30
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 20
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[20] = 0
            f2_local0[21] = 70
            f2_local0[22] = 30
            f2_local0[23] = 0
        end
    elseif f2_local3 > 20 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14703) == true then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 80
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 20
            else
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
                f2_local0[23] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
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
        elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 30
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[10] = 50
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[20] = 0
            f2_local0[21] = 70
            f2_local0[22] = 30
            f2_local0[23] = 0
        end
    elseif f2_local3 > 10 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14703) == true then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 80
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 20
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
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
        elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 30
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[10] = 50
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[20] = 0
            f2_local0[21] = 70
            f2_local0[22] = 30
            f2_local0[23] = 0
        end
    elseif f2_local3 > 5 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14703) == true then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 80
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 20
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 5
                f2_local0[3] = 0
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[15] = 100
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
        elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 5
            f2_local0[2] = 5
            f2_local0[3] = 0
            f2_local0[4] = 30
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[10] = 40
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 20
            f2_local0[23] = 0
        else
            f2_local0[20] = 0
            f2_local0[21] = 70
            f2_local0[22] = 30
            f2_local0[23] = 0
        end
    elseif f2_local3 > 3.5 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 25
                f2_local0[2] = 25
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[15] = 100
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
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14708) == true then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 25
                f2_local0[2] = 25
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 100
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 40
                f2_local0[23] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
                f2_local0[23] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 25
            f2_local0[2] = 25
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 10
            f2_local0[22] = 40
            f2_local0[23] = 0
        else
            f2_local0[20] = 0
            f2_local0[21] = 70
            f2_local0[22] = 30
            f2_local0[23] = 0
        end
    elseif f2_local3 > 2.5 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[15] = 100
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
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14708) == true then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 100
                f2_local0[20] = 0
                f2_local0[21] = 20
                f2_local0[22] = 20
                f2_local0[23] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
                f2_local0[23] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 30
            f2_local0[2] = 30
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 20
            f2_local0[22] = 20
            f2_local0[23] = 0
        else
            f2_local0[20] = 0
            f2_local0[21] = 70
            f2_local0[22] = 30
            f2_local0[23] = 0
        end
    elseif f2_local3 > 1.5 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 20
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[15] = 100
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
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14708) == true then
            if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 20
                f2_local0[10] = 0
                f2_local0[11] = 40
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 100
                f2_local0[20] = 0
                f2_local0[21] = 20
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
                f2_local0[23] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[6] = 20
            f2_local0[10] = 0
            f2_local0[11] = 40
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 20
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[20] = 0
            f2_local0[21] = 70
            f2_local0[22] = 30
            f2_local0[23] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14724) == true then
        if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[4] = 0
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[15] = 100
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
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14708) == true then
        if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[4] = 0
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[10] = 0
            f2_local0[11] = 30
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 100
            f2_local0[20] = 0
            f2_local0[21] = 20
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[20] = 0
            f2_local0[21] = 70
            f2_local0[22] = 30
            f2_local0[23] = 0
        end
    elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 180, 100) then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 30
        f2_local0[4] = 0
        f2_local0[5] = 10
        f2_local0[6] = 10
        f2_local0[10] = 0
        f2_local0[11] = 30
        f2_local0[12] = 0
        f2_local0[13] = 0
        f2_local0[20] = 0
        f2_local0[21] = 20
        f2_local0[22] = 0
        f2_local0[23] = 0
    else
        f2_local0[20] = 0
        f2_local0[21] = 70
        f2_local0[22] = 30
        f2_local0[23] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[6], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3020, 5, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3022, 5, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3023, 5, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3024, 5, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3025, 5, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3021, 10, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3030, 5, f2_local0[12], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3031, 5, f2_local0[12], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3032, 5, f2_local0[12], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3033, 5, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3035, 5, f2_local0[13], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3036, 5, f2_local0[13], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3037, 5, f2_local0[13], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3038, 5, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3026, 10, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3027, 10, f2_local0[15], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RuneSlaveSpear_366010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RuneSlaveSpear_366010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RuneSlaveSpear_366010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RuneSlaveSpear_366010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RuneSlaveSpear_366010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RuneSlaveSpear_366010_Act06)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, RuneSlaveSpear_366010_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, RuneSlaveSpear_366010_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, RuneSlaveSpear_366010_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, RuneSlaveSpear_366010_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, RuneSlaveSpear_366010_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, RuneSlaveSpear_366010_Act15)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RuneSlaveSpear_366010_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, RuneSlaveSpear_366010_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, RuneSlaveSpear_366010_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, RuneSlaveSpear_366010_Act23)
    local f2_local8 = REGIST_FUNC(arg1, arg2, RuneSlaveSpear_366010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function RuneSlaveSpear_366010_Act01(arg0, arg1, arg2)
    local f3_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 5
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 14724) == true then
        f3_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local9 = 0
    local f3_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneSlaveSpear_366010_Act02(arg0, arg1, arg2)
    local f4_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 5
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 14724) == true then
        f4_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneSlaveSpear_366010_Act03(arg0, arg1, arg2)
    local f5_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 10
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    local f5_local7 = 3002
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneSlaveSpear_366010_Act04(arg0, arg1, arg2)
    local f6_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 10
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 14724) == true then
        f6_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3003
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneSlaveSpear_366010_Act05(arg0, arg1, arg2)
    local f7_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 10
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 14724) == true then
        f7_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3004
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneSlaveSpear_366010_Act06(arg0, arg1, arg2)
    local f8_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 10
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 14724) == true then
        f8_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3005
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneSlaveSpear_366010_Act10(arg0, arg1, arg2)
    local f9_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 5
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3020
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local9 = 0
    local f9_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14704) == true then
        if arg0:HasSpecialEffectId(TARGET_SELF, 14702) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 14705) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 14706) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14704) == false then
        if arg0:HasSpecialEffectId(TARGET_SELF, 14702) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 14705) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 14706) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneSlaveSpear_366010_Act11(arg0, arg1, arg2)
    local f10_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 10
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 3
    local f10_local7 = 3021
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneSlaveSpear_366010_Act12(arg0, arg1, arg2)
    local f11_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 10
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 3
    local f11_local7 = 3030
    local f11_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local9 = 0
    local f11_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14702) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3031, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14705) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3032, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14706) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3033, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3030, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneSlaveSpear_366010_Act13(arg0, arg1, arg2)
    local f12_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 10
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 3
    local f12_local6 = 3
    local f12_local7 = 3035
    local f12_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local9 = 0
    local f12_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14702) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3036, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14705) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3037, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14706) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3038, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3035, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneSlaveSpear_366010_Act14(arg0, arg1, arg2)
    local f13_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 10
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 3
    local f13_local6 = 3
    local f13_local7 = 3026
    local f13_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local9 = 0
    local f13_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneSlaveSpear_366010_Act15(arg0, arg1, arg2)
    local f14_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 10
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 3
    local f14_local6 = 3
    local f14_local7 = 3027
    local f14_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local9 = 0
    local f14_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneSlaveSpear_366010_Act20(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    if f15_local0 >= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 15, TARGET_ENE_0, false, -1)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14724) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneSlaveSpear_366010_Act21(arg0, arg1, arg2)
    local f16_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f16_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneSlaveSpear_366010_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneSlaveSpear_366010_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneSlaveSpear_366010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RuneSlaveSpear_366010_AfterAttackAct, 10)
    
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
    local f22_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14703) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14703) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                if f22_local4 <= 50 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14704) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 14702) == true then
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                            return true
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14705) == true then
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                            return true
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14706) == true then
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                            return true
                        else
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                            return true
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14704) == false then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 14702) == true then
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                            return true
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14705) == true then
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                            return true
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14706) == true then
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                            return true
                        else
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                            return true
                        end
                    end
                elseif f22_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
                if f22_local4 <= 70 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
        if f22_local4 <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
        if f22_local4 <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2.5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2.5) then
            if f22_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if f22_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f22_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f22_local4 <= 20 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14704) == true then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14702) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14705) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14706) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14704) == false then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14702) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14705) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                        return true
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14706) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, f22_local2, f22_local3, 0, 0)
                        return true
                    end
                end
            else
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_RuneSlaveSpear_366010_AfterAttackAct, "RuneSlaveSpear_366010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneSlaveSpear_366010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


