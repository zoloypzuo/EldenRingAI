RegisterTableGoal(GOAL_Devastationer465010_Battle, "GOAL_Devastationer465010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Devastationer465010_Battle, true)
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
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3027)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3029)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
    arg1:EnableUnfavorableAttackCheck(1000000, 3003)
    arg1:EnableUnfavorableAttackCheck(1000000, 3004)
    arg1:EnableUnfavorableAttackCheck(1000000, 3005)
    arg1:EnableUnfavorableAttackCheck(1000000, 3006)
    arg1:EnableUnfavorableAttackCheck(1000000, 3007)
    arg1:EnableUnfavorableAttackCheck(1000000, 3008)
    arg1:EnableUnfavorableAttackCheck(1000000, 3009)
    arg1:EnableUnfavorableAttackCheck(1000000, 3012)
    arg1:EnableUnfavorableAttackCheck(1000000, 3014)
    arg1:EnableUnfavorableAttackCheck(1000000, 3015)
    arg1:EnableUnfavorableAttackCheck(1000000, 3016)
    arg1:EnableUnfavorableAttackCheck(1000000, 3018)
    arg1:EnableUnfavorableAttackCheck(1000000, 3019)
    arg1:EnableUnfavorableAttackCheck(1000000, 3020)
    arg1:EnableUnfavorableAttackCheck(1000000, 3021)
    arg1:EnableUnfavorableAttackCheck(1000000, 3022)
    arg1:EnableUnfavorableAttackCheck(1000000, 3024)
    arg1:EnableUnfavorableAttackCheck(1000000, 3025)
    arg1:EnableUnfavorableAttackCheck(1000000, 3027)
    arg1:EnableUnfavorableAttackCheck(1000000, 3028)
    arg1:EnableUnfavorableAttackCheck(1000000, 3029)
    arg1:EnableUnfavorableAttackCheck(1000000, 3030)
    
end

