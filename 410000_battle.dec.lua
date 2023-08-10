RegisterTableGoal(GOAL_DemiHuman_SongsswordShield_410000_Battle, "DemiHuman_SongsswordShield_410000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DemiHuman_SongsswordShield_410000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10530)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10551)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10553)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10586) == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 10553) == true then
            if f2_local3 > 15 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[11] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 10
                    f2_local0[22] = 10
                    f2_local0[23] = 10
                    f2_local0[38] = 60
                else
                    f2_local0[11] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[38] = 100
                end
            elseif f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[11] = 50
                    f2_local0[20] = 10
                    f2_local0[21] = 10
                    f2_local0[22] = 10
                    f2_local0[23] = 10
                    f2_local0[38] = 10
                else
                    f2_local0[11] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[38] = 100
                end
            elseif f2_local3 > 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[11] = 50
                    f2_local0[20] = 10
                    f2_local0[21] = 10
                    f2_local0[22] = 10
                    f2_local0[23] = 10
                    f2_local0[38] = 10
                else
                    f2_local0[11] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[38] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 10
                f2_local0[5] = 50
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 50
                f2_local0[9] = 100
                f2_local0[10] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 10
                f2_local0[37] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 10
                f2_local0[5] = 50
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 50
                f2_local0[9] = 100
                f2_local0[10] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 10
                f2_local0[37] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 10
                f2_local0[5] = 50
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 50
                f2_local0[9] = 100
                f2_local0[10] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 10
                f2_local0[37] = 0
            else
                f2_local0[30] = 50
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10530) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10551) == true then
            if f2_local3 > 15 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[11] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 10
                    f2_local0[22] = 10
                    f2_local0[23] = 10
                    f2_local0[38] = 60
                else
                    f2_local0[11] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[38] = 100
                end
            elseif f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[11] = 50
                    f2_local0[20] = 10
                    f2_local0[21] = 10
                    f2_local0[22] = 10
                    f2_local0[23] = 10
                    f2_local0[38] = 10
                else
                    f2_local0[11] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[38] = 100
                end
            elseif f2_local3 > 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[11] = 50
                    f2_local0[20] = 10
                    f2_local0[21] = 10
                    f2_local0[22] = 10
                    f2_local0[23] = 10
                    f2_local0[38] = 10
                else
                    f2_local0[11] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[38] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 10
                f2_local0[5] = 50
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 50
                f2_local0[10] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 10
                f2_local0[37] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 10
                f2_local0[5] = 50
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 50
                f2_local0[10] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 10
                f2_local0[37] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 10
                f2_local0[5] = 50
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 50
                f2_local0[10] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 10
                f2_local0[37] = 0
            else
                f2_local0[30] = 50
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10530) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10551) == false then
            if f2_local3 > 15 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[11] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 10
                    f2_local0[22] = 10
                    f2_local0[23] = 10
                    f2_local0[38] = 60
                else
                    f2_local0[11] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[38] = 100
                end
            elseif f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[11] = 50
                    f2_local0[20] = 10
                    f2_local0[21] = 10
                    f2_local0[22] = 10
                    f2_local0[23] = 10
                    f2_local0[38] = 10
                else
                    f2_local0[11] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[38] = 100
                end
            elseif f2_local3 > 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[11] = 50
                    f2_local0[20] = 10
                    f2_local0[21] = 10
                    f2_local0[22] = 10
                    f2_local0[23] = 10
                    f2_local0[38] = 10
                else
                    f2_local0[11] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[38] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 10
                f2_local0[7] = 10
                f2_local0[10] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 10
                f2_local0[34] = 0
                f2_local0[35] = 10
                f2_local0[36] = 10
                f2_local0[37] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 10
                f2_local0[7] = 10
                f2_local0[10] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 10
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 10
                f2_local0[37] = 20
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 10
                f2_local0[7] = 10
                f2_local0[10] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 10
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 10
                f2_local0[37] = 20
            else
                f2_local0[30] = 50
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10530) == false and f2_local3 < 100 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[20] = 25
                f2_local0[21] = 25
                f2_local0[22] = 25
                f2_local0[23] = 25
            else
                f2_local0[38] = 100
            end
        end
    elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:HasSpecialEffectId(TARGET_SELF, 10553) == true then
            f2_local0[20] = 10
            f2_local0[21] = 10
            f2_local0[22] = 10
            f2_local0[23] = 10
            f2_local0[30] = 15
            f2_local0[31] = 15
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
            f2_local0[37] = 0
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10530) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10551) == true then
            f2_local0[20] = 10
            f2_local0[21] = 10
            f2_local0[22] = 10
            f2_local0[23] = 10
            f2_local0[30] = 15
            f2_local0[31] = 15
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
            f2_local0[37] = 0
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10530) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10551) == false then
            f2_local0[20] = 10
            f2_local0[21] = 10
            f2_local0[22] = 10
            f2_local0[23] = 10
            f2_local0[30] = 5
            f2_local0[31] = 10
            f2_local0[32] = 10
            f2_local0[33] = 15
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
            f2_local0[37] = 0
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10530) == false and f2_local3 < 100 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[20] = 25
                f2_local0[21] = 25
                f2_local0[22] = 25
                f2_local0[23] = 25
            else
                f2_local0[30] = 100
            end
        end
    elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:HasSpecialEffectId(TARGET_SELF, 10553) == true then
            f2_local0[20] = 10
            f2_local0[21] = 10
            f2_local0[22] = 10
            f2_local0[23] = 10
            f2_local0[30] = 15
            f2_local0[31] = 15
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
            f2_local0[37] = 0
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10530) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10551) == true then
            f2_local0[20] = 10
            f2_local0[21] = 10
            f2_local0[22] = 10
            f2_local0[23] = 10
            f2_local0[30] = 15
            f2_local0[31] = 15
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
            f2_local0[37] = 0
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10530) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10551) == false then
            f2_local0[20] = 10
            f2_local0[21] = 10
            f2_local0[22] = 10
            f2_local0[23] = 10
            f2_local0[30] = 10
            f2_local0[31] = 20
            f2_local0[32] = 0
            f2_local0[33] = 10
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
            f2_local0[37] = 0
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 10530) == false and f2_local3 < 100 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[20] = 25
                f2_local0[21] = 25
                f2_local0[22] = 25
                f2_local0[23] = 25
            else
                f2_local0[30] = 100
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10553) == true then
        if f2_local3 > 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 50
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 10
                f2_local0[30] = 20
                f2_local0[31] = 20
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 0
                f2_local0[37] = 0
            else
                f2_local0[30] = 50
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif f2_local3 > 10 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 10585) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 20
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 50
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 100
                    f2_local0[20] = 10
                    f2_local0[21] = 10
                    f2_local0[22] = 10
                    f2_local0[23] = 10
                    f2_local0[30] = 20
                    f2_local0[31] = 20
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 0
                    f2_local0[37] = 0
                else
                    f2_local0[30] = 50
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 50
                    f2_local0[37] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 50
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 10
                f2_local0[30] = 20
                f2_local0[31] = 20
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 0
                f2_local0[37] = 0
            else
                f2_local0[30] = 50
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif f2_local3 > 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 10585) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 20
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 50
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 100
                    f2_local0[20] = 10
                    f2_local0[21] = 10
                    f2_local0[22] = 10
                    f2_local0[23] = 10
                    f2_local0[30] = 0
                    f2_local0[31] = 20
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 0
                    f2_local0[37] = 0
                else
                    f2_local0[30] = 50
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 50
                    f2_local0[37] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 50
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 10
                f2_local0[30] = 0
                f2_local0[31] = 20
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 0
                f2_local0[37] = 0
            else
                f2_local0[30] = 50
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 50
            f2_local0[6] = 0
            f2_local0[7] = 10
            f2_local0[8] = 50
            f2_local0[9] = 100
            f2_local0[10] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 0
            f2_local0[36] = 10
            f2_local0[37] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 50
            f2_local0[6] = 0
            f2_local0[7] = 10
            f2_local0[8] = 50
            f2_local0[9] = 100
            f2_local0[10] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 0
            f2_local0[36] = 10
            f2_local0[37] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 50
            f2_local0[6] = 0
            f2_local0[7] = 10
            f2_local0[8] = 50
            f2_local0[9] = 100
            f2_local0[10] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 0
            f2_local0[36] = 10
            f2_local0[37] = 0
        else
            f2_local0[30] = 50
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 0
            f2_local0[36] = 50
            f2_local0[37] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10530) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10551) == true then
        if f2_local3 > 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 50
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 10
                f2_local0[30] = 20
                f2_local0[31] = 20
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 0
                f2_local0[37] = 0
            else
                f2_local0[30] = 50
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif f2_local3 > 10 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 10585) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 20
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 50
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 100
                    f2_local0[20] = 10
                    f2_local0[21] = 10
                    f2_local0[22] = 10
                    f2_local0[23] = 10
                    f2_local0[30] = 20
                    f2_local0[31] = 20
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 0
                    f2_local0[37] = 0
                else
                    f2_local0[30] = 50
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 50
                    f2_local0[37] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 50
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 10
                f2_local0[30] = 20
                f2_local0[31] = 20
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 0
                f2_local0[37] = 0
            else
                f2_local0[30] = 50
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif f2_local3 > 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 10585) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 20
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 50
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 100
                    f2_local0[20] = 10
                    f2_local0[21] = 10
                    f2_local0[22] = 10
                    f2_local0[23] = 10
                    f2_local0[30] = 0
                    f2_local0[31] = 20
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 0
                    f2_local0[37] = 0
                else
                    f2_local0[30] = 50
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 50
                    f2_local0[37] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 50
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 10
                f2_local0[30] = 0
                f2_local0[31] = 20
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 0
                f2_local0[37] = 0
            else
                f2_local0[30] = 50
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 50
            f2_local0[6] = 0
            f2_local0[7] = 10
            f2_local0[8] = 50
            f2_local0[10] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 0
            f2_local0[36] = 10
            f2_local0[37] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 50
            f2_local0[6] = 0
            f2_local0[7] = 10
            f2_local0[8] = 50
            f2_local0[10] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 0
            f2_local0[36] = 10
            f2_local0[37] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 50
            f2_local0[6] = 0
            f2_local0[7] = 10
            f2_local0[8] = 50
            f2_local0[10] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 0
            f2_local0[36] = 10
            f2_local0[37] = 0
        else
            f2_local0[30] = 50
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 0
            f2_local0[36] = 50
            f2_local0[37] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10530) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10551) == false then
        if f2_local3 > 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[7] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 10
                f2_local0[30] = 20
                f2_local0[31] = 20
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 0
                f2_local0[37] = 0
            else
                f2_local0[30] = 50
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif f2_local3 > 10 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 10585) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 20
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[7] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 100
                    f2_local0[20] = 10
                    f2_local0[21] = 10
                    f2_local0[22] = 10
                    f2_local0[23] = 10
                    f2_local0[30] = 20
                    f2_local0[31] = 20
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 0
                    f2_local0[37] = 0
                else
                    f2_local0[30] = 50
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 50
                    f2_local0[37] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[7] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 10
                f2_local0[30] = 20
                f2_local0[31] = 20
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 0
                f2_local0[37] = 0
            else
                f2_local0[30] = 50
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif f2_local3 > 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 10585) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 20
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[7] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 100
                    f2_local0[20] = 10
                    f2_local0[21] = 10
                    f2_local0[22] = 10
                    f2_local0[23] = 10
                    f2_local0[30] = 0
                    f2_local0[31] = 20
                    f2_local0[32] = 0
                    f2_local0[33] = 20
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 0
                    f2_local0[37] = 0
                else
                    f2_local0[30] = 50
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                    f2_local0[35] = 0
                    f2_local0[36] = 50
                    f2_local0[37] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[7] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 10
                f2_local0[30] = 0
                f2_local0[31] = 20
                f2_local0[32] = 0
                f2_local0[33] = 20
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 0
                f2_local0[37] = 0
            else
                f2_local0[30] = 50
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[35] = 0
                f2_local0[36] = 50
                f2_local0[37] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[7] = 10
            f2_local0[10] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 10
            f2_local0[34] = 0
            f2_local0[35] = 10
            f2_local0[36] = 10
            f2_local0[37] = 10
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[7] = 10
            f2_local0[10] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 10
            f2_local0[34] = 0
            f2_local0[35] = 0
            f2_local0[36] = 10
            f2_local0[37] = 20
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[7] = 10
            f2_local0[10] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 10
            f2_local0[34] = 0
            f2_local0[35] = 0
            f2_local0[36] = 10
            f2_local0[37] = 20
        else
            f2_local0[30] = 50
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[35] = 0
            f2_local0[36] = 50
            f2_local0[37] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10530) == false and arg1:HasSpecialEffectId(TARGET_SELF, 10559) == false then
        if f2_local3 < 100 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[20] = 25
                f2_local0[21] = 25
                f2_local0[22] = 25
                f2_local0[23] = 25
            else
                f2_local0[30] = 100
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10530) == false and arg1:HasSpecialEffectId(TARGET_SELF, 10559) == true and f2_local3 < 100 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[5] = 100
        else
            f2_local0[30] = 100
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 15, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3008, 15, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3010, 15, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3012, 15, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3016, 10, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3015, 10, f2_local0[11], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3021, 5, f2_local0[20], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3022, 5, f2_local0[20], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3025, 5, f2_local0[20], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3026, 5, f2_local0[20], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3021, 5, f2_local0[21], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3022, 5, f2_local0[21], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3025, 5, f2_local0[21], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3026, 5, f2_local0[21], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3021, 5, f2_local0[22], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3022, 5, f2_local0[22], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3025, 5, f2_local0[22], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3026, 5, f2_local0[22], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3021, 5, f2_local0[23], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3022, 5, f2_local0[23], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3025, 5, f2_local0[23], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3026, 5, f2_local0[23], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act11)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act28)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act36)
    f2_local1[37] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act37)
    f2_local1[38] = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_Act38)
    local f2_local9 = REGIST_FUNC(arg1, arg2, DemiHuman_SongsswordShield_410000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function DemiHuman_SongsswordShield_410000_Act01(arg0, arg1, arg2)
    local f3_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 10
    local f3_local3 = 100
    local f3_local4 = 100
    local f3_local5 = 3
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act02(arg0, arg1, arg2)
    local f4_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 10
    local f4_local3 = 100
    local f4_local4 = 100
    local f4_local5 = 3
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f4_local7 = 3001
    local f4_local8 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act03(arg0, arg1, arg2)
    local f5_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 10
    local f5_local3 = 100
    local f5_local4 = 100
    local f5_local5 = 3
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3004
    local f5_local8 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act04(arg0, arg1, arg2)
    local f6_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 10
    local f6_local3 = 100
    local f6_local4 = 100
    local f6_local5 = 3
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3005
    local f6_local8 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act05(arg0, arg1, arg2)
    local f7_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 10
    local f7_local3 = 100
    local f7_local4 = 100
    local f7_local5 = 3
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f7_local7 = 3006
    local f7_local8 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act06(arg0, arg1, arg2)
    local f8_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 10
    local f8_local3 = 100
    local f8_local4 = 100
    local f8_local5 = 3
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3008
    local f8_local8 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act07(arg0, arg1, arg2)
    local f9_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 10
    local f9_local3 = 100
    local f9_local4 = 100
    local f9_local5 = 3
    local f9_local6 = 3
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3009
    local f9_local8 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act08(arg0, arg1, arg2)
    local f10_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 10
    local f10_local3 = 100
    local f10_local4 = 100
    local f10_local5 = 3
    local f10_local6 = 3
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3010
    local f10_local8 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act09(arg0, arg1, arg2)
    local f11_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 10
    local f11_local3 = 100
    local f11_local4 = 100
    local f11_local5 = 3
    local f11_local6 = 3
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3012
    local f11_local8 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local9 = 0
    local f11_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act10(arg0, arg1, arg2)
    local f12_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 10
    local f12_local3 = 100
    local f12_local4 = 100
    local f12_local5 = 3
    local f12_local6 = 3
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3016
    local f12_local8 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local9 = 0
    local f12_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act11(arg0, arg1, arg2)
    local f13_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 10
    local f13_local3 = 100
    local f13_local4 = 100
    local f13_local5 = 3
    local f13_local6 = 3
    local f13_local7 = 3015
    local f13_local8 = 3014
    local f13_local9 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local10 = 0
    local f13_local11 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 10587) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local7, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 10588) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local8, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act20(arg0, arg1, arg2)
    local f14_local0 = 3021
    local f14_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local2 = 0
    local f14_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act21(arg0, arg1, arg2)
    local f15_local0 = 3022
    local f15_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local2 = 0
    local f15_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f15_local0, TARGET_ENE_0, f15_local1, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act22(arg0, arg1, arg2)
    local f16_local0 = 3025
    local f16_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f16_local2 = 0
    local f16_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act23(arg0, arg1, arg2)
    local f17_local0 = 3026
    local f17_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f17_local2 = 0
    local f17_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f17_local0, TARGET_ENE_0, f17_local1, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act24(arg0, arg1, arg2)
    local f18_local0 = 3027
    local f18_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f18_local2 = 0
    local f18_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f18_local0, TARGET_ENE_0, f18_local1, f18_local2, f18_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act25(arg0, arg1, arg2)
    local f19_local0 = 3028
    local f19_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f19_local2 = 0
    local f19_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f19_local0, TARGET_ENE_0, f19_local1, f19_local2, f19_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act26(arg0, arg1, arg2)
    local f20_local0 = 3029
    local f20_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f20_local2 = 0
    local f20_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f20_local0, TARGET_ENE_0, f20_local1, f20_local2, f20_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act27(arg0, arg1, arg2)
    local f21_local0 = 3035
    local f21_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f21_local2 = 0
    local f21_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f21_local0, TARGET_SELF, f21_local1, f21_local2, f21_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act28(arg0, arg1, arg2)
    local f22_local0 = 3039
    local f22_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f22_local2 = 0
    local f22_local3 = 360
    local f22_local4 = arg0:GetRandam_Int(1, 100)
    if f22_local4 <= 35 then
        local f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f22_local0, TARGET_ENE_0, f22_local1, f22_local2, f22_local3, 0, 0)
    elseif f22_local4 <= 70 then
        local f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f22_local0, TARGET_ENE_0, f22_local1, f22_local2, f22_local3, 0, 0)
    else
        local f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        f22_local5 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 3038, TARGET_SELF)
        f22_local5:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f22_local0, TARGET_ENE_0, f22_local1, f22_local2, f22_local3, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, false, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act31(arg0, arg1, arg2)
    local f24_local0 = arg0:GetRandam_Int(1, 100)
    if f24_local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(2, 4), TARGET_ENE_0, 3, TARGET_SELF, false, 9910, AI_DIR_TYPE_ToL, arg0:GetRandam_Int(5, 8))
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(2, 4), TARGET_ENE_0, 3, TARGET_SELF, false, 9910, AI_DIR_TYPE_ToR, arg0:GetRandam_Int(5, 8))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act32(arg0, arg1, arg2)
    local f25_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f25_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act33(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act34(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2.5, TARGET_ENE_0, 90, 9910, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act35(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2.5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act36(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2.5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2.5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act37(arg0, arg1, arg2)
    local f30_local0 = 6011
    local f30_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f30_local2 = 0
    local f30_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f30_local0, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_Act28(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.5, 2.5), TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DemiHuman_SongsswordShield_410000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DemiHuman_SongsswordShield_410000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f35_local0 = arg1:GetDist(TARGET_ENE_0)
    local f35_local1 = 2.5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f35_local2 = 0
    local f35_local3 = 0
    local f35_local4 = arg1:GetRandam_Int(1, 100)
    local f35_local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_DemiHuman_SongsswordShield_410000_AfterAttackAct, "DemiHuman_SongsswordShield_410000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DemiHuman_SongsswordShield_410000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


