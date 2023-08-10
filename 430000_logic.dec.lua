function UncoverTombNobleMan430000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetDist(TARGET_ENE_0)
        local f1_local1 = arg0:GetEventRequest()
        local f1_local2 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local3 = arg0:GetCurrTargetType()
        local f1_local4 = arg0:GetPrevTargetState()
        local f1_local5 = arg0:GetPlatoonCommand()
        local f1_local6 = f1_local5:GetCommandNo()
        local f1_local7 = 9
        if arg0:IsBattleState() == false and arg0:IsCautionState() == false and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false then
            arg0:SetNumber(f1_local7, 0)
        end
        if f1_local1 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local1 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 10293) == true then
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 10111) == true then
            if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
            elseif arg0:IsBattleState() == false and arg0:IsMemoryState() == false and arg0:IsCautionState() == false and arg0:IsFindState() == false and arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false then
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
            else
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
        else
            if arg0:IsChangeState() and arg0:IsCautionState() then
                local f1_local8 = arg0:GetNumber(8)
                if f1_local8 == 0 then
                    f1_local8 = 10
                    local f1_local9 = 3031
                    if arg0:GetTimer(11) <= 0 and (f1_local0 >= 10 or arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200)) then
                        arg0:SetTimer(11, f1_local8)
                        arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 3), TARGET_ENE_0, 0, 0, 0)
                        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, f1_local9, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                    end
                else
                    f1_local8 = 10
                    local f1_local9 = 3031
                    local f1_local10 = arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(4, 5.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1)
                    f1_local10:SetLifeEndSuccess(true)
                    arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, f1_local0, TARGET_SELF, true, -1)
                    arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, f1_local9, TARGET_SELF, 9999, 0, 0, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_Wait, 3, TARGET_NONE, 0, 0, 0)
                    arg0:SetNumber(8, 0)
                end
            end
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function UncoverTombNobleMan430000_Interupt(arg0, arg1)
    local f2_local0 = arg0:GetPlatoonCommand()
    local f2_local1 = f2_local0:GetCommandNo()
    local f2_local2 = 14
    isChangedOrder = arg0:IsInterupt(INTERUPT_PlatoonAiOrder)
    if isChangedOrder and f2_local1 == f2_local2 then
        arg1:ClearSubGoal()
        arg0:Replaning()
    end
    
end


