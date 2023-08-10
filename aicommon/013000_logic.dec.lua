function common13000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local2 = arg0:GetCurrTargetType()
        local f1_local3 = arg0:GetPrevTargetState()
        if f1_local0 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local0 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif RideRequest(arg0, 10, -1) then
            arg0:AddTopGoal(GOAL_COMMON_Mount, 10, 1.2)
        else
            if arg0:IsChangeState() then
                if not not arg0:IsFindState() or arg0:IsBattleState() then
                    local f1_local4 = arg0:GetDist(TARGET_ENE_0)
                    local f1_local5 = 8
                    local f1_local6 = 30
                    local f1_local7 = 3030
                    if f1_local4 <= f1_local5 and arg0:GetTimer(10) <= 0 then
                        arg0:SetTimer(10, f1_local6)
                        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, f1_local7, TARGET_ENE_0, 9999, 0, 180, 0, 0)
                    end
                elseif not not arg0:IsCautionState() or f1_local3 == AI_TARGET_STATE__CAUTION then
                    local f1_local4 = 10
                    local f1_local5 = 3031
                    if arg0:GetTimer(11) <= 0 then
                        arg0:SetTimer(11, f1_local4)
                        arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 3), TARGET_ENE_0, 0, 0, 0)
                        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, f1_local5, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                    else

                    end
                end
            end
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function common13000_Interupt(arg0, arg1)
    
end


