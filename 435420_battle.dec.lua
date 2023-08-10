RegisterTableGoal(GOAL_RoamKnightLongswordPLGhost435420_Battle, "RoamKnightLongswordPLGhost435420_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamKnightLongswordPLGhost435420_Battle, true)
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
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 51)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local8 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 14467) == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14476) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14473) == true then
            if f2_local3 >= 20 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14468) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[10] = 0
                        f2_local0[11] = 0
                        f2_local0[12] = 100
                    else
                        f2_local0[27] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14468) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[10] = 60
                        f2_local0[11] = 0
                        f2_local0[12] = 40
                    else
                        f2_local0[27] = 100
                    end
                end
            elseif f2_local3 >= 15 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14468) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[10] = 0
                        f2_local0[11] = 0
                        f2_local0[12] = 100
                    else
                        f2_local0[27] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14468) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[10] = 60
                        f2_local0[11] = 0
                        f2_local0[12] = 40
                    else
                        f2_local0[27] = 100
                    end
                end
            elseif f2_local3 >= 10 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14468) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[10] = 0
                        f2_local0[11] = 0
                        f2_local0[12] = 100
                    else
                        f2_local0[27] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14468) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[10] = 60
                        f2_local0[11] = 0
                        f2_local0[12] = 40
                    else
                        f2_local0[27] = 100
                    end
                end
            elseif f2_local3 >= 6 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14468) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[10] = 0
                        f2_local0[11] = 0
                        f2_local0[12] = 100
                    else
                        f2_local0[27] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14468) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[10] = 60
                        f2_local0[11] = 0
                        f2_local0[12] = 40
                    else
                        f2_local0[27] = 100
                    end
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[10] = 0
                f2_local0[11] = 100
                f2_local0[12] = 0
                f2_local0[13] = 0
            else
                f2_local0[27] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14476) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14474) == true then
            if f2_local3 >= 20 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[7] = 100
                else
                    f2_local0[27] = 100
                end
            elseif f2_local3 >= 15 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[7] = 100
                else
                    f2_local0[27] = 100
                end
            elseif f2_local3 >= 9 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[7] = 100
                else
                    f2_local0[27] = 100
                end
            elseif f2_local3 >= 8 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 50
                        f2_local0[6] = 30
                        f2_local0[7] = 0
                        f2_local0[20] = 20
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 100
                        f2_local0[29] = 0
                        f2_local0[30] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 50
                        f2_local0[6] = 30
                        f2_local0[7] = 0
                        f2_local0[20] = 20
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 100
                        f2_local0[29] = 0
                        f2_local0[30] = 0
                    end
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                end
            elseif f2_local3 >= 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 50
                        f2_local0[6] = 20
                        f2_local0[20] = 30
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 100
                        f2_local0[29] = 0
                        f2_local0[30] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 20
                        f2_local0[6] = 50
                        f2_local0[20] = 30
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 100
                        f2_local0[29] = 0
                        f2_local0[30] = 0
                    end
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 100
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                end
            elseif f2_local3 >= 4 then
                if arg1:GetHpRate(TARGET_SELF) < 0.7 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                            f2_local0[1] = 10
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[5] = 30
                            f2_local0[6] = 0
                            f2_local0[15] = 150
                            f2_local0[16] = 100
                            f2_local0[20] = 0
                            f2_local0[21] = 0
                            f2_local0[22] = 60
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                            f2_local0[27] = 0
                            f2_local0[28] = 0
                            f2_local0[29] = 0
                            f2_local0[30] = 100
                        elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                            f2_local0[1] = 30
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[5] = 20
                            f2_local0[6] = 0
                            f2_local0[15] = 150
                            f2_local0[16] = 100
                            f2_local0[20] = 0
                            f2_local0[21] = 0
                            f2_local0[22] = 50
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                            f2_local0[27] = 0
                            f2_local0[28] = 0
                            f2_local0[29] = 0
                            f2_local0[30] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 30
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 20
                        f2_local0[6] = 0
                        f2_local0[15] = 0
                        f2_local0[16] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 50
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 100
                        f2_local0[30] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 30
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 20
                        f2_local0[6] = 0
                        f2_local0[15] = 0
                        f2_local0[16] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 50
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 100
                        f2_local0[30] = 0
                    else
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 100
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 0
                        f2_local0[30] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 10
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 30
                        f2_local0[6] = 0
                        f2_local0[15] = 0
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 60
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 0
                        f2_local0[30] = 100
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 30
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 20
                        f2_local0[6] = 0
                        f2_local0[15] = 0
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 50
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 0
                        f2_local0[30] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 30
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 50
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 30
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 50
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 100
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                end
            elseif f2_local3 >= 2.5 then
                if arg1:GetHpRate(TARGET_SELF) < 0.7 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                            f2_local0[1] = 50
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 50
                            f2_local0[5] = 0
                            f2_local0[6] = 0
                            f2_local0[15] = 150
                            f2_local0[16] = 100
                            f2_local0[20] = 0
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                            f2_local0[27] = 0
                        elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                            f2_local0[1] = 20
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 40
                            f2_local0[5] = 0
                            f2_local0[6] = 0
                            f2_local0[15] = 150
                            f2_local0[16] = 100
                            f2_local0[20] = 0
                            f2_local0[21] = 0
                            f2_local0[22] = 40
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                            f2_local0[27] = 0
                            f2_local0[28] = 0
                            f2_local0[29] = 0
                            f2_local0[30] = 100
                        elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                            f2_local0[1] = 40
                            f2_local0[2] = 0
                            f2_local0[3] = 20
                            f2_local0[4] = 10
                            f2_local0[5] = 0
                            f2_local0[6] = 0
                            f2_local0[15] = 150
                            f2_local0[16] = 100
                            f2_local0[20] = 0
                            f2_local0[21] = 0
                            f2_local0[22] = 30
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                            f2_local0[27] = 0
                            f2_local0[28] = 0
                            f2_local0[29] = 0
                            f2_local0[30] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 30
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 0
                        f2_local0[16] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 60
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 100
                        f2_local0[30] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 30
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 0
                        f2_local0[16] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 60
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 100
                        f2_local0[30] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 30
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 0
                        f2_local0[16] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 60
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 0
                        f2_local0[30] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 50
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 0
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 20
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 40
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 0
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 40
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 0
                        f2_local0[30] = 100
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 40
                        f2_local0[2] = 0
                        f2_local0[3] = 20
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 0
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 30
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 0
                        f2_local0[30] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 60
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 60
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 60
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                end
            elseif f2_local3 >= 1.5 then
                if arg1:GetHpRate(TARGET_SELF) < 0.7 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                            f2_local0[1] = 50
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 50
                            f2_local0[5] = 0
                            f2_local0[6] = 0
                            f2_local0[15] = 150
                            f2_local0[16] = 100
                            f2_local0[20] = 0
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                            f2_local0[27] = 0
                        elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                            f2_local0[1] = 20
                            f2_local0[2] = 0
                            f2_local0[3] = 20
                            f2_local0[4] = 0
                            f2_local0[5] = 0
                            f2_local0[6] = 0
                            f2_local0[15] = 150
                            f2_local0[16] = 100
                            f2_local0[20] = 0
                            f2_local0[21] = 40
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 20
                            f2_local0[26] = 0
                            f2_local0[27] = 0
                            f2_local0[28] = 0
                            f2_local0[29] = 100
                            f2_local0[30] = 0
                        elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                            f2_local0[1] = 70
                            f2_local0[2] = 0
                            f2_local0[3] = 30
                            f2_local0[4] = 0
                            f2_local0[5] = 0
                            f2_local0[6] = 0
                            f2_local0[15] = 150
                            f2_local0[16] = 100
                            f2_local0[20] = 0
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                            f2_local0[27] = 0
                            f2_local0[28] = 0
                            f2_local0[29] = 100
                            f2_local0[30] = 0
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 30
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 0
                        f2_local0[16] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 70
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 100
                        f2_local0[30] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 30
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 0
                        f2_local0[16] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 70
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 100
                        f2_local0[30] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 30
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 0
                        f2_local0[16] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 70
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 0
                        f2_local0[30] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 50
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 0
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 20
                        f2_local0[2] = 0
                        f2_local0[3] = 20
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 0
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 40
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 20
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 100
                        f2_local0[30] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 70
                        f2_local0[2] = 0
                        f2_local0[3] = 30
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 0
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 100
                        f2_local0[30] = 0
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 70
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 70
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 70
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                end
            elseif arg1:GetHpRate(TARGET_SELF) < 0.7 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 50
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 100
                        f2_local0[16] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 0
                        f2_local0[2] = 50
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 100
                        f2_local0[16] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 30
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 20
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 100
                        f2_local0[30] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 30
                        f2_local0[2] = 50
                        f2_local0[3] = 20
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 100
                        f2_local0[16] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 100
                        f2_local0[30] = 0
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 70
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 70
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 70
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 50
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    f2_local0[1] = 0
                    f2_local0[2] = 50
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 20
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                    f2_local0[1] = 30
                    f2_local0[2] = 50
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 70
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 70
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 70
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 100
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14476) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14473) == true then
        if f2_local3 >= 20 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14455) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 999) then
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 100
                    f2_local0[27] = 10
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14455) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[10] = 10
                    f2_local0[11] = 0
                    f2_local0[12] = 100
                    f2_local0[13] = 0
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 100
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                end
            end
        elseif f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[10] = 10
                f2_local0[11] = 0
                f2_local0[12] = 100
                f2_local0[13] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 100
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
            end
        elseif f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[10] = 10
                f2_local0[11] = 0
                f2_local0[12] = 100
                f2_local0[13] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 100
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
            end
        elseif f2_local3 >= 6 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[10] = 10
                f2_local0[11] = 0
                f2_local0[12] = 100
                f2_local0[13] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 100
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[10] = 0
            f2_local0[11] = 100
            f2_local0[12] = 0
            f2_local0[13] = 0
        else
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 100
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
            f2_local0[27] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14476) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14474) == true then
        if f2_local3 >= 20 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[7] = 100
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
            end
        elseif f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[7] = 100
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
            end
        elseif f2_local3 >= 9 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[7] = 100
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
            end
        elseif f2_local3 >= 8 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 50
                    f2_local0[6] = 30
                    f2_local0[7] = 0
                    f2_local0[20] = 20
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 100
                    f2_local0[29] = 0
                    f2_local0[30] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 50
                    f2_local0[6] = 30
                    f2_local0[7] = 0
                    f2_local0[20] = 20
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 100
                    f2_local0[29] = 0
                    f2_local0[30] = 0
                end
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 100
            end
        elseif f2_local3 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 50
                    f2_local0[6] = 20
                    f2_local0[20] = 30
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 100
                    f2_local0[29] = 0
                    f2_local0[30] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 50
                    f2_local0[20] = 30
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 100
                    f2_local0[29] = 0
                    f2_local0[30] = 0
                end
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 100
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 100
            end
        elseif f2_local3 >= 4 then
            if arg1:GetHpRate(TARGET_SELF) < 0.7 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 10
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 30
                        f2_local0[6] = 0
                        f2_local0[15] = 150
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 60
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 0
                        f2_local0[30] = 100
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 30
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 20
                        f2_local0[6] = 0
                        f2_local0[15] = 150
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 50
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 0
                        f2_local0[30] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 30
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 50
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 30
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 50
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 100
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    f2_local0[1] = 10
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 30
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 60
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                    f2_local0[1] = 30
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 50
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 50
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 50
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 100
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 100
            end
        elseif f2_local3 >= 2.5 then
            if arg1:GetHpRate(TARGET_SELF) < 0.7 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 50
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 150
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 20
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 40
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 150
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 40
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 0
                        f2_local0[30] = 100
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 40
                        f2_local0[2] = 0
                        f2_local0[3] = 20
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 150
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 30
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 0
                        f2_local0[30] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 60
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 60
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 60
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 50
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    f2_local0[1] = 20
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 40
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 40
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                    f2_local0[1] = 40
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 60
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 60
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 60
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 100
            end
        elseif f2_local3 >= 1.5 then
            if arg1:GetHpRate(TARGET_SELF) < 0.7 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 50
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 150
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 20
                        f2_local0[2] = 0
                        f2_local0[3] = 20
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 150
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 40
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 20
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 100
                        f2_local0[30] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 70
                        f2_local0[2] = 0
                        f2_local0[3] = 30
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 150
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 100
                        f2_local0[30] = 0
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 70
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 70
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 70
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 50
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    f2_local0[1] = 20
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 40
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 20
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                    f2_local0[1] = 70
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 70
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 70
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 70
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 100
            end
        elseif arg1:GetHpRate(TARGET_SELF) < 0.7 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 50
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 100
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    f2_local0[1] = 0
                    f2_local0[2] = 50
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 100
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 20
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                    f2_local0[1] = 30
                    f2_local0[2] = 50
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 100
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 70
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 70
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 70
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 100
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                f2_local0[1] = 50
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 50
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
            elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                f2_local0[1] = 0
                f2_local0[2] = 50
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 30
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 20
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                f2_local0[1] = 30
                f2_local0[2] = 50
                f2_local0[3] = 20
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 70
            f2_local0[26] = 0
            f2_local0[27] = 0
            f2_local0[28] = 0
            f2_local0[29] = 100
            f2_local0[30] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 70
            f2_local0[26] = 0
            f2_local0[27] = 0
            f2_local0[28] = 0
            f2_local0[29] = 100
            f2_local0[30] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 70
            f2_local0[27] = 0
            f2_local0[28] = 0
            f2_local0[29] = 0
            f2_local0[30] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14477) == true then
        if f2_local3 >= 20 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 50
                f2_local0[6] = 30
                f2_local0[20] = 20
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 100
                f2_local0[29] = 0
                f2_local0[30] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 100
            end
        elseif f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 50
                f2_local0[6] = 30
                f2_local0[20] = 20
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 100
                f2_local0[29] = 0
                f2_local0[30] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 100
            end
        elseif f2_local3 >= 9 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 50
                    f2_local0[6] = 30
                    f2_local0[20] = 20
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 100
                    f2_local0[29] = 0
                    f2_local0[30] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 50
                    f2_local0[6] = 30
                    f2_local0[20] = 20
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 100
                    f2_local0[29] = 0
                    f2_local0[30] = 0
                end
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 100
            end
        elseif f2_local3 >= 8 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 50
                    f2_local0[6] = 30
                    f2_local0[20] = 20
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 100
                    f2_local0[29] = 0
                    f2_local0[30] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 40
                    f2_local0[6] = 40
                    f2_local0[20] = 20
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 100
                    f2_local0[29] = 0
                    f2_local0[30] = 0
                end
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 100
            end
        elseif f2_local3 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 50
                    f2_local0[6] = 20
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 30
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 100
                    f2_local0[29] = 0
                    f2_local0[30] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 50
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 30
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 100
                    f2_local0[29] = 0
                    f2_local0[30] = 0
                end
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 100
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 100
            end
        elseif f2_local3 >= 4 then
            if arg1:GetHpRate(TARGET_SELF) < 0.7 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 10
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 30
                        f2_local0[6] = 0
                        f2_local0[15] = 150
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 60
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 0
                        f2_local0[30] = 100
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 30
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 20
                        f2_local0[6] = 0
                        f2_local0[15] = 150
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 50
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 0
                        f2_local0[30] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 30
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 50
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 30
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 50
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 100
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    f2_local0[1] = 10
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 30
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 60
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                    f2_local0[1] = 30
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 50
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 50
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 50
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 100
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 100
            end
        elseif f2_local3 >= 2.5 then
            if arg1:GetHpRate(TARGET_SELF) < 0.7 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 50
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 150
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 20
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 40
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 150
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 40
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 0
                        f2_local0[30] = 100
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 40
                        f2_local0[2] = 0
                        f2_local0[3] = 20
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 150
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 30
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 0
                        f2_local0[30] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 60
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 60
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 60
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 50
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    f2_local0[1] = 20
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 40
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 40
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                    f2_local0[1] = 40
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 60
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 60
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 60
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 100
            end
        elseif f2_local3 >= 1.5 then
            if arg1:GetHpRate(TARGET_SELF) < 0.7 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 50
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 150
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 20
                        f2_local0[2] = 0
                        f2_local0[3] = 20
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 150
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 40
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 20
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 100
                        f2_local0[30] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 70
                        f2_local0[2] = 0
                        f2_local0[3] = 30
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[15] = 150
                        f2_local0[16] = 100
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                        f2_local0[27] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 100
                        f2_local0[30] = 0
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 70
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 70
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 70
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[30] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 50
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    f2_local0[1] = 20
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 40
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 20
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                    f2_local0[1] = 70
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 70
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 70
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 70
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 100
            end
        elseif arg1:GetHpRate(TARGET_SELF) < 0.7 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 50
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 100
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    f2_local0[1] = 0
                    f2_local0[2] = 50
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 100
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 20
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                    f2_local0[1] = 30
                    f2_local0[2] = 50
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[15] = 100
                    f2_local0[16] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 100
                    f2_local0[30] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 70
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 70
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 70
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 100
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                f2_local0[1] = 50
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 50
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
            elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                f2_local0[1] = 0
                f2_local0[2] = 50
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 30
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 20
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                f2_local0[1] = 30
                f2_local0[2] = 50
                f2_local0[3] = 20
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 100
                f2_local0[30] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 70
            f2_local0[26] = 0
            f2_local0[27] = 0
            f2_local0[28] = 0
            f2_local0[29] = 100
            f2_local0[30] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 70
            f2_local0[26] = 0
            f2_local0[27] = 0
            f2_local0[28] = 0
            f2_local0[29] = 100
            f2_local0[30] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 30
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 70
            f2_local0[27] = 0
            f2_local0[28] = 0
            f2_local0[29] = 0
            f2_local0[30] = 100
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 15, f2_local0[4], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3015, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 15, f2_local0[5], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3020, 1, f2_local0[7], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3020, 1, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3034, 5, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3035, 10, f2_local0[13], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3032, 30, f2_local0[15], 0)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3033, 15, f2_local0[16], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6001, 4, f2_local0[25], 0)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6002, 4, f2_local0[26], 0)
    f2_local0[26] = SetCoolTime(arg1, arg2, 6003, 4, f2_local0[26], 0)
    f2_local0[28] = SetCoolTime(arg1, arg2, 3101, 3, f2_local0[28], 1)
    f2_local0[28] = SetCoolTime(arg1, arg2, 3102, 3, f2_local0[28], 1)
    f2_local0[28] = SetCoolTime(arg1, arg2, 3103, 3, f2_local0[28], 1)
    f2_local0[28] = SetCoolTime(arg1, arg2, 3104, 3, f2_local0[28], 1)
    f2_local0[28] = SetCoolTime(arg1, arg2, 6001, 4, f2_local0[28], 0)
    f2_local0[29] = SetCoolTime(arg1, arg2, 3102, 3, f2_local0[29], 1)
    f2_local0[29] = SetCoolTime(arg1, arg2, 3101, 3, f2_local0[29], 1)
    f2_local0[29] = SetCoolTime(arg1, arg2, 3103, 3, f2_local0[29], 1)
    f2_local0[29] = SetCoolTime(arg1, arg2, 3104, 3, f2_local0[29], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3103, 3, f2_local0[30], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3104, 3, f2_local0[30], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3101, 1, f2_local0[30], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3102, 1, f2_local0[30], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act07)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act13)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act16)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_Act30)
    local f2_local9 = REGIST_FUNC(arg1, arg2, RoamKnightLongswordPLGhost435420_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function RoamKnightLongswordPLGhost435420_Act01(arg0, arg1, arg2)
    local f3_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 10
    local f3_local3 = 40
    local f3_local4 = 100
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

function RoamKnightLongswordPLGhost435420_Act02(arg0, arg1, arg2)
    local f4_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 10
    local f4_local3 = 30
    local f4_local4 = 100
    local f4_local5 = 3
    local f4_local6 = 3
    local f4_local7 = 3003
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act03(arg0, arg1, arg2)
    local f5_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 10
    local f5_local3 = 40
    local f5_local4 = 100
    local f5_local5 = 3
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3004
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act04(arg0, arg1, arg2)
    local f6_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 10
    local f6_local3 = 40
    local f6_local4 = 100
    local f6_local5 = 3
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3005
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 14475) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act05(arg0, arg1, arg2)
    local f7_local0 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 10
    local f7_local3 = 40
    local f7_local4 = 100
    local f7_local5 = 3
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3006
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14475) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3016, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act06(arg0, arg1, arg2)
    local f8_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 10
    local f8_local3 = 40
    local f8_local4 = 100
    local f8_local5 = 3
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3009
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act07(arg0, arg1, arg2)
    local f9_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 10
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    local f9_local7 = 3020
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act10(arg0, arg1, arg2)
    local f10_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 10
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 3
    local f10_local7 = 3000
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local9 = 0
    local f10_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act11(arg0, arg1, arg2)
    local f11_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 10
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 3
    local f11_local7 = 3020
    local f11_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local9 = 0
    local f11_local10 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act12(arg0, arg1, arg2)
    local f12_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 10
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 3
    local f12_local6 = 3
    local f12_local7 = 3034
    local f12_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local9 = 0
    local f12_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act13(arg0, arg1, arg2)
    local f13_local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 10
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 3
    local f13_local6 = 3
    local f13_local7 = 3035
    local f13_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local9 = 0
    local f13_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act15(arg0, arg1, arg2)
    local f14_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 10
    local f14_local3 = 40
    local f14_local4 = 100
    local f14_local5 = 3
    local f14_local6 = 3
    local f14_local7 = 3032
    local f14_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local9 = 0
    local f14_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act16(arg0, arg1, arg2)
    local f15_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = f15_local0 + 0
    local f15_local2 = f15_local0 + 10
    local f15_local3 = 40
    local f15_local4 = 100
    local f15_local5 = 3
    local f15_local6 = 3
    local f15_local7 = 3033
    local f15_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local9 = 0
    local f15_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act20(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        if arg0:HasSpecialEffectId(TARGET_SELF, 14476) == true and arg0:HasSpecialEffectId(TARGET_SELF, 14473) == true then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 15, TARGET_ENE_0, false, -1)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 14476) == true and arg0:HasSpecialEffectId(TARGET_SELF, 14474) == true then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, false, 9910)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14476) == true and arg0:HasSpecialEffectId(TARGET_SELF, 14473) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14476) == true and arg0:HasSpecialEffectId(TARGET_SELF, 14474) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, false, 9910)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14477) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, false, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act21(arg0, arg1, arg2)
    local f17_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14476) == true and arg0:HasSpecialEffectId(TARGET_SELF, 14473) == true then
        if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f17_local0, 0) >= 2 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14476) == true and arg0:HasSpecialEffectId(TARGET_SELF, 14474) == true then
        if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f17_local0, 0) >= 2 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, 9910)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14477) == true then
        if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f17_local0, 0) >= 2 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, 9910)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act22(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14476) == true and arg0:HasSpecialEffectId(TARGET_SELF, 14473) == true then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14476) == true and arg0:HasSpecialEffectId(TARGET_SELF, 14474) == true then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14477) == true then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act23(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14476) == true and arg0:HasSpecialEffectId(TARGET_SELF, 14473) == true then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2.5, TARGET_ENE_0, 90, -1, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14476) == true and arg0:HasSpecialEffectId(TARGET_SELF, 14474) == true then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2.5, TARGET_ENE_0, 90, 9910, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14477) == true then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2.5, TARGET_ENE_0, 90, 9910, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act26(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act27(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act28(arg0, arg1, arg2)
    local f24_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local1 = f24_local0 + 0
    local f24_local2 = f24_local0 + 10
    local f24_local3 = 0
    local f24_local4 = 100
    local f24_local5 = 3
    local f24_local6 = 3
    local f24_local7 = 3101
    local f24_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f24_local9 = 0
    local f24_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f24_local7, TARGET_ENE_0, f24_local8, f24_local9, f24_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act29(arg0, arg1, arg2)
    local f25_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local1 = f25_local0 + 0
    local f25_local2 = f25_local0 + 10
    local f25_local3 = 0
    local f25_local4 = 100
    local f25_local5 = 3
    local f25_local6 = 3
    local f25_local7 = 3102
    local f25_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f25_local9 = 0
    local f25_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f25_local7, TARGET_ENE_0, f25_local8, f25_local9, f25_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_Act30(arg0, arg1, arg2)
    local f26_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local1 = f26_local0 + 0
    local f26_local2 = f26_local0 + 10
    local f26_local3 = 0
    local f26_local4 = 100
    local f26_local5 = 3
    local f26_local6 = 3
    local f26_local7 = 3103
    local f26_local8 = 3104
    local f26_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f26_local10 = 0
    local f26_local11 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f26_local7, TARGET_ENE_0, f26_local9, f26_local10, f26_local11, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f26_local8, TARGET_ENE_0, f26_local9, f26_local10, f26_local11, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLongswordPLGhost435420_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RoamKnightLongswordPLGhost435420_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f30_local0 = arg1:GetDist(TARGET_ENE_0)
    local f30_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f30_local2 = 0
    local f30_local3 = 0
    local f30_local4 = arg1:GetRandam_Int(1, 100)
    local f30_local5 = arg1:GetHpRate(TARGET_SELF)
    local f30_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f30_local7 = arg1:GetDist(TARGET_FRI_0)
    local f30_local8 = arg1:GetMapHitRadius(TARGET_SELF)
    local f30_local9 = arg1:GetPrevTargetState()
    local f30_local10 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14476) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14473) == true then
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5033) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 6.5) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 30) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f30_local4 <= 80 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5034) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 6.5) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 30) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if arg1:GetNumber(0) >= 2 then
                        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
                        arg1:SetNumber(0, 0)
                        return true
                    elseif f30_local4 <= 70 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                        arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                        return true
                    else
                        return true
                    end
                end
            end
        end
        return false
    end
    if arg1:IsInterupt(INTERUPT_UseItem) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if f30_local4 <= 80 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, f30_local2, f30_local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 8) then
            if f30_local4 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, f30_local2, f30_local3, 0, 0)
                return true
            elseif f30_local4 <= 80 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, f30_local2, f30_local3, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, f30_local2, f30_local3, 0, 0)
                    return true
                end
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 9) then
            if f30_local4 <= 80 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, f30_local2, f30_local3, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, f30_local2, f30_local3, 0, 0)
                    return true
                end
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 20) then
            if f30_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6010, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if f30_local4 <= 80 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, f30_local2, f30_local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 9) then
            if f30_local4 <= 40 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6012, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6013, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f30_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6010, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 20) then
            if f30_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6010, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14472) == true then
            if f30_local4 <= 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3102, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            end
        elseif f30_local4 <= 50 then
            if arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f30_local8, 0) >= 2 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, 9910)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                return true
            end
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 3) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                if f30_local4 <= 60 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                if f30_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4) and arg1:IsTargetGuard(TARGET_ENE_0) == true then
        if f30_local4 <= 90 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 3) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                if f30_local4 <= 60 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                if f30_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 3) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                if f30_local4 <= 50 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                if f30_local4 <= 90 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4) and arg1:IsTargetGuard(TARGET_ENE_0) == true then
        if f30_local4 <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 3.5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
            if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                if f30_local4 <= 60 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                else
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                    return true
                end
            elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                if f30_local4 <= 60 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                else
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 8) then
            if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                if f30_local4 <= 40 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif f30_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                    return true
                end
            elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                if f30_local4 <= 30 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif f30_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5032) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 3.5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
            if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                if f30_local4 <= 60 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                else
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                    return true
                end
            elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                if f30_local4 <= 60 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                else
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 8) then
            if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                if f30_local4 <= 50 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif f30_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                    return true
                end
            elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                if f30_local4 <= 30 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14475) == true then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif f30_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                    return true
                end
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_RoamKnightLongswordPLGhost435420_AfterAttackAct, "RoamKnightLongswordPLGhost435420_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamKnightLongswordPLGhost435420_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


