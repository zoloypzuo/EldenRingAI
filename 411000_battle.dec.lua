RegisterTableGoal(GOAL_DemiHumanRunt_411000_Battle, "DemiHumanRunt_411000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DemiHumanRunt_411000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10531)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10571)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10573)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10532) == true then
        if f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 50
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 50
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 0
                f2_local0[37] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 50
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif f2_local3 > 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 50
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 30
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 20
                f2_local0[37] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 50
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif f2_local3 > 1.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 50
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 30
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 20
                f2_local0[37] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 50
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 50
            f2_local0[2] = 30
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[21] = 0
            f2_local0[23] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
            f2_local0[37] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 50
            f2_local0[2] = 30
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[21] = 0
            f2_local0[23] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
            f2_local0[37] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 50
            f2_local0[2] = 30
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[21] = 0
            f2_local0[23] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
            f2_local0[37] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[21] = 0
            f2_local0[23] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 50
            f2_local0[35] = 0
            f2_local0[36] = 50
            f2_local0[37] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10532) == false then
        if f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if arg1:HasSpecialEffectId(TARGET_SELF, 10573) == true then
                f2_local0[21] = 10
                f2_local0[23] = 10
                f2_local0[30] = 30
                f2_local0[31] = 30
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
                f2_local0[37] = 0
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10531) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10571) == true then
                f2_local0[21] = 10
                f2_local0[23] = 10
                f2_local0[30] = 30
                f2_local0[31] = 30
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
                f2_local0[37] = 0
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10531) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10571) == false then
                f2_local0[21] = 10
                f2_local0[23] = 10
                f2_local0[30] = 20
                f2_local0[31] = 20
                f2_local0[32] = 10
                f2_local0[33] = 10
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
                f2_local0[37] = 0
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10531) == false and f2_local3 < 100 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[21] = 50
                    f2_local0[23] = 50
                else
                    f2_local0[30] = 100
                end
            end
        elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if arg1:HasSpecialEffectId(TARGET_SELF, 10573) == true then
                f2_local0[21] = 10
                f2_local0[23] = 10
                f2_local0[30] = 30
                f2_local0[31] = 30
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
                f2_local0[37] = 0
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10531) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10571) == true then
                f2_local0[21] = 10
                f2_local0[23] = 10
                f2_local0[30] = 30
                f2_local0[31] = 30
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
                f2_local0[37] = 0
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10531) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10571) == false then
                f2_local0[21] = 10
                f2_local0[23] = 10
                f2_local0[30] = 15
                f2_local0[31] = 20
                f2_local0[32] = 10
                f2_local0[33] = 15
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
                f2_local0[37] = 0
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10531) == false and f2_local3 < 100 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[21] = 50
                    f2_local0[23] = 50
                else
                    f2_local0[30] = 100
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
            if arg1:HasSpecialEffectId(TARGET_SELF, 10531) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10571) == true then
                if f2_local3 > 10 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 30
                        f2_local0[3] = 100
                        f2_local0[4] = 0
                        f2_local0[21] = 10
                        f2_local0[23] = 10
                        f2_local0[30] = 0
                        f2_local0[31] = 50
                        f2_local0[32] = 0
                        f2_local0[33] = 0
                        f2_local0[34] = 0
                        f2_local0[35] = 0
                        f2_local0[36] = 0
                        f2_local0[37] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[21] = 0
                        f2_local0[23] = 0
                        f2_local0[30] = 0
                        f2_local0[31] = 50
                        f2_local0[32] = 0
                        f2_local0[33] = 0
                        f2_local0[34] = 0
                        f2_local0[35] = 0
                        f2_local0[36] = 50
                        f2_local0[37] = 0
                    end
                elseif f2_local3 > 5 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 30
                        f2_local0[3] = 100
                        f2_local0[4] = 0
                        f2_local0[21] = 10
                        f2_local0[23] = 10
                        f2_local0[30] = 0
                        f2_local0[31] = 30
                        f2_local0[32] = 0
                        f2_local0[33] = 0
                        f2_local0[34] = 0
                        f2_local0[35] = 0
                        f2_local0[36] = 20
                        f2_local0[37] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[21] = 0
                        f2_local0[23] = 0
                        f2_local0[30] = 0
                        f2_local0[31] = 50
                        f2_local0[32] = 0
                        f2_local0[33] = 0
                        f2_local0[34] = 0
                        f2_local0[35] = 0
                        f2_local0[36] = 50
                        f2_local0[37] = 0
                    end
                elseif f2_local3 > 1.5 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 30
                        f2_local0[3] = 100
                        f2_local0[4] = 0
                        f2_local0[21] = 10
                        f2_local0[23] = 10
                        f2_local0[30] = 0
                        f2_local0[31] = 30
                        f2_local0[32] = 0
                        f2_local0[33] = 0
                        f2_local0[34] = 0
                        f2_local0[35] = 0
                        f2_local0[36] = 20
                        f2_local0[37] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[21] = 0
                        f2_local0[23] = 0
                        f2_local0[30] = 0
                        f2_local0[31] = 50
                        f2_local0[32] = 0
                        f2_local0[33] = 0
                        f2_local0[34] = 0
                        f2_local0[35] = 0
                        f2_local0[36] = 50
                        f2_local0[37] = 0
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 30
                    f2_local0[3] = 100
                    f2_local0[4] = 0
                    f2_local0[21] = 0
                    f2_local0[23] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 10
                    f2_local0[36] = 10
                    f2_local0[37] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 30
                    f2_local0[3] = 100
                    f2_local0[4] = 0
                    f2_local0[21] = 0
                    f2_local0[23] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 10
                    f2_local0[36] = 10
                    f2_local0[37] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 30
                    f2_local0[3] = 100
                    f2_local0[4] = 0
                    f2_local0[21] = 0
                    f2_local0[23] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 10
                    f2_local0[36] = 10
                    f2_local0[37] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[21] = 0
                    f2_local0[23] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 50
                    f2_local0[35] = 0
                    f2_local0[36] = 50
                    f2_local0[37] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10531) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10571) == false then
                if f2_local3 > 10 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 30
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[21] = 10
                        f2_local0[23] = 10
                        f2_local0[30] = 0
                        f2_local0[31] = 50
                        f2_local0[32] = 0
                        f2_local0[33] = 0
                        f2_local0[34] = 0
                        f2_local0[35] = 0
                        f2_local0[36] = 0
                        f2_local0[37] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[21] = 0
                        f2_local0[23] = 0
                        f2_local0[30] = 0
                        f2_local0[31] = 50
                        f2_local0[32] = 0
                        f2_local0[33] = 0
                        f2_local0[34] = 0
                        f2_local0[35] = 0
                        f2_local0[36] = 50
                        f2_local0[37] = 0
                    end
                elseif f2_local3 > 5 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 30
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[21] = 10
                        f2_local0[23] = 10
                        f2_local0[30] = 0
                        f2_local0[31] = 30
                        f2_local0[32] = 0
                        f2_local0[33] = 0
                        f2_local0[34] = 0
                        f2_local0[35] = 0
                        f2_local0[36] = 20
                        f2_local0[37] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[21] = 0
                        f2_local0[23] = 0
                        f2_local0[30] = 0
                        f2_local0[31] = 50
                        f2_local0[32] = 0
                        f2_local0[33] = 0
                        f2_local0[34] = 0
                        f2_local0[35] = 0
                        f2_local0[36] = 50
                        f2_local0[37] = 0
                    end
                elseif f2_local3 > 1.5 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 30
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[21] = 10
                        f2_local0[23] = 10
                        f2_local0[30] = 0
                        f2_local0[31] = 30
                        f2_local0[32] = 0
                        f2_local0[33] = 0
                        f2_local0[34] = 0
                        f2_local0[35] = 0
                        f2_local0[36] = 20
                        f2_local0[37] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[21] = 0
                        f2_local0[23] = 0
                        f2_local0[30] = 0
                        f2_local0[31] = 50
                        f2_local0[32] = 0
                        f2_local0[33] = 0
                        f2_local0[34] = 0
                        f2_local0[35] = 0
                        f2_local0[36] = 50
                        f2_local0[37] = 0
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[21] = 0
                    f2_local0[23] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 10
                    f2_local0[36] = 10
                    f2_local0[37] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[21] = 0
                    f2_local0[23] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 10
                    f2_local0[36] = 10
                    f2_local0[37] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[21] = 0
                    f2_local0[23] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 10
                    f2_local0[36] = 10
                    f2_local0[37] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[21] = 0
                    f2_local0[23] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 50
                    f2_local0[35] = 0
                    f2_local0[36] = 50
                    f2_local0[37] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 10531) == false and arg1:HasSpecialEffectId(TARGET_SELF, 10579) == false and f2_local3 < 100 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[21] = 50
                    f2_local0[23] = 50
                else
                    f2_local0[30] = 100
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10573) == true then
            if f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 100
                    f2_local0[4] = 150
                    f2_local0[21] = 10
                    f2_local0[23] = 10
                    f2_local0[30] = 0
                    f2_local0[31] = 50
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 0
                    f2_local0[37] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[21] = 0
                    f2_local0[23] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 50
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 50
                    f2_local0[37] = 0
                end
            elseif f2_local3 > 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 100
                    f2_local0[4] = 150
                    f2_local0[21] = 10
                    f2_local0[23] = 10
                    f2_local0[30] = 0
                    f2_local0[31] = 30
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 20
                    f2_local0[37] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[21] = 0
                    f2_local0[23] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 50
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 50
                    f2_local0[37] = 0
                end
            elseif f2_local3 > 1.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 100
                    f2_local0[4] = 150
                    f2_local0[21] = 10
                    f2_local0[23] = 10
                    f2_local0[30] = 0
                    f2_local0[31] = 30
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 20
                    f2_local0[37] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[21] = 0
                    f2_local0[23] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 50
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 50
                    f2_local0[37] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 50
                f2_local0[2] = 30
                f2_local0[3] = 100
                f2_local0[4] = 150
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
                f2_local0[37] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 50
                f2_local0[2] = 30
                f2_local0[3] = 100
                f2_local0[4] = 150
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
                f2_local0[37] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 50
                f2_local0[2] = 30
                f2_local0[3] = 100
                f2_local0[4] = 150
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
                f2_local0[37] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 50
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10531) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10571) == true then
            if f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 100
                    f2_local0[4] = 0
                    f2_local0[21] = 10
                    f2_local0[23] = 10
                    f2_local0[30] = 0
                    f2_local0[31] = 50
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 0
                    f2_local0[37] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[21] = 0
                    f2_local0[23] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 50
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 50
                    f2_local0[37] = 0
                end
            elseif f2_local3 > 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 100
                    f2_local0[4] = 0
                    f2_local0[21] = 10
                    f2_local0[23] = 10
                    f2_local0[30] = 0
                    f2_local0[31] = 30
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 20
                    f2_local0[37] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[21] = 0
                    f2_local0[23] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 50
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 50
                    f2_local0[37] = 0
                end
            elseif f2_local3 > 1.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 100
                    f2_local0[4] = 0
                    f2_local0[21] = 10
                    f2_local0[23] = 10
                    f2_local0[30] = 0
                    f2_local0[31] = 30
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 20
                    f2_local0[37] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[21] = 0
                    f2_local0[23] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 50
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 50
                    f2_local0[37] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 50
                f2_local0[2] = 30
                f2_local0[3] = 100
                f2_local0[4] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
                f2_local0[37] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 50
                f2_local0[2] = 30
                f2_local0[3] = 100
                f2_local0[4] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
                f2_local0[37] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 50
                f2_local0[2] = 30
                f2_local0[3] = 100
                f2_local0[4] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
                f2_local0[37] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 50
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10531) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10571) == false then
            if f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[21] = 10
                    f2_local0[23] = 10
                    f2_local0[30] = 0
                    f2_local0[31] = 50
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 0
                    f2_local0[37] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[21] = 0
                    f2_local0[23] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 50
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 50
                    f2_local0[37] = 0
                end
            elseif f2_local3 > 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[21] = 10
                    f2_local0[23] = 10
                    f2_local0[30] = 0
                    f2_local0[31] = 30
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 20
                    f2_local0[37] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[21] = 0
                    f2_local0[23] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 50
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 50
                    f2_local0[37] = 0
                end
            elseif f2_local3 > 1.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[21] = 10
                    f2_local0[23] = 10
                    f2_local0[30] = 0
                    f2_local0[31] = 30
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 20
                    f2_local0[37] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[21] = 0
                    f2_local0[23] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 50
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 50
                    f2_local0[37] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 50
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
                f2_local0[37] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 50
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
                f2_local0[37] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 50
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
                f2_local0[37] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[21] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 50
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10531) == false and arg1:HasSpecialEffectId(TARGET_SELF, 10579) == false then
            if f2_local3 < 100 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[21] = 50
                    f2_local0[23] = 50
                else
                    f2_local0[30] = 100
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10531) == false and arg1:HasSpecialEffectId(TARGET_SELF, 10579) == true and f2_local3 < 100 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[2] = 100
            else
                f2_local0[30] = 100
            end
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3005, 15, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[4], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3022, 15, f2_local0[21], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3025, 15, f2_local0[21], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3025, 15, f2_local0[23], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3022, 15, f2_local0[23], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, DemiHumanRunt_411000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, DemiHumanRunt_411000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, DemiHumanRunt_411000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, DemiHumanRunt_411000_Act04)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, DemiHumanRunt_411000_Act21)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, DemiHumanRunt_411000_Act23)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, DemiHumanRunt_411000_Act28)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, DemiHumanRunt_411000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, DemiHumanRunt_411000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, DemiHumanRunt_411000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, DemiHumanRunt_411000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, DemiHumanRunt_411000_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, DemiHumanRunt_411000_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, DemiHumanRunt_411000_Act36)
    f2_local1[37] = REGIST_FUNC(arg1, arg2, DemiHumanRunt_411000_Act37)
    local f2_local9 = REGIST_FUNC(arg1, arg2, DemiHumanRunt_411000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function DemiHumanRunt_411000_Act01(arg0, arg1, arg2)
    local f3_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 50
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3001
    local f3_local8 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanRunt_411000_Act02(arg0, arg1, arg2)
    local f4_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 50
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 2
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f4_local7 = 3003
    local f4_local8 = 3004
    local f4_local9 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local8, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanRunt_411000_Act03(arg0, arg1, arg2)
    local f5_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 50
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3005
    local f5_local8 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanRunt_411000_Act04(arg0, arg1, arg2)
    local f6_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 50
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 2
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3011
    local f6_local8 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanRunt_411000_Act21(arg0, arg1, arg2)
    local f7_local0 = 3022
    local f7_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local2 = 0
    local f7_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local0, TARGET_ENE_0, f7_local1, f7_local2, f7_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanRunt_411000_Act23(arg0, arg1, arg2)
    local f8_local0 = 3025
    local f8_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local2 = 0
    local f8_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanRunt_411000_Act28(arg0, arg1, arg2)
    local f9_local0 = 3039
    local f9_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local2 = 0
    local f9_local3 = 360
    local f9_local4 = arg0:GetRandam_Int(1, 100)
    if f9_local4 <= 35 then
        local f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3, 0, 0)
    elseif f9_local4 <= 70 then
        local f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3, 0, 0)
    else
        local f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f9_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f9_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanRunt_411000_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanRunt_411000_Act31(arg0, arg1, arg2)
    local f11_local0 = arg0:GetRandam_Int(1, 100)
    if f11_local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(2, 4), TARGET_ENE_0, 3, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, arg0:GetRandam_Int(5, 8))
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(2, 4), TARGET_ENE_0, 3, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, arg0:GetRandam_Int(5, 8))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanRunt_411000_Act32(arg0, arg1, arg2)
    local f12_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f12_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanRunt_411000_Act33(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanRunt_411000_Act34(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, -1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanRunt_411000_Act35(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanRunt_411000_Act36(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanRunt_411000_Act37(arg0, arg1, arg2)
    local f17_local0 = 6011
    local f17_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f17_local2 = 0
    local f17_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f17_local0, TARGET_ENE_0, f17_local1, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHumanRunt_411000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DemiHumanRunt_411000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f21_local0 = arg1:GetDist(TARGET_ENE_0)
    local f21_local1 = 2.5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f21_local2 = 0
    local f21_local3 = 0
    local f21_local4 = arg1:GetRandam_Int(1, 100)
    local f21_local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    return false
    
end

RegisterTableGoal(GOAL_DemiHumanRunt_411000_AfterAttackAct, "DemiHumanRunt_411000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DemiHumanRunt_411000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


