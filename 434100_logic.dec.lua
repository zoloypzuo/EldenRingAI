function PumpkinHead4Frail434100_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local2 = arg0:GetMovePointNumber()
        if f1_local0 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local0 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) then
            if arg0:HasSpecialEffectId(TARGET_SELF, 13259) == true then
                local f1_local3 = 10
                local f1_local4 = arg0:GetRandam_Int(1, 100)
                local f1_local5 = arg0:GetRandam_Int(3028, 3031)
                local f1_local6 = TARGET_NONE
                local f1_local7 = 50
                local f1_local8 = 0
                local f1_local9 = 0
                local f1_local10 = 0
                arg0:AddTopGoal(GOAL_COMMON_ComboRepeat, f1_local3, f1_local5, f1_local6, f1_local7)
            elseif arg0:HasSpecialEffectId(TARGET_SELF, 13260) == true then
                if arg0:HasSpecialEffectId(TARGET_SELF, 13256) == true then
                    local f1_local3 = 5
                    local f1_local4 = 3032
                    local f1_local5 = TARGET_NONE
                    local f1_local6 = 100
                    local f1_local7 = 0
                    local f1_local8 = 0
                    local f1_local9 = 180
                    arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f1_local3, f1_local4, f1_local5, successDist2, 0, 0, 0)
                else
                    local f1_local3 = 5
                    local f1_local4 = 3029
                    local f1_local5 = 3032
                    local f1_local6 = TARGET_NONE
                    local f1_local7 = TARGET_NONE
                    local f1_local8 = 100
                    local f1_local9 = 0
                    local f1_local10 = 0
                    local f1_local11 = 0
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f1_local3, f1_local4, f1_local6, f1_local8, 0, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f1_local3, f1_local5, f1_local6, successDist2)
                end
            elseif not not arg0:HasSpecialEffectAttribute(TARGET_SELF, 395) or arg0:HasSpecialEffectId(TARGET_SELF, 13248) then
                local f1_local3 = 10
                local f1_local4 = 3027
                local f1_local5 = TARGET_NONE
                local f1_local6 = 50
                local f1_local7 = 0
                local f1_local8 = 0
                local f1_local9 = 0
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f1_local3, f1_local4, f1_local5, f1_local6, 0, 0)
            else
                COMMON_EasySetup3(arg0)
            end
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function PumpkinHead4Frail434100_Interupt(arg0, arg1)
    
end


