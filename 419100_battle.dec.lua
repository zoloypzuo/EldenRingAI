RegisterTableGoal(GOAL_Scarab419100_Battle, "Scarab419100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Scarab419100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    if arg1:HasSpecialEffectId(TARGET_SELF, 12614) == true then
        f2_local0[10] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12620) == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12604) == true then
            if arg1:IsRiding(TARGET_ENE_0) == true then
                if f2_local3 > 15 then
                    if arg1:GetLatestSoundTargetRank() > -1 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[50] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[50] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[50] = 100
                        else
                            f2_local0[50] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[50] = 100
                    else
                        f2_local0[50] = 100
                    end
                elseif f2_local3 > 9 then
                    if arg1:GetLatestSoundTargetRank() > -1 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[50] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[50] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[50] = 100
                        else
                            f2_local0[50] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[50] = 100
                    else
                        f2_local0[50] = 100
                    end
                elseif f2_local3 > 4 then
                    if arg1:GetLatestSoundTargetRank() > -1 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[2] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[2] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[2] = 100
                        else
                            f2_local0[2] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[50] = 100
                    else
                        f2_local0[2] = 100
                    end
                elseif f2_local3 > 2 then
                    if arg1:GetLatestSoundTargetRank() > -1 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[2] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[2] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[2] = 100
                        else
                            f2_local0[2] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[2] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[2] = 100
                    else
                        f2_local0[2] = 100
                    end
                elseif arg1:GetLatestSoundTargetRank() > -1 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[2] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[2] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[2] = 100
                    else
                        f2_local0[2] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[50] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[2] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[2] = 100
                else
                    f2_local0[2] = 100
                end
            elseif arg1:IsRiding(TARGET_ENE_0) == false then
                if f2_local3 > 15 then
                    if arg1:GetLatestSoundTargetRank() > -1 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[50] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[50] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[50] = 100
                        else
                            f2_local0[50] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[50] = 100
                    else
                        f2_local0[50] = 100
                    end
                elseif f2_local3 > 9 then
                    if arg1:GetLatestSoundTargetRank() > -1 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[50] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[50] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[50] = 100
                        else
                            f2_local0[50] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[50] = 100
                    else
                        f2_local0[50] = 100
                    end
                elseif f2_local3 > 4 then
                    if arg1:GetLatestSoundTargetRank() > -1 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[50] = 0
                            f2_local0[2] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[2] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[2] = 100
                        else
                            f2_local0[2] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[50] = 100
                    else
                        f2_local0[50] = 100
                    end
                elseif f2_local3 > 2 then
                    if arg1:GetLatestSoundTargetRank() > -1 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[2] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[2] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[2] = 100
                        else
                            f2_local0[2] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[2] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[2] = 100
                    else
                        f2_local0[2] = 100
                    end
                elseif arg1:GetLatestSoundTargetRank() > -1 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[2] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[2] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[2] = 100
                    else
                        f2_local0[2] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[2] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[2] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[2] = 100
                else
                    f2_local0[2] = 100
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12604) == false then
            if f2_local5 < 1 then
                f2_local0[2] = 100
            elseif arg1:IsRiding(TARGET_ENE_0) == true then
                if f2_local3 > 15 then
                    if arg1:GetLatestSoundTargetRank() > -1 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[50] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[50] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[50] = 100
                        else
                            f2_local0[50] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[50] = 100
                    else
                        f2_local0[50] = 100
                    end
                elseif f2_local3 > 9 then
                    if arg1:GetLatestSoundTargetRank() > -1 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[50] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[50] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[50] = 100
                        else
                            f2_local0[50] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[50] = 100
                    else
                        f2_local0[50] = 100
                    end
                elseif f2_local3 > 4 then
                    if arg1:GetLatestSoundTargetRank() > -1 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[2] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[2] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[2] = 100
                        else
                            f2_local0[2] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[50] = 100
                    else
                        f2_local0[2] = 100
                    end
                elseif f2_local3 > 2 then
                    if arg1:GetLatestSoundTargetRank() > -1 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[2] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[2] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[2] = 100
                        else
                            f2_local0[2] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[2] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[2] = 100
                    else
                        f2_local0[2] = 100
                    end
                elseif arg1:GetLatestSoundTargetRank() > -1 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[2] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[2] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[2] = 100
                    else
                        f2_local0[2] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[50] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[2] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[2] = 100
                else
                    f2_local0[2] = 100
                end
            elseif arg1:IsRiding(TARGET_ENE_0) == false then
                if f2_local3 > 15 then
                    if arg1:GetLatestSoundTargetRank() > -1 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[50] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[50] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[50] = 100
                        else
                            f2_local0[50] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[50] = 100
                    else
                        f2_local0[50] = 100
                    end
                elseif f2_local3 > 9 then
                    if arg1:GetLatestSoundTargetRank() > -1 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[50] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[50] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[50] = 100
                        else
                            f2_local0[50] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[50] = 100
                    else
                        f2_local0[50] = 100
                    end
                elseif f2_local3 > 4 then
                    if arg1:GetLatestSoundTargetRank() > -1 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[50] = 0
                            f2_local0[2] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[2] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[2] = 100
                        else
                            f2_local0[2] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[50] = 100
                    else
                        f2_local0[50] = 100
                    end
                elseif f2_local3 > 2 then
                    if arg1:GetLatestSoundTargetRank() > -1 then
                        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                            f2_local0[2] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                            f2_local0[2] = 100
                        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                            f2_local0[2] = 100
                        else
                            f2_local0[2] = 100
                        end
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[50] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[2] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[2] = 100
                    else
                        f2_local0[2] = 100
                    end
                elseif arg1:GetLatestSoundTargetRank() > -1 then
                    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                        f2_local0[2] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                        f2_local0[2] = 100
                    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                        f2_local0[2] = 100
                    else
                        f2_local0[2] = 100
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[2] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[2] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[2] = 100
                else
                    f2_local0[2] = 100
                end
            end
        end
    elseif f2_local5 < 1 then
        f2_local0[1] = 100
    elseif arg1:IsRiding(TARGET_ENE_0) == true then
        if f2_local3 > 15 then
            if arg1:GetLatestSoundTargetRank() > -1 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[50] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[50] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[50] = 100
                else
                    f2_local0[50] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[50] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[50] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[50] = 100
            else
                f2_local0[50] = 100
            end
        elseif f2_local3 > 9 then
            if arg1:GetLatestSoundTargetRank() > -1 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[50] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[50] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[50] = 100
                else
                    f2_local0[50] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[50] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[50] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[50] = 100
            else
                f2_local0[50] = 100
            end
        elseif f2_local3 > 4 then
            if arg1:GetLatestSoundTargetRank() > -1 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 100
                else
                    f2_local0[1] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[50] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[50] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[50] = 100
            else
                f2_local0[1] = 100
            end
        elseif arg1:GetLatestSoundTargetRank() > -1 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 100
            else
                f2_local0[1] = 100
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[50] = 100
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 100
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 100
        else
            f2_local0[1] = 100
        end
    elseif arg1:IsRiding(TARGET_ENE_0) == false then
        if f2_local3 > 15 then
            if arg1:GetLatestSoundTargetRank() > -1 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[50] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[50] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[50] = 100
                else
                    f2_local0[50] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[50] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[50] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[50] = 100
            else
                f2_local0[50] = 100
            end
        elseif f2_local3 > 9 then
            if arg1:GetLatestSoundTargetRank() > -1 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[50] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[50] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[50] = 100
                else
                    f2_local0[50] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[50] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[50] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[50] = 100
            else
                f2_local0[50] = 100
            end
        elseif f2_local3 > 4 then
            if arg1:GetLatestSoundTargetRank() > -1 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[50] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 100
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 100
                else
                    f2_local0[1] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[50] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[50] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[50] = 100
            else
                f2_local0[50] = 100
            end
        elseif arg1:GetLatestSoundTargetRank() > -1 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 100
            else
                f2_local0[1] = 100
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[50] = 100
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 100
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 100
        else
            f2_local0[1] = 100
        end
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Scarab419100_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Scarab419100_Act2)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Scarab419100_Act10)
    f2_local1[50] = REGIST_FUNC(arg1, arg2, Scarab419100_Act50)
    local f2_local7 = REGIST_FUNC(arg1, arg2, Scarab419100_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function Scarab419100_Act1(arg0, arg1, arg2)
    arg0:SetEnableUsePath(false)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f3_local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 999, TARGET_SELF, false, -1)
    f3_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f3_local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 3, TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToB, 99)
    f3_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f3_local0 = 3000
    local f3_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local2 = 0
    local f3_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f3_local0, TARGET_NONE, f3_local1, f3_local2, f3_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Scarab419100_Act2(arg0, arg1, arg2)
    arg0:SetEnableUsePath(false)
    local f4_local0 = 3003
    local f4_local1 = 20027
    local f4_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local3 = 0
    local f4_local4 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 12604) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f4_local0, TARGET_NONE, f4_local2, f4_local3, f4_local4, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 12604) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f4_local1, TARGET_NONE, f4_local2, f4_local3, f4_local4, 0, 0)
    end
    
