RegisterTableGoal(GOAL_OldwomanBat420100_Battle, "OldwomanBat420100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldwomanBat420100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(3000000, 3000)
    arg1:EnableUnfavorableAttackCheck(3000000, 3002)
    arg1:EnableUnfavorableAttackCheck(4000000, 3006)
    arg1:EnableUnfavorableAttackCheck(4000000, 3007)
    arg1:EnableUnfavorableAttackCheck(4000000, 3008)
    arg1:EnableUnfavorableAttackCheck(4000000, 3010)
    arg1:EnableUnfavorableAttackCheck(4000000, 3011)
    arg1:EnableUnfavorableAttackCheck(4000000, 3012)
    arg1:EnableUnfavorableAttackCheck(4000000, 3013)
    
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 10503)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5020)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5021)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetDistXZ(TARGET_ENE_0)
    local f2_local6 = arg1:GetOffsetY(TARGET_SELF)
    local f2_local7 = arg1:GetRandam_Int(1, 100)
    local f2_local8 = arg1:GetHpRate(TARGET_SELF)
    local f2_local9 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local9 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5403) == true then
            f2_local0[18] = 80
            f2_local0[42] = 10
            f2_local0[43] = 10
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5404) == true then
            f2_local0[42] = 100
        end
    elseif f2_local9 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5403) == true then
            f2_local0[18] = 80
            f2_local0[42] = 10
            f2_local0[43] = 10
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5404) == false then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                f2_local0[1] = 25
                f2_local0[2] = 25
                f2_local0[42] = 50
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                f2_local0[4] = 25
                f2_local0[5] = 25
                f2_local0[42] = 50
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5403) == true then
        if f2_local3 >= 30 then
            f2_local0[18] = 100
        elseif f2_local3 >= 3 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == true then
                    f2_local0[18] = 100
                elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
                    f2_local0[18] = 30
                    f2_local0[19] = 70
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                f2_local0[18] = 30
                f2_local0[20] = 70
            end
        elseif f2_local3 >= 1.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == true then
                    f2_local0[15] = 0
                    f2_local0[16] = 30
                    f2_local0[18] = 70
                elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
                    f2_local0[15] = 0
                    f2_local0[16] = 20
                    f2_local0[18] = 20
                    f2_local0[19] = 60
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                f2_local0[15] = 0
                f2_local0[16] = 20
                f2_local0[18] = 20
                f2_local0[20] = 60
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
            if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == true then
                f2_local0[15] = 10
                f2_local0[16] = 50
                f2_local0[17] = 10
                f2_local0[18] = 30
            elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
                f2_local0[15] = 10
                f2_local0[16] = 40
                f2_local0[17] = 10
                f2_local0[18] = 10
                f2_local0[19] = 30
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
            f2_local0[15] = 10
            f2_local0[16] = 40
            f2_local0[17] = 10
            f2_local0[18] = 10
            f2_local0[20] = 30
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5404) == true then
        if f2_local6 >= 4.5 then
            if f2_local3 >= 30 then
                f2_local0[41] = 100
            elseif f2_local3 >= 15 then
                f2_local0[26] = 30
                f2_local0[40] = 10
                f2_local0[41] = 60
            else
                f2_local0[7] = 10
                f2_local0[24] = 45
                f2_local0[26] = 45
            end
        elseif f2_local6 >= 3.5 then
            if f2_local3 >= 20 then
                f2_local0[11] = 0
                f2_local0[26] = 25
                f2_local0[40] = 10
                f2_local0[41] = 65
            elseif f2_local3 >= 10 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                    if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == true then
                        f2_local0[11] = 10
                        f2_local0[26] = 50
                        f2_local0[40] = 10
                        f2_local0[41] = 30
                    elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
                        f2_local0[1] = 50
                        f2_local0[2] = 50
                        f2_local0[11] = 10
                        f2_local0[26] = 50
                        f2_local0[40] = 10
                        f2_local0[41] = 30
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                    f2_local0[4] = 20
                    f2_local0[5] = 20
                    f2_local0[12] = 60
                    f2_local0[11] = 10
                    f2_local0[26] = 50
                    f2_local0[40] = 10
                    f2_local0[41] = 30
                end
            elseif f2_local3 >= 5 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                    if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == true then
                        f2_local0[9] = 100
                        f2_local0[10] = 10
                        f2_local0[23] = 0
                        f2_local0[24] = 50
                        f2_local0[25] = 0
                        f2_local0[26] = 20
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 20
                    elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
                        f2_local0[1] = 50
                        f2_local0[2] = 50
                        f2_local0[3] = 0
                        f2_local0[10] = 10
                        f2_local0[23] = 0
                        f2_local0[24] = 50
                        f2_local0[25] = 0
                        f2_local0[26] = 20
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 20
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                    f2_local0[4] = 30
                    f2_local0[5] = 30
                    f2_local0[6] = 0
                    f2_local0[12] = 40
                    f2_local0[10] = 10
                    f2_local0[23] = 0
                    f2_local0[24] = 50
                    f2_local0[25] = 0
                    f2_local0[26] = 20
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 20
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == true then
                    f2_local0[7] = 50
                    f2_local0[9] = 50
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 50
                    f2_local0[25] = 0
                    f2_local0[26] = 30
                    f2_local0[40] = 0
                elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
                    f2_local0[1] = 20
                    f2_local0[2] = 20
                    f2_local0[3] = 60
                    f2_local0[7] = 100
                    f2_local0[9] = 20
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 50
                    f2_local0[25] = 0
                    f2_local0[26] = 30
                    f2_local0[40] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                f2_local0[4] = 10
                f2_local0[5] = 10
                f2_local0[6] = 40
                f2_local0[7] = 40
                f2_local0[9] = 20
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 50
                f2_local0[25] = 0
                f2_local0[26] = 30
                f2_local0[40] = 0
            end
        elseif f2_local3 >= 20 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                f2_local0[21] = 70
                f2_local0[41] = 30
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                f2_local0[4] = 50
                f2_local0[5] = 50
                f2_local0[6] = 0
                f2_local0[21] = 70
                f2_local0[41] = 30
            end
        elseif f2_local3 >= 12 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == true then
                    f2_local0[11] = 0
                    f2_local0[21] = 40
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 35
                    f2_local0[42] = 35
                elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
                    f2_local0[1] = 50
                    f2_local0[2] = 50
                    f2_local0[3] = 0
                    f2_local0[11] = 0
                    f2_local0[21] = 40
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 35
                    f2_local0[42] = 35
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                f2_local0[4] = 20
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[11] = 0
                f2_local0[12] = 60
                f2_local0[21] = 40
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[40] = 0
                f2_local0[41] = 35
                f2_local0[42] = 35
            end
        elseif f2_local3 >= 7 then
            if f2_local4 >= 3.5 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                    if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == true then
                        f2_local0[10] = 20
                        f2_local0[26] = 40
                        f2_local0[40] = 10
                        f2_local0[42] = 40
                    elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
                        f2_local0[1] = 50
                        f2_local0[2] = 50
                        f2_local0[3] = 0
                        f2_local0[10] = 20
                        f2_local0[26] = 40
                        f2_local0[40] = 10
                        f2_local0[42] = 40
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                    f2_local0[4] = 20
                    f2_local0[5] = 20
                    f2_local0[6] = 0
                    f2_local0[10] = 20
                    f2_local0[12] = 60
                    f2_local0[26] = 40
                    f2_local0[40] = 10
                    f2_local0[42] = 40
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == true then
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 30
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[40] = 0
                    f2_local0[42] = 70
                elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
                    f2_local0[1] = 40
                    f2_local0[2] = 40
                    f2_local0[3] = 20
                    f2_local0[7] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 30
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[40] = 0
                    f2_local0[42] = 70
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                f2_local0[4] = 10
                f2_local0[5] = 10
                f2_local0[6] = 30
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 30
                f2_local0[12] = 50
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[40] = 0
                f2_local0[42] = 70
            end
        elseif f2_local3 >= 4.5 then
            if f2_local4 >= 3.5 then
                f2_local0[7] = 50
                f2_local0[8] = 0
                f2_local0[23] = 0
                f2_local0[40] = 0
                f2_local0[43] = 50
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == true then
                    f2_local0[7] = 100
                    f2_local0[9] = 20
                    f2_local0[11] = 0
                    f2_local0[23] = 50
                elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
                    f2_local0[1] = 40
                    f2_local0[2] = 40
                    f2_local0[3] = 20
                    f2_local0[7] = 30
                    f2_local0[9] = 20
                    f2_local0[11] = 0
                    f2_local0[23] = 50
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                f2_local0[4] = 40
                f2_local0[5] = 40
                f2_local0[6] = 20
                f2_local0[7] = 30
                f2_local0[9] = 20
                f2_local0[11] = 0
                f2_local0[23] = 50
            end
        elseif f2_local3 >= 2.5 then
            if f2_local4 >= 3.5 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                    f2_local0[7] = 50
                    f2_local0[23] = 0
                    f2_local0[40] = 0
                    f2_local0[43] = 50
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                    f2_local0[6] = 100
                    f2_local0[7] = 50
                    f2_local0[23] = 0
                    f2_local0[40] = 0
                    f2_local0[43] = 50
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:IsTargetGuard(TARGET_ENE_0) then
                        f2_local0[7] = 100
                    elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == true then
                        f2_local0[7] = 80
                        f2_local0[9] = 20
                        f2_local0[23] = 30 * arg1:GetNumber(1) + 1
                        f2_local0[24] = 30 * arg1:GetNumber(1) + 1
                        f2_local0[25] = 5 * arg1:GetNumber(1) + 1
                    elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
                        f2_local0[3] = 100
                        f2_local0[7] = 30
                        f2_local0[9] = 5
                        f2_local0[23] = 30 * arg1:GetNumber(1) + 1
                        f2_local0[24] = 30 * arg1:GetNumber(1) + 1
                        f2_local0[25] = 5 * arg1:GetNumber(1) + 1
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == true then
                        f2_local0[9] = 50
                        f2_local0[25] = 50 * arg1:GetNumber(1) + 1
                        f2_local0[26] = 20
                        f2_local0[27] = 20 * arg1:GetNumber(1) + 1
                        f2_local0[28] = 5
                    elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
                        f2_local0[1] = 30
                        f2_local0[2] = 30
                        f2_local0[3] = 40
                        f2_local0[9] = 5
                        f2_local0[25] = 50 * arg1:GetNumber(1) + 1
                        f2_local0[26] = 20
                        f2_local0[27] = 20 * arg1:GetNumber(1) + 1
                        f2_local0[28] = 5
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == true then
                        f2_local0[9] = 50
                        f2_local0[25] = 50 * arg1:GetNumber(1) + 1
                        f2_local0[26] = 20
                        f2_local0[27] = 20 * arg1:GetNumber(1) + 1
                        f2_local0[28] = 5
                    elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
                        f2_local0[1] = 30
                        f2_local0[2] = 30
                        f2_local0[3] = 40
                        f2_local0[9] = 5
                        f2_local0[25] = 50 * arg1:GetNumber(1) + 1
                        f2_local0[26] = 20
                        f2_local0[27] = 20 * arg1:GetNumber(1) + 1
                        f2_local0[28] = 5
                    end
                else
                    f2_local0[7] = 5
                    f2_local0[26] = 30 * arg1:GetNumber(1) + 1
                    f2_local0[27] = 60 * arg1:GetNumber(1) + 1
                    f2_local0[28] = 5
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:IsTargetGuard(TARGET_ENE_0) then
                        f2_local0[7] = 100
                    else
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 100
                        f2_local0[7] = 30
                        f2_local0[9] = 5
                        f2_local0[23] = 30 * arg1:GetNumber(1) + 1
                        f2_local0[24] = 30 * arg1:GetNumber(1) + 1
                        f2_local0[25] = 5 * arg1:GetNumber(1) + 1
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[4] = 30
                    f2_local0[5] = 30
                    f2_local0[6] = 40
                    f2_local0[9] = 5
                    f2_local0[25] = 50 * arg1:GetNumber(1) + 1
                    f2_local0[26] = 20
                    f2_local0[27] = 20 * arg1:GetNumber(1) + 1
                    f2_local0[28] = 5
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[4] = 30
                    f2_local0[5] = 30
                    f2_local0[6] = 40
                    f2_local0[9] = 5
                    f2_local0[25] = 50 * arg1:GetNumber(1) + 1
                    f2_local0[26] = 20
                    f2_local0[27] = 20 * arg1:GetNumber(1) + 1
                    f2_local0[28] = 5
                else
                    f2_local0[7] = 5
                    f2_local0[26] = 30 * arg1:GetNumber(1) + 1
                    f2_local0[27] = 60 * arg1:GetNumber(1) + 1
                    f2_local0[28] = 5
                end
            end
        elseif f2_local4 >= 3.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                f2_local0[7] = 50
                f2_local0[23] = 0
                f2_local0[40] = 0
                f2_local0[43] = 50
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                f2_local0[6] = 100
                f2_local0[7] = 50
                f2_local0[23] = 0
                f2_local0[40] = 0
                f2_local0[43] = 50
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                if arg1:IsTargetGuard(TARGET_ENE_0) then
                    f2_local0[7] = 100
                elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == true then
                    f2_local0[7] = 80
                    f2_local0[8] = 80
                    f2_local0[9] = 20
                    f2_local0[23] = 30 * arg1:GetNumber(1) + 1
                    f2_local0[24] = 30 * arg1:GetNumber(1) + 1
                    f2_local0[25] = 5 * arg1:GetNumber(1) + 1
                elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
                    f2_local0[3] = 100
                    f2_local0[7] = 30
                    f2_local0[8] = 100
                    f2_local0[9] = 5
                    f2_local0[23] = 30 * arg1:GetNumber(1) + 1
                    f2_local0[24] = 30 * arg1:GetNumber(1) + 1
                    f2_local0[25] = 5 * arg1:GetNumber(1) + 1
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                if arg1:IsTargetGuard(TARGET_ENE_0) then
                    f2_local0[7] = 100
                else
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 100
                    f2_local0[7] = 30
                    f2_local0[8] = 100
                    f2_local0[9] = 5
                    f2_local0[23] = 30 * arg1:GetNumber(1) + 1
                    f2_local0[24] = 30 * arg1:GetNumber(1) + 1
                    f2_local0[25] = 5 * arg1:GetNumber(1) + 1
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == true then
                    f2_local0[8] = 80
                    f2_local0[9] = 20
                    f2_local0[25] = 50 * arg1:GetNumber(1) + 1
                    f2_local0[26] = 20
                    f2_local0[27] = 20 * arg1:GetNumber(1) + 1
                    f2_local0[28] = 5
                elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
                    f2_local0[1] = 30
                    f2_local0[2] = 30
                    f2_local0[3] = 40
                    f2_local0[8] = 100
                    f2_local0[9] = 5
                    f2_local0[25] = 50 * arg1:GetNumber(1) + 1
                    f2_local0[26] = 20
                    f2_local0[27] = 20 * arg1:GetNumber(1) + 1
                    f2_local0[28] = 5
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                f2_local0[4] = 30
                f2_local0[5] = 30
                f2_local0[6] = 40
                f2_local0[8] = 100
                f2_local0[9] = 5
                f2_local0[25] = 50 * arg1:GetNumber(1) + 1
                f2_local0[26] = 20
                f2_local0[27] = 20 * arg1:GetNumber(1) + 1
                f2_local0[28] = 5
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                if arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == true then
                    f2_local0[8] = 80
                    f2_local0[9] = 20
                    f2_local0[25] = 50 * arg1:GetNumber(1) + 1
                    f2_local0[26] = 20
                    f2_local0[27] = 20 * arg1:GetNumber(1) + 1
                    f2_local0[28] = 5
                elseif arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_POIZON) == false then
                    f2_local0[1] = 30
                    f2_local0[2] = 30
                    f2_local0[3] = 40
                    f2_local0[8] = 100
                    f2_local0[9] = 5
                    f2_local0[25] = 50 * arg1:GetNumber(1) + 1
                    f2_local0[26] = 20
                    f2_local0[27] = 20 * arg1:GetNumber(1) + 1
                    f2_local0[28] = 5
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                f2_local0[4] = 30
                f2_local0[5] = 30
                f2_local0[6] = 40
                f2_local0[8] = 100
                f2_local0[9] = 5
                f2_local0[25] = 50 * arg1:GetNumber(1) + 1
                f2_local0[26] = 20
                f2_local0[27] = 20 * arg1:GetNumber(1) + 1
                f2_local0[28] = 5
            end
        else
            f2_local0[7] = 5
            f2_local0[8] = 100
            f2_local0[26] = 30 * arg1:GetNumber(1) + 1
            f2_local0[27] = 60 * arg1:GetNumber(1) + 1
            f2_local0[28] = 5
        end
    end
    if SpaceCheck(arg1, arg2, 0, 8) == false then
        f2_local0[27] = 0
    elseif SpaceCheck(arg1, arg2, -45, 6) == false then
        f2_local0[1] = 0
        f2_local0[4] = 0
    elseif SpaceCheck(arg1, arg2, 45, 6) == false then
        f2_local0[25] = 0
        f2_local0[26] = 0
    elseif SpaceCheck(arg1, arg2, 45, 6) == false then
        f2_local0[2] = 0
        f2_local0[5] = 0
    elseif SpaceCheck(arg1, arg2, -45, 6) == false then
        f2_local0[25] = 0
        f2_local0[26] = 0
    elseif SpaceCheck(arg1, arg2, 180, 6) == false then
        f2_local0[3] = 0
        f2_local0[6] = 0
        f2_local0[19] = 0
        f2_local0[20] = 0
        f2_local0[23] = 0
        f2_local0[24] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, arg1:GetRandam_Float(4.5, 6), f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3001, arg1:GetRandam_Float(4.5, 6), f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3000, arg1:GetRandam_Float(4.5, 6), f2_local0[2], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, arg1:GetRandam_Float(4.5, 6), f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, arg1:GetRandam_Float(4.5, 6), f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, arg1:GetRandam_Float(4.5, 6), f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, arg1:GetRandam_Float(4.5, 6), f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3005, arg1:GetRandam_Float(4.5, 6), f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3008, 5, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3009, arg1:GetRandam_Float(10, 12), f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3010, 20, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3012, 20, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3013, 20, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3015, arg1:GetRandam_Float(8, 12), f2_local0[12], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3001, arg1:GetRandam_Float(8, 10), f2_local0[16], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 6001, 5, f2_local0[23], 0)
    f2_local0[23] = SetCoolTime(arg1, arg2, 6011, 5, f2_local0[23], 0)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3014, 5, f2_local0[23], 0)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6001, 5, f2_local0[24], 0)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6011, 5, f2_local0[24], 0)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3014, 5, f2_local0[24], 0)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[25], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[25], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 3014, 5, f2_local0[25], 0)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6012, 5, f2_local0[26], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6013, 5, f2_local0[26], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 3014, 5, f2_local0[26], 0)
    f2_local0[27] = SetCoolTime(arg1, arg2, 3014, 8, f2_local0[27], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act6)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act7)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act8)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act9)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act12)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act28)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, OldwomanBat420100_Act43)
    local f2_local10 = REGIST_FUNC(arg1, arg2, OldwomanBat420100_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function OldwomanBat420100_Act1(arg0, arg1, arg2)
    local f3_local0 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF) - arg0:GetRandam_Int(0, 2)
    local f3_local1 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = 80
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, DistToAtt2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act2(arg0, arg1, arg2)
    local f4_local0 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF) - arg0:GetRandam_Int(0, 2)
    local f4_local1 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 80
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f4_local7 = 3001
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, DistToAtt2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act3(arg0, arg1, arg2)
    local f5_local0 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF) - arg0:GetRandam_Int(0, 2)
    local f5_local1 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 80
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f5_local7 = 3002
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, DistToAtt2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act4(arg0, arg1, arg2)
    local f6_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 80
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f6_local7 = 3003
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, DistToAtt2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act5(arg0, arg1, arg2)
    local f7_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 80
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f7_local7 = 3004
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local7, TARGET_ENE_0, DistToAtt2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act6(arg0, arg1, arg2)
    local f8_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 80
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f8_local7 = 3005
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local7, TARGET_ENE_0, DistToAtt2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act7(arg0, arg1, arg2)
    local f9_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 80
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f9_local7 = 3008
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act8(arg0, arg1, arg2)
    local f10_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    local f10_local7 = 3009
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 0
    local f10_local10 = 0
    local f10_local11 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, 0, 0, 0, 0)
    f10_local11:TimingSetTimer(0, arg0:GetRandam_Float(5, 8), AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act9(arg0, arg1, arg2)
    local f11_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 80
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 8
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f11_local7 = 3010
    local f11_local8 = 3011
    local f11_local9 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local10 = 0
    local f11_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local9, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local8, TARGET_ENE_0, f11_local9, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act10(arg0, arg1, arg2)
    local f12_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local3 = 80
    local f12_local4 = 0
    local f12_local5 = 4
    local f12_local6 = 8
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3012
    local f12_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 0
    local f12_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act11(arg0, arg1, arg2)
    local f13_local0 = 17 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 17 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 17 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 4
    local f13_local6 = 10
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3013
    local f13_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 0
    local f13_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act12(arg0, arg1, arg2)
    local f14_local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local3 = 80
    local f14_local4 = 0
    local f14_local5 = 4
    local f14_local6 = 8
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3015
    local f14_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local9 = 0
    local f14_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local7, TARGET_ENE_0, DistToAtt2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act15(arg0, arg1, arg2)
    local f15_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local3 = 70
    local f15_local4 = 0
    local f15_local5 = 1.5
    local f15_local6 = 2
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 3000
    local f15_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local9 = 0
    local f15_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local7, TARGET_ENE_0, f15_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act16(arg0, arg1, arg2)
    local f16_local0 = 3001
    local f16_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act17(arg0, arg1, arg2)
    local f17_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local3 = 70
    local f17_local4 = 0
    local f17_local5 = 1.5
    local f17_local6 = 2
    Approach_Act_Flex(arg0, arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local f17_local7 = 3002
    local f17_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local9 = 0
    local f17_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local7, TARGET_ENE_0, f17_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act18(arg0, arg1, arg2)
    local f18_local0 = 3020
    local f18_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = 0
    local f18_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local0, TARGET_ENE_0, f18_local1, f18_local2, f18_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act19(arg0, arg1, arg2)
    local f19_local0 = 3021
    local f19_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local2 = 0
    local f19_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local0, TARGET_ENE_0, f19_local1, f19_local2, f19_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act20(arg0, arg1, arg2)
    local f20_local0 = 3022
    local f20_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local2 = 0
    local f20_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local0, TARGET_ENE_0, f20_local1, f20_local2, f20_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act21(arg0, arg1, arg2)
    local f21_local0 = 3020
    local f21_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local2 = 0
    local f21_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f21_local0, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act22(arg0, arg1, arg2)
    local f22_local0 = 3021
    local f22_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local2 = 0
    local f22_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f22_local0, TARGET_ENE_0, f22_local1, f22_local2, f22_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act23(arg0, arg1, arg2)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act24(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6011, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act25(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and SpaceCheck(arg0, arg1, -45, 4.5) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    elseif SpaceCheck(arg0, arg1, 45, 4.5) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    else
        arg0:Replaning()
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act26(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and SpaceCheck(arg0, arg1, -45, 4.5) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    elseif SpaceCheck(arg0, arg1, 45, 4.5) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    else
        arg0:Replaning()
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act27(arg0, arg1, arg2)
    local f27_local0 = 3014
    local f27_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local2 = 0
    local f27_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f27_local0, TARGET_ENE_0, f27_local1, f27_local2, f27_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act28(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act41(arg0, arg1, arg2)
    local f30_local0 = arg0:GetDist(TARGET_ENE_0)
    local f30_local1 = arg0:GetRandam_Int(1, 100)
    if f30_local0 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, arg0:GetRandam_Float(7, 9), TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, arg0:GetRandam_Float(7, 9), TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 12, TARGET_ENE_0, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldwomanBat420100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_OldwomanBat420100_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f36_local0 = arg1:GetDist(TARGET_ENE_0)
    local f36_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f36_local2 = 0
    local f36_local3 = 0
    local f36_local4 = arg1:GetRandam_Int(1, 100)
    local f36_local5 = arg1:GetHpRate(TARGET_SELF)
    local f36_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f36_local7 = arg1:GetDist(TARGET_LOCALPLAYER)
    local f36_local8 = arg1:GetOffsetY(TARGET_SELF)
    local f36_local9 = arg1:GetDistXZ(TARGET_ENE_0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) == true then
        if f36_local8 >= 3.5 then

        elseif f36_local8 >= 2.5 then

        else
            if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:GetSpecialEffectActivateInterruptId(5025) then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 2.5) then
                    if f36_local4 <= 20 then
                        if arg1:GetAttackPassedTime(3008) >= 5 then
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif arg1:GetRandam_Float(5, 8) <= arg1:GetAttackPassedTime(3009) then
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3009, TARGET_ENE_0, 999, 0, 0)
                            return true
                        end
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5) and f36_local4 <= 20 and arg1:GetAttackPassedTime(3008) >= 5 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
            if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 4) and arg1:IsTargetGuard(TARGET_ENE_0) then
                if f36_local4 >= 71 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f36_local4 >= 21 then
                    if arg1:IsFinishTimer(0) then
                        arg2:ClearSubGoal()
                        local f36_local10 = arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                        f36_local10:TimingSetTimer(0, arg1:GetRandam_Float(5, 8), AI_TIMING_SET__ACTIVATE)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg1:Replaning()
                        return true
                    end
                else
                    arg2:ClearSubGoal()
                    arg1:Replaning()
                    return true
                end
            end
            if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 5020) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
                        if f36_local4 <= 20 then
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f36_local4 <= 50 then
                            if arg1:GetAttackPassedTime(3008) >= 5 then
                                arg2:ClearSubGoal()
                                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                                return true
                            end
                        elseif f36_local4 <= 80 then
                            if arg1:GetAttackPassedTime(6001) >= 3 and arg1:GetAttackPassedTime(6011) >= 3 then
                                arg2:ClearSubGoal()
                                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 3, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                                return true
                            end
                        else
                            arg2:ClearSubGoal()
                            arg1:Replaning()
                            return true
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7.5) then
                        if f36_local4 <= 40 then
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:ClearSubGoal()
                            arg1:Replaning()
                            return true
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 17.5) then
                        if f36_local4 <= 40 then
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:ClearSubGoal()
                            arg1:Replaning()
                            return true
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 3) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 3, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                        return true
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 3) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 3, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                        return true
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 3) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3014, TARGET_SELF, 5, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg1:Replaning()
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
                        if f36_local4 <= 40 then
                            if arg1:GetAttackPassedTime(3008) >= 5 then
                                arg2:ClearSubGoal()
                                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                                return true
                            end
                        elseif f36_local4 <= 80 then
                            if arg1:GetAttackPassedTime(6001) >= 3 and arg1:GetAttackPassedTime(6011) >= 3 then
                                arg2:ClearSubGoal()
                                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 3, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                                return true
                            end
                        else
                            arg2:ClearSubGoal()
                            arg1:Replaning()
                            return true
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 3) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 3, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                        return true
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 3) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 3, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                        return true
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 3) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3014, TARGET_SELF, 5, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg1:Replaning()
                        return true
                    end
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5403) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2.5) then
                if f36_local4 <= 40 then
                    if arg1:GetRandam_Float(6, 8) <= arg1:GetAttackPassedTime(3001) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3001, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                else
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5404) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2.5) then
                if f36_local4 <= 40 then
                    if arg1:GetRandam_Float(6, 8) <= arg1:GetAttackPassedTime(3009) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3009, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
                if arg1:GetAttackPassedTime(6001) >= 3 and arg1:GetAttackPassedTime(6011) >= 3 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 3, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 3) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 3, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 3) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 3, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 3) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3014, TARGET_SELF, 5, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg1:Replaning()
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:HasSpecialEffectId(TARGET_SELF, 5404) == true then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            if arg1:GetAttackPassedTime(6001) >= 3 and arg1:GetAttackPassedTime(6011) >= 3 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 3, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 3) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 3, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 3) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 3, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 3) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3014, TARGET_SELF, 5, 0, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5404) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 30) then
            if f36_local4 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, 1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 30) then
            if f36_local4 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 30) then
            if f36_local4 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif f36_local4 <= 60 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, 1, TARGET_ENE_0, 0, 0, true)
            return true
        else
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_OldwomanBat420100_AfterAttackAct, "OldwomanBat420100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldwomanBat420100_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


