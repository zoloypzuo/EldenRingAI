function DemiHuman_SongsswordShield_410000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local2 = arg0:GetDist(POINT_INITIAL)
        local f1_local3 = GetCurrentTimeType(arg0)
        local f1_local4 = arg0:GetPrevTargetState()
        local f1_local5 = arg0:IsBattleState()
        if arg0:HasSpecialEffectId(TARGET_SELF, 10555) == true then
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3038, TARGET_SELF, 999, 0, 0, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 10554) == true then
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif f1_local3 == PLAN_TIME_TYPE_NIGHT or f1_local3 == PLAN_TIME_TYPE_MIDNIGHT then
            if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                if arg0:HasSpecialEffectId(TARGET_SELF, 10551) == true then
                    COMMON_EasySetup3(arg0)
                elseif arg0:HasSpecialEffectId(TARGET_SELF, 10551) == false then
                    if arg0:IsBattleState() == true then
                        arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 0.25), TARGET_ENE_0, 0, 0, 0)
                        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 0)
                    else
                        arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 2.5), TARGET_ENE_0, 0, 0, 0)
                        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 0)
                    end
                end
            elseif arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == false then
                if arg0:HasSpecialEffectId(TARGET_SELF, 10553) == true then
                    if arg0:IsBattleState() == true or arg0:IsSearchLowState() == true or arg0:IsSearchHighState() == true or arg0:IsCautionState() == true then
                        COMMON_EasySetup3(arg0)
                    else
                        arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 2, 10, true, -1, 3, 1, false, false)
                    end
                elseif arg0:HasSpecialEffectId(TARGET_SELF, 10551) == true then
                    if arg0:IsBattleState() == true or arg0:IsSearchLowState() == true or arg0:IsSearchHighState() == true or arg0:IsCautionState() == true then
                        COMMON_EasySetup3(arg0)
                    else
                        arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 2, 10, true, -1, 3, 1, false, false)
                    end
                elseif arg0:HasSpecialEffectId(TARGET_SELF, 10551) == false then
                    if arg0:IsBattleState() == true then
                        arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 0.25), TARGET_ENE_0, 0, 0, 0)
                        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 0)
                    else
                        arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 2.5), TARGET_ENE_0, 0, 0, 0)
                        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 0)
                    end
                end
            end
        elseif f1_local3 == PLAN_TIME_TYPE_MORNING or f1_local3 == PLAN_TIME_TYPE_DAYTIME or f1_local3 == PLAN_TIME_TYPE_EVENING then
            if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                if arg0:HasSpecialEffectId(TARGET_SELF, 10551) == true then
                    if arg0:IsBattleState() == true then
                        arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 0.25), TARGET_ENE_0, 0, 0, 0)
                        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, DIST_None, 0, 0)
                    else
                        arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 2.5), TARGET_ENE_0, 0, 0, 0)
                        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, DIST_None, 0, 0)
                    end
                elseif arg0:HasSpecialEffectId(TARGET_SELF, 10551) == false then
                    COMMON_EasySetup3(arg0)
                end
            elseif arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == false then
                if arg0:HasSpecialEffectId(TARGET_SELF, 10551) == true then
                    if arg0:IsBattleState() == true then
                        arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 0.25), TARGET_ENE_0, 0, 0, 0)
                        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, DIST_None, 0, 0)
                    else
                        arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 2.5), TARGET_ENE_0, 0, 0, 0)
                        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, DIST_None, 0, 0)
                    end
                elseif arg0:HasSpecialEffectId(TARGET_SELF, 10551) == false then
                    COMMON_EasySetup3(arg0)
                end
            end
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function DemiHuman_SongsswordShield_410000_Interupt(arg0, arg1)
    
end

function DemiHuman_SongsswordShield_410000_NoneBattleCheck(arg0)
    if arg0:IsBattleState() == false and arg0:IsCautionState() == false and arg0:IsFindState() == false and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false then
        return true
    else
        return false
    end
    
end


