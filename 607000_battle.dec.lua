RegisterTableGoal(GOAL_Wildguillemots607000_Battle, "GOAL_Wildguillemots607000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Wildguillemots607000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local5 < 1 then
            f2_local0[1] = 100
        elseif f2_local3 >= 20 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            else
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            end
        elseif f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            else
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            end
        elseif f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            else
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            end
        elseif f2_local3 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            else
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        else
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        end
    elseif f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local5 < 1 then
            f2_local0[1] = 100
        elseif f2_local3 >= 20 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            else
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            end
        elseif f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            else
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            end
        elseif f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            else
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            end
        elseif f2_local3 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            else
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 15
                f2_local0[5] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 30
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        else
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        end
    elseif f2_local5 < 1 then
        f2_local0[1] = 100
    elseif f2_local3 >= 20 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        else
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        end
    elseif f2_local3 >= 15 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        else
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        end
    elseif f2_local3 >= 10 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        else
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        end
    elseif f2_local3 >= 5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        else
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
            f2_local0[24] = 30
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
        f2_local0[2] = 15
        f2_local0[3] = 15
        f2_local0[4] = 15
        f2_local0[5] = 15
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 10
        f2_local0[24] = 30
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
        f2_local0[2] = 15
        f2_local0[3] = 15
        f2_local0[4] = 15
        f2_local0[5] = 15
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 10
        f2_local0[24] = 30
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
        f2_local0[2] = 15
        f2_local0[3] = 15
        f2_local0[4] = 15
        f2_local0[5] = 15
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 10
        f2_local0[24] = 30
    else
        f2_local0[2] = 15
        f2_local0[3] = 15
        f2_local0[4] = 15
        f2_local0[5] = 15
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 10
        f2_local0[24] = 30
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3020, 20, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3021, 20, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3022, 20, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3023, 20, f2_local0[5], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Wildguillemots607000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Wildguillemots607000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Wildguillemots607000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Wildguillemots607000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Wildguillemots607000_Act05)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, Wildguillemots607000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Wildguillemots607000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, Wildguillemots607000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, Wildguillemots607000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, Wildguillemots607000_Act24)
    local f2_local8 = REGIST_FUNC(arg1, arg2, Wildguillemots607000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function Wildguillemots607000_Act01(arg0, arg1, arg2)
    local f3_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 10
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildguillemots607000_Act02(arg0, arg1, arg2)
    local f4_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 10
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f4_local7 = 3020
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildguillemots607000_Act03(arg0, arg1, arg2)
    local f5_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 10
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f5_local7 = 3021
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildguillemots607000_Act04(arg0, arg1, arg2)
    local f6_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 10
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f6_local7 = 3022
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildguillemots607000_Act05(arg0, arg1, arg2)
    local f7_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 10
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f7_local7 = 3023
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 50, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildguillemots607000_Act20(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildguillemots607000_Act21(arg0, arg1, arg2)
    local f9_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f9_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 30, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildguillemots607000_Act22(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, -1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildguillemots607000_Act23(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(4, 5), TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildguillemots607000_Act24(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 1, 7, true, -1, 0, 1, false, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wildguillemots607000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Wildguillemots607000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f16_local0 = arg1:GetDist(TARGET_ENE_0)
    local f16_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 0
    local f16_local4 = arg1:GetRandam_Int(1, 100)
    local f16_local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 4) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_SELF)
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 120, 180, 50) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_L, 120, 180, 50) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 120, 180, 50) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_F, 120, 180, 5) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_L, 120, 180, 5) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_R, 120, 180, 5) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_B, 120, 180, 5) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_F, 120, 180, 10) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_L, 120, 180, 10) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_R, 120, 180, 10) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_B, 120, 180, 10) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_F, 120, 180, 20) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.7, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_L, 120, 180, 20) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.7, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_R, 120, 180, 20) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.7, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_B, 120, 180, 20) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.7, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_F, 120, 180, 30) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.9, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_L, 120, 180, 30) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.9, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_R, 120, 180, 30) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.9, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_B, 120, 180, 30) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.9, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_F, 120, 180, 40) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 1.1, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_L, 120, 180, 40) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 1.1, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_R, 120, 180, 40) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 1.1, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_SOUND, AI_DIR_TYPE_B, 120, 180, 40) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 1.1, TARGET_SELF)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 50) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 50, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_Wildguillemots607000_AfterAttackAct, "GOAL_Wildguillemots607000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Wildguillemots607000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