end

function Scarab419100_Act10(arg0, arg1, arg2)
    local f5_local0 = 3001
    local f5_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local2 = 0
    local f5_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 50, f5_local0, TARGET_NONE, f5_local1, f5_local2, f5_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Scarab419100_Act50(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Scarab419100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Scarab419100_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f10_local0 = arg1:GetDist(TARGET_ENE_0)
    local f10_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = arg1:GetRandam_Int(1, 100)
    local f10_local3 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:HasSpecialEffectId(TARGET_SELF, 12620) == true and arg1:HasSpecialEffectId(TARGET_SELF, 12604) == true then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 240, 180, 15) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 20027, TARGET_NONE, f10_local1, TurnTime, FrontAngle, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12604) == true and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 240, 180, 15) then
            if f10_local2 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3003, TARGET_NONE, f10_local1, TurnTime, FrontAngle, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:HasSpecialEffectId(TARGET_SELF, 12620) == true and arg1:HasSpecialEffectId(TARGET_SELF, 12604) == true then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 360, 180, 15) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 20027, TARGET_NONE, f10_local1, TurnTime, FrontAngle, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12604) == true and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 240, 180, 15) then
            if f10_local2 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3003, TARGET_NONE, f10_local1, TurnTime, FrontAngle, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsFinishTimer(0) and not arg1:HasSpecialEffectId(TARGET_SELF, 12620) then
        arg2:ClearSubGoal()
        if InsideRange(arg1, arg2, 180, 152, 0, 99) then
            if f10_local2 <= 30 then
                arg1:SetTimer(0, 15)
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
                return true
            elseif f10_local2 <= 60 then
                return true
            else
                arg1:SetTimer(0, 15)
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 2) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_Scarab419100_AfterAttackAct, "Scarab419100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Scarab419100_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


