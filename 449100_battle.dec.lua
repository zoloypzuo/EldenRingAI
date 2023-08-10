RegisterTableGoal(GOAL_AlivePotSmall_449100_Battle, "AlivePotSmall_449100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_AlivePotSmall_449100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(2000000, 3000)
    arg1:EnableUnfavorableAttackCheck(2000000, 3001)
    arg1:EnableUnfavorableAttackCheck(2000000, 3002)
    arg1:EnableUnfavorableAttackCheck(2000000, 3003)
    arg1:EnableUnfavorableAttackCheck(2000000, 3005)
    arg1:EnableUnfavorableAttackCheck(2000000, 3006)
    arg1:EnableUnfavorableAttackCheck(3000000, 3000)
    arg1:EnableUnfavorableAttackCheck(3000000, 3001)
    arg1:EnableUnfavorableAttackCheck(3000000, 3002)
    arg1:EnableUnfavorableAttackCheck(3000000, 3003)
    arg1:EnableUnfavorableAttackCheck(3000000, 3005)
    arg1:EnableUnfavorableAttackCheck(3000000, 3006)
    arg1:EnableUnfavorableAttackCheck(4000000, 3000)
    arg1:EnableUnfavorableAttackCheck(4000000, 3001)
    arg1:EnableUnfavorableAttackCheck(4000000, 3002)
    arg1:EnableUnfavorableAttackCheck(4000000, 3003)
    arg1:EnableUnfavorableAttackCheck(4000000, 3005)
    arg1:EnableUnfavorableAttackCheck(4000000, 3006)
    
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
        if arg1:HasSpecialEffectId(TARGET_SELF, 16158) == false and arg1:HasSpecialEffectId(TARGET_SELF, 16160) == false then
            if f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 25
                    f2_local0[21] = 25
                    f2_local0[22] = 50
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 25
                    f2_local0[22] = 25
                    f2_local0[23] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 25
                    f2_local0[22] = 25
                    f2_local0[23] = 50
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 10
                    f2_local0[23] = 90
                end
            elseif f2_local3 > 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 20
                    f2_local0[21] = 20
                    f2_local0[22] = 60
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 25
                    f2_local0[22] = 25
                    f2_local0[23] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 25
                    f2_local0[22] = 25
                    f2_local0[23] = 50
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 10
                    f2_local0[23] = 90
                end
            elseif f2_local3 > 2 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 70
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 20
                    f2_local0[23] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 20
                    f2_local0[23] = 50
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 10
                    f2_local0[23] = 90
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[20] = 0
                f2_local0[21] = 90
                f2_local0[22] = 10
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[20] = 0
                f2_local0[21] = 80
                f2_local0[22] = 10
                f2_local0[23] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[20] = 0
                f2_local0[21] = 80
                f2_local0[22] = 10
                f2_local0[23] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 10
                f2_local0[23] = 90
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16158) == true then
            f2_local0[8] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16160) == true then
            if f2_local3 > 15 then
                f2_local0[21] = 10
                f2_local0[22] = 60
                f2_local0[24] = 30
            else
                f2_local0[7] = 100
            end
        end
    elseif f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16158) == false and arg1:HasSpecialEffectId(TARGET_SELF, 16160) == false then
            if f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 25
                    f2_local0[21] = 25
                    f2_local0[22] = 50
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 25
                    f2_local0[22] = 25
                    f2_local0[23] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 25
                    f2_local0[22] = 25
                    f2_local0[23] = 50
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 10
                    f2_local0[23] = 90
                end
            elseif f2_local3 > 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 30
                    f2_local0[22] = 60
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 25
                    f2_local0[22] = 25
                    f2_local0[23] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 25
                    f2_local0[22] = 25
                    f2_local0[23] = 50
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 10
                    f2_local0[23] = 90
                end
            elseif f2_local3 > 2 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 15
                    f2_local0[2] = 0
                    f2_local0[3] = 15
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 40
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 0
                    f2_local0[3] = 10
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 20
                    f2_local0[22] = 20
                    f2_local0[23] = 40
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 0
                    f2_local0[3] = 10
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 20
                    f2_local0[22] = 20
                    f2_local0[23] = 40
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 10
                    f2_local0[23] = 90
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 0
                f2_local0[5] = 10
                f2_local0[6] = 10
                f2_local0[20] = 0
                f2_local0[21] = 40
                f2_local0[22] = 10
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 0
                f2_local0[5] = 10
                f2_local0[6] = 10
                f2_local0[20] = 0
                f2_local0[21] = 30
                f2_local0[22] = 10
                f2_local0[23] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 0
                f2_local0[5] = 10
                f2_local0[6] = 10
                f2_local0[20] = 0
                f2_local0[21] = 30
                f2_local0[22] = 10
                f2_local0[23] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 10
                f2_local0[23] = 90
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16158) == true then
            f2_local0[8] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16160) == true then
            if f2_local3 > 15 then
                f2_local0[21] = 10
                f2_local0[22] = 60
                f2_local0[24] = 30
            else
                f2_local0[7] = 100
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16158) == false and arg1:HasSpecialEffectId(TARGET_SELF, 16160) == false then
        if f2_local3 > 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 20
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 50
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 20
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 30
                f2_local0[23] = 20
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 20
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 30
                f2_local0[23] = 20
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 20
                f2_local0[23] = 80
            end
        elseif f2_local3 > 2 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 20
                f2_local0[4] = 20
                f2_local0[5] = 10
                f2_local0[6] = 10
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 10
                f2_local0[6] = 10
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 10
                f2_local0[6] = 10
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 30
                f2_local0[23] = 70
            end
        elseif f2_local3 > 1.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 20
                f2_local0[4] = 20
                f2_local0[5] = 10
                f2_local0[6] = 10
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 10
                f2_local0[6] = 10
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 10
                f2_local0[6] = 10
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 30
                f2_local0[23] = 70
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 15
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[6] = 15
            f2_local0[20] = 0
            f2_local0[21] = 10
            f2_local0[22] = 0
            f2_local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 15
            f2_local0[2] = 15
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 15
            f2_local0[6] = 15
            f2_local0[20] = 0
            f2_local0[21] = 10
            f2_local0[22] = 0
            f2_local0[23] = 10
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 15
            f2_local0[2] = 15
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 15
            f2_local0[6] = 15
            f2_local0[20] = 0
            f2_local0[21] = 10
            f2_local0[22] = 0
            f2_local0[23] = 10
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[20] = 0
            f2_local0[21] = 10
            f2_local0[22] = 0
            f2_local0[23] = 90
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16158) == true then
        f2_local0[8] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16160) == true then
        if f2_local3 > 15 then
            f2_local0[21] = 10
            f2_local0[22] = 60
            f2_local0[24] = 30
        else
            f2_local0[7] = 100
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3005, 5, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3007, 999, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3010, 999, f2_local0[8], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, AlivePotSmall_449100_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, AlivePotSmall_449100_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, AlivePotSmall_449100_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, AlivePotSmall_449100_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, AlivePotSmall_449100_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, AlivePotSmall_449100_Act6)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, AlivePotSmall_449100_Act7)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, AlivePotSmall_449100_Act8)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, AlivePotSmall_449100_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, AlivePotSmall_449100_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, AlivePotSmall_449100_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, AlivePotSmall_449100_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, AlivePotSmall_449100_Act24)
    local f2_local8 = REGIST_FUNC(arg1, arg2, AlivePotSmall_449100_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function AlivePotSmall_449100_Act1(arg0, arg1, arg2)
    local f3_local0 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 10
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AlivePotSmall_449100_Act2(arg0, arg1, arg2)
    local f4_local0 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 10
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AlivePotSmall_449100_Act3(arg0, arg1, arg2)
    local f5_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 10
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3002
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AlivePotSmall_449100_Act4(arg0, arg1, arg2)
    local f6_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 10
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3003
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AlivePotSmall_449100_Act5(arg0, arg1, arg2)
    local f7_local0 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 10
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3005
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AlivePotSmall_449100_Act6(arg0, arg1, arg2)
    local f8_local0 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 10
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3006
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AlivePotSmall_449100_Act7(arg0, arg1, arg2)
    local f9_local0 = arg0:GetRandam_Int(1, 100)
    local f9_local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = f9_local1 + 0
    local f9_local3 = f9_local1 + 10
    local f9_local4 = 100
    local f9_local5 = 0
    local f9_local6 = 3
    local f9_local7 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f9_local8 = 3007
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local10 = 0
    local f9_local11 = 0
    if f9_local0 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_ENE_0, 12, TARGET_SELF, false, -1)
        local f9_local12 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
        f9_local12:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    elseif f9_local0 <= 65 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_ENE_0, 15, TARGET_SELF, false, -1)
        local f9_local12 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
        f9_local12:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_ENE_0, 18, TARGET_SELF, false, -1)
        local f9_local12 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
        f9_local12:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AlivePotSmall_449100_Act8(arg0, arg1, arg2)
    local f10_local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 10
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 3
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f10_local7 = 3010
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local9 = 0
    local f10_local10 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AlivePotSmall_449100_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AlivePotSmall_449100_Act21(arg0, arg1, arg2)
    local f12_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f12_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 30, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AlivePotSmall_449100_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AlivePotSmall_449100_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, -1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AlivePotSmall_449100_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AlivePotSmall_449100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_AlivePotSmall_449100_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f19_local0 = arg1:GetDist(TARGET_ENE_0)
    local f19_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f19_local2 = 0
    local f19_local3 = 0
    local f19_local4 = arg1:GetRandam_Int(1, 100)
    local f19_local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 360, 180, 999) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_NONE, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 360, 180, 30) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_SELF, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 360, 180, 100) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_SELF, 999, f19_local2, f19_local3, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 999) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 5) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 999, f19_local2, f19_local3, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 20) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 999, f19_local2, f19_local3, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f19_local4 <= 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
                return true
            else
                return true
            end
        elseif f19_local4 <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
            return true
        else
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_AlivePotSmall_449100_AfterAttackAct, "AlivePotSmall_449100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_AlivePotSmall_449100_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


