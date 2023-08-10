function RoamArmy431000_Logic(arg0)
    COMMON_Initialize(arg0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13058)
    if COMMON_EasySetup_Initial(arg0) == false then
        if eventNo == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif eventNo == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function RoamArmy431000_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg0:HasSpecialEffectId(TARGET_SELF, 13054) then
        if arg0:IsBattleState() and arg0:HasSpecialEffectId(TARGET_SELF, 5025) then
            arg0:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            local f2_local0 = arg0:GetDist(TARGET_ENE_0)
            if f2_local0 >= 5 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                arg1:ClearSubGoal()
                arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13058)
                local f2_local1 = 5
                local f2_local2 = 3019
                local f2_local3 = TARGET_ENE_0
                local f2_local4 = 10
                local f2_local5 = 0
                local f2_local6 = 0
                local f2_local7 = 0
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f2_local1, f2_local2, f2_local3, successDist2, 0, 0, 0)
                return true
            end
        end
        if arg0:HasSpecialEffectId(TARGET_SELF, 13058) then
            arg0:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13058)
            arg1:ClearSubGoal()
            if arg0:IsBattleState() then
                local f2_local0 = arg0:GetRandam_Int(1, 100)
                local f2_local1 = arg0:GetDist(TARGET_ENE_0)
                if f2_local1 >= 7 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13058)
                    local f2_local2 = 5
                    local f2_local3 = 3018
                    local f2_local4 = TARGET_ENE_0
                    local f2_local5 = 10
                    local f2_local6 = 0
                    local f2_local7 = 0
                    local f2_local8 = 0
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f2_local2, f2_local3, f2_local4, successDist2, 0, 0, 0)
                    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true and f2_local0 >= 70 then
                        arg1:ClearSubGoal()
                        local f2_local9 = arg0:GetRandam_Int(5, 6)
                        local f2_local10 = TARGET_ENE_0
                        local f2_local11 = arg0:GetRandam_Int(0, 1)
                        local f2_local12 = arg0:GetRandam_Int(30, 45)
                        local f2_local13 = 3
                        local f2_local14 = TARGET_SELF
                        local f2_local15 = true
                        local f2_local16 = true
                        local f2_local17 = arg0:GetDist(TARGET_ENE_0)
                        local f2_local18 = 100
                        if arg0:HasSpecialEffectId(TARGET_SELF, 13055) then
                            f2_local18 = 0
                        end
                        local f2_local19 = arg0:GetRandam_Int(1, 100)
                        local f2_local20 = -1
                        if f2_local19 <= f2_local18 then
                            f2_local20 = 9910
                        end
                        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f2_local9, f2_local10, f2_local11, f2_local12, f2_local15, f2_local16, f2_local20)
                    end
                else
                    arg1:ClearSubGoal()
                end
            end
            return true
        end
    end
    
end


