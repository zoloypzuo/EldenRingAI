RegisterTableGoal(GOAL_GodFrey472000_Battle, "GodFrey472000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GodFrey472000_Battle, true)
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12290)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12294)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 51)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local9 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
        if f2_local3 > 20 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 70
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[22] = 100
            end
        elseif f2_local3 > 17 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 70
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[22] = 100
            end
        elseif f2_local3 > 16 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 70
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[22] = 100
            end
        elseif f2_local3 > 11 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 70
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[22] = 100
            end
        elseif f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 70
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[22] = 100
            end
        elseif f2_local3 > 7.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 50
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 50
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[22] = 50
                f2_local0[24] = 50
            end
        elseif f2_local3 > 6 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 50
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 50
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[22] = 50
                f2_local0[24] = 50
            end
        elseif f2_local3 > 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 20
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 20
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 40
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[22] = 50
                f2_local0[24] = 50
            end
        elseif f2_local3 > 2 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 10
                f2_local0[7] = 10
                f2_local0[8] = 0
                f2_local0[9] = 10
                f2_local0[12] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 40
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 20
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 60
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 20
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 20
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 40
            else
                f2_local0[24] = 100
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 30
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 10
            f2_local0[7] = 15
            f2_local0[8] = 0
            f2_local0[9] = 15
            f2_local0[12] = 20
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 30
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[12] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 70
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 25
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[12] = 25
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 50
        else
            f2_local0[9] = 0
            f2_local0[24] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12295) == false then
        if arg1:GetHpRate(TARGET_SELF) < 0.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12290) == false then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[8] = 100
                else
                    f2_local0[24] = 100
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
                        f2_local0[7] = 0
                        f2_local0[9] = 0
                        f2_local0[12] = 0
                        f2_local0[20] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    else
                        f2_local0[24] = 100
                    end
                elseif f2_local3 > 17 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[9] = 0
                        f2_local0[12] = 0
                        f2_local0[20] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    else
                        f2_local0[24] = 100
                    end
                elseif f2_local3 > 16 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[9] = 0
                        f2_local0[12] = 0
                        f2_local0[20] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    else
                        f2_local0[24] = 100
                    end
                elseif f2_local3 > 11 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[9] = 0
                        f2_local0[12] = 0
                        f2_local0[20] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    else
                        f2_local0[24] = 100
                    end
                elseif f2_local3 > 10 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[9] = 0
                        f2_local0[12] = 0
                        f2_local0[20] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    else
                        f2_local0[24] = 100
                    end
                elseif f2_local3 > 7.5 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[9] = 0
                        f2_local0[12] = 0
                        f2_local0[20] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 100
                    else
                        f2_local0[24] = 100
                    end
                elseif f2_local3 > 6 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 50
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[9] = 0
                        f2_local0[12] = 0
                        f2_local0[20] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 50
                    else
                        f2_local0[24] = 100
                    end
                elseif f2_local3 > 5 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 50
                        f2_local0[3] = 50
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[9] = 0
                        f2_local0[12] = 0
                        f2_local0[20] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                    else
                        f2_local0[24] = 100
                    end
                elseif f2_local3 > 2 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 10
                        f2_local0[2] = 30
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 10
                        f2_local0[7] = 10
                        f2_local0[8] = 0
                        f2_local0[9] = 10
                        f2_local0[12] = 30
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 20
                        f2_local0[3] = 20
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[12] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 60
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 20
                        f2_local0[3] = 20
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[9] = 0
                        f2_local0[12] = 20
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 40
                    else
                        f2_local0[24] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 30
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 10
                    f2_local0[7] = 15
                    f2_local0[8] = 0
                    f2_local0[9] = 15
                    f2_local0[12] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 30
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 70
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 25
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 25
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 50
                else
                    f2_local0[9] = 0
                    f2_local0[24] = 100
                end
            end
        elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
            if f2_local3 > 20 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 70
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[20] = 30
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                else
                    f2_local0[22] = 100
                end
            elseif f2_local3 > 17 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 70
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[20] = 30
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                else
                    f2_local0[22] = 100
                end
            elseif f2_local3 > 16 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 70
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 30
                    f2_local0[24] = 0
                else
                    f2_local0[22] = 100
                end
            elseif f2_local3 > 11 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 70
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 30
                    f2_local0[24] = 0
                else
                    f2_local0[22] = 100
                end
            elseif f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 70
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 30
                    f2_local0[24] = 0
                else
                    f2_local0[22] = 100
                end
            elseif f2_local3 > 7.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 40
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[20] = 20
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 40
                    f2_local0[24] = 0
                else
                    f2_local0[22] = 50
                    f2_local0[24] = 50
                end
            elseif f2_local3 > 6 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 40
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[20] = 20
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 40
                    f2_local0[24] = 0
                else
                    f2_local0[22] = 50
                    f2_local0[24] = 50
                end
            elseif f2_local3 > 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 20
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 20
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[20] = 40
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                else
                    f2_local0[22] = 50
                    f2_local0[24] = 50
                end
            elseif f2_local3 > 2 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 10
                    f2_local0[2] = 20
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 20
                    f2_local0[7] = 10
                    f2_local0[8] = 0
                    f2_local0[9] = 10
                    f2_local0[12] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 10
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 20
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 60
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 20
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[12] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 40
                else
                    f2_local0[24] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 10
                f2_local0[7] = 15
                f2_local0[8] = 0
                f2_local0[9] = 15
                f2_local0[12] = 20
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 30
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 70
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 25
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 25
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 50
            else
                f2_local0[9] = 0
                f2_local0[24] = 100
            end
        elseif f2_local3 > 20 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 70
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[22] = 100
            end
        elseif f2_local3 > 17 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 70
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[22] = 100
            end
        elseif f2_local3 > 16 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 70
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[22] = 100
            end
        elseif f2_local3 > 11 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 70
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[22] = 100
            end
        elseif f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 70
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 30
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[22] = 100
            end
        elseif f2_local3 > 7.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 50
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 50
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[22] = 50
                f2_local0[24] = 50
            end
        elseif f2_local3 > 6 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 50
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 50
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[22] = 50
                f2_local0[24] = 50
            end
        elseif f2_local3 > 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 20
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 20
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 40
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
            else
                f2_local0[22] = 50
                f2_local0[24] = 50
            end
        elseif f2_local3 > 2 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 10
                f2_local0[7] = 10
                f2_local0[8] = 0
                f2_local0[9] = 10
                f2_local0[12] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 40
                f2_local0[23] = 0
                f2_local0[24] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 20
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 60
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 20
                f2_local0[3] = 20
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[12] = 20
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 40
            else
                f2_local0[24] = 100
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 30
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 10
            f2_local0[7] = 15
            f2_local0[8] = 0
            f2_local0[9] = 15
            f2_local0[12] = 20
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 30
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[12] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 70
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 25
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[12] = 25
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 50
        else
            f2_local0[9] = 0
            f2_local0[24] = 100
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3015, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3016, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3018, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3019, 1, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3031, 15, f2_local0[9], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3034, 10, f2_local0[12], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 6000, 10, f2_local0[23], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[23], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6002, 10, f2_local0[24], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6003, 10, f2_local0[24], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[24], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3034, 10, f2_local0[24], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, GodFrey472000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, GodFrey472000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, GodFrey472000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, GodFrey472000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, GodFrey472000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, GodFrey472000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, GodFrey472000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, GodFrey472000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, GodFrey472000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, GodFrey472000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, GodFrey472000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, GodFrey472000_Act12)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, GodFrey472000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, GodFrey472000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, GodFrey472000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, GodFrey472000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, GodFrey472000_Act24)
    local f2_local10 = REGIST_FUNC(arg1, arg2, GodFrey472000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function GodFrey472000_Act01(arg0, arg1, arg2)
    local f3_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 5
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    local f3_local7 = arg0:GetRandam_Int(1, 100)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472000_Act02(arg0, arg1, arg2)
    local f4_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 10
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local f4_local8 = 3001
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472000_Act03(arg0, arg1, arg2)
    local f5_local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 10
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local f5_local8 = 3009
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472000_Act04(arg0, arg1, arg2)
    local f6_local0 = 11 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 10
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local f6_local8 = 3015
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local10 = 0
    local f6_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472000_Act05(arg0, arg1, arg2)
    local f7_local0 = 17 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 50
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local f7_local8 = 3016
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local10 = 0
    local f7_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f7_local8, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472000_Act06(arg0, arg1, arg2)
    local f8_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 10
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local f8_local8 = 3017
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local10 = 0
    local f8_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472000_Act07(arg0, arg1, arg2)
    local f9_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 10
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local f9_local8 = 3018
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472000_Act08(arg0, arg1, arg2)
    local f10_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 10
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 3
    local f10_local7 = arg0:GetRandam_Int(1, 100)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local f10_local8 = 3019
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local10 = 0
    local f10_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f10_local8, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472000_Act09(arg0, arg1, arg2)
    local f11_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 10
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local f11_local8 = 3031
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local10 = 0
    local f11_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472000_Act12(arg0, arg1, arg2)
    local f12_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 10
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    local f12_local8 = 3034
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local10 = 0
    local f12_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTargetAllDirection, 2.5, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472000_Act21(arg0, arg1, arg2)
    local f14_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f14_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472000_Act23(arg0, arg1, arg2)
    local f16_local0 = arg0:GetRandam_Int(1, 100)
    local f16_local1 = arg0:GetMapHitRadius(TARGET_SELF)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 2, f16_local1, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    elseif arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, f16_local1, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    elseif arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, f16_local1, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    elseif arg0:GetNumber(0) >= 1 then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
        arg0:SetNumber(0, 0)
        return true
    elseif arg0:GetNumber(1) >= 1 then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
        arg0:SetNumber(1, 0)
        return true
    elseif f16_local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
        arg0:SetNumber(0, arg0:GetNumber(0) + 1)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
        arg0:SetNumber(1, arg0:GetNumber(1) + 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472000_Act24(arg0, arg1, arg2)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GodFrey472000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_GodFrey472000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f21_local0 = arg1:GetDist(TARGET_ENE_0)
    local f21_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f21_local2 = 0
    local f21_local3 = 0
    local f21_local4 = arg1:GetRandam_Int(1, 100)
    local f21_local5 = arg1:GetHpRate(TARGET_SELF)
    local f21_local6 = arg1:GetMapHitRadius(TARGET_SELF)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12200)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12201)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12202)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12203)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12204)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12205)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12206)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12207)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12208)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12209)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12210)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12211)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12212)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12213)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12214)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12215)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 12216)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_UseItem) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:GetHpRate(TARGET_SELF) < 0.8 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if f21_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 6) then
            if f21_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3017, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f21_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
                return true
            elseif f21_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 12.5) then
            if f21_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f21_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 17.5) then
            if f21_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3016, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2.5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 6) then
            if f21_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3017, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 2, f21_local6, 0) >= 2 then
                if f21_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    return true
                end
            elseif f21_local4 <= 80 then
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
            if arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 2, f21_local6, 0) >= 2 then
                if f21_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    return true
                end
            elseif f21_local4 <= 80 then
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
            if arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 2, f21_local6, 0) >= 2 then
                if f21_local4 <= 60 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3016, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
                    return true
                elseif f21_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    return true
                end
            elseif f21_local4 <= 80 then
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
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 40) then
            if arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 2, f21_local6, 0) >= 2 then
                if f21_local4 <= 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    return true
                end
            elseif f21_local4 <= 80 then
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
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2) then
            if f21_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3000, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
                return true
            elseif f21_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3034, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if f21_local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3017, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
                return true
            elseif f21_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3034, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2.5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if f21_local4 <= 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3031, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
            if f21_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                if f21_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif f21_local4 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
            if f21_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                if f21_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif f21_local4 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 6) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 12.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                return true
            elseif f21_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 4.5) then
        if f21_local4 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if f21_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if f21_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif f21_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if f21_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if f21_local4 <= 70 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif f21_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if f21_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if f21_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif f21_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if f21_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if f21_local4 <= 70 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif f21_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5) then
        if f21_local4 <= 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5032) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5033) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if f21_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if f21_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif f21_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if f21_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if f21_local4 <= 70 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif f21_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5034) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
            if f21_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                if f21_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif f21_local4 <= 80 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5035) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if f21_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f21_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if f21_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f21_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if f21_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f21_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5036) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 4) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 15) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if f21_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f21_local4 <= 90 then
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    return true
                end
            elseif f21_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f21_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 20) then
            if f21_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5037) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5) then
        if f21_local4 <= 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5038) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if f21_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f21_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if f21_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f21_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if f21_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f21_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12200) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 4) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 15) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if f21_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f21_local4 <= 90 then
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                    return true
                else
                    return true
                end
            elseif f21_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f21_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 20) then
            if f21_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12201) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5) then
        if f21_local4 <= 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12202) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if f21_local4 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12203) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if f21_local4 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12204) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if f21_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if f21_local4 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif f21_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if f21_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f21_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if f21_local4 <= 25 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f21_local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f21_local4 <= 75 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if f21_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f21_local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    if f21_local4 <= 25 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f21_local4 <= 50 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f21_local4 <= 75 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif f21_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f21_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if f21_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 12290) == true then
                if f21_local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f21_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if f21_local4 <= 70 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    if f21_local4 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif f21_local4 <= 70 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif f21_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12205) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if f21_local4 <= 70 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12206) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
            if f21_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                if f21_local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif f21_local4 <= 80 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12207) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if f21_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12208) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if f21_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if f21_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif f21_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if f21_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if f21_local4 <= 70 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif f21_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12209) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if f21_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if f21_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif f21_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if f21_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if f21_local4 <= 70 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif f21_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12210) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12211) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 5) then
        if f21_local4 <= 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12212) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if f21_local4 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12213) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if f21_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f21_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 7.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                if f21_local4 <= 70 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    if f21_local4 <= 70 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif f21_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12214) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if f21_local4 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12215) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 3) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12295) == true then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:GetHpRate(TARGET_SELF) < 0.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 12294) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 12294) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(12216) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 5) then
        if f21_local4 <= 80 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_GodFrey472000_AfterAttackAct, "GOAL_GodFrey472000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GodFrey472000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


