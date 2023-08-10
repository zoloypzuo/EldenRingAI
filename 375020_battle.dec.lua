RegisterTableGoal(GOAL_RuneEater_375020_Battle, "GOAL_RuneEater_375020_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneEater_375020_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
    arg1:EnableUnfavorableAttackCheck(1000000, 3003)
    arg1:EnableUnfavorableAttackCheck(1000000, 3007)
    arg1:EnableUnfavorableAttackCheck(1000000, 3008)
    arg1:EnableUnfavorableAttackCheck(1000000, 3009)
    arg1:EnableUnfavorableAttackCheck(1000000, 3010)
    arg1:EnableUnfavorableAttackCheck(1000000, 3011)
    
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 10 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14151) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 70
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                    f2_local0[24] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14151) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[20] = 30
                    f2_local0[21] = 20
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                end
            end
        elseif f2_local3 >= 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14151) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 70
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 70
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 70
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                    f2_local0[24] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14151) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 10
                    f2_local0[3] = 40
                    f2_local0[4] = 10
                    f2_local0[20] = 0
                    f2_local0[21] = 20
                    f2_local0[22] = 20
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 10
                    f2_local0[3] = 40
                    f2_local0[4] = 10
                    f2_local0[20] = 0
                    f2_local0[21] = 20
                    f2_local0[22] = 20
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 10
                    f2_local0[3] = 40
                    f2_local0[4] = 10
                    f2_local0[20] = 0
                    f2_local0[21] = 20
                    f2_local0[22] = 20
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 70
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                end
            end
        elseif f2_local3 >= 2 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14151) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 70
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 70
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 70
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 70
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14151) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 35
                    f2_local0[3] = 0
                    f2_local0[4] = 35
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 30
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 10
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 30
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 10
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 70
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14151) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
                f2_local0[21] = 100
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 70
                f2_local0[21] = 30
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 70
                f2_local0[21] = 30
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 70
                f2_local0[21] = 30
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14151) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 40
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 10
                f2_local0[20] = 0
                f2_local0[21] = 40
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 40
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
                f2_local0[21] = 40
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 40
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
                f2_local0[21] = 40
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 70
                f2_local0[21] = 30
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        end
    elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 10 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14151) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 50
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 50
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14151) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[20] = 30
                    f2_local0[21] = 20
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                end
            end
        elseif f2_local3 >= 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14151) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 50
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 50
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 50
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 50
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                    f2_local0[24] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14151) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 15
                    f2_local0[3] = 40
                    f2_local0[4] = 15
                    f2_local0[20] = 0
                    f2_local0[21] = 15
                    f2_local0[22] = 15
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 15
                    f2_local0[3] = 40
                    f2_local0[4] = 15
                    f2_local0[20] = 0
                    f2_local0[21] = 15
                    f2_local0[22] = 15
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 15
                    f2_local0[3] = 40
                    f2_local0[4] = 15
                    f2_local0[20] = 0
                    f2_local0[21] = 15
                    f2_local0[22] = 15
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 70
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                end
            end
        elseif f2_local3 >= 2 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14151) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 35
                    f2_local0[3] = 0
                    f2_local0[4] = 35
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 30
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 10
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 30
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 10
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 70
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14151) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 35
                    f2_local0[3] = 0
                    f2_local0[4] = 35
                    f2_local0[20] = 0
                    f2_local0[21] = 20
                    f2_local0[22] = 10
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 35
                    f2_local0[3] = 0
                    f2_local0[4] = 35
                    f2_local0[20] = 0
                    f2_local0[21] = 20
                    f2_local0[22] = 10
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 35
                    f2_local0[3] = 0
                    f2_local0[4] = 35
                    f2_local0[20] = 0
                    f2_local0[21] = 20
                    f2_local0[22] = 10
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 70
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14151) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 40
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 10
                f2_local0[20] = 0
                f2_local0[21] = 40
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 40
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
                f2_local0[21] = 40
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 40
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
                f2_local0[21] = 40
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 70
                f2_local0[21] = 30
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14151) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 45
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 10
                f2_local0[20] = 0
                f2_local0[21] = 35
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 45
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
                f2_local0[21] = 35
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 45
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
                f2_local0[21] = 35
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 70
                f2_local0[21] = 30
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        if f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 70
                f2_local0[4] = 0
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 40
                f2_local0[4] = 20
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 40
                f2_local0[4] = 20
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 40
                f2_local0[4] = 20
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 70
                f2_local0[21] = 30
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif f2_local3 >= 2 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 30
                f2_local0[3] = 30
                f2_local0[4] = 30
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 30
                f2_local0[3] = 30
                f2_local0[4] = 30
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 30
                f2_local0[3] = 30
                f2_local0[4] = 30
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 70
                f2_local0[21] = 30
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 35
            f2_local0[3] = 20
            f2_local0[4] = 35
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 80
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[20] = 0
            f2_local0[21] = 10
            f2_local0[22] = 10
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 80
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[20] = 0
            f2_local0[21] = 10
            f2_local0[22] = 10
            f2_local0[23] = 0
            f2_local0[24] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[20] = 70
            f2_local0[21] = 30
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        end
    elseif f2_local3 >= 10 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14151) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 70
                f2_local0[4] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14151) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[20] = 20
                f2_local0[21] = 20
                f2_local0[22] = 30
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        end
    elseif f2_local3 >= 5 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14151) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 70
                f2_local0[4] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 70
                f2_local0[4] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 70
                f2_local0[4] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 100
                f2_local0[24] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14151) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 15
                f2_local0[3] = 40
                f2_local0[4] = 15
                f2_local0[20] = 0
                f2_local0[21] = 15
                f2_local0[22] = 15
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 15
                f2_local0[3] = 40
                f2_local0[4] = 15
                f2_local0[20] = 0
                f2_local0[21] = 15
                f2_local0[22] = 15
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 15
                f2_local0[3] = 40
                f2_local0[4] = 15
                f2_local0[20] = 0
                f2_local0[21] = 15
                f2_local0[22] = 15
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 70
                f2_local0[21] = 30
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        end
    elseif f2_local3 >= 2 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14151) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 35
                f2_local0[3] = 0
                f2_local0[4] = 35
                f2_local0[20] = 0
                f2_local0[21] = 30
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 30
                f2_local0[20] = 0
                f2_local0[21] = 30
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 30
                f2_local0[20] = 0
                f2_local0[21] = 30
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 70
                f2_local0[21] = 30
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14151) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 35
                f2_local0[3] = 0
                f2_local0[4] = 35
                f2_local0[20] = 0
                f2_local0[21] = 20
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 30
                f2_local0[20] = 0
                f2_local0[21] = 30
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 30
                f2_local0[20] = 0
                f2_local0[21] = 30
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 70
                f2_local0[21] = 30
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14151) == true then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 40
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[20] = 0
            f2_local0[21] = 40
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 40
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[20] = 0
            f2_local0[21] = 40
            f2_local0[22] = 10
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 40
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[20] = 0
            f2_local0[21] = 40
            f2_local0[22] = 10
            f2_local0[23] = 0
            f2_local0[24] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[20] = 70
            f2_local0[21] = 30
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14151) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 40
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[20] = 0
            f2_local0[21] = 40
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 40
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[20] = 0
            f2_local0[21] = 40
            f2_local0[22] = 10
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 40
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[20] = 0
            f2_local0[21] = 40
            f2_local0[22] = 10
            f2_local0[23] = 0
            f2_local0[24] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[20] = 70
            f2_local0[21] = 30
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3010, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3013, 8, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3014, 20, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3015, 8, f2_local0[4], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RuneEater_375020_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RuneEater_375020_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RuneEater_375020_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RuneEater_375020_Act04)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RuneEater_375020_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, RuneEater_375020_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, RuneEater_375020_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, RuneEater_375020_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, RuneEater_375020_Act24)
    local f2_local9 = REGIST_FUNC(arg1, arg2, RuneEater_375020_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function RuneEater_375020_Act01(arg0, arg1, arg2)
    local f3_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 10
    local f3_local3 = 50
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3010
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local9 = 0
    local f3_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneEater_375020_Act02(arg0, arg1, arg2)
    local f4_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 10
    local f4_local3 = 50
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3013
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneEater_375020_Act03(arg0, arg1, arg2)
    local f5_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 10
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    local f5_local7 = 3014
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneEater_375020_Act04(arg0, arg1, arg2)
    local f6_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 10
    local f6_local3 = 50
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3015
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneEater_375020_Act20(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    if f7_local0 >= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneEater_375020_Act21(arg0, arg1, arg2)
    local f8_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f8_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 30, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneEater_375020_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneEater_375020_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, -1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneEater_375020_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneEater_375020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Template010010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f15_local0 = arg1:GetDist(TARGET_ENE_0)
    local f15_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 0
    local f15_local3 = 0
    local f15_local4 = arg1:GetRandam_Int(1, 100)
    local f15_local5 = arg1:GetHpRate(TARGET_SELF)
    local f15_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f15_local4 <= 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
        if f15_local4 <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
        if f15_local4 <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 999, f15_local2, f15_local3, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
        if f15_local4 <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        else
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_RuneEater_375020_AfterAttackAct, "GOAL_RuneEater_375020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneEater_375020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


