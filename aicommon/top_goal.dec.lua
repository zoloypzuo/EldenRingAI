function TopGoal_Activate(arg0, arg1)
    if (not not arg0:HasSpecialEffectId(TARGET_SELF, 5005) or arg0:HasSpecialEffectId(TARGET_SELF, 5008)) and arg0:HasSpecialEffectId(TARGET_SELF, 5007) == false then
        arg1:ClearSubGoal()
        arg0:AddTopGoal(GOAL_COMMON_Wait, 1, TARGET_SELF)
    end
    
end

function TopGoal_Update(arg0, arg1)
    return GOAL_RESULT_Continue
    
end

function TopGoal_Terminate(arg0, arg1)
    
end

function TopGoal_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_CANNOT_MOVE) then
        local f4_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__CannotMoveAction)
        if arg0:IsTouchBreakableObject() and f4_local0 >= 0 then
            local f4_local1 = arg0:IsLookToTarget(POINT_CurrRequestPosition, 90)
            if f4_local1 then
                f4_local1 = 10
                if arg0:IsHugeEnemy() == true or arg0:HasSpecialEffectId(TARGET_SELF, 5016) == true then
                    f4_local1 = 100
                end
                if arg0:GetTouchBreakableObjectDefense() <= f4_local1 then
                    arg1:ClearSubGoal()
                    if arg0:IsRiding(TARGET_SELF) == false then
                        local f4_local2 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__enableWeaponOnOff)
                        local f4_local3 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__weaponOffSpecialEffectId)
                        local f4_local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__weaponOnAnimId)
                        local f4_local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__weaponOffAnimId)
                        if f4_local2 > 0 and arg0:HasSpecialEffectId(TARGET_SELF, f4_local3) == true then
                            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local4, TARGET_SELF, 9999, 0, 0, 0, 0)
                            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, -1, f4_local0, TARGET_NONE, DIST_None)
                            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local5, TARGET_SELF, 9999, 0, 0, 0, 0)
                            return true
                        end
                    end
                    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, -1, f4_local0, TARGET_NONE, DIST_None)
                    return true
                end
            end
        end
        if arg0:IsOnRideCostMesh() then
            arg0:Replaning()
            return true
        end
    end
    if arg0:IsInterupt(INTERUPT_CANNOT_MOVE_DisableInterupt) then
        local f4_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__CannotMoveAction)
        if arg0:IsTouchBreakableObject() and f4_local0 >= 0 then
            local f4_local1 = arg0:IsLookToTarget(POINT_CurrRequestPosition, 90)
            if f4_local1 then
                f4_local1 = 10
                if arg0:IsHugeEnemy() == true then
                    f4_local1 = 100
                end
                if arg0:GetTouchBreakableObjectDefense() <= f4_local1 then
                    if arg0:IsRiding(TARGET_SELF) == false then
                        local f4_local2 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__enableWeaponOnOff)
                        local f4_local3 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__weaponOffSpecialEffectId)
                        local f4_local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__weaponOnAnimId)
                        local f4_local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__weaponOffAnimId)
                        if f4_local2 > 0 and arg0:HasSpecialEffectId(TARGET_SELF, f4_local3) == true then
                            arg1:AddSubGoal_Front(GOAL_COMMON_AttackTunableSpin, 10, f4_local4, TARGET_SELF, 9999, 0, 0, 0, 0)
                            arg1:AddSubGoal_Front(GOAL_COMMON_NonspinningAttack, -1, f4_local0, TARGET_NONE, DIST_None)
                            arg1:AddSubGoal_Front(GOAL_COMMON_AttackTunableSpin, 10, f4_local5, TARGET_SELF, 9999, 0, 0, 0, 0)
                            return true
                        end
                    end
                    arg1:AddSubGoal_Front(GOAL_COMMON_NonspinningAttack, -1, f4_local0, TARGET_NONE, DIST_None)
                    return true
                end
            end
        end
        if arg0:IsOnRideCostMesh() then
            arg0:Replaning()
            return true
        end
    end
    if arg0:IsInterupt(INTERUPT_HitEnemyWall) then
        local f4_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__BackHomeLife_OnHitEnemyWall)
        if f4_local0 > 0 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_BackToHome, f4_local0, 0)
            return true
        end
    end
    if arg0:IsInterupt(INTERUPT_LadderWait) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_LadderWait, arg0:GetRandam_Int(10, 15))
        return true
    end
    if arg0:IsInterupt(INTERUPT_UnfavorableAttack) and arg0:GetStringIndexedNumber("IsIgnore_Sideway_onFailedPath") ~= 1 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_OnUnfavorableAttack, 15, TARGET_ENE_0, 10, TARGET_SELF, false, -1, -1)
        return true
    end
    return false
    
end


