RegisterTableGoal(GOAL_RuneEater_375000_Battle, "GOAL_RuneEater_375000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneEater_375000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14153)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 80
                f2_local0[21] = 0
                f2_local0[22] = 20
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
            end
        elseif f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 60
                f2_local0[21] = 20
                f2_local0[22] = 20
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
            end
        elseif f2_local3 >= 6 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 50
                f2_local0[21] = 20
                f2_local0[22] = 30
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
            end
        elseif f2_local3 >= 4 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 30
                f2_local0[21] = 30
                f2_local0[22] = 40
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 30
                f2_local0[21] = 30
                f2_local0[22] = 40
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 30
                f2_local0[21] = 30
                f2_local0[22] = 40
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 70
                f2_local0[21] = 0
                f2_local0[22] = 30
            end
        elseif f2_local3 >= 3.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 20
                f2_local0[21] = 40
                f2_local0[22] = 40
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 20
                f2_local0[21] = 40
                f2_local0[22] = 40
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 20
                f2_local0[21] = 40
                f2_local0[22] = 40
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 70
                f2_local0[21] = 0
                f2_local0[22] = 30
            end
        elseif f2_local3 >= 2.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 70
                f2_local0[22] = 30
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 70
                f2_local0[21] = 0
                f2_local0[22] = 30
            end
        elseif f2_local3 >= 1.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14153) == false then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 100
                    f2_local0[22] = 0
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14153) == true then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 100
                    f2_local0[22] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 30
                f2_local0[21] = 70
                f2_local0[22] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 30
                f2_local0[21] = 70
                f2_local0[22] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 70
                f2_local0[21] = 30
                f2_local0[22] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14153) == false then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 100
                f2_local0[22] = 0
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14153) == true then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 100
                f2_local0[22] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 60
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[20] = 30
            f2_local0[21] = 70
            f2_local0[22] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[20] = 30
            f2_local0[21] = 70
            f2_local0[22] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[20] = 70
            f2_local0[21] = 30
            f2_local0[22] = 0
        end
    elseif f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 40
                f2_local0[2] = 0
                f2_local0[3] = 60
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
            end
        elseif f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 40
                f2_local0[2] = 0
                f2_local0[3] = 60
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
            end
        elseif f2_local3 >= 6 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 60
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
            end
        elseif f2_local3 >= 4 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 60
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 60
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 60
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 70
                f2_local0[21] = 0
                f2_local0[22] = 30
            end
        elseif f2_local3 >= 3.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 60
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 60
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 60
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 70
                f2_local0[21] = 0
                f2_local0[22] = 30
            end
        elseif f2_local3 >= 2.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 40
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 20
                f2_local0[22] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 40
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 20
                f2_local0[22] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 40
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 20
                f2_local0[22] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 70
                f2_local0[21] = 0
                f2_local0[22] = 30
            end
        elseif f2_local3 >= 1.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14153) == false then
                    f2_local0[1] = 10
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 25
                    f2_local0[5] = 40
                    f2_local0[20] = 0
                    f2_local0[21] = 25
                    f2_local0[22] = 0
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14153) == true then
                    f2_local0[1] = 20
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 50
                    f2_local0[5] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 60
                f2_local0[5] = 0
                f2_local0[20] = 10
                f2_local0[21] = 30
                f2_local0[22] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 60
                f2_local0[5] = 0
                f2_local0[20] = 10
                f2_local0[21] = 30
                f2_local0[22] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[20] = 70
                f2_local0[21] = 30
                f2_local0[22] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14153) == false then
                f2_local0[1] = 0
                f2_local0[2] = 25
                f2_local0[3] = 0
                f2_local0[4] = 10
                f2_local0[5] = 40
                f2_local0[20] = 0
                f2_local0[21] = 25
                f2_local0[22] = 0
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14153) == true then
                f2_local0[1] = 0
                f2_local0[2] = 45
                f2_local0[3] = 0
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 35
                f2_local0[22] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 60
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[20] = 10
            f2_local0[21] = 30
            f2_local0[22] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 60
            f2_local0[5] = 0
            f2_local0[20] = 10
            f2_local0[21] = 30
            f2_local0[22] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[20] = 70
            f2_local0[21] = 30
            f2_local0[22] = 0
        end
    elseif f2_local3 >= 15 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 40
            f2_local0[2] = 0
            f2_local0[3] = 60
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[20] = 100
            f2_local0[21] = 0
            f2_local0[22] = 0
        end
    elseif f2_local3 >= 10 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 40
            f2_local0[2] = 0
            f2_local0[3] = 60
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[20] = 100
            f2_local0[21] = 0
            f2_local0[22] = 0
        end
    elseif f2_local3 >= 6 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 35
            f2_local0[2] = 0
            f2_local0[3] = 50
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 15
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[20] = 100
            f2_local0[21] = 0
            f2_local0[22] = 0
        end
    elseif f2_local3 >= 4 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 30
            f2_local0[2] = 0
            f2_local0[3] = 40
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 20
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 30
            f2_local0[2] = 0
            f2_local0[3] = 40
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 20
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 30
            f2_local0[2] = 0
            f2_local0[3] = 40
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 20
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[20] = 70
            f2_local0[21] = 0
            f2_local0[22] = 30
        end
    elseif f2_local3 >= 3.5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 40
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 20
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 40
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 20
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 40
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 20
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[20] = 70
            f2_local0[21] = 0
            f2_local0[22] = 30
        end
    elseif f2_local3 >= 2.5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 15
            f2_local0[2] = 0
            f2_local0[3] = 25
            f2_local0[4] = 30
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 20
            f2_local0[22] = 10
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 15
            f2_local0[2] = 0
            f2_local0[3] = 25
            f2_local0[4] = 30
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 20
            f2_local0[22] = 10
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 15
            f2_local0[2] = 0
            f2_local0[3] = 25
            f2_local0[4] = 30
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 20
            f2_local0[22] = 10
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[20] = 70
            f2_local0[21] = 0
            f2_local0[22] = 30
        end
    elseif f2_local3 >= 1.5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14153) == false then
                f2_local0[1] = 10
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 25
                f2_local0[5] = 40
                f2_local0[20] = 0
                f2_local0[21] = 25
                f2_local0[22] = 0
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14153) == true then
                f2_local0[1] = 20
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 50
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 30
                f2_local0[22] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 60
            f2_local0[5] = 0
            f2_local0[20] = 10
            f2_local0[21] = 30
            f2_local0[22] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 60
            f2_local0[5] = 0
            f2_local0[20] = 10
            f2_local0[21] = 30
            f2_local0[22] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[20] = 70
            f2_local0[21] = 30
            f2_local0[22] = 0
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14153) == false then
            f2_local0[1] = 0
            f2_local0[2] = 25
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[5] = 40
            f2_local0[20] = 0
            f2_local0[21] = 25
            f2_local0[22] = 0
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14153) == true then
            f2_local0[1] = 0
            f2_local0[2] = 45
            f2_local0[3] = 0
            f2_local0[4] = 20
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 35
            f2_local0[22] = 0
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
        f2_local0[1] = 0
        f2_local0[2] = 60
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[20] = 10
        f2_local0[21] = 30
        f2_local0[22] = 0
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 60
        f2_local0[5] = 0
        f2_local0[20] = 10
        f2_local0[21] = 30
        f2_local0[22] = 0
    else
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[20] = 70
        f2_local0[21] = 30
        f2_local0[22] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3010, 15, f2_local0[5], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RuneEater_375000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RuneEater_375000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RuneEater_375000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RuneEater_375000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RuneEater_375000_Act05)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RuneEater_375000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, RuneEater_375000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, RuneEater_375000_Act22)
    local f2_local8 = REGIST_FUNC(arg1, arg2, RuneEater_375000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function RuneEater_375000_Act01(arg0, arg1, arg2)
    local f3_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 10
    local f3_local3 = 30
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
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneEater_375000_Act02(arg0, arg1, arg2)
    local f4_local0 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 10
    local f4_local3 = 30
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    local f4_local7 = 3002
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneEater_375000_Act03(arg0, arg1, arg2)
    local f5_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 10
    local f5_local3 = 30
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3003
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneEater_375000_Act04(arg0, arg1, arg2)
    local f6_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 10
    local f6_local3 = 30
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3005
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneEater_375000_Act05(arg0, arg1, arg2)
    local f7_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 10
    local f7_local3 = 30
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3010
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneEater_375000_Act20(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    if f8_local0 >= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneEater_375000_Act21(arg0, arg1, arg2)
    local f9_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f9_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneEater_375000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RuneEater_375000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Template010010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f14_local0 = arg1:GetDist(TARGET_ENE_0)
    local f14_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 0
    local f14_local3 = 0
    local f14_local4 = arg1:GetRandam_Int(1, 100)
    local f14_local5 = arg1:GetHpRate(TARGET_SELF)
    local f14_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f14_local4 <= 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
                return true
            else
                return true
            end
        elseif f14_local4 <= 70 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
        if f14_local4 <= 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2.5) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14153) == false then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999, f14_local2, f14_local3, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14153) == true then
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2.5) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14153) == false then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 999, f14_local2, f14_local3, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14153) == true then
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_RuneEater_375000_AfterAttackAct, "GOAL_RuneEater_375000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneEater_375000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


