RegisterTableGoal(GOAL_RadarnAndLeonard473000_Battle, "RadarnAndLeonard473000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RadarnAndLeonard473000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local9 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 13902) == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13904) == true then
            if arg1:GetHpRate(TARGET_SELF) <= 0.2 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13928) == false then
                    f2_local0[13] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13928) == true then
                    if f2_local3 >= 30 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    f2_local0[12] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        f2_local0[14] = 100
                                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        f2_local0[1] = 30
                                        f2_local0[2] = 0
                                        f2_local0[3] = 10
                                        f2_local0[4] = 0
                                        f2_local0[5] = 0
                                        f2_local0[9] = 100
                                        f2_local0[11] = 60
                                        f2_local0[16] = 200
                                        f2_local0[15] = 0
                                        f2_local0[17] = 0
                                    end
                                end
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    f2_local0[14] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    f2_local0[1] = 30
                                    f2_local0[2] = 0
                                    f2_local0[3] = 10
                                    f2_local0[4] = 0
                                    f2_local0[5] = 0
                                    f2_local0[9] = 100
                                    f2_local0[11] = 60
                                    f2_local0[15] = 0
                                    f2_local0[17] = 0
                                end
                            end
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[30] = 100
                        end
                    elseif f2_local3 >= 25 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    f2_local0[12] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        f2_local0[14] = 100
                                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        f2_local0[1] = 30
                                        f2_local0[2] = 0
                                        f2_local0[3] = 10
                                        f2_local0[4] = 0
                                        f2_local0[5] = 0
                                        f2_local0[9] = 100
                                        f2_local0[11] = 60
                                        f2_local0[16] = 200
                                        f2_local0[15] = 150
                                        f2_local0[17] = 0
                                    end
                                end
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    f2_local0[14] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    f2_local0[1] = 30
                                    f2_local0[2] = 0
                                    f2_local0[3] = 10
                                    f2_local0[4] = 0
                                    f2_local0[5] = 0
                                    f2_local0[9] = 100
                                    f2_local0[11] = 60
                                    f2_local0[15] = 150
                                    f2_local0[17] = 0
                                end
                            end
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[30] = 100
                        end
                    elseif f2_local3 >= 20 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    f2_local0[12] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        f2_local0[14] = 100
                                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        f2_local0[1] = 30
                                        f2_local0[2] = 0
                                        f2_local0[3] = 10
                                        f2_local0[4] = 0
                                        f2_local0[5] = 0
                                        f2_local0[9] = 100
                                        f2_local0[11] = 60
                                        f2_local0[16] = 200
                                        f2_local0[15] = 150
                                        f2_local0[17] = 0
                                    end
                                end
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    f2_local0[14] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    f2_local0[1] = 30
                                    f2_local0[2] = 0
                                    f2_local0[3] = 10
                                    f2_local0[4] = 0
                                    f2_local0[5] = 0
                                    f2_local0[9] = 100
                                    f2_local0[11] = 60
                                    f2_local0[15] = 150
                                    f2_local0[17] = 0
                                end
                            end
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[30] = 100
                        end
                    elseif f2_local3 >= 20 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    f2_local0[12] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        f2_local0[14] = 100
                                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        f2_local0[1] = 30
                                        f2_local0[2] = 0
                                        f2_local0[3] = 10
                                        f2_local0[4] = 0
                                        f2_local0[5] = 0
                                        f2_local0[9] = 100
                                        f2_local0[11] = 60
                                        f2_local0[16] = 200
                                        f2_local0[15] = 150
                                        f2_local0[17] = 0
                                    end
                                end
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    f2_local0[14] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    f2_local0[1] = 30
                                    f2_local0[2] = 0
                                    f2_local0[3] = 10
                                    f2_local0[4] = 0
                                    f2_local0[5] = 0
                                    f2_local0[9] = 100
                                    f2_local0[11] = 60
                                    f2_local0[15] = 150
                                    f2_local0[17] = 0
                                end
                            end
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[30] = 100
                        end
                    elseif f2_local3 >= 10 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    f2_local0[12] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        f2_local0[14] = 100
                                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        f2_local0[1] = 30
                                        f2_local0[2] = 10
                                        f2_local0[3] = 10
                                        f2_local0[4] = 10
                                        f2_local0[5] = 10
                                        f2_local0[9] = 100
                                        f2_local0[11] = 30
                                        f2_local0[16] = 200
                                        f2_local0[15] = 150
                                        f2_local0[17] = 0
                                    end
                                end
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    f2_local0[14] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    f2_local0[1] = 30
                                    f2_local0[2] = 10
                                    f2_local0[3] = 10
                                    f2_local0[4] = 10
                                    f2_local0[5] = 10
                                    f2_local0[9] = 100
                                    f2_local0[11] = 30
                                    f2_local0[15] = 150
                                    f2_local0[17] = 0
                                end
                            end
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[30] = 100
                        end
                    elseif f2_local3 >= 5 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    f2_local0[12] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        f2_local0[14] = 100
                                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        f2_local0[1] = 10
                                        f2_local0[2] = 20
                                        f2_local0[3] = 10
                                        f2_local0[4] = 20
                                        f2_local0[5] = 20
                                        f2_local0[9] = 0
                                        f2_local0[11] = 20
                                        f2_local0[16] = 200
                                        f2_local0[15] = 150
                                        f2_local0[17] = 100
                                    end
                                end
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    f2_local0[14] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    f2_local0[1] = 10
                                    f2_local0[2] = 20
                                    f2_local0[3] = 10
                                    f2_local0[4] = 20
                                    f2_local0[5] = 20
                                    f2_local0[9] = 0
                                    f2_local0[11] = 20
                                    f2_local0[15] = 150
                                    f2_local0[17] = 100
                                end
                            end
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    f2_local0[12] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        f2_local0[14] = 100
                                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        f2_local0[2] = 30
                                        f2_local0[4] = 10
                                        f2_local0[5] = 60
                                        f2_local0[32] = 100
                                    end
                                end
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    f2_local0[14] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    f2_local0[2] = 30
                                    f2_local0[4] = 10
                                    f2_local0[5] = 60
                                    f2_local0[32] = 100
                                end
                            end
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    f2_local0[12] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        f2_local0[14] = 100
                                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        f2_local0[2] = 30
                                        f2_local0[4] = 10
                                        f2_local0[5] = 50
                                        f2_local0[32] = 100
                                    end
                                end
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    f2_local0[14] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    f2_local0[2] = 30
                                    f2_local0[4] = 10
                                    f2_local0[5] = 50
                                    f2_local0[32] = 100
                                end
                            end
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[2] = 0
                            f2_local0[4] = 0
                            f2_local0[5] = 50
                            f2_local0[30] = 50
                            f2_local0[32] = 100
                        end
                    elseif f2_local3 >= 2.5 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    f2_local0[12] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        f2_local0[14] = 100
                                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        f2_local0[1] = 0
                                        f2_local0[2] = 10
                                        f2_local0[3] = 10
                                        f2_local0[4] = 10
                                        f2_local0[5] = 10
                                        f2_local0[6] = 0
                                        f2_local0[7] = 30
                                        f2_local0[8] = 30
                                        f2_local0[11] = 0
                                        f2_local0[16] = 200
                                        f2_local0[17] = 100
                                    end
                                end
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    f2_local0[14] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    f2_local0[1] = 0
                                    f2_local0[2] = 10
                                    f2_local0[3] = 10
                                    f2_local0[4] = 10
                                    f2_local0[5] = 10
                                    f2_local0[6] = 0
                                    f2_local0[7] = 30
                                    f2_local0[8] = 30
                                    f2_local0[11] = 0
                                    f2_local0[17] = 100
                                end
                            end
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    f2_local0[12] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        f2_local0[14] = 100
                                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        f2_local0[2] = 30
                                        f2_local0[4] = 10
                                        f2_local0[5] = 60
                                        f2_local0[6] = 0
                                        f2_local0[32] = 100
                                    end
                                end
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    f2_local0[14] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    f2_local0[2] = 30
                                    f2_local0[4] = 10
                                    f2_local0[5] = 60
                                    f2_local0[6] = 0
                                    f2_local0[32] = 100
                                end
                            end
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                    f2_local0[12] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                        f2_local0[14] = 100
                                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                        f2_local0[2] = 30
                                        f2_local0[4] = 10
                                        f2_local0[5] = 60
                                        f2_local0[6] = 0
                                        f2_local0[32] = 100
                                    end
                                end
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    f2_local0[14] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    f2_local0[2] = 30
                                    f2_local0[4] = 10
                                    f2_local0[5] = 60
                                    f2_local0[6] = 0
                                    f2_local0[32] = 100
                                end
                            end
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[2] = 0
                            f2_local0[4] = 0
                            f2_local0[5] = 50
                            f2_local0[8] = 0
                            f2_local0[30] = 50
                            f2_local0[32] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                f2_local0[12] = 100
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    f2_local0[14] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    f2_local0[1] = 0
                                    f2_local0[2] = 10
                                    f2_local0[3] = 0
                                    f2_local0[5] = 10
                                    f2_local0[6] = 30
                                    f2_local0[7] = 20
                                    f2_local0[8] = 30
                                    f2_local0[11] = 0
                                    f2_local0[16] = 200
                                    f2_local0[17] = 100
                                    f2_local0[32] = 0
                                end
                            end
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                f2_local0[14] = 100
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                f2_local0[1] = 0
                                f2_local0[2] = 10
                                f2_local0[3] = 0
                                f2_local0[5] = 10
                                f2_local0[6] = 30
                                f2_local0[7] = 20
                                f2_local0[8] = 30
                                f2_local0[11] = 0
                                f2_local0[17] = 100
                                f2_local0[32] = 0
                            end
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                f2_local0[12] = 100
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    f2_local0[14] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    f2_local0[2] = 10
                                    f2_local0[5] = 30
                                    f2_local0[6] = 30
                                    f2_local0[8] = 30
                                    f2_local0[32] = 100
                                end
                            end
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                f2_local0[14] = 100
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                f2_local0[2] = 10
                                f2_local0[5] = 30
                                f2_local0[6] = 30
                                f2_local0[8] = 30
                                f2_local0[32] = 100
                            end
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                                f2_local0[12] = 100
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                                if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                    f2_local0[14] = 100
                                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                    f2_local0[2] = 10
                                    f2_local0[5] = 30
                                    f2_local0[6] = 30
                                    f2_local0[8] = 30
                                    f2_local0[32] = 100
                                end
                            end
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                f2_local0[14] = 100
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                f2_local0[2] = 10
                                f2_local0[5] = 30
                                f2_local0[6] = 30
                                f2_local0[8] = 30
                                f2_local0[32] = 100
                            end
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        f2_local0[14] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        f2_local0[2] = 0
                        f2_local0[5] = 40
                        f2_local0[8] = 40
                        f2_local0[30] = 20
                        f2_local0[32] = 100
                    end
                end
            elseif f2_local3 >= 30 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            f2_local0[12] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                f2_local0[14] = 100
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                f2_local0[1] = 30
                                f2_local0[2] = 0
                                f2_local0[3] = 10
                                f2_local0[4] = 0
                                f2_local0[5] = 0
                                f2_local0[9] = 100
                                f2_local0[11] = 60
                                f2_local0[16] = 200
                                f2_local0[15] = 0
                                f2_local0[17] = 0
                            end
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[1] = 30
                            f2_local0[2] = 0
                            f2_local0[3] = 10
                            f2_local0[4] = 0
                            f2_local0[5] = 0
                            f2_local0[9] = 100
                            f2_local0[11] = 60
                            f2_local0[15] = 0
                            f2_local0[17] = 0
                        end
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    f2_local0[14] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    f2_local0[30] = 100
                end
            elseif f2_local3 >= 25 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            f2_local0[12] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                f2_local0[14] = 100
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                f2_local0[1] = 30
                                f2_local0[2] = 0
                                f2_local0[3] = 10
                                f2_local0[4] = 0
                                f2_local0[5] = 0
                                f2_local0[9] = 100
                                f2_local0[11] = 60
                                f2_local0[16] = 200
                                f2_local0[15] = 150
                                f2_local0[17] = 0
                            end
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[1] = 30
                            f2_local0[2] = 0
                            f2_local0[3] = 10
                            f2_local0[4] = 0
                            f2_local0[5] = 0
                            f2_local0[9] = 100
                            f2_local0[11] = 60
                            f2_local0[15] = 150
                            f2_local0[17] = 0
                        end
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    f2_local0[14] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    f2_local0[30] = 100
                end
            elseif f2_local3 >= 20 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            f2_local0[12] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                f2_local0[14] = 100
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                f2_local0[1] = 30
                                f2_local0[2] = 0
                                f2_local0[3] = 10
                                f2_local0[4] = 0
                                f2_local0[5] = 0
                                f2_local0[9] = 100
                                f2_local0[11] = 60
                                f2_local0[16] = 200
                                f2_local0[15] = 150
                                f2_local0[17] = 0
                            end
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[1] = 30
                            f2_local0[2] = 0
                            f2_local0[3] = 10
                            f2_local0[4] = 0
                            f2_local0[5] = 0
                            f2_local0[9] = 100
                            f2_local0[11] = 60
                            f2_local0[15] = 150
                            f2_local0[17] = 0
                        end
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    f2_local0[14] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    f2_local0[30] = 100
                end
            elseif f2_local3 >= 20 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            f2_local0[12] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                f2_local0[14] = 100
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                f2_local0[1] = 30
                                f2_local0[2] = 0
                                f2_local0[3] = 10
                                f2_local0[4] = 0
                                f2_local0[5] = 0
                                f2_local0[9] = 100
                                f2_local0[11] = 60
                                f2_local0[16] = 200
                                f2_local0[15] = 150
                                f2_local0[17] = 0
                            end
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[1] = 30
                            f2_local0[2] = 0
                            f2_local0[3] = 10
                            f2_local0[4] = 0
                            f2_local0[5] = 0
                            f2_local0[9] = 100
                            f2_local0[11] = 60
                            f2_local0[15] = 150
                            f2_local0[17] = 0
                        end
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    f2_local0[14] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    f2_local0[30] = 100
                end
            elseif f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            f2_local0[12] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                f2_local0[14] = 100
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                f2_local0[1] = 30
                                f2_local0[2] = 10
                                f2_local0[3] = 10
                                f2_local0[4] = 10
                                f2_local0[5] = 10
                                f2_local0[9] = 100
                                f2_local0[11] = 30
                                f2_local0[16] = 200
                                f2_local0[15] = 150
                                f2_local0[17] = 0
                            end
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[1] = 30
                            f2_local0[2] = 10
                            f2_local0[3] = 10
                            f2_local0[4] = 10
                            f2_local0[5] = 10
                            f2_local0[9] = 100
                            f2_local0[11] = 30
                            f2_local0[15] = 150
                            f2_local0[17] = 0
                        end
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    f2_local0[14] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    f2_local0[30] = 100
                end
            elseif f2_local3 >= 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            f2_local0[12] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                f2_local0[14] = 100
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                f2_local0[1] = 10
                                f2_local0[2] = 20
                                f2_local0[3] = 10
                                f2_local0[4] = 20
                                f2_local0[5] = 20
                                f2_local0[9] = 0
                                f2_local0[11] = 20
                                f2_local0[16] = 200
                                f2_local0[15] = 150
                                f2_local0[17] = 100
                            end
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[1] = 10
                            f2_local0[2] = 20
                            f2_local0[3] = 10
                            f2_local0[4] = 20
                            f2_local0[5] = 20
                            f2_local0[9] = 0
                            f2_local0[11] = 20
                            f2_local0[15] = 150
                            f2_local0[17] = 100
                        end
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            f2_local0[12] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                f2_local0[14] = 100
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                f2_local0[2] = 30
                                f2_local0[4] = 10
                                f2_local0[5] = 60
                                f2_local0[32] = 100
                            end
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[2] = 30
                            f2_local0[4] = 10
                            f2_local0[5] = 60
                            f2_local0[32] = 100
                        end
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            f2_local0[12] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                f2_local0[14] = 100
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                f2_local0[2] = 30
                                f2_local0[4] = 10
                                f2_local0[5] = 50
                                f2_local0[32] = 100
                            end
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[2] = 30
                            f2_local0[4] = 10
                            f2_local0[5] = 50
                            f2_local0[32] = 100
                        end
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    f2_local0[14] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    f2_local0[2] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 50
                    f2_local0[30] = 50
                    f2_local0[32] = 100
                end
            elseif f2_local3 >= 2.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            f2_local0[12] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                f2_local0[14] = 100
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                f2_local0[1] = 0
                                f2_local0[2] = 10
                                f2_local0[3] = 10
                                f2_local0[4] = 10
                                f2_local0[5] = 10
                                f2_local0[6] = 0
                                f2_local0[7] = 30
                                f2_local0[8] = 30
                                f2_local0[11] = 0
                                f2_local0[16] = 200
                                f2_local0[17] = 100
                            end
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[1] = 0
                            f2_local0[2] = 10
                            f2_local0[3] = 10
                            f2_local0[4] = 10
                            f2_local0[5] = 10
                            f2_local0[6] = 0
                            f2_local0[7] = 30
                            f2_local0[8] = 30
                            f2_local0[11] = 0
                            f2_local0[17] = 100
                        end
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            f2_local0[12] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                f2_local0[14] = 100
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                f2_local0[2] = 30
                                f2_local0[4] = 10
                                f2_local0[5] = 60
                                f2_local0[6] = 0
                                f2_local0[32] = 100
                            end
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[2] = 30
                            f2_local0[4] = 10
                            f2_local0[5] = 60
                            f2_local0[6] = 0
                            f2_local0[32] = 100
                        end
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                            f2_local0[12] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                            if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                                f2_local0[14] = 100
                            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                                f2_local0[2] = 30
                                f2_local0[4] = 10
                                f2_local0[5] = 60
                                f2_local0[6] = 0
                                f2_local0[32] = 100
                            end
                        end
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[2] = 30
                            f2_local0[4] = 10
                            f2_local0[5] = 60
                            f2_local0[6] = 0
                            f2_local0[32] = 100
                        end
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    f2_local0[14] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    f2_local0[2] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 50
                    f2_local0[8] = 0
                    f2_local0[30] = 50
                    f2_local0[32] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                        f2_local0[12] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[1] = 0
                            f2_local0[2] = 10
                            f2_local0[3] = 0
                            f2_local0[5] = 10
                            f2_local0[6] = 30
                            f2_local0[7] = 20
                            f2_local0[8] = 30
                            f2_local0[11] = 0
                            f2_local0[16] = 200
                            f2_local0[17] = 100
                            f2_local0[32] = 0
                        end
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        f2_local0[14] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        f2_local0[1] = 0
                        f2_local0[2] = 10
                        f2_local0[3] = 0
                        f2_local0[5] = 10
                        f2_local0[6] = 30
                        f2_local0[7] = 20
                        f2_local0[8] = 30
                        f2_local0[11] = 0
                        f2_local0[17] = 100
                        f2_local0[32] = 0
                    end
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                        f2_local0[12] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[2] = 10
                            f2_local0[5] = 30
                            f2_local0[6] = 30
                            f2_local0[8] = 30
                            f2_local0[32] = 100
                        end
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        f2_local0[14] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        f2_local0[2] = 10
                        f2_local0[5] = 30
                        f2_local0[6] = 30
                        f2_local0[8] = 30
                        f2_local0[32] = 100
                    end
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13924) == true then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13927) == false then
                        f2_local0[12] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13927) == true then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                            f2_local0[14] = 100
                        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                            f2_local0[2] = 10
                            f2_local0[5] = 30
                            f2_local0[6] = 30
                            f2_local0[8] = 30
                            f2_local0[32] = 100
                        end
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        f2_local0[14] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        f2_local0[2] = 10
                        f2_local0[5] = 30
                        f2_local0[6] = 30
                        f2_local0[8] = 30
                        f2_local0[32] = 100
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                f2_local0[14] = 100
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                f2_local0[2] = 0
                f2_local0[5] = 40
                f2_local0[8] = 40
                f2_local0[30] = 20
                f2_local0[32] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13903) == true then
            if arg1:GetHpRate(TARGET_SELF) <= 0.5 then
                f2_local0[13] = 100
            elseif f2_local3 >= 30 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        f2_local0[14] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        f2_local0[1] = 30
                        f2_local0[2] = 0
                        f2_local0[3] = 10
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[9] = 100
                        f2_local0[11] = 60
                        f2_local0[15] = 0
                        f2_local0[17] = 0
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    f2_local0[14] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    f2_local0[30] = 100
                end
            elseif f2_local3 >= 25 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        f2_local0[14] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        f2_local0[1] = 30
                        f2_local0[2] = 0
                        f2_local0[3] = 10
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[9] = 100
                        f2_local0[11] = 60
                        f2_local0[15] = 150
                        f2_local0[17] = 0
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    f2_local0[14] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    f2_local0[30] = 100
                end
            elseif f2_local3 >= 20 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        f2_local0[14] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        f2_local0[1] = 30
                        f2_local0[2] = 0
                        f2_local0[3] = 10
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[9] = 100
                        f2_local0[11] = 60
                        f2_local0[15] = 150
                        f2_local0[17] = 0
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    f2_local0[14] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    f2_local0[30] = 100
                end
            elseif f2_local3 >= 20 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        f2_local0[14] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        f2_local0[1] = 30
                        f2_local0[2] = 0
                        f2_local0[3] = 10
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[9] = 100
                        f2_local0[11] = 60
                        f2_local0[15] = 150
                        f2_local0[17] = 0
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    f2_local0[14] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    f2_local0[30] = 100
                end
            elseif f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        f2_local0[14] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        f2_local0[1] = 30
                        f2_local0[2] = 10
                        f2_local0[3] = 10
                        f2_local0[4] = 10
                        f2_local0[5] = 10
                        f2_local0[9] = 100
                        f2_local0[11] = 30
                        f2_local0[15] = 150
                        f2_local0[17] = 0
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    f2_local0[14] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    f2_local0[30] = 100
                end
            elseif f2_local3 >= 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        f2_local0[14] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        f2_local0[1] = 10
                        f2_local0[2] = 20
                        f2_local0[3] = 10
                        f2_local0[4] = 20
                        f2_local0[5] = 20
                        f2_local0[9] = 0
                        f2_local0[11] = 20
                        f2_local0[15] = 150
                        f2_local0[17] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        f2_local0[14] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        f2_local0[2] = 30
                        f2_local0[4] = 10
                        f2_local0[5] = 60
                        f2_local0[32] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        f2_local0[14] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        f2_local0[2] = 30
                        f2_local0[4] = 10
                        f2_local0[5] = 50
                        f2_local0[32] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    f2_local0[14] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    f2_local0[2] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 50
                    f2_local0[30] = 50
                    f2_local0[32] = 100
                end
            elseif f2_local3 >= 2.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        f2_local0[14] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        f2_local0[1] = 0
                        f2_local0[2] = 10
                        f2_local0[3] = 10
                        f2_local0[4] = 10
                        f2_local0[5] = 10
                        f2_local0[6] = 0
                        f2_local0[7] = 30
                        f2_local0[8] = 30
                        f2_local0[11] = 0
                        f2_local0[17] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        f2_local0[14] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        f2_local0[2] = 30
                        f2_local0[4] = 10
                        f2_local0[5] = 60
                        f2_local0[6] = 0
                        f2_local0[32] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                        f2_local0[14] = 100
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                        f2_local0[2] = 30
                        f2_local0[4] = 10
                        f2_local0[5] = 60
                        f2_local0[6] = 0
                        f2_local0[32] = 100
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    f2_local0[14] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    f2_local0[2] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 50
                    f2_local0[8] = 0
                    f2_local0[30] = 50
                    f2_local0[32] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    f2_local0[14] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    f2_local0[1] = 0
                    f2_local0[2] = 10
                    f2_local0[3] = 0
                    f2_local0[5] = 10
                    f2_local0[6] = 30
                    f2_local0[7] = 20
                    f2_local0[8] = 30
                    f2_local0[11] = 0
                    f2_local0[17] = 100
                    f2_local0[32] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    f2_local0[14] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    f2_local0[2] = 10
                    f2_local0[5] = 30
                    f2_local0[6] = 30
                    f2_local0[8] = 30
                    f2_local0[32] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                    f2_local0[14] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                    f2_local0[2] = 10
                    f2_local0[5] = 30
                    f2_local0[6] = 30
                    f2_local0[8] = 30
                    f2_local0[32] = 100
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == false then
                f2_local0[14] = 100
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 13926) == true then
                f2_local0[2] = 0
                f2_local0[5] = 40
                f2_local0[8] = 40
                f2_local0[30] = 20
                f2_local0[32] = 100
            end
        elseif arg1:GetHpRate(TARGET_SELF) <= 0.8 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[10] = 100
            else
                f2_local0[30] = 100
            end
        elseif f2_local3 >= 40 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                f2_local0[35] = 100
            else
                f2_local0[30] = 100
            end
        elseif f2_local3 >= 25 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 10
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[11] = 60
                f2_local0[17] = 0
            else
                f2_local0[30] = 100
            end
        elseif f2_local3 >= 20 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 10
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[11] = 60
                f2_local0[17] = 0
            else
                f2_local0[30] = 100
            end
        elseif f2_local3 >= 20 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[3] = 10
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[11] = 60
                f2_local0[17] = 0
            else
                f2_local0[30] = 100
            end
        elseif f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                f2_local0[1] = 30
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 10
                f2_local0[5] = 10
                f2_local0[11] = 30
                f2_local0[17] = 0
            else
                f2_local0[30] = 100
            end
        elseif f2_local3 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                f2_local0[1] = 10
                f2_local0[2] = 20
                f2_local0[3] = 10
                f2_local0[4] = 20
                f2_local0[5] = 20
                f2_local0[11] = 20
                f2_local0[17] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                f2_local0[2] = 30
                f2_local0[4] = 10
                f2_local0[5] = 60
                f2_local0[32] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                f2_local0[2] = 30
                f2_local0[4] = 10
                f2_local0[5] = 50
                f2_local0[32] = 100
            else
                f2_local0[2] = 0
                f2_local0[4] = 0
                f2_local0[5] = 50
                f2_local0[30] = 50
                f2_local0[32] = 100
            end
        elseif f2_local3 >= 2.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                f2_local0[1] = 0
                f2_local0[2] = 10
                f2_local0[3] = 10
                f2_local0[4] = 10
                f2_local0[5] = 10
                f2_local0[6] = 0
                f2_local0[7] = 30
                f2_local0[8] = 30
                f2_local0[11] = 0
                f2_local0[17] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                f2_local0[2] = 30
                f2_local0[4] = 10
                f2_local0[5] = 60
                f2_local0[6] = 0
                f2_local0[32] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                f2_local0[2] = 30
                f2_local0[4] = 10
                f2_local0[5] = 60
                f2_local0[6] = 0
                f2_local0[32] = 100
            else
                f2_local0[2] = 0
                f2_local0[4] = 0
                f2_local0[5] = 50
                f2_local0[8] = 0
                f2_local0[30] = 50
                f2_local0[32] = 100
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
            f2_local0[1] = 0
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[5] = 10
            f2_local0[6] = 30
            f2_local0[7] = 20
            f2_local0[8] = 30
            f2_local0[11] = 0
            f2_local0[17] = 100
            f2_local0[32] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
            f2_local0[2] = 10
            f2_local0[5] = 30
            f2_local0[6] = 30
            f2_local0[8] = 30
            f2_local0[32] = 100
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
            f2_local0[2] = 10
            f2_local0[5] = 30
            f2_local0[6] = 30
            f2_local0[8] = 30
            f2_local0[32] = 100
        else
            f2_local0[2] = 0
            f2_local0[5] = 40
            f2_local0[8] = 40
            f2_local0[30] = 20
            f2_local0[32] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13901) == true then
        if arg1:GetHpRate(TARGET_SELF) <= 0.8 then
            f2_local0[34] = 100
        elseif f2_local3 >= 140 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
            else
                f2_local0[31] = 100
            end
        elseif f2_local3 >= 120 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
            else
                f2_local0[31] = 100
            end
        elseif f2_local3 >= 100 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13943) == false then
                    f2_local0[20] = 0
                    f2_local0[21] = 90
                    f2_local0[22] = 10
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13943) == true then
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[36] = 0
                end
            else
                f2_local0[31] = 100
            end
        elseif f2_local3 >= 80 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13943) == false then
                    f2_local0[20] = 0
                    f2_local0[21] = 90
                    f2_local0[22] = 10
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13943) == true then
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[36] = 0
                end
            else
                f2_local0[31] = 100
            end
        elseif f2_local3 >= 60 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13943) == false then
                    f2_local0[20] = 40
                    f2_local0[21] = 30
                    f2_local0[22] = 30
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13943) == true then
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                end
            else
                f2_local0[31] = 100
            end
        elseif f2_local3 >= 40 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13943) == false then
                    f2_local0[20] = 70
                    f2_local0[21] = 0
                    f2_local0[22] = 30
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 13943) == true then
                    f2_local0[20] = 100
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                end
            else
                f2_local0[31] = 100
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
            f2_local0[34] = 100
        else
            f2_local0[30] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13900) == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5401) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 900) then
                f2_local0[33] = 100
            else
                f2_local0[30] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5400) == true then
            if f2_local3 >= 40 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 900) then
                    f2_local0[35] = 100
                else
                    f2_local0[30] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 900) then
                f2_local0[33] = 100
            else
                f2_local0[30] = 100
            end
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3005, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3005, 15, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[4], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3014, 10, f2_local0[5], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3015, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3020, 15, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3021, 20, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3022, 15, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3025, 15, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3029, 1, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3030, 25, f2_local0[11], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 20015, 10, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3031, 1, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3035, 1, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3039, 30, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 20012, 20, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 20014, 30, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 20015, 25, f2_local0[17], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3030, 10, f2_local0[17], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3100, 5, f2_local0[20], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3101, 15, f2_local0[21], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3102, 5, f2_local0[22], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 6002, 10, f2_local0[32], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 6003, 10, f2_local0[32], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act18)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act22)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, RadarnAndLeonard473000_Act36)
    local f2_local10 = REGIST_FUNC(arg1, arg2, HoundOfBorus_419000_Act02_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function RadarnAndLeonard473000_Act01(arg0, arg1, arg2)
    local f3_local0 = 27 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 5
    local f3_local3 = 100
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act02(arg0, arg1, arg2)
    local f4_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 5
    local f4_local3 = 100
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local f4_local8 = 3001
    local f4_local9 = 3003
    local f4_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local11 = 0
    local f4_local12 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f4_local8, TARGET_ENE_0, f4_local10, f4_local11, f4_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f4_local9, TARGET_ENE_0, f4_local10, f4_local11, f4_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act03(arg0, arg1, arg2)
    local f5_local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 5
    local f5_local3 = 100
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local f5_local8 = 3005
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act04(arg0, arg1, arg2)
    local f6_local0 = 11 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 5
    local f6_local3 = 100
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local f6_local8 = 3008
    local f6_local9 = 3010
    local f6_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local11 = 0
    local f6_local12 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f6_local8, TARGET_ENE_0, f6_local10, f6_local11, f6_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f6_local9, TARGET_ENE_0, f6_local10, f6_local11, f6_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act05(arg0, arg1, arg2)
    local f7_local0 = 13 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 5
    local f7_local3 = 100
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local f7_local8 = 3014
    local f7_local9 = 3015
    local f7_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local11 = 0
    local f7_local12 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f7_local8, TARGET_ENE_0, f7_local10, f7_local11, f7_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f7_local9, TARGET_ENE_0, f7_local10, f7_local11, f7_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act06(arg0, arg1, arg2)
    local f8_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 5
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    local f8_local7 = arg0:GetRandam_Int(1, 100)
    local f8_local8 = 3020
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local10 = 0
    local f8_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act07(arg0, arg1, arg2)
    local f9_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 5
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    local f9_local7 = arg0:GetRandam_Int(1, 100)
    local f9_local8 = 3021
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act08(arg0, arg1, arg2)
    local f10_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 5
    local f10_local3 = 100
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local f10_local8 = 3022
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local10 = 0
    local f10_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f10_local8, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act09(arg0, arg1, arg2)
    local f11_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 5
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 3
    local f11_local7 = arg0:GetRandam_Int(1, 100)
    local f11_local8 = 3025
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local10 = 0
    local f11_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act10(arg0, arg1, arg2)
    local f12_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 5
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 3
    local f12_local6 = 3
    local f12_local7 = arg0:GetRandam_Int(1, 100)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local f12_local8 = 3029
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local10 = 0
    local f12_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act11(arg0, arg1, arg2)
    local f13_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 5
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 3
    local f13_local6 = 3
    local f13_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local8 = 3030
    local f13_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local10 = 0
    local f13_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f13_local8, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act12(arg0, arg1, arg2)
    local f14_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 5
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 3
    local f14_local6 = 3
    local f14_local7 = arg0:GetRandam_Int(1, 100)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local f14_local8 = 3031
    local f14_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local10 = 0
    local f14_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f14_local8, TARGET_ENE_0, f14_local9, f14_local10, f14_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act13(arg0, arg1, arg2)
    local f15_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = f15_local0 + 0
    local f15_local2 = f15_local0 + 5
    local f15_local3 = 100
    local f15_local4 = 0
    local f15_local5 = 3
    local f15_local6 = 3
    local f15_local7 = arg0:GetRandam_Int(1, 100)
    local f15_local8 = 3035
    local f15_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local10 = 0
    local f15_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f15_local8, TARGET_ENE_0, f15_local9, f15_local10, f15_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act14(arg0, arg1, arg2)
    local f16_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = f16_local0 + 0
    local f16_local2 = f16_local0 + 5
    local f16_local3 = 100
    local f16_local4 = 0
    local f16_local5 = 3
    local f16_local6 = 3
    local f16_local7 = arg0:GetRandam_Int(1, 100)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local f16_local8 = 3039
    local f16_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f16_local10 = 0
    local f16_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f16_local8, TARGET_ENE_0, f16_local9, f16_local10, f16_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act15(arg0, arg1, arg2)
    local f17_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 0
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = 3
    local f17_local6 = 3
    local f17_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local f17_local8 = 20012
    local f17_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f17_local10 = 0
    local f17_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f17_local8, TARGET_ENE_0, f17_local9, f17_local10, f17_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act16(arg0, arg1, arg2)
    local f18_local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = f18_local0 + 0
    local f18_local2 = f18_local0 + 0
    local f18_local3 = 100
    local f18_local4 = 0
    local f18_local5 = 3
    local f18_local6 = 3
    local f18_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    local f18_local8 = 20014
    local f18_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f18_local10 = 0
    local f18_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f18_local8, TARGET_ENE_0, f18_local9, f18_local10, f18_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act17(arg0, arg1, arg2)
    local f19_local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = f19_local0 + 0
    local f19_local2 = f19_local0 + 0
    local f19_local3 = 100
    local f19_local4 = 0
    local f19_local5 = 3
    local f19_local6 = 3
    local f19_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6)
    local f19_local8 = 20015
    local f19_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f19_local10 = 0
    local f19_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f19_local8, TARGET_ENE_0, f19_local9, f19_local10, f19_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act18(arg0, arg1, arg2)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    local f20_local0 = 3018
    local f20_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f20_local2 = 0
    local f20_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f20_local0, TARGET_ENE_0, f20_local1, f20_local2, f20_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act20(arg0, arg1, arg2)
    local f21_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local1 = f21_local0 + 0
    local f21_local2 = f21_local0 + 5
    local f21_local3 = 100
    local f21_local4 = 0
    local f21_local5 = 3
    local f21_local6 = 3
    local f21_local7 = arg0:GetRandam_Int(1, 100)
    local f21_local8 = 3100
    local f21_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f21_local10 = 0
    local f21_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f21_local8, TARGET_ENE_0, f21_local9, f21_local10, f21_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act21(arg0, arg1, arg2)
    local f22_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = f22_local0 + 0
    local f22_local2 = f22_local0 + 5
    local f22_local3 = 100
    local f22_local4 = 0
    local f22_local5 = 3
    local f22_local6 = 3
    local f22_local7 = arg0:GetRandam_Int(1, 100)
    local f22_local8 = 3101
    local f22_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f22_local10 = 0
    local f22_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f22_local8, TARGET_ENE_0, f22_local9, f22_local10, f22_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act22(arg0, arg1, arg2)
    local f23_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local1 = f23_local0 + 0
    local f23_local2 = f23_local0 + 5
    local f23_local3 = 100
    local f23_local4 = 0
    local f23_local5 = 3
    local f23_local6 = 3
    local f23_local7 = arg0:GetRandam_Int(1, 100)
    local f23_local8 = 3102
    local f23_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f23_local10 = 0
    local f23_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f23_local8, TARGET_ENE_0, f23_local9, f23_local10, f23_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, -1, resultTypeIfGuardSuccess, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act32(arg0, arg1, arg2)
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
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13907)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13908)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13909)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13910)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13911)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13912)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13913)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13914)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13915)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13916)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13917)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13919)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13929)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13936)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13937)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13938)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act33(arg0, arg1, arg2)
    local f27_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local1 = f27_local0 + 0
    local f27_local2 = f27_local0 + 5
    local f27_local3 = 100
    local f27_local4 = 0
    local f27_local5 = 3
    local f27_local6 = 3
    local f27_local7 = arg0:GetRandam_Int(1, 100)
    local f27_local8 = 20005
    local f27_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f27_local10 = 0
    local f27_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f27_local8, TARGET_ENE_0, f27_local9, f27_local10, f27_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act34(arg0, arg1, arg2)
    local f28_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local1 = f28_local0 + 0
    local f28_local2 = f28_local0 + 5
    local f28_local3 = 100
    local f28_local4 = 0
    local f28_local5 = 3
    local f28_local6 = 3
    local f28_local7 = arg0:GetRandam_Int(1, 100)
    local f28_local8 = 20006
    local f28_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f28_local10 = 0
    local f28_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f28_local8, TARGET_ENE_0, f28_local9, f28_local10, f28_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act35(arg0, arg1, arg2)
    local f29_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f29_local1 = f29_local0 + 0
    local f29_local2 = f29_local0 + 5
    local f29_local3 = 100
    local f29_local4 = 0
    local f29_local5 = 3
    local f29_local6 = 3
    local f29_local7 = arg0:GetRandam_Int(1, 100)
    local f29_local8 = 20007
    local f29_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f29_local10 = 0
    local f29_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f29_local8, TARGET_ENE_0, f29_local9, f29_local10, f29_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_Act36(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RadarnAndLeonard473000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RadarnAndLeonard473000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f34_local0 = arg1:GetDist(TARGET_ENE_0)
    local f34_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f34_local2 = 0
    local f34_local3 = 0
    local f34_local4 = arg1:GetRandam_Int(1, 100)
    local f34_local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 10) then
            if f34_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f34_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 10) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 10) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if f34_local4 <= 25 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f34_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f34_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6002, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 12.5) then
            if f34_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f34_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if f34_local4 <= 25 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f34_local4 <= 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f34_local4 <= 75 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6003, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 12.5) then
            if f34_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f34_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 10) then
            if f34_local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f34_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 140, 180, 10) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 140, 180, 10) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if f34_local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f34_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6002, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 12.5) then
            if f34_local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f34_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
        if f34_local4 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if f34_local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f34_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 6003, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 12.5) then
            if f34_local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f34_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5032) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
        if f34_local4 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5033) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 10) then
        if f34_local4 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5034) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 10) then
        if f34_local4 <= 30 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5035) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 10) then
        if f34_local4 <= 80 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5036) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 10) then
        if f34_local4 <= 80 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13907) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13904) == true or arg1:HasSpecialEffectId(TARGET_SELF, 13903) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13904) == false and arg1:HasSpecialEffectId(TARGET_SELF, 13903) == false then
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13908) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 1.5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 17.5) then
            if f34_local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13909) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 25) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 300) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13910) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 300) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3038, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13911) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 300) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13912) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 300) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13913) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 30) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20012, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13914) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 30) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 300) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3038, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13915) and arg1:HasSpecialEffectId(TARGET_SELF, 13920) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 100) then
        if f34_local4 <= 35 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13916) and arg1:HasSpecialEffectId(TARGET_SELF, 13920) == true and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 100) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13917) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 100) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13917) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 12.5) then
        if f34_local4 <= 40 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20010, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13929) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 12.5) then
        if f34_local4 <= 40 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20011, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13936) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if f34_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f34_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 12.5) then
            if f34_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f34_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13937) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if f34_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f34_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 12.5) then
            if f34_local4 <= 30 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f34_local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(13938) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 20) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 20013, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_RadarnAndLeonard473000_AfterAttackAct, "RadarnAndLeonard473000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RadarnAndLeonard473000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


