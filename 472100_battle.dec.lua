RegisterTableGoal(GOAL_GodFrey472100_Battle, "GodFrey472100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GodFrey472100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12290)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12294)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 51)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local9 = arg1:GetEventRequest()
    if arg1:GetHpRate(TARGET_SELF) < 0.3 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12290) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[11] = 100
            else
                f2_local0[30] = 100
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12290) == true then
            if f2_local3 > 20 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 100
                    f2_local0[34] = 0
                else
                    f2_local0[30] = 100
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                end
            elseif f2_local3 > 15 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 150
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 60
                    f2_local0[34] = 40
                else
                    f2_local0[30] = 100
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                end
            elseif f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 150
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 60
                    f2_local0[34] = 40
                else
                    f2_local0[30] = 100
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                end
            elseif f2_local3 > 7.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[10] = 200
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[14] = 0
                    f2_local0[16] = 150
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 60
                    f2_local0[34] = 40
                else
                    f2_local0[30] = 100
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                end
            elseif f2_local3 > 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 25
                    f2_local0[6] = 25
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 200
                    f2_local0[12] = 0
                    f2_local0[13] = 100
                    f2_local0[14] = 0
                    f2_local0[16] = 150
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 50
                    f2_local0[34] = 0
                else
                    f2_local0[30] = 100
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                end
            elseif f2_local3 > 2.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 10
                    f2_local0[3] = 25
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 10
                    f2_local0[9] = 10
                    f2_local0[10] = 200
                    f2_local0[12] = 0
                    f2_local0[13] = 100
                    f2_local0[14] = 10
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 25
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 70
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 30
                    f2_local0[10] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 100
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 20
                    f2_local0[3] = 0
                    f2_local0[4] = 20
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 10
                    f2_local0[10] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 100
                    f2_local0[14] = 0
                    f2_local0[16] = 0
                    f2_local0[17] = 0
                    f2_local0[18] = 50
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                else
                    f2_local0[15] = 90
                    f2_local0[30] = 10
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                    f2_local0[33] = 0
                    f2_local0[34] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 20
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 0
                f2_local0[9] = 10
                f2_local0[10] = 0
                f2_local0[12] = 10
                f2_local0[13] = 100
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 20
                f2_local0[18] = 20
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
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
                f2_local0[10] = 0
                f2_local0[12] = 20
                f2_local0[13] = 100
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 60
                f2_local0[18] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 10
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 100
                f2_local0[14] = 0
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[18] = 50
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
            else
                f2_local0[15] = 90
                f2_local0[30] = 10
                f2_local0[31] = 0
                f2_local0[32] = 0
                f2_local0[33] = 0
                f2_local0[34] = 0
            end
        end
    elseif f2_local3 > 20 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[10] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 100
            f2_local0[34] = 0
        else
            f2_local0[30] = 100
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
        end
    elseif f2_local3 > 15 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[10] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 60
            f2_local0[34] = 40
        else
            f2_local0[30] = 100
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
        end
    elseif f2_local3 > 10 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[10] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 60
            f2_local0[34] = 40
        else
            f2_local0[30] = 100
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
        end
    elseif f2_local3 > 7.5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[10] = 200
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 60
            f2_local0[34] = 40
        else
            f2_local0[30] = 100
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
        end
    elseif f2_local3 > 5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 25
            f2_local0[6] = 25
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 200
            f2_local0[12] = 0
            f2_local0[13] = 100
            f2_local0[14] = 0
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 50
            f2_local0[34] = 0
        else
            f2_local0[30] = 100
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
        end
    elseif f2_local3 > 2.5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 15
            f2_local0[3] = 15
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 10
            f2_local0[9] = 10
            f2_local0[10] = 200
            f2_local0[12] = 0
            f2_local0[13] = 100
            f2_local0[14] = 15
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[18] = 15
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 10
            f2_local0[33] = 0
            f2_local0[34] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 25
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 10
            f2_local0[10] = 0
            f2_local0[12] = 25
            f2_local0[13] = 100
            f2_local0[14] = 0
            f2_local0[16] = 0
            f2_local0[17] = 40
            f2_local0[18] = 0
            f2_local0[30] = 10
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 20
            f2_local0[2] = 20
            f2_local0[3] = 0
            f2_local0[4] = 20
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 10
            f2_local0[10] = 0
            f2_local0[12] = 0
            f2_local0[13] = 100
            f2_local0[14] = 0
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[18] = 20
            f2_local0[30] = 10
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
        else
            f2_local0[15] = 90
            f2_local0[30] = 10
            f2_local0[31] = 0
            f2_local0[32] = 0
            f2_local0[33] = 0
            f2_local0[34] = 0
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
        f2_local0[1] = 10
        f2_local0[2] = 20
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 10
        f2_local0[8] = 0
        f2_local0[9] = 10
        f2_local0[10] = 0
        f2_local0[12] = 10
        f2_local0[13] = 100
        f2_local0[14] = 0
        f2_local0[16] = 0
        f2_local0[17] = 20
        f2_local0[18] = 20
        f2_local0[30] = 0
        f2_local0[31] = 0
        f2_local0[32] = 0
        f2_local0[33] = 0
        f2_local0[34] = 0
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
        f2_local0[10] = 0
        f2_local0[12] = 40
        f2_local0[13] = 100
        f2_local0[14] = 0
        f2_local0[16] = 0
        f2_local0[17] = 40
        f2_local0[18] = 0
        f2_local0[30] = 0
        f2_local0[31] = 0
        f2_local0[32] = 0
        f2_local0[33] = 0
        f2_local0[34] = 0
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
        f2_local0[1] = 30
        f2_local0[2] = 30
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 10
        f2_local0[10] = 0
        f2_local0[12] = 0
        f2_local0[13] = 100
        f2_local0[14] = 0
        f2_local0[16] = 0
        f2_local0[17] = 0
        f2_local0[18] = 30
        f2_local0[30] = 0
        f2_local0[31] = 0
        f2_local0[32] = 0
        f2_local0[33] = 0
        f2_local0[34] = 0
    else
        f2_local0[15] = 90
        f2_local0[30] = 10
        f2_local0[31] = 0
        f2_local0[32] = 0
        f2_local0[33] = 0
        f2_local0[34] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3005, 15, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3007, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3012, 15, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3013, 15, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3017, 15, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3019, 15, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3020, 3, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3033, 20, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 20020, 20, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3017, 15, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3019, 15, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3020, 3, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3033, 20, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 20020, 20, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3019, 15, f2_local0[9], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3017, 15, f2_local0[9], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[9], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3020, 3, f2_local0[9], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3033, 20, f2_local0[9], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 20020, 20, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3020, 10, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3017, 15, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3019, 15, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3033, 20, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3022, 10, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3026, 10, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3030, 15, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3031, 15, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3032, 10, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3033, 20, f2_local0[16], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[16], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3017, 15, f2_local0[16], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3019, 15, f2_local0[16], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3020, 3, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3034, 10, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3035, 10, f2_local0[18], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 6000, 1, f2_local0[33], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 6001, 1, f2_local0[33], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3030, 5, f2_local0[33], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 6002, 1, f2_local0[34], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 6003, 1, f2_local0[34], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act18)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, GodFrey472100_Act34)
    local f2_local10 = REGIST_FUNC(arg1, arg2, GodFrey472100_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function GodFrey472100_Act01(arg0, arg1, arg2)
    local f3_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 5
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    local f3_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act02(arg0, arg1, arg2)
    local f4_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 5
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    local f4_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f4_local8 = 3002
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act03(arg0, arg1, arg2)
    local f5_local0 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 5
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    local f5_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f5_local8 = 3005
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act04(arg0, arg1, arg2)
    local f6_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 5
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    local f6_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f6_local8 = 3007
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local10 = 0
    local f6_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act05(arg0, arg1, arg2)
    local f7_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 5
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    local f7_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f7_local8 = 3012
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local10 = 0
    local f7_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f7_local8, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act06(arg0, arg1, arg2)
    local f8_local0 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 5
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    local f8_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f8_local8 = 3013
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local10 = 0
    local f8_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act07(arg0, arg1, arg2)
    local f9_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 5
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    local f9_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f9_local8 = 3016
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act08(arg0, arg1, arg2)
    local f10_local0 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 5
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 3
    local f10_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f10_local8 = 3017
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local10 = 0
    local f10_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f10_local8, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act09(arg0, arg1, arg2)
    local f11_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 5
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 3
    local f11_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f11_local8 = 3019
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local10 = 0
    local f11_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act10(arg0, arg1, arg2)
    local f12_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 5
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 3
    local f12_local6 = 3
    local f12_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f12_local8 = 3020
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local10 = 0
    local f12_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act11(arg0, arg1, arg2)
    local f13_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 5
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 3
    local f13_local6 = 3
    local f13_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f13_local8 = 3022
    local f13_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local10 = 0
    local f13_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f13_local8, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act12(arg0, arg1, arg2)
    local f14_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 5
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 3
    local f14_local6 = 3
    local f14_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f14_local8 = 3026
    local f14_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local10 = 0
    local f14_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f14_local8, TARGET_ENE_0, f14_local9, f14_local10, f14_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act13(arg0, arg1, arg2)
    local f15_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = f15_local0 + 0
    local f15_local2 = f15_local0 + 5
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 3
    local f15_local6 = 3
    local f15_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f15_local8 = 3030
    local f15_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local10 = 0
    local f15_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f15_local8, TARGET_ENE_0, f15_local9, f15_local10, f15_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act14(arg0, arg1, arg2)
    local f16_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = f16_local0 + 0
    local f16_local2 = f16_local0 + 5
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 3
    local f16_local6 = 3
    local f16_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f16_local8 = 3031
    local f16_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f16_local10 = 0
    local f16_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f16_local8, TARGET_ENE_0, f16_local9, f16_local10, f16_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act15(arg0, arg1, arg2)
    local f17_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 5
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 3
    local f17_local6 = 3
    local f17_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f17_local8 = 3032
    local f17_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f17_local10 = 0
    local f17_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f17_local8, TARGET_ENE_0, f17_local9, f17_local10, f17_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act16(arg0, arg1, arg2)
    local f18_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = f18_local0 + 0
    local f18_local2 = f18_local0 + 5
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = 3
    local f18_local6 = 3
    local f18_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f18_local8 = 3033
    local f18_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f18_local10 = 0
    local f18_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f18_local8, TARGET_ENE_0, f18_local9, f18_local10, f18_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act17(arg0, arg1, arg2)
    local f19_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = f19_local0 + 0
    local f19_local2 = f19_local0 + 5
    local f19_local3 = 0
    local f19_local4 = 0
    local f19_local5 = 3
    local f19_local6 = 3
    local f19_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f19_local8 = 3034
    local f19_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f19_local10 = 0
    local f19_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f19_local8, TARGET_ENE_0, f19_local9, f19_local10, f19_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act18(arg0, arg1, arg2)
    local f20_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = f20_local0 + 0
    local f20_local2 = f20_local0 + 5
    local f20_local3 = 0
    local f20_local4 = 0
    local f20_local5 = 3
    local f20_local6 = 3
    local f20_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    local f20_local8 = 3035
    local f20_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f20_local10 = 0
    local f20_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f20_local8, TARGET_ENE_0, f20_local9, f20_local10, f20_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act30(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 12290) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 30, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act31(arg0, arg1, arg2)
    local f22_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f22_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act32(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act33(arg0, arg1, arg2)
    local f24_local0 = arg0:GetRandam_Int(1, 100)
    local f24_local1 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 2, f24_local1, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    elseif arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, f24_local1, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    elseif arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, f24_local1, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    elseif arg0:GetNumber(0) >= 1 then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
        arg0:SetNumber(0, 0)
        return true
    elseif arg0:GetNumber(1) >= 1 then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
        arg0:SetNumber(1, 0)
        return true
    elseif f24_local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
        arg0:SetNumber(0, arg0:GetNumber(0) + 1)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
        arg0:SetNumber(1, arg0:GetNumber(1) + 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_Act34(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_GodFrey472101_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f29_local0 = arg1:GetDist(TARGET_ENE_0)
    local f29_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f29_local2 = 0
    local f29_local3 = 0
    local f29_local4 = arg1:GetRandam_Int(1, 100)
    local f29_local5 = arg1:GetHpRate(TARGET_SELF)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12230)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12231)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12232)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12233)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12234)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12235)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12236)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12237)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12238)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12239)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_UseItem) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if f29_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7.5) then
            if f29_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, f29_local1, f29_local2, f29_local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f29_local4 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, f29_local1, f29_local2, f29_local3, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 12.5) then
            if f29_local4 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, f29_local1, f29_local2, f29_local3, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f29_local4 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3033, TARGET_ENE_0, f29_local1, f29_local2, f29_local3, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 17.5) then
            if f29_local4 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3033, TARGET_ENE_0, f29_local1, f29_local2, f29_local3, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if f29_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, f29_local1, f29_local2, f29_local3, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3031, TARGET_ENE_0, f29_local1, f29_local2, f29_local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7.5) then
            if f29_local4 <= 20 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, f29_local1, f29_local2, f29_local3, 0, 0)
                return true
            elseif f29_local4 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, f29_local1, f29_local2, f29_local3, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f29_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            elseif f29_local4 <= 80 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                    return true
                end
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 12.5) then
            if f29_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            elseif f29_local4 <= 80 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                    return true
                end
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f29_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            elseif f29_local4 <= 80 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                    return true
                end
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 17.5) then
            if f29_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            elseif f29_local4 <= 80 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                    return true
                end
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
        if f29_local4 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f29_local4 <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 3.5, 3034, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2.5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if f29_local4 <= 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3031, TARGET_ENE_0, f29_local1, f29_local2, f29_local3, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f29_local4 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if f29_local4 <= 25 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if f29_local4 <= 25 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 15 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 45 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f29_local4 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f29_local4 <= 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f29_local4 <= 80 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 25 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return tru
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5032) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 6) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5033) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f29_local4 <= 35 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f29_local4 <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5034) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f29_local4 <= 25 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f29_local4 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f29_local4 <= 75 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5035) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 35 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f29_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 10 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 15 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 45 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5036) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 15 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 45 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 55 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 85 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 15 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 45 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5037) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if f29_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if f29_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3038, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 15) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3038, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5038) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if f29_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12230) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 15 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 45 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 15 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 45 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12231) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 20) and arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3038, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12232) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12233) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 15 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 45 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12234) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 10 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 10 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 25 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 35 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 45 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 55 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 85 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12235) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif f29_local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 65 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 25 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12236) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12237) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f29_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 15 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 45 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 15 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 45 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12238) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 15 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 45 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6001, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6002, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6003, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6001, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6003, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f29_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f29_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6001, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6002, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 22.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6001, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6002, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6003, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 22.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6001, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6003, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 22.5) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6001, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6002, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12239) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) and (arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_GodFrey472100_AfterAttackAct, "GodFrey472101_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GodFrey472101_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


