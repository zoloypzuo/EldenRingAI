RegisterTableGoal(GOAL_Destructionsinto_438000_Battle, "GOAL_Destructionsinto_438000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Destructionsinto_438000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 20 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[7] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 100
                    else
                        f2_local0[7] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 10
                        f2_local0[3] = 0
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 10
                        f2_local0[9] = 0
                        f2_local0[20] = 70
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[6] = 50
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 50
                    else
                        f2_local0[6] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 10
                        f2_local0[3] = 0
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[6] = 20
                        f2_local0[8] = 10
                        f2_local0[9] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                end
            end
        elseif f2_local3 > 15 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[7] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 100
                    else
                        f2_local0[7] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 10
                        f2_local0[3] = 0
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 10
                        f2_local0[9] = 0
                        f2_local0[20] = 70
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[6] = 50
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 50
                    else
                        f2_local0[6] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                end
            end
        elseif f2_local3 > 10 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[7] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 100
                    else
                        f2_local0[7] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 30
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 20
                        f2_local0[21] = 20
                        f2_local0[22] = 30
                        f2_local0[23] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[6] = 50
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 50
                    else
                        f2_local0[6] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 40
                        f2_local0[21] = 40
                        f2_local0[22] = 30
                        f2_local0[23] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                end
            end
        elseif f2_local3 > 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[7] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 100
                    else
                        f2_local0[7] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 20
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 20
                        f2_local0[21] = 20
                        f2_local0[22] = 40
                        f2_local0[23] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 40
                        f2_local0[22] = 40
                        f2_local0[23] = 30
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 40
                        f2_local0[22] = 40
                        f2_local0[23] = 30
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 40
                        f2_local0[22] = 40
                        f2_local0[23] = 30
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[6] = 50
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 50
                    else
                        f2_local0[6] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 20
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 20
                        f2_local0[21] = 30
                        f2_local0[22] = 30
                        f2_local0[23] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 30
                        f2_local0[22] = 30
                        f2_local0[23] = 40
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 30
                        f2_local0[22] = 30
                        f2_local0[23] = 40
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 30
                        f2_local0[22] = 30
                        f2_local0[23] = 40
                    end
                end
            end
        elseif f2_local3 >= 3 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                else
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                else
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                end
            end
        elseif f2_local3 >= 1 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 20
                    f2_local0[2] = 10
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 20
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 20
                    f2_local0[2] = 10
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 20
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 20
                    f2_local0[2] = 10
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 20
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 20
                    f2_local0[3] = 30
                    f2_local0[4] = 20
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 10
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 20
                    f2_local0[2] = 10
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 10
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 20
                    f2_local0[2] = 10
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 10
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 20
                    f2_local0[2] = 10
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 10
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 20
                    f2_local0[3] = 30
                    f2_local0[4] = 20
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 10
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[7] = 0
                f2_local0[8] = 30
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 0
                f2_local0[3] = 35
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[7] = 0
                f2_local0[8] = 35
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 0
                f2_local0[3] = 35
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[7] = 0
                f2_local0[8] = 35
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 40
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[7] = 0
                f2_local0[8] = 40
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 20
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[8] = 30
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 0
                f2_local0[3] = 35
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 35
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 0
                f2_local0[3] = 35
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 35
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 40
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 40
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 20
            end
        end
    elseif f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 20 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[7] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 100
                    else
                        f2_local0[7] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 10
                        f2_local0[3] = 0
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 10
                        f2_local0[9] = 0
                        f2_local0[20] = 70
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[6] = 50
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 50
                    else
                        f2_local0[6] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 10
                        f2_local0[3] = 0
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[6] = 20
                        f2_local0[8] = 10
                        f2_local0[9] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                end
            end
        elseif f2_local3 > 15 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[7] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 100
                    else
                        f2_local0[7] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 10
                        f2_local0[3] = 0
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 10
                        f2_local0[9] = 0
                        f2_local0[20] = 70
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[6] = 50
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 50
                    else
                        f2_local0[6] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                end
            end
        elseif f2_local3 > 10 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[7] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 100
                    else
                        f2_local0[7] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 30
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 20
                        f2_local0[21] = 20
                        f2_local0[22] = 30
                        f2_local0[23] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[6] = 50
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 50
                    else
                        f2_local0[6] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 40
                        f2_local0[21] = 40
                        f2_local0[22] = 30
                        f2_local0[23] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                end
            end
        elseif f2_local3 > 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[7] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 100
                    else
                        f2_local0[7] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 20
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 20
                        f2_local0[21] = 20
                        f2_local0[22] = 40
                        f2_local0[23] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 40
                        f2_local0[22] = 40
                        f2_local0[23] = 30
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 40
                        f2_local0[22] = 40
                        f2_local0[23] = 30
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 40
                        f2_local0[22] = 40
                        f2_local0[23] = 30
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[6] = 50
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 50
                    else
                        f2_local0[6] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 20
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 20
                        f2_local0[21] = 30
                        f2_local0[22] = 30
                        f2_local0[23] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 30
                        f2_local0[22] = 30
                        f2_local0[23] = 40
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 30
                        f2_local0[22] = 30
                        f2_local0[23] = 40
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 30
                        f2_local0[22] = 30
                        f2_local0[23] = 40
                    end
                end
            end
        elseif f2_local3 >= 3 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                else
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                else
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                end
            end
        elseif f2_local3 >= 1 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 20
                    f2_local0[2] = 10
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 20
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 20
                    f2_local0[2] = 10
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 20
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 20
                    f2_local0[2] = 10
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 20
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 20
                    f2_local0[3] = 30
                    f2_local0[4] = 20
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 10
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 20
                    f2_local0[2] = 10
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 10
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 20
                    f2_local0[2] = 10
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 10
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 20
                    f2_local0[2] = 10
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 10
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 20
                    f2_local0[3] = 30
                    f2_local0[4] = 20
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 10
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[7] = 0
                f2_local0[8] = 30
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 0
                f2_local0[3] = 35
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[7] = 0
                f2_local0[8] = 35
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 0
                f2_local0[3] = 35
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[7] = 0
                f2_local0[8] = 35
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 40
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[7] = 0
                f2_local0[8] = 40
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 20
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[8] = 30
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 0
                f2_local0[3] = 35
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 35
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 0
                f2_local0[3] = 35
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 35
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 40
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 40
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 20
            end
        end
    elseif f2_local3 >= 20 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[7] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 100
                else
                    f2_local0[7] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 10
                    f2_local0[20] = 60
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[6] = 70
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                else
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 40
                    f2_local0[8] = 10
                    f2_local0[9] = 10
                    f2_local0[20] = 20
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                end
            end
        end
    elseif f2_local3 > 15 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[7] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 100
                else
                    f2_local0[7] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 30
                    f2_local0[20] = 40
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[6] = 70
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                else
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 30
                    f2_local0[8] = 0
                    f2_local0[9] = 30
                    f2_local0[20] = 40
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                end
            end
        end
    elseif f2_local3 > 10 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[7] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 100
                else
                    f2_local0[7] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 30
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 30
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[6] = 70
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                else
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 40
                    f2_local0[8] = 0
                    f2_local0[9] = 20
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                end
            end
        end
    elseif f2_local3 > 5 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[7] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 100
                else
                    f2_local0[7] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[7] = 30
                    f2_local0[8] = 0
                    f2_local0[9] = 30
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 40
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[7] = 30
                    f2_local0[8] = 0
                    f2_local0[9] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 10
                    f2_local0[22] = 30
                    f2_local0[23] = 10
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[7] = 30
                    f2_local0[8] = 0
                    f2_local0[9] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 10
                    f2_local0[22] = 30
                    f2_local0[23] = 10
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[7] = 30
                    f2_local0[8] = 0
                    f2_local0[9] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 10
                    f2_local0[22] = 30
                    f2_local0[23] = 10
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15655) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[6] = 70
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                else
                    f2_local0[6] = 70
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 30
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15655) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 30
                    f2_local0[8] = 0
                    f2_local0[9] = 30
                    f2_local0[20] = 0
                    f2_local0[21] = 10
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 30
                    f2_local0[8] = 0
                    f2_local0[9] = 30
                    f2_local0[20] = 0
                    f2_local0[21] = 10
                    f2_local0[22] = 20
                    f2_local0[23] = 10
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 30
                    f2_local0[8] = 0
                    f2_local0[9] = 30
                    f2_local0[20] = 0
                    f2_local0[21] = 10
                    f2_local0[22] = 20
                    f2_local0[23] = 10
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 30
                    f2_local0[8] = 0
                    f2_local0[9] = 30
                    f2_local0[20] = 0
                    f2_local0[21] = 10
                    f2_local0[22] = 20
                    f2_local0[23] = 10
                end
            end
        end
    elseif f2_local3 >= 3 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[7] = 30
                f2_local0[8] = 10
                f2_local0[9] = 20
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[7] = 40
                f2_local0[8] = 10
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 0
                f2_local0[23] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[7] = 40
                f2_local0[8] = 10
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 0
                f2_local0[23] = 10
            else
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[7] = 40
                f2_local0[8] = 10
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 0
                f2_local0[23] = 10
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 30
                f2_local0[8] = 10
                f2_local0[9] = 20
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 40
                f2_local0[8] = 10
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 0
                f2_local0[23] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 40
                f2_local0[8] = 10
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 0
                f2_local0[23] = 10
            else
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 40
                f2_local0[8] = 10
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 0
                f2_local0[23] = 10
            end
        end
    elseif f2_local3 >= 1 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 5
                f2_local0[3] = 20
                f2_local0[4] = 5
                f2_local0[5] = 0
                f2_local0[7] = 30
                f2_local0[8] = 20
                f2_local0[9] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 5
                f2_local0[3] = 20
                f2_local0[4] = 5
                f2_local0[5] = 0
                f2_local0[7] = 30
                f2_local0[8] = 20
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 5
                f2_local0[3] = 20
                f2_local0[4] = 5
                f2_local0[5] = 0
                f2_local0[7] = 30
                f2_local0[8] = 20
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 15
                f2_local0[3] = 20
                f2_local0[4] = 15
                f2_local0[5] = 0
                f2_local0[7] = 0
                f2_local0[8] = 20
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 30
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 10
                f2_local0[3] = 20
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 30
                f2_local0[9] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 10
                f2_local0[3] = 20
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 30
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 10
                f2_local0[3] = 20
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 30
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 30
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 20
                f2_local0[9] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15659) == true then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[7] = 0
            f2_local0[8] = 30
            f2_local0[9] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 20
            f2_local0[2] = 0
            f2_local0[3] = 35
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[7] = 0
            f2_local0[8] = 35
            f2_local0[9] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 20
            f2_local0[2] = 0
            f2_local0[3] = 35
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[7] = 0
            f2_local0[8] = 35
            f2_local0[9] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 40
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[7] = 0
            f2_local0[8] = 40
            f2_local0[9] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 20
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15660) == true then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[6] = 0
            f2_local0[8] = 30
            f2_local0[9] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 20
            f2_local0[2] = 0
            f2_local0[3] = 35
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[8] = 35
            f2_local0[9] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 20
            f2_local0[2] = 0
            f2_local0[3] = 35
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[8] = 35
            f2_local0[9] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 40
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[8] = 40
            f2_local0[9] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 20
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3005, 5, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3006, 8, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3007, 3, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3015, 20, f2_local0[9], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Destructionsinto_438000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Destructionsinto_438000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Destructionsinto_438000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Destructionsinto_438000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Destructionsinto_438000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Destructionsinto_438000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Destructionsinto_438000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, Destructionsinto_438000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Destructionsinto_438000_Act09)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, Destructionsinto_438000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Destructionsinto_438000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, Destructionsinto_438000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, Destructionsinto_438000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, Destructionsinto_438000_Act24)
    local f2_local8 = REGIST_FUNC(arg1, arg2, Destructionsinto_438000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function Destructionsinto_438000_Act01(arg0, arg1, arg2)
    local f3_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 10
    local f3_local3 = 90
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

function Destructionsinto_438000_Act02(arg0, arg1, arg2)
    local f4_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 10
    local f4_local3 = 90
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f4_local7 = 3001
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Destructionsinto_438000_Act03(arg0, arg1, arg2)
    local f5_local0 = 0.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 10
    local f5_local3 = 90
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f5_local7 = 3002
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Destructionsinto_438000_Act04(arg0, arg1, arg2)
    local f6_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 10
    local f6_local3 = 90
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f6_local7 = 3004
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Destructionsinto_438000_Act05(arg0, arg1, arg2)
    local f7_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 10
    local f7_local3 = 90
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    local f7_local7 = 3005
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Destructionsinto_438000_Act06(arg0, arg1, arg2)
    local f8_local0 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 10
    local f8_local3 = 90
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f8_local7 = 3006
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Destructionsinto_438000_Act07(arg0, arg1, arg2)
    local f9_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 10
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f9_local7 = 3007
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local9 = 0
    local f9_local10 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Destructionsinto_438000_Act08(arg0, arg1, arg2)
    local f10_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 10
    local f10_local3 = 90
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 3
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    local f10_local7 = 3012
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Destructionsinto_438000_Act09(arg0, arg1, arg2)
    local f11_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 10
    local f11_local3 = 90
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 3
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f11_local7 = 3015
    local f11_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local9 = 0
    local f11_local10 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Destructionsinto_438000_Act20(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    if f12_local0 >= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Destructionsinto_438000_Act21(arg0, arg1, arg2)
    local f13_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f13_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 30, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Destructionsinto_438000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Destructionsinto_438000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, -1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Destructionsinto_438000_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Destructionsinto_438000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Destructionsinto_438000_AfterAttackAct, 10)
    
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
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f20_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
                return true
            else
                return true
            end
        elseif f20_local4 <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if f20_local4 <= 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if f20_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 3.5) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
        if f20_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            return true
        elseif f20_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 8) then
            if f20_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
        if f20_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            return true
        elseif f20_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 8) then
            if f20_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if f20_local4 <= 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if f20_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 3.5) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5032) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4) then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5033) then
        if f20_local0 >= 6 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
                return true
            end
        elseif f20_local0 >= 3 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, f20_local2, f20_local3, 0, 0)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Destructionsinto_438000_AfterAttackAct, "GOAL_Destructionsinto_438000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Destructionsinto_438000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


