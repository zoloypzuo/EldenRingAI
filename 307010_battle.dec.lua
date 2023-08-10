RegisterTableGoal(GOAL_EaterAnOldWoman_lanthanum_307010_Battle, "GOAL_EaterAnOldWoman_lanthanum_307010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EaterAnOldWoman_lanthanum_307010_Battle, true)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 420)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12051) == true then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12054) == true then
                if f2_local3 > 15 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 100
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif f2_local3 > 13.5 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 50
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif f2_local3 > 10 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 50
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif f2_local3 > 5 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 50
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif f2_local3 > 2.5 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 50
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif f2_local3 > 2.5 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 40
                        f2_local0[20] = 0
                        f2_local0[21] = 40
                        f2_local0[22] = 20
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 40
                    f2_local0[20] = 0
                    f2_local0[21] = 60
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 12054) == false then
                if f2_local3 > 15 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif f2_local3 > 13.5 then
                    if arg1:HasSpecialEffectId(TARGET_ENE, 420) == false then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 40
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        else
                            f2_local0[1] = 0
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 100
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_ENE, 420) == true then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[1] = 60
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 40
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        else
                            f2_local0[1] = 0
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 100
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        end
                    end
                elseif f2_local3 > 10 then
                    if arg1:HasSpecialEffectId(TARGET_ENE, 420) == false then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 0
                            f2_local0[21] = 10
                            f2_local0[22] = 30
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 40
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 40
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        else
                            f2_local0[1] = 0
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 100
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_ENE, 420) == true then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[1] = 60
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 0
                            f2_local0[21] = 10
                            f2_local0[22] = 30
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[1] = 50
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 50
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[1] = 50
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 50
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        else
                            f2_local0[1] = 0
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 100
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        end
                    end
                elseif f2_local3 > 5 then
                    if arg1:HasSpecialEffectId(TARGET_ENE, 420) == false then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 0
                            f2_local0[21] = 20
                            f2_local0[22] = 20
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 40
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 40
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        else
                            f2_local0[1] = 0
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 100
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_ENE, 420) == true then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[1] = 60
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 0
                            f2_local0[21] = 20
                            f2_local0[22] = 20
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[1] = 50
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 50
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[1] = 50
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 50
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        else
                            f2_local0[1] = 0
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 100
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        end
                    end
                elseif f2_local3 > 2.5 then
                    if arg1:HasSpecialEffectId(TARGET_ENE, 420) == false then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 0
                            f2_local0[21] = 20
                            f2_local0[22] = 20
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 40
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 40
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        else
                            f2_local0[1] = 0
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 100
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_ENE, 420) == true then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[1] = 60
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 0
                            f2_local0[21] = 20
                            f2_local0[22] = 20
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[1] = 50
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 50
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[1] = 50
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 50
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        else
                            f2_local0[1] = 0
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 100
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        end
                    end
                elseif f2_local3 > 1 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 50
                        f2_local0[20] = 0
                        f2_local0[21] = 30
                        f2_local0[22] = 20
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 50
                    f2_local0[20] = 0
                    f2_local0[21] = 50
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12051) == false and f2_local3 < 100 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[3] = 100
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
            end
        end
    elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12051) == true then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12054) == true then
                if f2_local3 > 15 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 100
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif f2_local3 > 13.5 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 50
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif f2_local3 > 10 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 50
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif f2_local3 > 5 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 50
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif f2_local3 > 2.5 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 50
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif f2_local3 > 2.5 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 40
                        f2_local0[20] = 0
                        f2_local0[21] = 40
                        f2_local0[22] = 20
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 40
                    f2_local0[20] = 0
                    f2_local0[21] = 60
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 12054) == false then
                if f2_local3 > 15 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif f2_local3 > 13.5 then
                    if arg1:HasSpecialEffectId(TARGET_ENE, 420) == false then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 40
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        else
                            f2_local0[1] = 0
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 100
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_ENE, 420) == true then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[1] = 60
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 40
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        else
                            f2_local0[1] = 0
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 100
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        end
                    end
                elseif f2_local3 > 10 then
                    if arg1:HasSpecialEffectId(TARGET_ENE, 420) == false then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 0
                            f2_local0[21] = 10
                            f2_local0[22] = 30
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 40
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 40
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        else
                            f2_local0[1] = 0
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 100
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_ENE, 420) == true then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[1] = 60
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 0
                            f2_local0[21] = 10
                            f2_local0[22] = 30
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[1] = 50
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 50
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[1] = 50
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 50
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        else
                            f2_local0[1] = 0
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 100
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        end
                    end
                elseif f2_local3 > 5 then
                    if arg1:HasSpecialEffectId(TARGET_ENE, 420) == false then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 0
                            f2_local0[21] = 20
                            f2_local0[22] = 20
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 40
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 40
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        else
                            f2_local0[1] = 0
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 100
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_ENE, 420) == true then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[1] = 60
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 0
                            f2_local0[21] = 20
                            f2_local0[22] = 20
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[1] = 50
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 50
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[1] = 50
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 50
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        else
                            f2_local0[1] = 0
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 100
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        end
                    end
                elseif f2_local3 > 2.5 then
                    if arg1:HasSpecialEffectId(TARGET_ENE, 420) == false then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 0
                            f2_local0[21] = 20
                            f2_local0[22] = 20
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 40
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[1] = 0
                            f2_local0[2] = 60
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 40
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        else
                            f2_local0[1] = 0
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 100
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_ENE, 420) == true then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[1] = 60
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 0
                            f2_local0[21] = 20
                            f2_local0[22] = 20
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[1] = 50
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 50
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[1] = 50
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 50
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        else
                            f2_local0[1] = 0
                            f2_local0[2] = 0
                            f2_local0[3] = 0
                            f2_local0[4] = 0
                            f2_local0[20] = 100
                            f2_local0[21] = 0
                            f2_local0[22] = 0
                            f2_local0[23] = 0
                            f2_local0[24] = 0
                            f2_local0[25] = 0
                            f2_local0[26] = 0
                        end
                    end
                elseif f2_local3 > 1 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 50
                        f2_local0[20] = 0
                        f2_local0[21] = 30
                        f2_local0[22] = 20
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 50
                    f2_local0[20] = 0
                    f2_local0[21] = 50
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12051) == false and f2_local3 < 100 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[3] = 100
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12051) == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12054) == true then
            if f2_local3 > 15 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 100
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                end
            elseif f2_local3 > 13.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 50
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                end
            elseif f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 50
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 50
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                end
            elseif f2_local3 > 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 50
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 50
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                end
            elseif f2_local3 > 2.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 50
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 50
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 50
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 50
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                end
            elseif f2_local3 > 1 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 50
                    f2_local0[20] = 0
                    f2_local0[21] = 30
                    f2_local0[22] = 20
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 50
                f2_local0[20] = 0
                f2_local0[21] = 50
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12054) == false then
            if f2_local3 > 15 then
                if arg1:HasSpecialEffectId(TARGET_ENE, 420) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 40
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 60
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE, 420) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 40
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 60
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                end
            elseif f2_local3 > 13.5 then
                if arg1:HasSpecialEffectId(TARGET_ENE, 420) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 60
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 40
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE, 420) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 60
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 40
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                end
            elseif f2_local3 > 10 then
                if arg1:HasSpecialEffectId(TARGET_ENE, 420) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 60
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 10
                        f2_local0[22] = 30
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 60
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 40
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 60
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 40
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE, 420) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 60
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 10
                        f2_local0[22] = 30
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                end
            elseif f2_local3 > 5 then
                if arg1:HasSpecialEffectId(TARGET_ENE, 420) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 60
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 20
                        f2_local0[22] = 20
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 60
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 40
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 60
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 40
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE, 420) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 60
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 20
                        f2_local0[22] = 20
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                end
            elseif f2_local3 > 2.5 then
                if arg1:HasSpecialEffectId(TARGET_ENE, 420) == false then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 60
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 20
                        f2_local0[22] = 20
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 60
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 40
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 0
                        f2_local0[2] = 60
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 40
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE, 420) == true then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[1] = 60
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 20
                        f2_local0[22] = 20
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[1] = 50
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 50
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[20] = 100
                        f2_local0[21] = 0
                        f2_local0[22] = 0
                        f2_local0[23] = 0
                        f2_local0[24] = 0
                        f2_local0[25] = 0
                        f2_local0[26] = 0
                    end
                end
            elseif f2_local3 > 2.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 30
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 40
                    f2_local0[20] = 0
                    f2_local0[21] = 15
                    f2_local0[22] = 15
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 0
                    f2_local0[26] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 50
                f2_local0[20] = 0
                f2_local0[21] = 20
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
                f2_local0[26] = 0
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12051) == false and f2_local3 < 100 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[3] = 100
        else
            f2_local0[20] = 100
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3005, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3006, 5, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3010, 1, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3015, 5, f2_local0[4], 0)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6001, 5, f2_local0[24], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[25], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[25], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, EaterAnOldWoman_lanthanum_307010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, EaterAnOldWoman_lanthanum_307010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, EaterAnOldWoman_lanthanum_307010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, EaterAnOldWoman_lanthanum_307010_Act04)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, EaterAnOldWoman_lanthanum_307010_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, EaterAnOldWoman_lanthanum_307010_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, EaterAnOldWoman_lanthanum_307010_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, EaterAnOldWoman_lanthanum_307010_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, EaterAnOldWoman_lanthanum_307010_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, EaterAnOldWoman_lanthanum_307010_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, EaterAnOldWoman_lanthanum_307010_Act26)
    local f2_local9 = REGIST_FUNC(arg1, arg2, EaterAnOldWoman_lanthanum_307010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function EaterAnOldWoman_lanthanum_307010_Act01(arg0, arg1, arg2)
    local f3_local0 = 13.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 20
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    local f3_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f3_local8 = 3005
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function EaterAnOldWoman_lanthanum_307010_Act02(arg0, arg1, arg2)
    local f4_local0 = 13.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 20
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    local f4_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f4_local8 = 3006
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function EaterAnOldWoman_lanthanum_307010_Act03(arg0, arg1, arg2)
    local f5_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 20
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    local f5_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f5_local8 = 3010
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function EaterAnOldWoman_lanthanum_307010_Act04(arg0, arg1, arg2)
    local f6_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 20
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    local f6_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f6_local8 = 3015
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local10 = 0
    local f6_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function EaterAnOldWoman_lanthanum_307010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 15, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function EaterAnOldWoman_lanthanum_307010_Act21(arg0, arg1, arg2)
    local f8_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f8_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 15, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function EaterAnOldWoman_lanthanum_307010_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function EaterAnOldWoman_lanthanum_307010_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function EaterAnOldWoman_lanthanum_307010_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function EaterAnOldWoman_lanthanum_307010_Act25(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function EaterAnOldWoman_lanthanum_307010_Act26(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function EaterAnOldWoman_lanthanum_307010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_EaterAnOldWoman_lanthanum_307010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f17_local0 = arg1:GetDist(TARGET_ENE_0)
    local f17_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 0
    local f17_local3 = 0
    local f17_local4 = arg1:GetRandam_Int(1, 100)
    local f17_local5 = arg1:GetHpRate(TARGET_SELF)
    local f17_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12053) == true or arg1:HasSpecialEffectId(TARGET_SELF, 12054) == true then
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12053) == false and arg1:HasSpecialEffectId(TARGET_SELF, 12054) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999, f17_local2, f17_local3, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 30) then
                if f17_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12053) == true or arg1:HasSpecialEffectId(TARGET_SELF, 12054) == true then
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12053) == false and arg1:HasSpecialEffectId(TARGET_SELF, 12054) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999, f17_local2, f17_local3, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 30) then
                if f17_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12053) == true or arg1:HasSpecialEffectId(TARGET_SELF, 12054) == true then
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12053) == false and arg1:HasSpecialEffectId(TARGET_SELF, 12054) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999, f17_local2, f17_local3, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 30) then
                if f17_local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
                    return true
                else
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12053) == true or arg1:HasSpecialEffectId(TARGET_SELF, 12054) == true then
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12053) == false and arg1:HasSpecialEffectId(TARGET_SELF, 12054) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 13.5) then
                if arg1:HasSpecialEffectId(TARGET_ENE, 420) == false then
                    if f17_local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, f17_local2, f17_local3, 0, 0)
                        return true
                    elseif f17_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999, f17_local2, f17_local3, 0, 0)
                        return true
                    else
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE, 420) == true then
                    if f17_local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, f17_local2, f17_local3, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_EaterAnOldWoman_lanthanum_307010_AfterAttackAct, "GOAL_EaterAnOldWoman_lanthanum_307010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EaterAnOldWoman_lanthanum_307010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