Goal.Activate = function (arg0, arg1, arg2)
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13200)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13201)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 13200) == true then
        if arg1:GetHpRate(TARGET_SELF) < 0.6 then
            if f2_local3 > 13 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 50, 180, 100) then
                    f2_local0[1] = 20
                    f2_local0[2] = 0
                    f2_local0[3] = 50
                    f2_local0[4] = 30
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 40, 180, 100) then
                    f2_local0[1] = 60
                    f2_local0[2] = 0
                    f2_local0[3] = 40
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 40, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 40
                    f2_local0[4] = 60
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[17] = 0
                else
                    f2_local0[30] = 100
                end
            elseif f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 50, 180, 100) then
                    f2_local0[1] = 40
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 60
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 40, 180, 100) then
                    f2_local0[1] = 60
                    f2_local0[2] = 0
                    f2_local0[3] = 40
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 40, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 40
                    f2_local0[4] = 60
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[17] = 0
                else
                    f2_local0[30] = 100
                end
            elseif f2_local3 > 6.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 50, 180, 100) then
                    f2_local0[1] = 70
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 30
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 40, 180, 100) then
                    f2_local0[1] = 60
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 40
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 40, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 100
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[17] = 0
                else
                    f2_local0[30] = 100
                end
            elseif f2_local3 > 6 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13203) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 50
                        f2_local0[10] = 0
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[17] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 100, 180, 100) then
                        f2_local0[5] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 100, 180, 100) then
                        f2_local0[5] = 100
                    else
                        f2_local0[17] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13203) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        f2_local0[1] = 100
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[10] = 0
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[17] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 100, 180, 100) then
                        f2_local0[5] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 100, 180, 100) then
                        f2_local0[5] = 100
                    else
                        f2_local0[17] = 100
                    end
                end
            elseif f2_local3 > 5 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13203) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 50
                        f2_local0[10] = 0
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[17] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 100, 180, 100) then
                        f2_local0[5] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 100, 180, 100) then
                        f2_local0[5] = 100
                    else
                        f2_local0[17] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13203) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        f2_local0[1] = 100
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[10] = 0
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[17] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 100, 180, 100) then
                        f2_local0[5] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 100, 180, 100) then
                        f2_local0[5] = 100
                    else
                        f2_local0[17] = 100
                    end
                end
            elseif f2_local3 > 4 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13203) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 30
                        f2_local0[9] = 50
                        f2_local0[10] = 20
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[17] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                        f2_local0[5] = 50
                        f2_local0[9] = 50
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                        f2_local0[5] = 50
                        f2_local0[9] = 50
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 50, 180, 100) then
                        f2_local0[5] = 50
                        f2_local0[9] = 50
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 50, 180, 100) then
                        f2_local0[5] = 50
                        f2_local0[9] = 50
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 50, 180, 100) then
                        f2_local0[5] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 50, 180, 100) then
                        f2_local0[5] = 100
                    else
                        f2_local0[17] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13203) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 40
                        f2_local0[9] = 0
                        f2_local0[10] = 60
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[17] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                        f2_local0[5] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                        f2_local0[5] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 50, 180, 100) then
                        f2_local0[5] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 50, 180, 100) then
                        f2_local0[5] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 50, 180, 100) then
                        f2_local0[5] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 50, 180, 100) then
                        f2_local0[5] = 100
                    else
                        f2_local0[17] = 100
                    end
                end
            elseif f2_local3 > 2.5 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13203) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 30
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 20
                        f2_local0[9] = 40
                        f2_local0[10] = 10
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[17] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                        f2_local0[5] = 10
                        f2_local0[9] = 30
                        f2_local0[12] = 60
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                        f2_local0[5] = 10
                        f2_local0[9] = 30
                        f2_local0[12] = 60
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 50, 180, 100) then
                        f2_local0[5] = 10
                        f2_local0[9] = 30
                        f2_local0[12] = 60
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 50, 180, 100) then
                        f2_local0[5] = 10
                        f2_local0[9] = 30
                        f2_local0[12] = 60
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 50, 180, 100) then
                        f2_local0[5] = 30
                        f2_local0[12] = 70
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 50, 180, 100) then
                        f2_local0[5] = 30
                        f2_local0[12] = 70
                    else
                        f2_local0[17] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13203) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 30
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 30
                        f2_local0[9] = 0
                        f2_local0[10] = 40
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[17] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                        f2_local0[5] = 30
                        f2_local0[12] = 70
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                        f2_local0[5] = 30
                        f2_local0[12] = 70
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 50, 180, 100) then
                        f2_local0[5] = 30
                        f2_local0[12] = 70
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 50, 180, 100) then
                        f2_local0[5] = 30
                        f2_local0[12] = 70
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 50, 180, 100) then
                        f2_local0[5] = 30
                        f2_local0[12] = 70
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 50, 180, 100) then
                        f2_local0[5] = 30
                        f2_local0[12] = 70
                    else
                        f2_local0[17] = 100
                    end
                end
            elseif f2_local3 > 1 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13203) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 30
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 20
                        f2_local0[9] = 40
                        f2_local0[10] = 10
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[17] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                        f2_local0[5] = 10
                        f2_local0[9] = 30
                        f2_local0[12] = 60
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                        f2_local0[5] = 10
                        f2_local0[9] = 30
                        f2_local0[12] = 60
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 50, 180, 100) then
                        f2_local0[5] = 10
                        f2_local0[9] = 30
                        f2_local0[12] = 60
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 50, 180, 100) then
                        f2_local0[5] = 10
                        f2_local0[9] = 30
                        f2_local0[12] = 60
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 50, 180, 100) then
                        f2_local0[5] = 30
                        f2_local0[12] = 70
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 50, 180, 100) then
                        f2_local0[5] = 30
                        f2_local0[12] = 70
                    else
                        f2_local0[17] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13203) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 30
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[8] = 30
                        f2_local0[9] = 0
                        f2_local0[10] = 40
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[17] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                        f2_local0[5] = 30
                        f2_local0[12] = 70
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                        f2_local0[5] = 30
                        f2_local0[12] = 70
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 50, 180, 100) then
                        f2_local0[5] = 30
                        f2_local0[12] = 70
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 50, 180, 100) then
                        f2_local0[5] = 30
                        f2_local0[12] = 70
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 50, 180, 100) then
                        f2_local0[5] = 30
                        f2_local0[12] = 70
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 50, 180, 100) then
                        f2_local0[5] = 30
                        f2_local0[12] = 70
                    else
                        f2_local0[17] = 100
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13203) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 30
                    f2_local0[9] = 40
                    f2_local0[10] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                    f2_local0[5] = 10
                    f2_local0[9] = 30
                    f2_local0[12] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                    f2_local0[5] = 10
                    f2_local0[9] = 30
                    f2_local0[12] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 50, 180, 100) then
                    f2_local0[5] = 10
                    f2_local0[9] = 30
                    f2_local0[12] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 50, 180, 100) then
                    f2_local0[5] = 10
                    f2_local0[9] = 30
                    f2_local0[12] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 50, 180, 100) then
                    f2_local0[5] = 30
                    f2_local0[12] = 70
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 50, 180, 100) then
                    f2_local0[5] = 30
                    f2_local0[12] = 70
                else
                    f2_local0[17] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13203) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 40
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 60
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                    f2_local0[5] = 30
                    f2_local0[12] = 70
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                    f2_local0[5] = 30
                    f2_local0[12] = 70
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 50, 180, 100) then
                    f2_local0[5] = 30
                    f2_local0[12] = 70
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 50, 180, 100) then
                    f2_local0[5] = 30
                    f2_local0[12] = 70
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 50, 180, 100) then
                    f2_local0[5] = 30
                    f2_local0[12] = 70
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 50, 180, 100) then
                    f2_local0[5] = 30
                    f2_local0[12] = 70
                else
                    f2_local0[17] = 100
                end
            end
        elseif f2_local3 > 13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 50, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 0
                f2_local0[3] = 50
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[17] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 40, 180, 100) then
                f2_local0[1] = 60
                f2_local0[2] = 0
                f2_local0[3] = 40
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[17] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 40, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 40
                f2_local0[4] = 60
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[17] = 0
            else
                f2_local0[30] = 100
            end
        elseif f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 50, 180, 100) then
                f2_local0[1] = 40
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 60
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[17] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 40, 180, 100) then
                f2_local0[1] = 60
                f2_local0[2] = 0
                f2_local0[3] = 40
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[17] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 40, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 40
                f2_local0[4] = 60
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[17] = 0
            else
                f2_local0[30] = 100
            end
        elseif f2_local3 > 6.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 50, 180, 100) then
                f2_local0[1] = 70
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[17] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 40, 180, 100) then
                f2_local0[1] = 70
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[17] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 40, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 100
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[17] = 0
            else
                f2_local0[30] = 100
            end
        elseif f2_local3 > 6 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13203) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 50
                    f2_local0[10] = 0
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 100, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 100, 180, 100) then
                    f2_local0[5] = 100
                else
                    f2_local0[17] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13203) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    f2_local0[1] = 100
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 100, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 100, 180, 100) then
                    f2_local0[5] = 100
                else
                    f2_local0[17] = 100
                end
            end
        elseif f2_local3 > 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13203) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 50
                    f2_local0[10] = 0
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 100, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 100, 180, 100) then
                    f2_local0[5] = 100
                else
                    f2_local0[17] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13203) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    f2_local0[1] = 100
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 100, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 100, 180, 100) then
                    f2_local0[5] = 100
                else
                    f2_local0[17] = 100
                end
            end
        elseif f2_local3 > 4 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13203) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 30
                    f2_local0[9] = 50
                    f2_local0[10] = 20
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                    f2_local0[5] = 50
                    f2_local0[9] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                    f2_local0[5] = 50
                    f2_local0[9] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 50, 180, 100) then
                    f2_local0[5] = 50
                    f2_local0[9] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 50, 180, 100) then
                    f2_local0[5] = 50
                    f2_local0[9] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 50, 180, 100) then
                    f2_local0[5] = 100
                else
                    f2_local0[17] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13203) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 40
                    f2_local0[9] = 0
                    f2_local0[10] = 60
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 50, 180, 100) then
                    f2_local0[5] = 100
                else
                    f2_local0[17] = 100
                end
            end
        elseif f2_local3 > 2.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13203) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 40
                    f2_local0[10] = 10
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                    f2_local0[5] = 50
                    f2_local0[9] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                    f2_local0[5] = 50
                    f2_local0[9] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 50, 180, 100) then
                    f2_local0[5] = 50
                    f2_local0[9] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 50, 180, 100) then
                    f2_local0[5] = 50
                    f2_local0[9] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 50, 180, 100) then
                    f2_local0[5] = 100
                else
                    f2_local0[17] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13203) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 30
                    f2_local0[9] = 0
                    f2_local0[10] = 40
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 50, 180, 100) then
                    f2_local0[5] = 100
                else
                    f2_local0[17] = 100
                end
            end
        elseif f2_local3 > 1 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13203) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 20
                    f2_local0[9] = 40
                    f2_local0[10] = 10
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                    f2_local0[5] = 50
                    f2_local0[9] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                    f2_local0[5] = 50
                    f2_local0[9] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 50, 180, 100) then
                    f2_local0[5] = 50
                    f2_local0[9] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 50, 180, 100) then
                    f2_local0[5] = 50
                    f2_local0[9] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 50, 180, 100) then
                    f2_local0[5] = 100
                else
                    f2_local0[17] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13203) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 30
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[8] = 30
                    f2_local0[9] = 0
                    f2_local0[10] = 40
                    f2_local0[17] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 50, 180, 100) then
                    f2_local0[5] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 50, 180, 100) then
                    f2_local0[5] = 100
                else
                    f2_local0[17] = 100
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13203) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 30
                f2_local0[9] = 40
                f2_local0[10] = 0
                f2_local0[17] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                f2_local0[5] = 50
                f2_local0[9] = 50
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                f2_local0[5] = 50
                f2_local0[9] = 50
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 50, 180, 100) then
                f2_local0[5] = 50
                f2_local0[9] = 50
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 50, 180, 100) then
                f2_local0[5] = 50
                f2_local0[9] = 50
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 50, 180, 100) then
                f2_local0[5] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 50, 180, 100) then
                f2_local0[5] = 100
            else
                f2_local0[17] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13203) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 40
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[8] = 60
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[17] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 50, 180, 100) then
                f2_local0[5] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 50, 180, 100) then
                f2_local0[5] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 50, 180, 100) then
                f2_local0[5] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 50, 180, 100) then
                f2_local0[5] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 50, 180, 100) then
                f2_local0[5] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 50, 180, 100) then
                f2_local0[5] = 100
            else
                f2_local0[17] = 100
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13200) == false and f2_local3 < 100 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[16] = 100
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[5] = 100
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[5] = 100
        else
            f2_local0[17] = 100
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3007, 5, f2_local0[5], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3008, 5, f2_local0[5], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3010, 40, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3012, 20, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3013, 60, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3014, 25, f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3017, 1, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3018, 15, f2_local0[12], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3019, 15, f2_local0[12], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3021, 25, f2_local0[14], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3023, 15, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3026, 1, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3028, 5, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3030, 15, f2_local0[18], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act18)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, Devastationer465010_Act33)
    local f2_local9 = REGIST_FUNC(arg1, arg2, Devastationer465010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function Devastationer465010_Act01(arg0, arg1, arg2)
    local f3_local0 = 18 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 2
    local f3_local3 = 50
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 4
    local f3_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act02(arg0, arg1, arg2)
    local f4_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 20
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 4
    local f4_local7 = arg0:GetRandam_Int(1, 100)
    local f4_local8 = 3002
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act03(arg0, arg1, arg2)
    local f5_local0 = 27.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 0
    local f5_local3 = 50
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 4
    local f5_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local8 = 3003
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act04(arg0, arg1, arg2)
    local f6_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 4
    local f6_local3 = 50
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 4
    local f6_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f6_local8 = 3006
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local10 = 0
    local f6_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act05(arg0, arg1, arg2)
    local f7_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 0
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    local f7_local7 = arg0:GetRandam_Int(1, 100)
    local f7_local8 = 3007
    local f7_local9 = 3008
    local f7_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local11 = 0
    local f7_local12 = 360
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f7_local9, TARGET_ENE_0, f7_local10, f7_local11, f7_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f7_local8, TARGET_ENE_0, f7_local10, f7_local11, f7_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act07(arg0, arg1, arg2)
    local f8_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 0
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    local f8_local7 = arg0:GetRandam_Int(1, 100)
    local f8_local8 = 3010
    local f8_local9 = 3011
    local f8_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local11 = 0
    local f8_local12 = 360
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f8_local9, TARGET_ENE_0, f8_local10, f8_local11, f8_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f8_local8, TARGET_ENE_0, f8_local10, f8_local11, f8_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act08(arg0, arg1, arg2)
    local f9_local0 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 0
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    local f9_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f9_local8 = 3012
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act09(arg0, arg1, arg2)
    local f10_local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 0
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 3
    local f10_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f10_local8 = 3013
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local10 = 0
    local f10_local11 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f10_local8, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act10(arg0, arg1, arg2)
    local f11_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 0
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 3
    local f11_local7 = arg0:GetRandam_Int(1, 100)
    local f11_local8 = 3014
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local10 = 0
    local f11_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act11(arg0, arg1, arg2)
    local f12_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 0
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 3
    local f12_local6 = 3
    local f12_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    local f12_local8 = 3017
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local10 = 0
    local f12_local11 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act12(arg0, arg1, arg2)
    local f13_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 0
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 3
    local f13_local6 = 3
    local f13_local7 = arg0:GetRandam_Int(1, 100)
    local f13_local8 = 3018
    local f13_local9 = 3019
    local f13_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local11 = 0
    local f13_local12 = 360
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, f13_local8, TARGET_ENE_0, f13_local10, f13_local11, f13_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, f13_local9, TARGET_ENE_0, f13_local10, f13_local11, f13_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act14(arg0, arg1, arg2)
    local f14_local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 0
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 3
    local f14_local6 = 3
    local f14_local7 = arg0:GetRandam_Int(1, 100)
    local f14_local8 = 3021
    local f14_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local10 = 0
    local f14_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f14_local8, TARGET_ENE_0, f14_local9, f14_local10, f14_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act15(arg0, arg1, arg2)
    local f15_local0 = 65 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = f15_local0 + 0
    local f15_local2 = f15_local0 + 0
    local f15_local3 = 70
    local f15_local4 = 0
    local f15_local5 = 4
    local f15_local6 = 4
    local f15_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f15_local8 = 3023
    local f15_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local10 = 0
    local f15_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f15_local8, TARGET_ENE_0, f15_local9, f15_local10, f15_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act16(arg0, arg1, arg2)
    local f16_local0 = 40 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = f16_local0 + 0
    local f16_local2 = f16_local0 + 0
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 4
    local f16_local6 = 4
    local f16_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local8 = 3026
    local f16_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f16_local10 = 0
    local f16_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f16_local8, TARGET_ENE_0, f16_local9, f16_local10, f16_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act17(arg0, arg1, arg2)
    local f17_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 0
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 3
    local f17_local6 = 3
    local f17_local7 = arg0:GetRandam_Int(1, 100)
    local f17_local8 = 3028
    local f17_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f17_local10 = 0
    local f17_local11 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f17_local8, TARGET_ENE_0, f17_local9, f17_local10, f17_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act18(arg0, arg1, arg2)
    local f18_local0 = 22 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = f18_local0 + 0
    local f18_local2 = f18_local0 + 0
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = 4
    local f18_local6 = 4
    local f18_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    local f18_local8 = 3030
    local f18_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f18_local10 = 0
    local f18_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f18_local8, TARGET_ENE_0, f18_local9, f18_local10, f18_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act30(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13201) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, 40, TARGET_ENE_0, false, -1)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13200) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, 40, TARGET_ENE_0, false, -1)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13200) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 40, TARGET_ENE_0, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act21(arg0, arg1, arg2)
    local f20_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f20_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act32(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_Act33(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 90, -1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Devastationer465010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Devastationer465010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f26_local0 = arg1:GetDist(TARGET_ENE_0)
    local f26_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f26_local2 = 0
    local f26_local3 = 0
    local f26_local4 = arg1:GetRandam_Int(1, 100)
    local f26_local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13201) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 20) then
                if f26_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 30) then
                if f26_local4 <= 60 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_ENE_0, f26_local1, f26_local2, f26_local3, 0, 0)
                    return true
                elseif f26_local4 <= 90 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
                    return true
                else
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13200) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 20) then
                if f26_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 30) then
                if f26_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 7) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 15) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 7) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 11) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 8) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 13) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13201) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 10) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 25) then
                if f26_local4 <= 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3029, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3030, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 30) then
                if f26_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3023, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3029, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 50) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13200) == true and arg1:GetHpRate(TARGET_SELF) < 0.6 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 10) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 160, 180, 30) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3029, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 9) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 30) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 8) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5032) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 7.5) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 25) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 180, 25) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 50, TARGET_ENE_0, false, -1)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 50, TARGET_ENE_0, false, -1)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 50, TARGET_ENE_0, false, -1)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5033) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 10) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 15) then
            if f26_local4 <= 90 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 20) then
            if f26_local4 <= 40 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3030, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 26) then
            if f26_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3003, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3030, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 55) then
            if f26_local4 <= 45 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5034) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13201) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 8) then
                if f26_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f26_local4 <= 90 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
                    return true
                else
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13200) == true and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 8) then
            if f26_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f26_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
                return true
            else
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5035) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 10) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 15) then
            if f26_local4 <= 90 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 20) then
            if f26_local4 <= 40 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3030, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 26) then
            if f26_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3003, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3030, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 55) then
            if f26_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5036) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 10) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 15) then
            if f26_local4 <= 90 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 20) then
            if f26_local4 <= 40 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3030, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 26) then
            if f26_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3003, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3030, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 55) and f26_local4 <= 80 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Devastationer465010_AfterAttackAct, "GOAL_Devastationer465010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Devastationer465010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


