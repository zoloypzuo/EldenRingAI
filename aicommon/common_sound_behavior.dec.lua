function COMMON_SoundBehavior_FlagInitialize(arg0)
    if arg0:IsSearchLowState() == false and arg0:IsSearchHighState() == false and arg0:IsCautionState() == false and arg0:IsBattleState() == false then
        arg0:SetStringIndexedNumber("COMMON_SoundBehavior_Arrived", 0)
        arg0:SetStringIndexedNumber("COMMON_SoundBehavior_DoneFirstAct", 0)
    end
    
end

function COMMON_SoundBehavior(arg0, arg1)
    if arg1 == 300000 then
        if arg0:IsFinishTimer(1) then
            local f2_local0 = arg0:GetDist(TARGET_SOUND)
            local f2_local1 = arg0:GetRandam_Int(5, 20)
            local f2_local2 = 1
            local f2_local3 = 5
            local f2_local4 = true
            local f2_local5 = 3031
            local f2_local6 = 5
            local f2_local7 = -1
            local f2_local8 = true
            local f2_local9 = false
            local f2_local10 = arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, f2_local2, TARGET_SELF, false, -1)
            f2_local10:TimingSetTimer(1, 999, AI_TIMING_SET__UPDATE_SUCCESS)
            return true
        elseif arg0:IsBattleState() == false then

        else

        end
    end
    local f2_local0 = arg0:GetDist(TARGET_SOUND)
    local f2_local1 = arg0:GetRandam_Int(1, 100)
    if arg1 == 307000 and arg0:IsBattleState() == false then
        if f2_local0 >= 5 then
            if f2_local1 <= 70 then
                arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_SOUND, 5, TARGET_SELF, false, -1)
            else
                arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_SOUND, 7, TARGET_SELF, true, -1)
            end
        else
            arg0:AddTopGoal(GOAL_COMMON_Turn, 10, TARGET_SOUND, 0, 0, 0)
        end
    end
    if arg1 == 337000 and arg0:IsBattleState() == false and arg0:HasSpecialEffectId(13156) then
        local f2_local2 = arg0:GetDist(TARGET_SOUND)
        local f2_local3 = arg0:GetRandam_Int(5, 20)
        local f2_local4 = 1
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_SOUND, f2_local4, TARGET_SELF, false, -1)
        return true
    else

    end
    local f2_local2 = arg0:GetRandam_Int(1, 100)
    if arg1 == 356000 and arg0:IsBattleState() == true and arg0:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if f2_local2 <= 50 then
                arg0:AddTopGoal(GOAL_COMMON_ComboFinal, 3, 3031, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                return true
            else
                return false
            end
        elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f2_local2 <= 50 then
                arg0:AddTopGoal(GOAL_COMMON_ComboFinal, 3, 3032, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                return true
            else
                return false
            end
        elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f2_local2 <= 40 then
                if arg0:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_BL, 90, 180, 100) then
                    arg0:AddTopGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                    arg0:AddTopGoal(GOAL_COMMON_ComboFinal, 3, 3027, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                elseif arg0:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_BR, 90, 180, 100) then
                    arg0:AddTopGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                    arg0:AddTopGoal(GOAL_COMMON_ComboFinal, 3, 3027, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                else
                    arg0:AddTopGoal(GOAL_COMMON_ComboFinal, 3, 3027, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                end
            else
                return false
            end
        end
    end
    local f2_local3 = arg0:GetRandam_Int(1, 100)
    if arg1 == 357000 and arg0:IsBattleState() == true and arg0:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if f2_local3 <= 50 then
                arg0:AddTopGoal(GOAL_COMMON_ComboFinal, 3, 3034, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                return true
            else
                return false
            end
        elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f2_local3 <= 40 then
                if arg0:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_BL, 90, 180, 100) then
                    arg0:AddTopGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                    arg0:AddTopGoal(GOAL_COMMON_ComboFinal, 3, 3027, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                elseif arg0:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_BR, 90, 180, 100) then
                    arg0:AddTopGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                    arg0:AddTopGoal(GOAL_COMMON_ComboFinal, 3, 3027, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                else
                    arg0:AddTopGoal(GOAL_COMMON_ComboFinal, 3, 3027, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                end
            else
                return false
            end
        elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f2_local3 <= 40 then
                if arg0:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_BL, 90, 180, 100) then
                    arg0:AddTopGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
                    arg0:AddTopGoal(GOAL_COMMON_ComboFinal, 3, 3027, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                elseif arg0:IsInsideTargetCustom(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_BR, 90, 180, 100) then
                    arg0:AddTopGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
                    arg0:AddTopGoal(GOAL_COMMON_ComboFinal, 3, 3027, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                else
                    arg0:AddTopGoal(GOAL_COMMON_ComboFinal, 3, 3027, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                end
            else
                return false
            end
        end
    end
    local f2_local4 = arg0:GetRandam_Int(1, 100)
    if arg1 == 357001 and arg0:IsBattleState() == true and arg0:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 30) then
        if f2_local4 <= 99 then
            arg0:AddTopGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
            return true
        else
            return false
        end
    end
    if arg1 == 365000 and arg0:HasSpecialEffectId(TARGET_SELF, 13301) == false and arg0:HasSpecialEffectId(TARGET_SELF, 13302) == false and arg0:HasSpecialEffectId(TARGET_SELF, 13303) == false then
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_NONE, DIST_None, 0, 0)
    end
    local f2_local5 = arg0:GetRandam_Int(1, 100)
    if arg1 == 366000 and arg0:IsBattleState() == true and arg0:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return false
        elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f2_local5 <= 70 then
                if arg0:HasSpecialEffectId(TARGET_SELF, 14704) == true then
                    if arg0:HasSpecialEffectId(TARGET_SELF, 14702) == true then
                        arg0:AddTopGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                        return true
                    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14705) == true then
                        arg0:AddTopGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                        return true
                    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14706) == true then
                        arg0:AddTopGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                        return true
                    else
                        arg0:AddTopGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                        return true
                    end
                elseif arg0:HasSpecialEffectId(TARGET_SELF, 14704) == false then
                    if arg0:HasSpecialEffectId(TARGET_SELF, 14702) == true then
                        arg0:AddTopGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                        return true
                    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14705) == true then
                        arg0:AddTopGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                        return true
                    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14706) == true then
                        arg0:AddTopGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                        return true
                    else
                        arg0:AddTopGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                        return true
                    end
                end
            else
                return false
            end
        end
    end
    local f2_local6 = arg0:GetDist(TARGET_SOUND)
    local f2_local7 = arg0:GetRandam_Int(1, 100)
    if (arg1 == 367000 or arg1 == 367001 or arg1 == 367002) and arg0:IsBattleState() == false then
        if arg0:HasSpecialEffectId(TARGET_SELF, 17100) == true then
            if f2_local6 >= 5 then
                if f2_local7 <= 35 then
                    arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_SOUND, 3, TARGET_SELF, false, -1)
                elseif f2_local7 <= 70 then
                    arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_SOUND, 5, TARGET_SELF, false, -1)
                else
                    arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_SOUND, 7, TARGET_SELF, false, -1)
                end
            end
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 17100) == false and f2_local6 >= 3 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_SOUND, 3, TARGET_SELF, false, -1)
        end
    end
    local f2_local8 = arg0:GetRandam_Int(1, 100)
    local f2_local9 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg1 == 375000 and arg0:IsBattleState() == true and arg0:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 30) then
        if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f2_local9, 0) >= 2 then
            arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
        else
            arg0:AddTopGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    end
    if arg1 == 395000 and arg0:IsBattleState() == false then
        local f2_local10 = arg0:GetDist(TARGET_SOUND)
        local f2_local11 = arg0:GetRandam_Int(5, 20)
        local f2_local12 = 1
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_SOUND, f2_local12, TARGET_SELF, false, -1)
        return true
    else

    end
    if arg1 == 400000 and arg0:IsBattleState() == false then
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, 5, TARGET_SELF, false, false)
    end
    if arg1 == 400001 then
        local f2_local10 = arg0:GetDist(TARGET_ENE_0)
        local f2_local11 = arg0:GetRandam_Int(AI_DIR_TYPE_ToBL, AI_DIR_TYPE_ToBR)
        local f2_local12 = arg0:HasSpecialEffectId(TARGET_SELF, 10721)
        local f2_local13 = arg0:HasSpecialEffectId(TARGET_SELF, 10700)
        if f2_local12 == false and f2_local13 == true then
            if f2_local10 <= 10 then
                arg0:AddTopGoal(GOAL_COMMON_ApproachSettingDirection, 5, TARGET_ENE_0, 2, TARGET_SELF, false, -1, f2_local11, 25)
            end
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) then
                arg0:AddTopGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
            end
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, DIST_None, 0, 90)
        elseif f2_local13 == false then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, 90)
        end
    end
    if arg1 == 400002 then
        local f2_local10 = arg0:GetDist(TARGET_SOUND)
        if arg0:IsInsideTarget(TARGET_SOUND, AI_DIR_TYPE_B, 90) then
            arg0:AddTopGoal(GOAL_COMMON_Turn, 2, TARGET_SOUND, 90, 0, 0)
        end
        if f2_local10 >= 20 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_SOUND, 10, TARGET_SELF, false, -1)
        end
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_SOUND, DIST_None, 0, 90)
    end
    if arg1 == 407000 and arg0:HasSpecialEffectId(TARGET_SELF, 14570) == false then
        local f2_local10 = arg0:GetRandam_Int(1, 100)
        local f2_local11 = arg0:GetRandam_Float(0, 3)
        arg0:AddTopGoal(GOAL_COMMON_Wait, f2_local11, TARGET_NONE)
        if f2_local10 <= 50 then
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 3006, TARGET_SOUND, 9999, 0, 0, 0, 0)
        else
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 3009, TARGET_SOUND, 9999, 0, 0, 0, 0)
        end
        return true
    end
    if arg1 == 407001 and arg0:IsBattleState() == false then
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, 5, TARGET_SELF, false, false)
    end
    local f2_local10 = arg0:GetDist(TARGET_SOUND)
    local f2_local11 = arg0:GetRandam_Int(1, 100)
    if arg1 == 410000 and arg0:IsBattleState() == false then
        if f2_local10 >= 5 then
            if f2_local11 <= 70 then
                arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_SOUND, 5, TARGET_SELF, false, -1)
            else
                arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_SOUND, 7, TARGET_SELF, true, -1)
            end
        else
            arg0:AddTopGoal(GOAL_COMMON_Turn, 10, TARGET_SOUND, 0, 0, 0)
        end
    end
    if arg1 == 413000 and arg0:HasSpecialEffectId(TARGET_SELF, 10553) == false then
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, DIST_None, 0, 0)
    end
    if arg1 == 413001 and arg0:HasSpecialEffectId(TARGET_SELF, 10573) == false then
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, DIST_None, 0, 0)
    end
    local f2_local12 = arg0:GetRandam_Int(1, 100)
    if arg1 == 413002 and arg0:HasSpecialEffectId(TARGET_SELF, 10554) == false then
        if f2_local12 <= 35 then
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3031, TARGET_SOUND, 999, 0, 0, 0, 0)
            arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_SOUND, 999, 0, 0)
            arg0:ClearSubGoal()
        elseif f2_local12 <= 70 then
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3032, TARGET_SOUND, 999, 0, 0, 0, 0)
            arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_SOUND, 999, 0, 0)
            arg0:ClearSubGoal()
        else
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3033, TARGET_SOUND, 999, 0, 0, 0, 0)
            arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_SOUND, 999, 0, 0)
            arg0:ClearSubGoal()
        end
    end
    local f2_local13 = arg0:GetRandam_Int(1, 100)
    if arg1 == 413003 and arg0:HasSpecialEffectId(TARGET_SELF, 10574) == false then
        if f2_local13 <= 35 then
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3031, TARGET_SOUND, 999, 0, 0, 0, 0)
            arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_SOUND, 999, 0, 0)
            arg0:ClearSubGoal()
        elseif f2_local13 <= 70 then
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3032, TARGET_SOUND, 999, 0, 0, 0, 0)
            arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_SOUND, 999, 0, 0)
            arg0:ClearSubGoal()
        else
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3033, TARGET_SOUND, 999, 0, 0, 0, 0)
            arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_SOUND, 999, 0, 0)
            arg0:ClearSubGoal()
        end
    end
    if arg1 == 413004 and arg0:HasSpecialEffectId(TARGET_SELF, 10543) == false then
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, DIST_None, 0, 0)
    end
    local f2_local14 = arg0:GetRandam_Int(1, 100)
    if arg1 == 413005 and arg0:HasSpecialEffectId(TARGET_SELF, 10544) == false then
        if f2_local14 <= 50 then
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3032, TARGET_SOUND, 999, 0, 0, 0, 0)
            arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_SOUND, 999, 0, 0)
            arg0:ClearSubGoal()
        else
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3033, TARGET_SOUND, 999, 0, 0, 0, 0)
            arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3037, TARGET_SOUND, 999, 0, 0)
            arg0:ClearSubGoal()
        end
    end
    local f2_local15 = arg0:GetRandam_Int(1, 100)
    if arg1 == 413006 and arg0:IsBattleState() == true and arg0:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return false
        elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f2_local15 <= 50 then
                arg0:AddTopGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                return true
            else
                arg0:AddTopGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
                return true
            end
        end
    end
    if arg1 == 418000 and arg0:HasSpecialEffectId(TARGET_SELF, 14201) == true then
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_SOUND, DIST_None, 0, 0)
        return true
    end
    if arg1 == 420000 and arg0:IsBattleState() == false then
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 15, TARGET_SOUND, 10, TARGET_SELF, false, false)
    end
    if arg1 == 420001 then
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 15, TARGET_SOUND, 10, TARGET_SELF, false, false)
    end
    if (arg1 == 420100 or arg1 == 420101 or arg1 == 420102) and arg0:IsBattleState() == true then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5400) == true then
            arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.1, 0.8), TARGET_ENE_0, 0, 0, 0)
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3.5, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
            arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.1, 0.8), TARGET_ENE_0, 0, 0, 0)
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3.5, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        else

        end
    end
    local f2_local16 = arg0:GetDist(TARGET_SOUND)
    local f2_local17 = arg0:GetRandam_Int(1, 100)
    if (arg1 == 430000 or arg1 == 430001 or arg1 == 430002 or arg1 == 430003 or arg1 == 430004 or arg1 == 430005) and arg0:IsBattleState() == false then
        if arg0:HasSpecialEffectId(TARGET_SELF, 10101) == true then
            arg0:AddTopGoal(GOAL_COMMON_Turn, 30, TARGET_SOUND, 0, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 10101) == false then
            if f2_local16 >= 50 then
                if f2_local17 <= 90 then
                    arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, 5, TARGET_SELF, false, -1)
                else
                    arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, 5, TARGET_SELF, true, -1)
                end
            elseif f2_local16 >= 40 then
                if f2_local17 <= 80 then
                    arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, 5, TARGET_SELF, false, -1)
                else
                    arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, 5, TARGET_SELF, true, -1)
                end
            elseif f2_local16 >= 30 then
                if f2_local17 <= 70 then
                    arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, 5, TARGET_SELF, false, -1)
                else
                    arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, 5, TARGET_SELF, true, -1)
                end
            elseif f2_local16 >= 20 then
                if f2_local17 <= 60 then
                    arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, 5, TARGET_SELF, false, -1)
                else
                    arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, 5, TARGET_SELF, true, -1)
                end
            elseif f2_local16 >= 10 then
                if f2_local17 <= 50 then
                    arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, 5, TARGET_SELF, false, -1)
                else
                    arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, 5, TARGET_SELF, true, -1)
                end
            elseif f2_local17 <= 40 then
                arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, 5, TARGET_SELF, false, -1)
            else
                arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, 5, TARGET_SELF, true, -1)
            end
        end
    end
    if arg1 == 431000 then
        local f2_local18 = arg0:GetDist(TARGET_ENE_0)
        local f2_local19 = 50
        local f2_local20 = 12
        local f2_local21 = 60
        local f2_local22 = arg0:GetRandam_Int(1, 100)
        local f2_local23 = -1
        if f2_local22 <= f2_local21 then
            f2_local23 = 9910
        end
        if f2_local19 <= f2_local18 then
            Approach_Act(arg0, goal, f2_local19, f2_local20, f2_local21, 3)
        end
        arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 20, TARGET_ENE_0, f2_local19, TARGET_ENE_0, true, f2_local23)
        return true
    end
    if arg1 == 431001 and arg0:IsBattleState() == false then
        local f2_local18 = arg0:GetDist(TARGET_SOUND)
        local f2_local19 = arg0:GetRandam_Int(5, 20)
        local f2_local20 = 1
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_SOUND, f2_local20, TARGET_SELF, false, -1)
        return true
    else

    end
    if arg1 == 431002 then
        if arg0:IsFinishTimer(1) then
            local f2_local18 = arg0:GetDist(TARGET_SOUND)
            local f2_local19 = arg0:GetRandam_Int(5, 20)
            local f2_local20 = 1
            local f2_local21 = 5
            local f2_local22 = true
            local f2_local23 = 3031
            local f2_local24 = 5
            local f2_local25 = -1
            local f2_local26 = true
            local f2_local27 = false
            local f2_local28 = arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, f2_local20, TARGET_SELF, false, -1)
            f2_local28:TimingSetTimer(1, 999, AI_TIMING_SET__UPDATE_SUCCESS)
            return true
        elseif arg0:IsBattleState() == false then

        else

        end
    end
    if arg1 == 432100 and arg0:IsCautionState() then
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 15, TARGET_SOUND, 3, TARGET_SELF, false, false)
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 15, 3030, TARGET_NONE, DIST_None, 0, 0)
    end
    local f2_local18 = arg0:GetDist(TARGET_SOUND)
    local f2_local19 = arg0:GetRandam_Int(1, 100)
    if (arg1 == 438300 or arg1 == 438301 or arg1 == 438302) and arg0:IsBattleState() == false then
        if f2_local18 >= 5 then
            if f2_local19 <= 70 then
                arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_SOUND, 5, TARGET_SELF, false, -1)
            else
                arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_SOUND, 7, TARGET_SELF, true, -1)
            end
        else
            arg0:AddTopGoal(GOAL_COMMON_Turn, 10, TARGET_SOUND, 0, 0, 0)
        end
    end
    if arg1 == 450000 then
        if arg0:GetStringIndexedNumber("COMMON_SoundBehavior_DoneFirstAct") ~= 1 then
            local f2_local20 = 10
            local f2_local21 = arg0:GetDist(TARGET_SOUND)
            if f2_local21 < f2_local20 then
                arg0:AddTopGoal(GOAL_COMMON_Turn, 5, TARGET_SOUND, 0, 0, 0)
            else
                arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_SOUND, f2_local20, TARGET_SELF, false, false)
            end
            arg0:SetStringIndexedNumber("COMMON_SoundBehavior_DoneFirstAct", 1)
            return true
        else
            return false
        end
    end
    local f2_local20 = arg0:GetRandam_Int(1, 100)
    local f2_local21 = 999
    local f2_local22 = 0
    local f2_local23 = 0
    if arg1 == 450001 and arg0:HasSpecialEffectId(TARGET_SELF, 10292) == false then
        arg0:AddTopGoal(GOAL_COMMON_Turn, 5, TARGET_SOUND, 10, 0, 0)
        arg0:AddTopGoal(GOAL_COMMON_Wait, 0.1, TARGET_SOUND, 0, 0, 0)
        arg0:SetAIFixedMoveTargetSpecifyAngle(TARGET_SOUND, 60, 1, AI_SPA_DIR_TYPE_TargetF)
        if arg0:HasSpecialEffectId(TARGET_SELF, 5400) == true or arg0:HasSpecialEffectId(TARGET_SELF, 5405) == true then
            if f2_local20 >= 25 then
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_SOUND, 999, 0, 0, 0, 0)
                arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_SOUND, 999, 0, 0)
                if f2_local20 <= 30 then
                    arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(20, 30), TARGET_SELF, false, -1)
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
                elseif f2_local20 <= 65 then
                    arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(30, 40), TARGET_SELF, false, -1)
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
                else
                    arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(40, 50), TARGET_SELF, false, -1)
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
                end
            elseif f2_local20 >= 50 then
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_SOUND, 999, 0, 0, 0, 0)
                arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_SOUND, 999, 0, 0)
                if f2_local20 <= 30 then
                    arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(20, 30), TARGET_SELF, false, -1)
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
                elseif f2_local20 <= 65 then
                    arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(30, 40), TARGET_SELF, false, -1)
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
                else
                    arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(40, 50), TARGET_SELF, false, -1)
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
                end
            elseif f2_local20 >= 75 then
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_SOUND, 999, 0, 0, 0, 0)
                arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_SOUND, 999, 0, 0)
                if f2_local20 <= 30 then
                    arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(20, 30), TARGET_SELF, false, -1)
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
                elseif f2_local20 <= 65 then
                    arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(30, 40), TARGET_SELF, false, -1)
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
                else
                    arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(40, 50), TARGET_SELF, false, -1)
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
                end
            else
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_SOUND, 999, 0, 0, 0, 0)
                arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_SOUND, 999, 0, 0)
                if f2_local20 <= 30 then
                    arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(20, 30), TARGET_SELF, false, -1)
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
                elseif f2_local20 <= 65 then
                    arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(30, 40), TARGET_SELF, false, -1)
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
                else
                    arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(40, 50), TARGET_SELF, false, -1)
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
                end
            end
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5402) == true then
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_SOUND, 999, 0, 0, 0, 0)
            if f2_local20 <= 30 then
                arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(20, 30), TARGET_SELF, false, -1)
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
            elseif f2_local20 <= 65 then
                arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(30, 40), TARGET_SELF, false, -1)
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
            else
                arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(40, 50), TARGET_SELF, false, -1)
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
            end
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5404) == true then
            arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_SOUND, 999, 0, 0, 0, 0)
            if f2_local20 <= 30 then
                arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(20, 30), TARGET_SELF, false, -1)
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
            elseif f2_local20 <= 65 then
                arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(30, 40), TARGET_SELF, false, -1)
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
            else
                arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(40, 50), TARGET_SELF, false, -1)
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
            end
        end
        return true
    end
    if arg1 == 430050 then
        if arg0:HasSpecialEffectId(TARGET_SELF, 10292) == false then
            arg0:SetAIFixedMoveTargetSpecifyAngle(TARGET_SOUND, 60, 1, AI_SPA_DIR_TYPE_TargetF)
            if arg0:HasSpecialEffectId(TARGET_SELF, 5400) == true or arg0:HasSpecialEffectId(TARGET_SELF, 5405) == true then
                if f2_local20 >= 25 then
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_SOUND, 999, 0, 0, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_SOUND, 999, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(60, 65), TARGET_SELF, false, -1)
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
                elseif f2_local20 >= 50 then
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_SOUND, 999, 0, 0, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_SOUND, 999, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(60, 65), TARGET_SELF, false, -1)
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
                elseif f2_local20 >= 75 then
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_SOUND, 999, 0, 0, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_SOUND, 999, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(60, 65), TARGET_SELF, false, -1)
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
                else
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_SOUND, 999, 0, 0, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_SOUND, 999, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(60, 65), TARGET_SELF, false, -1)
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
                end
            elseif arg0:HasSpecialEffectId(TARGET_SELF, 5402) == true then
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_SOUND, 999, 0, 0, 0, 0)
                arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(60, 65), TARGET_SELF, false, -1)
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
            elseif arg0:HasSpecialEffectId(TARGET_SELF, 5404) == true then
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_SOUND, 999, 0, 0, 0, 0)
                arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(60, 65), TARGET_SELF, false, -1)
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_SOUND, 999, 0, 0, 0, 0)
            end
        end
        return true
    end
    if arg1 == 450002 then
        local f2_local24 = arg0:HasSpecialEffectId(TARGET_SELF, 14570)
        local f2_local25 = false
        if f2_local24 == f2_local25 then
            f2_local24 = ATT_SUCCESSDIST
            f2_local25 = -1
            local f2_local26 = 180
            arg0:SetAIFixedMoveTargetSpecifyAngle(TARGET_SOUND, 60, 1, AI_SPA_DIR_TYPE_TargetF)
            if arg0:HasSpecialEffectId(TARGET_SELF, 5160) then
                goal:AddSubGoal(GOAL_COMMON_LeaveTarget_Continuous, 2, TARGET_ENE_0, 200, TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
            else
                goal:AddSubGoal(GOAL_COMMON_LeaveTarget_Escape, 2, TARGET_ENE_0, 200, TARGET_SELF, false, 1.5)
            end
            return true
        end
    end
    local f2_local24 = arg0:GetRandam_Int(1, 100)
    local f2_local25 = 999
    local f2_local26 = 0
    local f2_local27 = 0
    if arg1 == 450003 then
        if arg0:HasSpecialEffectId(TARGET_SELF, 14722) == false then
            arg0:AddTopGoal(GOAL_COMMON_Turn, 5, TARGET_SOUND, 10, 0, 0)
            arg0:AddTopGoal(GOAL_COMMON_Wait, 0.1, TARGET_SOUND, 0, 0, 0)
            arg0:SetAIFixedMoveTargetSpecifyAngle(TARGET_SOUND, 60, 1, AI_SPA_DIR_TYPE_TargetF)
            if arg0:HasSpecialEffectId(TARGET_SELF, 5400) == true or arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
                if f2_local24 >= 25 then
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3007, TARGET_SOUND, 999, 0, 0, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_SOUND, 999, 0, 0)
                    if f2_local24 <= 30 then
                        arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(20, 30), TARGET_SELF, false, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3018, TARGET_SOUND, 999, 0, 0, 0, 0)
                    elseif f2_local24 <= 65 then
                        arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(30, 40), TARGET_SELF, false, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3018, TARGET_SOUND, 999, 0, 0, 0, 0)
                    else
                        arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(40, 50), TARGET_SELF, false, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3018, TARGET_SOUND, 999, 0, 0, 0, 0)
                    end
                elseif f2_local24 >= 50 then
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3007, TARGET_SOUND, 999, 0, 0, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_SOUND, 999, 0, 0)
                    if f2_local24 <= 30 then
                        arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(20, 30), TARGET_SELF, false, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3018, TARGET_SOUND, 999, 0, 0, 0, 0)
                    elseif f2_local24 <= 65 then
                        arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(30, 40), TARGET_SELF, false, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3018, TARGET_SOUND, 999, 0, 0, 0, 0)
                    else
                        arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(40, 50), TARGET_SELF, false, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3018, TARGET_SOUND, 999, 0, 0, 0, 0)
                    end
                elseif f2_local24 >= 75 then
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_SOUND, 999, 0, 0, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_SOUND, 999, 0, 0)
                    if f2_local24 <= 30 then
                        arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(20, 30), TARGET_SELF, false, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3018, TARGET_SOUND, 999, 0, 0, 0, 0)
                    elseif f2_local24 <= 65 then
                        arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(30, 40), TARGET_SELF, false, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3018, TARGET_SOUND, 999, 0, 0, 0, 0)
                    else
                        arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(40, 50), TARGET_SELF, false, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3018, TARGET_SOUND, 999, 0, 0, 0, 0)
                    end
                else
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_SOUND, 999, 0, 0, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_SOUND, 999, 0, 0)
                    if f2_local24 <= 30 then
                        arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(20, 30), TARGET_SELF, false, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3018, TARGET_SOUND, 999, 0, 0, 0, 0)
                    elseif f2_local24 <= 65 then
                        arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(30, 40), TARGET_SELF, false, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3018, TARGET_SOUND, 999, 0, 0, 0, 0)
                    else
                        arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, 999, TARGET_SOUND, arg0:GetRandam_Float(40, 50), TARGET_SELF, false, -1)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3018, TARGET_SOUND, 999, 0, 0, 0, 0)
                    end
                end
            end
        end
        return true
    end
    if arg1 == 455000 and arg0:IsBattleState() == false then
        if arg0:HasSpecialEffectId(TARGET_SELF, 14028) == true then
            local f2_local28 = arg0:GetDist(TARGET_SOUND)
            local f2_local29 = arg0:GetRandam_Int(5, 20)
            local f2_local30 = arg0:GetRandam_Float(5, 15)
            local f2_local31 = 999
            local f2_local32 = 0
            local f2_local33 = 0
            local f2_local34 = 3023
            if arg0:HasSpecialEffectId(TARGET_SELF, 14013) == false then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 15, f2_local34, TARGET_SOUND, DIST_None, 3, 60)
            end
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, f2_local30, TARGET_SELF, false, -1)
            arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, 999, 10, 8, true, -1, 1.5, 10, true, false, true)
        end
        return true
    end
    if arg1 == 455001 and arg0:IsBattleState() == false then
        local f2_local28 = arg0:GetDist(TARGET_SOUND)
        local f2_local29 = arg0:GetRandam_Int(5, 20)
        local f2_local30 = arg0:GetRandam_Float(5, 15)
        local f2_local31 = 999
        local f2_local32 = 0
        local f2_local33 = 0
        local f2_local34 = 20000
        local f2_local35 = 1
        local f2_local36 = TARGET_SOUND
        local f2_local37 = arg0:GetRandam_Int(0, 100)
        if f2_local37 <= 50 then
            f2_local34 = 20007
        end
        if arg0:HasSpecialEffectId(TARGET_SELF, 14007) == false and arg0:HasSpecialEffectId(TARGET_SELF, 5031) == false then
            arg0:AddTopGoal(GOAL_COMMON_Turn, 5, TARGET_SOUND, 0, 0, 0)
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 15, f2_local34, TARGET_NONE, DIST_None, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5031) == true and arg0:HasSpecialEffectId(TARGET_SELF, 14010) == true then
            arg0:AddTopGoal(GOAL_COMMON_Wait, f2_local35, f2_local36)
        end
        return true
    end
    if arg1 == 463000 then
        local f2_local28 = arg0:IsCautionState()
        if f2_local28 then
            f2_local28 = 15
            local f2_local29 = 3030
            local f2_local30 = 999
            local f2_local31 = 0
            local f2_local32 = 360
            local f2_local33 = 180
            local f2_local34 = 180
            local f2_local35 = 80
            local f2_local36 = 999
            local f2_local37 = true
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, f2_local28, f2_local29, TARGET_SOUND, f2_local30, f2_local31, f2_local32, f2_local34, f2_local34)
            arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, f2_local35, TARGET_SOUND, f2_local36, TARGET_SELF, f2_local37, -1)
            return true
        end
    end
    if arg1 == 900000 and arg0:IsCautionState() then
        local f2_local28 = arg0:GetDist(TARGET_SOUND)
        local f2_local29 = arg0:GetRandam_Int(5, 20)
        local f2_local30 = 1
        local f2_local31 = 5
        local f2_local32 = true
        local f2_local33 = 3031
        local f2_local34 = 5
        local f2_local35 = -1
        local f2_local36 = true
        local f2_local37 = false
        local f2_local38 = false
        if arg0:GetStringIndexedNumber("COMMON_SoundBehavior_Arrived") == 1 or f2_local28 < f2_local29 then
            arg0:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, -1, f2_local30, f2_local31, f2_local32, f2_local33, f2_local34, f2_local35, f2_local36, f2_local37, f2_local38)
            arg0:SetStringIndexedNumber("COMMON_SoundBehavior_Arrived", 1)
        else
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_SOUND, f2_local29, TARGET_SELF, true, false)
        end
        return true
    end
    if arg1 == 901000 and arg0:HasSpecialEffectId(TARGET_SELF, 297103) == false then
        if arg0:HasSpecialEffectId(TARGET_SELF, 297100) == true then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 8, TARGET_SOUND, arg0:GetRandam_Float(1.5, 3), TARGET_SELF, true, false)
            return true
        else
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 8, TARGET_SOUND, arg0:GetRandam_Float(1.5, 3), TARGET_SELF, false, false)
            return true
        end
    end
    if arg1 == 902000 then
        if arg0:IsBattleState() == true then
            if arg0:HasSpecialEffectId(TARGET_SELF, 14476) == true and arg0:HasSpecialEffectId(TARGET_SELF, 14473) == true then
                if arg0:HasSpecialEffectId(TARGET_SELF, 14458) == true then
                    if arg0:HasSpecialEffectId(TARGET_SELF, 14454) == true then
                        return false
                    else
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 4, 3032, TARGET_ENE_0, 999, f2_local26, f2_local27, 0, 0)
                        return true
                    end
                elseif arg0:HasSpecialEffectId(TARGET_SELF, 14458) == false then
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3032, TARGET_ENE_0, 999, f2_local26, f2_local27, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3035, TARGET_ENE_0, 999, f2_local26, f2_local27, 0, 0)
                    return true
                end
            elseif arg0:HasSpecialEffectId(TARGET_SELF, 14476) == true and arg0:HasSpecialEffectId(TARGET_SELF, 14474) == true then
                if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                    if arg0:HasSpecialEffectId(TARGET_SELF, 14454) == true then
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3033, TARGET_ENE_0, 999, f2_local26, f2_local27, 0, 0)
                        return true
                    else
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 4, 3032, TARGET_ENE_0, 999, f2_local26, f2_local27, 0, 0)
                        arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3033, TARGET_ENE_0, 999, f2_local26, f2_local27, 0, 0)
                        return true
                    end
                elseif arg0:HasSpecialEffectId(TARGET_SELF, 14454) == true then
                    return false
                else
                    arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 4, 3032, TARGET_ENE_0, 999, f2_local26, f2_local27, 0, 0)
                    return true
                end
            end
        elseif arg0:IsBattleState() == false then
            if arg0:HasSpecialEffectId(TARGET_SELF, 14454) == true then
                return false
            else
                arg0:AddTopGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 4, 3032, TARGET_ENE_0, 999, f2_local26, f2_local27, 0, 0)
                return false
            end
        end
    end
    return false
    
end


