RegisterTableGoal(GOAL_ScarabLarge419000_Battle, "ScarabLarge419000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ScarabLarge419000_Battle, true)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
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
                elseif f2_local3 > 10 then
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
                elseif f2_local3 > 5 then
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
                elseif f2_local3 > 2.5 then
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
                elseif f2_local3 > 10 then
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
                elseif f2_local3 > 5 then
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
                elseif f2_local3 > 2.5 then
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
                elseif f2_local3 > 10 then
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
                elseif f2_local3 > 5 then
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
                elseif f2_local3 > 2.5 then
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
                elseif f2_local3 > 10 then
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
                elseif f2_local3 > 5 then
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
                elseif f2_local3 > 2.5 then
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
        elseif f2_local3 > 10 then
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
        elseif f2_local3 > 5 then
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
        elseif f2_local3 > 10 then
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
        elseif f2_local3 > 5 then
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
    f2_local1[1] = REGIST_FUNC(arg1, arg2, ScarabLarge419000_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, ScarabLarge419000_Act2)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, ScarabLarge419000_Act10)
    f2_local1[50] = REGIST_FUNC(arg1, arg2, ScarabLarge419000_Act50)
    local f2_local7 = REGIST_FUNC(arg1, arg2, ScarabLarge419000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function ScarabLarge419000_Act1(arg0, arg1, arg2)
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

function ScarabLarge419000_Act2(arg0, arg1, arg2)
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
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ScarabLarge419000_Act10(arg0, arg1, arg2)
    local f5_local0 = 3001
    local f5_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local2 = 0
    local f5_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 50, f5_local0, TARGET_NONE, f5_local1, f5_local2, f5_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ScarabLarge419000_Act50(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ScarabLarge419000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_ScarabLarge419000_AfterAttackAct, 10)
    
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
        if InsideRange(arg1, arg2, 180, 145, 0, 99) then
            if f10_local2 <= 10 then
                arg1:SetTimer(0, 15)
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
                return true
            elseif f10_local2 <= 40 then
                return true
            else
                arg1:SetTimer(0, 15)
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 15) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 15) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 15) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_ScarabLarge419000_AfterAttackAct, "ScarabLarge419000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ScarabLarge419000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


