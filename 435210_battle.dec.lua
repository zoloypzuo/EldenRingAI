RegisterTableGoal(GOAL_RoamKnightLanceMS435210_Battle, "RoamKnightLanceMS435210_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamKnightLanceMS435210_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
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
    arg1:EnableUnfavorableAttackCheck(1000000, 3010)
    arg1:EnableUnfavorableAttackCheck(1000000, 3011)
    arg1:EnableUnfavorableAttackCheck(1000000, 3012)
    arg1:EnableUnfavorableAttackCheck(4000000, 3000)
    arg1:EnableUnfavorableAttackCheck(4000000, 3001)
    arg1:EnableUnfavorableAttackCheck(4000000, 3002)
    arg1:EnableUnfavorableAttackCheck(4000000, 3003)
    arg1:EnableUnfavorableAttackCheck(4000000, 3004)
    arg1:EnableUnfavorableAttackCheck(4000000, 3005)
    arg1:EnableUnfavorableAttackCheck(4000000, 3006)
    arg1:EnableUnfavorableAttackCheck(4000000, 3007)
    arg1:EnableUnfavorableAttackCheck(4000000, 3008)
    
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 51)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local8 = arg1:GetEventRequest()
    if arg1:IsRiding(TARGET_SELF) == true then
        if f2_local3 >= 15 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14478) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
                    f2_local0[20] = 10
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 50
                    f2_local0[29] = 0
                    f2_local0[31] = 100
                    f2_local0[40] = 0
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
                    f2_local0[29] = 100
                    f2_local0[40] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14478) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
                    f2_local0[20] = 30
                    f2_local0[21] = 70
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[31] = 100
                    f2_local0[40] = 0
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
                    f2_local0[29] = 100
                    f2_local0[40] = 0
                end
            end
        elseif f2_local3 >= 12.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14478) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
                    f2_local0[20] = 10
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 50
                    f2_local0[29] = 0
                    f2_local0[31] = 100
                    f2_local0[40] = 0
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
                    f2_local0[29] = 100
                    f2_local0[40] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14478) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
                    f2_local0[20] = 30
                    f2_local0[21] = 70
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[31] = 100
                    f2_local0[40] = 0
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
                    f2_local0[29] = 100
                    f2_local0[40] = 0
                end
            end
        elseif f2_local3 >= 10 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14478) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
                    f2_local0[20] = 10
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 50
                    f2_local0[29] = 0
                    f2_local0[31] = 100
                    f2_local0[40] = 0
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
                    f2_local0[29] = 100
                    f2_local0[40] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14478) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
                    f2_local0[20] = 30
                    f2_local0[21] = 70
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[31] = 100
                    f2_local0[40] = 0
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
                    f2_local0[29] = 100
                    f2_local0[40] = 0
                end
            end
        elseif f2_local3 >= 7.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14478) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
                    f2_local0[20] = 10
                    f2_local0[21] = 30
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 50
                    f2_local0[29] = 0
                    f2_local0[31] = 100
                    f2_local0[40] = 0
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
                    f2_local0[29] = 100
                    f2_local0[40] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14478) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
                    f2_local0[20] = 30
                    f2_local0[21] = 70
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[31] = 100
                    f2_local0[40] = 0
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
                    f2_local0[29] = 100
                    f2_local0[40] = 0
                end
            end
        elseif f2_local3 >= 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14478) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
                    f2_local0[20] = 30
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 70
                    f2_local0[29] = 0
                    f2_local0[31] = 100
                    f2_local0[40] = 0
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
                    f2_local0[29] = 100
                    f2_local0[40] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14478) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
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
                    f2_local0[31] = 100
                    f2_local0[40] = 0
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
                    f2_local0[29] = 100
                    f2_local0[40] = 0
                end
            end
        elseif f2_local3 >= 3.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14478) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    f2_local0[20] = 20
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 80
                    f2_local0[29] = 0
                    f2_local0[31] = 100
                    f2_local0[40] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 50
                    f2_local0[29] = 10
                    f2_local0[31] = 100
                    f2_local0[40] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                    f2_local0[20] = 20
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 80
                    f2_local0[29] = 0
                    f2_local0[31] = 100
                    f2_local0[40] = 0
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 80
                    f2_local0[29] = 20
                    f2_local0[40] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14478) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
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
                    f2_local0[31] = 100
                    f2_local0[40] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 80
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 20
                    f2_local0[31] = 100
                    f2_local0[40] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
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
                    f2_local0[31] = 100
                    f2_local0[40] = 0
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
                    f2_local0[29] = 100
                    f2_local0[40] = 0
                end
            end
        elseif f2_local3 >= 3 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14478) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    f2_local0[20] = 20
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 80
                    f2_local0[29] = 0
                    f2_local0[40] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 50
                    f2_local0[29] = 20
                    f2_local0[40] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 20
                    f2_local0[24] = 0
                    f2_local0[25] = 30
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 50
                    f2_local0[29] = 0
                    f2_local0[40] = 0
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 80
                    f2_local0[29] = 20
                    f2_local0[40] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14478) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
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
                    f2_local0[40] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 70
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 30
                    f2_local0[40] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                    f2_local0[20] = 20
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 30
                    f2_local0[24] = 0
                    f2_local0[25] = 50
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[40] = 0
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
                    f2_local0[29] = 100
                    f2_local0[40] = 0
                end
            end
        elseif f2_local3 >= 2.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14478) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 10
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                    f2_local0[26] = 0
                    f2_local0[27] = 20
                    f2_local0[28] = 50
                    f2_local0[29] = 0
                    f2_local0[40] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 10
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 30
                    f2_local0[28] = 50
                    f2_local0[29] = 10
                    f2_local0[40] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 10
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                    f2_local0[26] = 0
                    f2_local0[27] = 20
                    f2_local0[28] = 50
                    f2_local0[29] = 0
                    f2_local0[40] = 0
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 80
                    f2_local0[29] = 20
                    f2_local0[40] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14478) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 100) then
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 25
                    f2_local0[24] = 0
                    f2_local0[25] = 25
                    f2_local0[26] = 0
                    f2_local0[27] = 40
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[40] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 100) then
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 50
                    f2_local0[28] = 0
                    f2_local0[29] = 20
                    f2_local0[40] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 100) then
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 25
                    f2_local0[24] = 0
                    f2_local0[25] = 25
                    f2_local0[26] = 0
                    f2_local0[27] = 40
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                    f2_local0[40] = 0
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
                    f2_local0[29] = 100
                    f2_local0[40] = 0
                end
            end
        elseif f2_local3 >= 2 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14478) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 100) then
                    f2_local0[20] = 20
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 30
                    f2_local0[28] = 50
                    f2_local0[29] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 60, 180, 100) then
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 20
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 30
                    f2_local0[28] = 50
                    f2_local0[29] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 60, 180, 100) then
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 10
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 30
                    f2_local0[28] = 50
                    f2_local0[29] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 100, 180, 100) then
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 20
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 30
                    f2_local0[28] = 50
                    f2_local0[29] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 100, 180, 100) then
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 10
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                    f2_local0[26] = 0
                    f2_local0[27] = 20
                    f2_local0[28] = 50
                    f2_local0[29] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 60, 180, 100) then
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 50
                    f2_local0[29] = 20
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 60, 180, 100) then
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 15
                    f2_local0[24] = 0
                    f2_local0[25] = 15
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 50
                    f2_local0[29] = 10
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 30
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 50
                    f2_local0[29] = 20
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14478) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 100) then
                    f2_local0[20] = 30
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 70
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 60, 180, 100) then
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 30
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 70
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 60, 180, 100) then
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 30
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 50
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 100, 180, 100) then
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 30
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 70
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 100, 180, 100) then
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 25
                    f2_local0[24] = 0
                    f2_local0[25] = 25
                    f2_local0[26] = 0
                    f2_local0[27] = 50
                    f2_local0[28] = 0
                    f2_local0[29] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 60, 180, 100) then
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 70
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 30
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 60, 180, 100) then
                    f2_local0[20] = 20
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 30
                    f2_local0[24] = 0
                    f2_local0[25] = 30
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 20
                else
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 70
                    f2_local0[26] = 0
                    f2_local0[27] = 0
                    f2_local0[28] = 0
                    f2_local0[29] = 30
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14478) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 100) then
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 10
                f2_local0[25] = 0
                f2_local0[26] = 10
                f2_local0[27] = 20
                f2_local0[28] = 50
                f2_local0[29] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 60, 180, 100) then
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 10
                f2_local0[25] = 0
                f2_local0[26] = 10
                f2_local0[27] = 20
                f2_local0[28] = 50
                f2_local0[29] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 60, 180, 100) then
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 10
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 20
                f2_local0[28] = 50
                f2_local0[29] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 100, 180, 100) then
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 10
                f2_local0[25] = 0
                f2_local0[26] = 10
                f2_local0[27] = 20
                f2_local0[28] = 50
                f2_local0[29] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 100, 180, 100) then
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 10
                f2_local0[25] = 10
                f2_local0[26] = 0
                f2_local0[27] = 20
                f2_local0[28] = 40
                f2_local0[29] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 60, 180, 100) then
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 10
                f2_local0[25] = 0
                f2_local0[26] = 10
                f2_local0[27] = 0
                f2_local0[28] = 60
                f2_local0[29] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 60, 180, 100) then
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 10
                f2_local0[25] = 10
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 50
                f2_local0[29] = 10
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 80
                f2_local0[29] = 10
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14478) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 100) then
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 25
                f2_local0[25] = 0
                f2_local0[26] = 25
                f2_local0[27] = 40
                f2_local0[28] = 0
                f2_local0[29] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 60, 180, 100) then
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 25
                f2_local0[24] = 25
                f2_local0[25] = 0
                f2_local0[26] = 20
                f2_local0[27] = 30
                f2_local0[28] = 0
                f2_local0[29] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 60, 180, 100) then
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 25
                f2_local0[24] = 25
                f2_local0[25] = 0
                f2_local0[26] = 0
                f2_local0[27] = 40
                f2_local0[28] = 0
                f2_local0[29] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 100, 180, 100) then
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 25
                f2_local0[23] = 0
                f2_local0[24] = 25
                f2_local0[25] = 0
                f2_local0[26] = 20
                f2_local0[27] = 30
                f2_local0[28] = 0
                f2_local0[29] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 100, 180, 100) then
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 15
                f2_local0[24] = 15
                f2_local0[25] = 15
                f2_local0[26] = 0
                f2_local0[27] = 45
                f2_local0[28] = 0
                f2_local0[29] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 60, 180, 100) then
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 30
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 0
                f2_local0[26] = 25
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 15
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 60, 180, 100) then
                f2_local0[20] = 20
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 20
                f2_local0[24] = 20
                f2_local0[25] = 20
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 20
            else
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 70
                f2_local0[26] = 0
                f2_local0[27] = 0
                f2_local0[28] = 0
                f2_local0[29] = 30
            end
        end
    elseif arg1:IsRiding(TARGET_SELF) == false then
        if arg1:IsRiding(TARGET_ENE_0) == true then
            if f2_local3 >= 20 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[10] = 0
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                else
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                end
            elseif f2_local3 >= 15 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[10] = 0
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                else
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                end
            elseif f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[10] = 0
                    f2_local0[15] = 100
                    f2_local0[40] = 70
                    f2_local0[41] = 0
                    f2_local0[42] = 30
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                else
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                end
            elseif f2_local3 >= 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[10] = 0
                    f2_local0[15] = 100
                    f2_local0[40] = 70
                    f2_local0[41] = 0
                    f2_local0[42] = 30
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                else
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                end
            elseif f2_local3 >= 4 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[10] = 0
                    f2_local0[40] = 70
                    f2_local0[41] = 0
                    f2_local0[42] = 30
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                else
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[10] = 150
                f2_local0[40] = 0
                f2_local0[41] = 10
                f2_local0[42] = 10
                f2_local0[43] = 0
                f2_local0[44] = 0
                f2_local0[45] = 0
                f2_local0[46] = 0
                f2_local0[47] = 0
            else
                f2_local0[40] = 100
                f2_local0[41] = 0
                f2_local0[42] = 0
                f2_local0[43] = 0
                f2_local0[44] = 0
                f2_local0[45] = 0
                f2_local0[46] = 0
                f2_local0[47] = 0
            end
        elseif arg1:IsRiding(TARGET_ENE_0) == false then
            if f2_local3 >= 20 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 30
                    f2_local0[7] = 0
                    f2_local0[8] = 70
                    f2_local0[9] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                else
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                end
            elseif f2_local3 >= 15 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 30
                    f2_local0[7] = 0
                    f2_local0[8] = 70
                    f2_local0[9] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                else
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                end
            elseif f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 20
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 80
                        f2_local0[9] = 0
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 0
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 0
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 20
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 30
                        f2_local0[7] = 0
                        f2_local0[8] = 50
                        f2_local0[9] = 0
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 0
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 0
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    end
                else
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                end
            elseif f2_local3 >= 6.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 35
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 35
                        f2_local0[9] = 0
                        f2_local0[15] = 100
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 30
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 0
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 20
                        f2_local0[2] = 20
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 20
                        f2_local0[7] = 0
                        f2_local0[8] = 20
                        f2_local0[9] = 0
                        f2_local0[15] = 100
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 40
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 0
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    end
                else
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                end
            elseif f2_local3 >= 5.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 25
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 25
                        f2_local0[9] = 0
                        f2_local0[15] = 100
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 50
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 0
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 0
                        f2_local0[2] = 20
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 20
                        f2_local0[7] = 0
                        f2_local0[8] = 20
                        f2_local0[9] = 0
                        f2_local0[15] = 100
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 40
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 0
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    end
                else
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                end
            elseif f2_local3 >= 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 10
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 10
                        f2_local0[9] = 0
                        f2_local0[15] = 100
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 70
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 0
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 0
                        f2_local0[2] = 10
                        f2_local0[3] = 0
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[6] = 10
                        f2_local0[7] = 0
                        f2_local0[8] = 10
                        f2_local0[9] = 0
                        f2_local0[15] = 100
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 60
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 0
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    end
                else
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                end
            elseif f2_local3 >= 4.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 10
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 10
                        f2_local0[9] = 0
                        f2_local0[15] = 100
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 70
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 0
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 0
                        f2_local0[2] = 10
                        f2_local0[3] = 0
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[6] = 10
                        f2_local0[7] = 0
                        f2_local0[8] = 10
                        f2_local0[9] = 0
                        f2_local0[15] = 100
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 60
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 0
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    end
                else
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                end
            elseif f2_local3 >= 4 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        f2_local0[1] = 20
                        f2_local0[2] = 20
                        f2_local0[3] = 0
                        f2_local0[4] = 30
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 30
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 10
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 10
                        f2_local0[8] = 10
                        f2_local0[9] = 0
                        f2_local0[15] = 100
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 60
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 0
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 0
                        f2_local0[2] = 10
                        f2_local0[3] = 0
                        f2_local0[4] = 10
                        f2_local0[5] = 10
                        f2_local0[6] = 10
                        f2_local0[7] = 0
                        f2_local0[8] = 10
                        f2_local0[9] = 0
                        f2_local0[15] = 100
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 50
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 0
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[40] = 10
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 90
                    f2_local0[47] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[40] = 10
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 90
                    f2_local0[47] = 0
                else
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 100
                    f2_local0[47] = 0
                end
            elseif f2_local3 >= 3 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        f2_local0[1] = 20
                        f2_local0[2] = 20
                        f2_local0[3] = 0
                        f2_local0[4] = 30
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 30
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 10
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 10
                        f2_local0[8] = 10
                        f2_local0[9] = 0
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 60
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 0
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 10
                        f2_local0[2] = 10
                        f2_local0[3] = 0
                        f2_local0[4] = 10
                        f2_local0[5] = 10
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 10
                        f2_local0[9] = 0
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 50
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 0
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 0
                    f2_local0[7] = 20
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 60
                    f2_local0[47] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 0
                    f2_local0[7] = 20
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 60
                    f2_local0[47] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 30
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 70
                    f2_local0[47] = 0
                end
            elseif f2_local3 >= 2.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        f2_local0[1] = 20
                        f2_local0[2] = 30
                        f2_local0[3] = 0
                        f2_local0[4] = 30
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 20
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 10
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 10
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 10
                        f2_local0[8] = 0
                        f2_local0[9] = 10
                        f2_local0[40] = 0
                        f2_local0[41] = 20
                        f2_local0[42] = 40
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 0
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 15
                        f2_local0[2] = 15
                        f2_local0[3] = 0
                        f2_local0[4] = 10
                        f2_local0[5] = 10
                        f2_local0[6] = 0
                        f2_local0[7] = 10
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 40
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 0
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 30
                    f2_local0[6] = 0
                    f2_local0[7] = 20
                    f2_local0[8] = 0
                    f2_local0[9] = 10
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 40
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 30
                    f2_local0[6] = 0
                    f2_local0[7] = 20
                    f2_local0[8] = 0
                    f2_local0[9] = 10
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 40
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 20
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 80
                    f2_local0[47] = 0
                end
            elseif f2_local3 >= 1.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                        f2_local0[1] = 30
                        f2_local0[2] = 40
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 30
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        f2_local0[1] = 20
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 20
                        f2_local0[15] = 0
                        f2_local0[40] = 0
                        f2_local0[41] = 35
                        f2_local0[42] = 0
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 25
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        f2_local0[1] = 40
                        f2_local0[2] = 20
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 20
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 20
                        f2_local0[15] = 0
                        f2_local0[40] = 0
                        f2_local0[41] = 0
                        f2_local0[42] = 0
                        f2_local0[43] = 0
                        f2_local0[44] = 0
                        f2_local0[45] = 0
                        f2_local0[46] = 0
                        f2_local0[47] = 0
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 20
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 80
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 20
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 80
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 20
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 80
                    f2_local0[47] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    f2_local0[1] = 30
                    f2_local0[2] = 40
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 30
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    f2_local0[1] = 10
                    f2_local0[2] = 0
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 10
                    f2_local0[15] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 30
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 20
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                    f2_local0[1] = 30
                    f2_local0[2] = 10
                    f2_local0[3] = 30
                    f2_local0[4] = 0
                    f2_local0[5] = 10
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 20
                    f2_local0[15] = 0
                    f2_local0[40] = 0
                    f2_local0[41] = 0
                    f2_local0[42] = 0
                    f2_local0[43] = 0
                    f2_local0[44] = 0
                    f2_local0[45] = 0
                    f2_local0[46] = 0
                    f2_local0[47] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 20
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 0
                f2_local0[43] = 0
                f2_local0[44] = 0
                f2_local0[45] = 80
                f2_local0[46] = 0
                f2_local0[47] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 20
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 0
                f2_local0[43] = 0
                f2_local0[44] = 0
                f2_local0[45] = 80
                f2_local0[46] = 0
                f2_local0[47] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 20
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[42] = 0
                f2_local0[43] = 0
                f2_local0[44] = 0
                f2_local0[45] = 0
                f2_local0[46] = 80
                f2_local0[47] = 0
            end
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3007, 15, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3009, 15, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3010, 5, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3011, 5, f2_local0[10], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3027, 15, f2_local0[15], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[20], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[21], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[22], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3004, 5, f2_local0[23], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3005, 5, f2_local0[24], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 3006, 5, f2_local0[25], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 3007, 5, f2_local0[26], 1)
    f2_local0[27] = SetCoolTime(arg1, arg2, 3008, 20, f2_local0[27], 1)
    f2_local0[28] = SetCoolTime(arg1, arg2, 3011, 30, f2_local0[28], 1)
    f2_local0[29] = SetCoolTime(arg1, arg2, 3020, 5, f2_local0[29], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3023, 15, f2_local0[31], 0)
    f2_local0[45] = SetCoolTime(arg1, arg2, 6001, 5, f2_local0[45], 0)
    f2_local0[46] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[46], 0)
    f2_local0[46] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[46], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act10)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act15)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act29)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act31)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_Act47)
    local f2_local9 = REGIST_FUNC(arg1, arg2, RoamKnightLanceMS435210_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function RoamKnightLanceMS435210_Act01(arg0, arg1, arg2)
    local f3_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
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

function RoamKnightLanceMS435210_Act02(arg0, arg1, arg2)
    local f4_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 10
    local f4_local3 = 30
    local f4_local4 = 100
    local f4_local5 = 3
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3002
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act03(arg0, arg1, arg2)
    local f5_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 10
    local f5_local3 = 30
    local f5_local4 = 100
    local f5_local5 = 3
    local f5_local6 = 3
    local f5_local7 = 3003
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act04(arg0, arg1, arg2)
    local f6_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 10
    local f6_local3 = 40
    local f6_local4 = 100
    local f6_local5 = 3
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3004
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act05(arg0, arg1, arg2)
    local f7_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 10
    local f7_local3 = 40
    local f7_local4 = 100
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

function RoamKnightLanceMS435210_Act06(arg0, arg1, arg2)
    local f8_local0 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 10
    local f8_local3 = 40
    local f8_local4 = 100
    local f8_local5 = 3
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3006
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local9 = 0
    local f8_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act07(arg0, arg1, arg2)
    local f9_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 10
    local f9_local3 = 40
    local f9_local4 = 100
    local f9_local5 = 3
    local f9_local6 = 3
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3007
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act08(arg0, arg1, arg2)
    local f10_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 10
    local f10_local3 = 30
    local f10_local4 = 100
    local f10_local5 = 3
    local f10_local6 = 3
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3009
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act09(arg0, arg1, arg2)
    local f11_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 10
    local f11_local3 = 30
    local f11_local4 = 100
    local f11_local5 = 3
    local f11_local6 = 3
    local f11_local7 = 3010
    local f11_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local9 = 0
    local f11_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act10(arg0, arg1, arg2)
    local f12_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 10
    local f12_local3 = 30
    local f12_local4 = 100
    local f12_local5 = 3
    local f12_local6 = 3
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3011
    local f12_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local9 = 0
    local f12_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act15(arg0, arg1, arg2)
    local f13_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 10
    local f13_local3 = 0
    local f13_local4 = 100
    local f13_local5 = 3
    local f13_local6 = 3
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3027
    local f13_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local9 = 0
    local f13_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act20(arg0, arg1, arg2)
    local f14_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 10
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 3
    local f14_local6 = 3
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3000
    local f14_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local9 = 0
    local f14_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act21(arg0, arg1, arg2)
    local f15_local0 = 13 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = f15_local0 + 0
    local f15_local2 = f15_local0 + 10
    local f15_local3 = 100
    local f15_local4 = 0
    local f15_local5 = 3
    local f15_local6 = 3
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 3002
    local f15_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local9 = 0
    local f15_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act22(arg0, arg1, arg2)
    local f16_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = f16_local0 + 0
    local f16_local2 = f16_local0 + 10
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 3
    local f16_local6 = 3
    local f16_local7 = 3003
    local f16_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f16_local9 = 0
    local f16_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f16_local7, TARGET_ENE_0, f16_local8, f16_local9, f16_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act23(arg0, arg1, arg2)
    local f17_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 10
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 3
    local f17_local6 = 3
    local f17_local7 = 3004
    local f17_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f17_local9 = 0
    local f17_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f17_local7, TARGET_ENE_0, f17_local8, f17_local9, f17_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act24(arg0, arg1, arg2)
    local f18_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = f18_local0 + 0
    local f18_local2 = f18_local0 + 10
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = 3
    local f18_local6 = 3
    local f18_local7 = 3005
    local f18_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f18_local9 = 0
    local f18_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f18_local7, TARGET_ENE_0, f18_local8, f18_local9, f18_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act25(arg0, arg1, arg2)
    local f19_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = f19_local0 + 0
    local f19_local2 = f19_local0 + 10
    local f19_local3 = 0
    local f19_local4 = 0
    local f19_local5 = 3
    local f19_local6 = 3
    local f19_local7 = 3006
    local f19_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f19_local9 = 0
    local f19_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f19_local7, TARGET_ENE_0, f19_local8, f19_local9, f19_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act26(arg0, arg1, arg2)
    local f20_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = f20_local0 + 0
    local f20_local2 = f20_local0 + 10
    local f20_local3 = 0
    local f20_local4 = 0
    local f20_local5 = 3
    local f20_local6 = 3
    local f20_local7 = 3007
    local f20_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f20_local9 = 0
    local f20_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f20_local7, TARGET_ENE_0, f20_local8, f20_local9, f20_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act27(arg0, arg1, arg2)
    local f21_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local1 = f21_local0 + 0
    local f21_local2 = f21_local0 + 10
    local f21_local3 = 0
    local f21_local4 = 0
    local f21_local5 = 3
    local f21_local6 = 3
    local f21_local7 = 3008
    local f21_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f21_local9 = 0
    local f21_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f21_local7, TARGET_ENE_0, f21_local8, f21_local9, f21_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act28(arg0, arg1, arg2)
    local f22_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = f22_local0 + 0
    local f22_local2 = f22_local0 + 10
    local f22_local3 = 100
    local f22_local4 = 0
    local f22_local5 = 3
    local f22_local6 = 3
    Approach_Act_Flex(arg0, arg1, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6)
    local f22_local7 = 3011
    local f22_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f22_local9 = 0
    local f22_local10 = 360
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f22_local7, TARGET_ENE_0, f22_local8, f22_local9, f22_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act29(arg0, arg1, arg2)
    local f23_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local1 = f23_local0 + 0
    local f23_local2 = f23_local0 + 10
    local f23_local3 = 0
    local f23_local4 = 0
    local f23_local5 = 3
    local f23_local6 = 3
    local f23_local7 = 3020
    local f23_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f23_local9 = 0
    local f23_local10 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f23_local7, TARGET_ENE_0, f23_local8, f23_local9, f23_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act31(arg0, arg1, arg2)
    local f24_local0 = 21 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local1 = f24_local0 + 0
    local f24_local2 = f24_local0 + 10
    local f24_local3 = 100
    local f24_local4 = 0
    local f24_local5 = 3
    local f24_local6 = 3
    Approach_Act_Flex(arg0, arg1, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6)
    local f24_local7 = 3023
    local f24_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f24_local9 = 0
    local f24_local10 = 360
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f24_local7, TARGET_ENE_0, f24_local8, f24_local9, f24_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act40(arg0, arg1, arg2)
    if arg0:IsRiding(TARGET_SELF) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
    elseif arg0:IsRiding(TARGET_SELF) == false then
        if arg0:IsRiding(TARGET_ENE_0) == true then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 4, TARGET_ENE_0, true, 9920)
        elseif arg0:IsRiding(TARGET_ENE_0) == false then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, false, 9910)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act41(arg0, arg1, arg2)
    local f26_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f26_local0, 0) >= 2 then
        if arg0:IsRiding(TARGET_ENE_0) == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, 9920)
        elseif arg0:IsRiding(TARGET_ENE_0) == false then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, 9910)
        end
    elseif arg0:IsRiding(TARGET_ENE_0) == true then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9920)
    elseif arg0:IsRiding(TARGET_ENE_0) == false then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act42(arg0, arg1, arg2)
    if arg0:IsRiding(TARGET_ENE_0) == true then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9920)
    elseif arg0:IsRiding(TARGET_ENE_0) == false then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2.5, TARGET_ENE_0, 90, 9910, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act46(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamKnightLanceMS435210_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RoamKnightLanceMS435210_AfterAttackAct, 10)
    
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
    local f36_local7 = arg1:GetDist(TARGET_FRI_0)
    local f36_local8 = arg1:GetMapHitRadius(TARGET_SELF)
    local f36_local9 = arg1:GetPrevTargetState()
    local f36_local10 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsRiding(TARGET_SELF) == true then
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 4) then
            if f36_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 360, 180, 100) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 4) then
                if arg1:GetNumber(0) >= 10 then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                    arg1:SetNumber(0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 6) then
                arg1:SetNumber(0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 6) then
                arg1:SetNumber(0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 6) then
                arg1:SetNumber(0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 9) then
                arg1:SetNumber(0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:GetNumber(0) >= 10 then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                arg1:SetNumber(0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 4) then
                if arg1:GetNumber(0) >= 10 then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                    arg1:SetNumber(0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 6) then
                arg1:SetNumber(0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 6) then
                arg1:SetNumber(0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 6) then
                arg1:SetNumber(0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 9) then
                arg1:SetNumber(0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:GetNumber(0) >= 10 then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                arg1:SetNumber(0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 360, 180, 10) then
                if arg1:GetNumber(0) >= 10 then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                    arg1:SetNumber(0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 360, 180, 100) then
                if arg1:GetNumber(0) >= 10 then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                    arg1:SetNumber(0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                    return true
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 360, 180, 10) then
                if arg1:GetNumber(0) >= 10 then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                    arg1:SetNumber(0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 360, 180, 100) then
                if arg1:GetNumber(0) >= 10 then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                    arg1:SetNumber(0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                    return true
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 5) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, 180, 10) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
        return false
    elseif arg1:IsRiding(TARGET_SELF) == false then
        if arg1:IsInterupt(INTERUPT_UseItem) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
                if f36_local4 <= 50 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, f36_local2, f36_local3, 0, 0)
                    return true
                elseif f36_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, f36_local2, f36_local3, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 6) then
                if f36_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, f36_local2, f36_local3, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 20) then
                if f36_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, false, 9910)
                    return true
                else
                    return true
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
                if f36_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, f36_local2, f36_local3, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 9) then
                if f36_local4 <= 40 then
                    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                        return true
                    end
                elseif f36_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 4, TARGET_ENE_0, false, 9910)
                    return true
                else
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 20) then
                if f36_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 4, TARGET_ENE_0, false, 9910)
                    return true
                else
                    return true
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_SuccessGuard) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
            if f36_local4 <= 50 then
                if arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f36_local8, 0) >= 2 then
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
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                if f36_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 4) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f36_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 4) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f36_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 3) and arg1:IsTargetGuard(TARGET_ENE_0) == true then
            if f36_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 2) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f36_local4 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f36_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 4) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f36_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 4) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f36_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 4) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f36_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 4) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if f36_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 3) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5.5) then
                if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    if f36_local4 <= 40 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f36_local4 <= 70 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                        return true
                    end
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                    if f36_local4 <= 30 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f36_local4 <= 70 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                        return true
                    end
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5032) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 3) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5.5) then
                if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    if f36_local4 <= 40 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f36_local4 <= 70 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                        return true
                    end
                elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                    if f36_local4 <= 30 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f36_local4 <= 70 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                        return true
                    end
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5033) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 3) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5.5) then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                        if f36_local4 <= 40 then
                            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f36_local4 <= 70 then
                            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                            return true
                        end
                    elseif arg1:IsTargetGuard(TARGET_ENE_0) == false then
                        if f36_local4 <= 30 then
                            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                            return true
                        elseif f36_local4 <= 70 then
                            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                            return true
                        else
                            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
                            return true
                        end
                    end
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5034) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4) and arg1:IsTargetGuard(TARGET_ENE_0) == true then
            if f36_local4 <= 50 then
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
    end
    return false
    
end

RegisterTableGoal(GOAL_RoamKnightLanceMS435210_AfterAttackAct, "RoamKnightLanceMS435210_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamKnightLanceMS435210_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


