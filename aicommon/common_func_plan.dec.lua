function RideRequest(arg0, arg1, arg2)
    if arg0:IsRiding(TARGET_SELF) == true then
        return false
    end
    if arg0:GetTimer(13) > 0 then
        return false
    end
    local f1_local0 = arg0:IsSearchTarget(TARGET_ENE_0)
    if arg2 > 0 and f1_local0 == true and arg0:GetDist(TARGET_ENE_0) <= arg2 then
        return false
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_HORSE_RIDE) == true then
        if arg0:IsBattleState() == false and arg0:IsSearchHighState() == false and arg0:IsSearchLowState() == false and arg0:IsCautionState() == false and arg0:IsMemoryState() == false then
            return false
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_FACILITY_RIDE) == true then
        if arg0:IsBattleState() == true or arg0:IsSearchHighState() == true or arg0:IsSearchLowState() == true or arg0:IsCautionState() == true or arg0:IsMemoryState() == true then
            return false
        end
    else
        return false
    end
    if arg0:ReserveRide(arg1) == true then
        return true
    end
    return false
    
end

function FearOfFire(arg0, arg1, arg2)
    if arg0:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_BEAST_REPELLENT) and arg0:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_ENABLE_BEAST_REPELLENT) and arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BEAST_REPELLENT_UNDAMAGED) and arg0:GetStringIndexedNumber("DisableFearOfFire") == 0 then
        if arg2 == nil then
            arg2 = PLAN_SIDEWAYTYPE__NONE
        end
        if arg2 == PLAN_SIDEWAYTYPE__NONE then
            arg1:AddSubGoal(GOAL_COMMON_SideWay_For_Fear_Of_Fire, -1, 10, -1, false)
        elseif arg2 == PLAN_SIDEWAYTYPE__DEFAULT then
            arg1:AddSubGoal(GOAL_COMMON_SideWay_For_Fear_Of_Fire, -1, 7, -1, true)
        elseif arg2 == PLAN_SIDEWAYTYPE__GUARD then
            arg1:AddSubGoal(GOAL_COMMON_SideWay_For_Fear_Of_Fire, -1, 7, 9910, true)
        elseif arg2 == PLAN_SIDEWAYTYPE__PARRY then
            arg1:AddSubGoal(GOAL_COMMON_SideWay_For_Fear_Of_Fire, -1, 7, 9920, true)
        end
        return true
    end
    return false
    
end

function CommonNPC_ChangeWepL1(arg0, arg1)
    local f3_local0 = arg0:GetEquipWeaponIndex(ARM_L)
    if f3_local0 ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeWep_L1, TARGET_NONE, DIST_None)
    end
    
end

function CommonNPC_ChangeWepR1(arg0, arg1)
    local f4_local0 = arg0:GetEquipWeaponIndex(ARM_R)
    if f4_local0 ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeWep_R1, TARGET_NONE, DIST_None)
    end
    
end

function CommonNPC_ChangeWepL2(arg0, arg1)
    local f5_local0 = arg0:GetEquipWeaponIndex(ARM_L)
    if f5_local0 ~= WEP_Secondary then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeWep_L2, TARGET_NONE, DIST_None)
    end
    
end

function CommonNPC_ChangeWepR2(arg0, arg1)
    local f6_local0 = arg0:GetEquipWeaponIndex(ARM_R)
    if f6_local0 ~= WEP_Secondary then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeWep_R2, TARGET_NONE, DIST_None)
    end
    
end

function CommonNPC_SwitchBothHandMode(arg0, arg1)
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeStyleR, TARGET_NONE, DIST_None)
    end
    
end

function CommonNPC_SwitchOneHandMode(arg0, arg1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeStyleR, TARGET_NONE, DIST_None)
    end
    
end

function NPC_Approach_Act_Flex(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if arg7 == nil then
        arg7 = 3
    end
    if arg8 == nil then
        arg8 = 8
    end
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = arg0:GetRandam_Int(1, 100)
    local f9_local2 = true
    if arg4 <= f9_local0 then
        f9_local2 = false
    elseif arg3 <= f9_local0 and f9_local1 <= arg5 then
        f9_local2 = false
    end
    local f9_local3 = -1
    local f9_local4 = arg0:GetRandam_Int(1, 100)
    if f9_local4 <= arg6 then
        f9_local3 = 4
    end
    if f9_local2 == true then
        life = arg7
    else
        life = arg8
    end
    local f9_local5 = 0
    if arg2 <= f9_local0 then
        if f9_local2 == true then
            arg2 = arg2 + arg0:GetStringIndexedNumber("AddDistWalk") + f9_local5
        else
            arg2 = arg2 + arg0:GetStringIndexedNumber("AddDistRun") + f9_local5
        end
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, life, TARGET_ENE_0, arg2, TARGET_SELF, f9_local2, f9_local3)
    end
    
end

function NPC_KATATE_Switch(arg0, arg1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningComboAttack, 10, NPC_ATK_ChangeStyleR, TARGET_ENE_0, DIST_None, 0)
    end
    
end

function NPC_RYOUTE_Switch(arg0, arg1)
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningComboAttack, 10, NPC_ATK_ChangeStyleR, TARGET_ENE_0, DIST_None, 0)
    end
    
end

function Damaged_StepCount_NPCPlayer(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetRandam_Int(1, 100)
    local f12_local2 = arg0:GetRandam_Int(1, 100)
    local f12_local3 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_Damaged) and f12_local0 < arg2 and f12_local1 <= arg3 then
        arg1:ClearSubGoal()
        if f12_local2 <= arg6 then
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepB, TARGET_ENE_0, DIST_None, 0)
        elseif f12_local2 <= arg6 + arg7 then
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepL, TARGET_ENE_0, DIST_None, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepR, TARGET_ENE_0, DIST_None, 0)
        end
        if f12_local3 <= arg4 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttack, 10, arg5, TARGET_ENE_0, DIST_Middle, 0)
        end
        return true
    end
    
end

function FindAttack_Step_NPCPlayer(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetRandam_Int(1, 100)
    local f13_local2 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_FindAttack) and f13_local0 <= arg2 and f13_local1 <= arg3 then
        arg1:ClearSubGoal()
        if f13_local2 <= arg4 then
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepB, TARGET_ENE_0, DIST_None, 0)
        elseif f13_local2 <= arg4 + arg5 then
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepL, TARGET_ENE_0, DIST_None, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepR, TARGET_ENE_0, DIST_None, 0)
        end
        return true
    end
    
end

function FindAttack_Act(arg0, arg1, arg2, arg3)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_FindAttack) and f14_local0 <= arg2 and f14_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function FindAttack_Step(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = arg0:GetRandam_Int(1, 100)
    local f15_local2 = arg0:GetRandam_Int(1, 100)
    local f15_local3 = GET_PARAM_IF_NIL_DEF(arg4, 50)
    local f15_local4 = GET_PARAM_IF_NIL_DEF(arg5, 25)
    local f15_local5 = GET_PARAM_IF_NIL_DEF(arg6, 25)
    local f15_local6 = GET_PARAM_IF_NIL_DEF(arg7, 3)
    if arg0:IsInterupt(INTERUPT_FindAttack) and f15_local0 <= arg2 and f15_local1 <= arg3 then
        arg1:ClearSubGoal()
        if f15_local2 <= f15_local3 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f15_local6)
        elseif f15_local2 <= f15_local3 + f15_local4 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f15_local6)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f15_local6)
        end
        return true
    end
    
end

function FindAttack_Guard(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = arg0:GetRandam_Int(1, 100)
    local f16_local2 = arg0:GetRandam_Int(1, 100)
    local f16_local3 = GET_PARAM_IF_NIL_DEF(arg4, 40)
    local f16_local4 = GET_PARAM_IF_NIL_DEF(arg5, 4)
    local f16_local5 = GET_PARAM_IF_NIL_DEF(arg6, 3)
    if arg0:IsInterupt(INTERUPT_FindAttack) and f16_local0 <= arg2 and f16_local1 <= arg3 then
        arg1:ClearSubGoal()
        if f16_local2 <= f16_local3 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f16_local5, TARGET_ENE_0, true, 9910)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f16_local5, TARGET_ENE_0, true, 9910)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f16_local4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
        end
        return true
    end
    
end

function FindAttack_Step_or_Guard(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = arg0:GetRandam_Int(1, 100)
    local f17_local2 = arg0:GetRandam_Int(1, 100)
    local f17_local3 = arg0:GetRandam_Int(1, 100)
    local f17_local4 = GET_PARAM_IF_NIL_DEF(arg5, 50)
    local f17_local5 = GET_PARAM_IF_NIL_DEF(arg6, 25)
    local f17_local6 = GET_PARAM_IF_NIL_DEF(arg7, 25)
    local f17_local7 = GET_PARAM_IF_NIL_DEF(arg8, 3)
    local f17_local8 = GET_PARAM_IF_NIL_DEF(arg9, 40)
    local f17_local9 = GET_PARAM_IF_NIL_DEF(arg10, 4)
    local f17_local10 = GET_PARAM_IF_NIL_DEF(arg11, 3)
    if arg0:IsInterupt(INTERUPT_FindAttack) and f17_local0 <= arg2 and f17_local1 <= arg3 then
        if f17_local2 <= arg4 then
            arg1:ClearSubGoal()
            if f17_local3 <= f17_local4 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f17_local7)
            elseif f17_local3 <= f17_local4 + f17_local5 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f17_local7)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f17_local7)
            end
            return true
        else
            arg1:ClearSubGoal()
            if f17_local3 <= f17_local8 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f17_local10, TARGET_ENE_0, true, 9910)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f17_local10, TARGET_ENE_0, true, 9910)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local9, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
            end
            return true
        end
    end
    
end

function Damaged_Act(arg0, arg1, arg2, arg3)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_Damaged) and f18_local0 < arg2 and f18_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function Damaged_Guard(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetRandam_Int(1, 100)
    local f19_local2 = arg0:GetRandam_Int(1, 100)
    local f19_local3 = GET_PARAM_IF_NIL_DEF(arg4, 40)
    local f19_local4 = GET_PARAM_IF_NIL_DEF(arg5, 4)
    local f19_local5 = GET_PARAM_IF_NIL_DEF(arg6, 3)
    if arg0:IsInterupt(INTERUPT_Damaged) and f19_local0 <= arg2 and f19_local1 <= arg3 then
        arg1:ClearSubGoal()
        if f19_local2 <= f19_local3 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f19_local5, TARGET_ENE_0, true, 9910)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f19_local5, TARGET_ENE_0, true, 9910)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
        end
        return true
    end
    
end

function Damaged_Step(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = arg0:GetRandam_Int(1, 100)
    local f20_local2 = arg0:GetRandam_Int(1, 100)
    local f20_local3 = GET_PARAM_IF_NIL_DEF(arg4, 50)
    local f20_local4 = GET_PARAM_IF_NIL_DEF(arg5, 25)
    local f20_local5 = GET_PARAM_IF_NIL_DEF(arg6, 25)
    local f20_local6 = GET_PARAM_IF_NIL_DEF(arg7, 3)
    if arg0:IsInterupt(INTERUPT_Damaged) and f20_local0 <= arg2 and f20_local1 <= arg3 then
        arg1:ClearSubGoal()
        if f20_local2 <= f20_local3 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f20_local6)
        elseif f20_local2 <= f20_local3 + f20_local4 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f20_local6)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f20_local6)
        end
        return true
    end
    
end

function Damaged_Step_or_Guard(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = arg0:GetRandam_Int(1, 100)
    local f21_local2 = arg0:GetRandam_Int(1, 100)
    local f21_local3 = arg0:GetRandam_Int(1, 100)
    local f21_local4 = GET_PARAM_IF_NIL_DEF(arg5, 50)
    local f21_local5 = GET_PARAM_IF_NIL_DEF(arg6, 25)
    local f21_local6 = GET_PARAM_IF_NIL_DEF(arg7, 25)
    local f21_local7 = GET_PARAM_IF_NIL_DEF(arg8, 3)
    local f21_local8 = GET_PARAM_IF_NIL_DEF(arg9, 40)
    local f21_local9 = GET_PARAM_IF_NIL_DEF(arg10, 4)
    local f21_local10 = GET_PARAM_IF_NIL_DEF(arg11, 3)
    if arg0:IsInterupt(INTERUPT_Damaged) and f21_local0 <= arg2 and f21_local1 <= arg3 then
        if f21_local2 <= arg4 then
            arg1:ClearSubGoal()
            if f21_local3 <= f21_local4 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f21_local7)
            elseif f21_local3 <= f21_local4 + f21_local5 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f21_local7)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f21_local7)
            end
            return true
        else
            arg1:ClearSubGoal()
            if f21_local3 <= f21_local8 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f21_local10, TARGET_ENE_0, true, 9910)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f21_local10, TARGET_ENE_0, true, 9910)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f21_local9, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
            end
            return true
        end
    end
    
end

function GuardBreak_Act(arg0, arg1, arg2, arg3)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_GuardBreak) and f22_local0 <= arg2 and f22_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function GuardBreak_Attack(arg0, arg1, arg2, arg3, arg4)
    local f23_local0 = arg0:GetDist(TARGET_ENE_0)
    local f23_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_GuardBreak) and f23_local0 <= arg2 and f23_local1 <= arg3 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, arg4, TARGET_ENE_0, DIST_Middle, 0)
        return true
    end
    return false
    
end

function MissSwing_Int(arg0, arg1, arg2, arg3)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_MissSwing) and f24_local0 <= arg2 and f24_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function MissSwing_Attack(arg0, arg1, arg2, arg3, arg4)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_MissSwing) and f25_local0 <= arg2 and f25_local1 <= arg3 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, arg4, TARGET_ENE_0, DIST_Middle, 0)
        return true
    end
    return false
    
end

function UseItem_Act(arg0, arg1, arg2, arg3)
    local f26_local0 = arg0:GetDist(TARGET_ENE_0)
    local f26_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_UseItem) and f26_local0 <= arg2 and f26_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function Shoot_1kind(arg0, arg1, arg2, arg3)
    local f27_local0 = arg0:GetDist(TARGET_ENE_0)
    local f27_local1 = arg0:GetRandam_Int(1, 100)
    local f27_local2 = GET_PARAM_IF_NIL_DEF(bkStepPer, 50)
    local f27_local3 = GET_PARAM_IF_NIL_DEF(leftStepPer, 25)
    local f27_local4 = GET_PARAM_IF_NIL_DEF(rightStepPer, 25)
    local f27_local5 = GET_PARAM_IF_NIL_DEF(safetyDist, 3)
    if arg0:IsInterupt(INTERUPT_Shoot) and f27_local0 <= arg2 and f27_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function Shoot_2dist(arg0, arg1, arg2, arg3, arg4, arg5)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    local f28_local1 = arg0:GetRandam_Int(1, 100)
    local f28_local2 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_Shoot) then
        if f28_local0 <= arg2 then
            if f28_local1 <= arg4 then
                arg1:ClearSubGoal()
                return 1
            end
        elseif f28_local0 <= arg3 then
            if f28_local1 <= arg5 then
                arg1:ClearSubGoal()
                return 2
            end
        else
            return 0
        end
    end
    return 0
    
end

function MissSwingSelf_Step(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    local f29_local0 = arg0:GetDist(TARGET_ENE_0)
    local f29_local1 = arg0:GetRandam_Int(1, 100)
    local f29_local2 = arg0:GetRandam_Int(1, 100)
    local f29_local3 = GET_PARAM_IF_NIL_DEF(arg3, 50)
    local f29_local4 = GET_PARAM_IF_NIL_DEF(arg4, 25)
    local f29_local5 = GET_PARAM_IF_NIL_DEF(arg5, 25)
    local f29_local6 = GET_PARAM_IF_NIL_DEF(arg6, 3)
    if arg0:IsInterupt(INTERUPT_MissSwingSelf) and f29_local1 <= arg2 then
        arg1:ClearSubGoal()
        if f29_local2 <= f29_local3 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f29_local6)
        elseif f29_local2 <= f29_local3 + f29_local4 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f29_local6)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f29_local6)
        end
        return true
    end
    
end

function RebByOpGuard_Step(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    local f30_local0 = arg0:GetDist(TARGET_ENE_0)
    local f30_local1 = arg0:GetRandam_Int(1, 100)
    local f30_local2 = arg0:GetRandam_Int(1, 100)
    local f30_local3 = GET_PARAM_IF_NIL_DEF(arg3, 50)
    local f30_local4 = GET_PARAM_IF_NIL_DEF(arg4, 25)
    local f30_local5 = GET_PARAM_IF_NIL_DEF(arg5, 25)
    local f30_local6 = GET_PARAM_IF_NIL_DEF(arg6, 3)
    if arg0:IsInterupt(INTERUPT_ReboundByOpponentGuard) and f30_local1 <= arg2 then
        arg1:ClearSubGoal()
        if f30_local2 <= f30_local3 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f30_local6)
        elseif f30_local2 <= f30_local3 + f30_local4 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f30_local6)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f30_local6)
        end
        return true
    end
    
end

function SuccessGuard_Act(arg0, arg1, arg2, arg3)
    local f31_local0 = arg0:GetDist(TARGET_ENE_0)
    local f31_local1 = arg0:GetRandam_Int(1, 100)
    local f31_local2 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_SuccessGuard) and f31_local0 <= arg2 and f31_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function SuccessGuard_Attack(arg0, arg1, arg2, arg3, arg4)
    local f32_local0 = arg0:GetDist(TARGET_ENE_0)
    local f32_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_SuccessGuard) and f32_local0 <= arg2 and f32_local1 <= arg3 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, arg4, TARGET_ENE_0, DIST_Middle, 0)
        return true
    end
    return false
    
end

function FarDamaged_Act(arg0, arg1, arg2, arg3)
    local f33_local0 = arg0:GetDist(TARGET_ENE_0)
    local f33_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_Damaged) and arg2 <= f33_local0 and f33_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function MissSwing_Act(arg0, arg1, arg2, arg3)
    local f34_local0 = arg0:GetDist(TARGET_ENE_0)
    local f34_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_MissSwing) and f34_local0 <= arg2 and f34_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function FindGuardBreak_Act(arg0, arg1, arg2, arg3)
    local f35_local0 = arg0:GetDist(TARGET_ENE_0)
    local f35_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_GuardBreak) and f35_local0 <= arg2 and f35_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function FindGuardFinish_Act(arg0, arg1, arg2, arg3)
    local f36_local0 = arg0:GetDist(TARGET_ENE_0)
    local f36_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_GuardFinish) and f36_local0 <= arg2 and f36_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function FindShoot_Act(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local f37_local0 = arg0:GetDist(TARGET_ENE_0)
    local f37_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_Shoot) then
        if f37_local0 <= arg5 and f37_local1 <= arg2 then
            arg1:ClearSubGoal()
            return 1
        elseif f37_local0 <= arg6 and f37_local1 <= arg3 then
            arg1:ClearSubGoal()
            return 2
        elseif f37_local0 <= arg7 and f37_local1 <= arg4 then
            arg1:ClearSubGoal()
            return 3
        else
            arg1:ClearSubGoal()
            return 0
        end
    end
    return 0
    
end

function BusyApproach_Act(arg0, arg1, arg2, arg3, arg4)
    local f38_local0 = -1
    local f38_local1 = arg0:GetRandam_Int(1, 100)
    if f38_local1 <= arg4 then
        f38_local0 = 9910
    end
    local f38_local2 = arg0:GetDist(TARGET_ENE_0)
    if arg3 <= f38_local2 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, arg2, TARGET_SELF, false, f38_local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, arg2, TARGET_SELF, true, f38_local0)
    end
    
end

function Approach_and_Attack_Act(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    local f39_local0 = arg0:GetDist(TARGET_ENE_0)
    local f39_local1 = true
    if arg3 <= f39_local0 then
        f39_local1 = false
    end
    local f39_local2 = -1
    local f39_local3 = arg0:GetRandam_Int(1, 100)
    if f39_local3 <= arg4 then
        f39_local2 = 9910
    end
    local f39_local4 = GET_PARAM_IF_NIL_DEF(arg7, 1.5)
    local f39_local5 = GET_PARAM_IF_NIL_DEF(arg8, 20)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, arg2, TARGET_SELF, f39_local1, f39_local2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, arg5, TARGET_ENE_0, arg6, f39_local4, f39_local5)
    
end

function KeepDist_and_Attack_Act(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local f40_local0 = arg0:GetDist(TARGET_ENE_0)
    local f40_local1 = true
    if arg4 <= f40_local0 then
        f40_local1 = false
    end
    local f40_local2 = -1
    local f40_local3 = arg0:GetRandam_Int(1, 100)
    if f40_local3 <= arg5 then
        f40_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, arg2, arg3, TARGET_ENE_0, f40_local1, f40_local2)
    arg1:AddSubGoal(GOAL_COMMON_Attack, 10, arg6, TARGET_ENE_0, arg7, 0)
    
end

function Approach_and_GuardBreak_Act(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    local f41_local0 = arg0:GetDist(TARGET_ENE_0)
    local f41_local1 = true
    if arg3 <= f41_local0 then
        f41_local1 = false
    end
    local f41_local2 = -1
    local f41_local3 = arg0:GetRandam_Int(1, 100)
    if f41_local3 <= arg4 then
        f41_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, arg2, TARGET_SELF, f41_local1, f41_local2)
    arg1:AddSubGoal(GOAL_COMMON_GuardBreakAttack, 10, arg5, TARGET_ENE_0, arg6, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, arg7, TARGET_ENE_0, arg8, 0)
    
end

function GetWellSpace_Act(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local f42_local0 = -1
    local f42_local1 = arg0:GetRandam_Int(1, 100)
    if f42_local1 <= arg2 then
        f42_local0 = 9910
    end
    local f42_local2 = arg0:GetRandam_Int(1, 100)
    local f42_local3 = arg0:GetRandam_Int(0, 1)
    local f42_local4 = arg0:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + f42_local3, TARGET_ENE_0, 2)
    if f42_local2 <= arg3 then

    elseif f42_local2 <= arg3 + arg4 and f42_local4 < 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, f42_local0)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f42_local3, arg0:GetRandam_Int(30, 45), true, true, f42_local0)
    elseif f42_local2 <= arg3 + arg4 + arg5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, f42_local0)
    elseif f42_local2 <= arg3 + arg4 + arg5 + arg6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
    end
    
end

function GetWellSpace_Act_IncludeSidestep(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    local f43_local0 = -1
    local f43_local1 = arg0:GetRandam_Int(1, 100)
    if f43_local1 <= arg2 then
        f43_local0 = 9910
    end
    local f43_local2 = arg0:GetRandam_Int(1, 100)
    local f43_local3 = arg0:GetRandam_Int(0, 1)
    local f43_local4 = arg0:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + f43_local3, TARGET_ENE_0, 2)
    if f43_local2 <= arg3 then

    elseif f43_local2 <= arg3 + arg4 and f43_local4 < 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, f43_local0)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f43_local3, arg0:GetRandam_Int(30, 45), true, true, f43_local0)
    elseif f43_local2 <= arg3 + arg4 + arg5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, f43_local0)
    elseif f43_local2 <= arg3 + arg4 + arg5 + arg6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
    elseif f43_local2 <= arg3 + arg4 + arg5 + arg6 + arg7 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
    else
        local f43_local5 = arg0:GetRandam_Int(1, 100)
        if f43_local5 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    end
    
end

function Shoot_Act(arg0, arg1, arg2, arg3, arg4)
    if arg4 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, arg2, TARGET_ENE_0, DIST_None, 0)
    elseif arg4 >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttack, 10, arg2, TARGET_ENE_0, DIST_None, 0)
        if arg4 >= 3 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, arg3, TARGET_ENE_0, DIST_None, 0)
            if arg4 >= 4 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, arg3, TARGET_ENE_0, DIST_None, 0)
                if arg4 >= 5 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, arg3, TARGET_ENE_0, DIST_None, 0)
                end
            end
        end
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, arg3, TARGET_ENE_0, DIST_None, 0)
    end
    
end

function Approach_Act(arg0, arg1, arg2, arg3, arg4, arg5)
    if arg5 == nil then
        arg5 = 10
    end
    local f45_local0 = arg0:GetDist(TARGET_ENE_0)
    local f45_local1 = true
    if arg3 <= f45_local0 then
        f45_local1 = false
    end
    local f45_local2 = -1
    local f45_local3 = arg0:GetRandam_Int(1, 100)
    if f45_local3 <= arg4 then
        f45_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg5, TARGET_ENE_0, arg2, TARGET_SELF, f45_local1, f45_local2)
    
end

function Approach_or_Leave_Act(arg0, arg1, arg2, arg3, arg4, arg5)
    local f46_local0 = arg0:GetDist(TARGET_ENE_0)
    local f46_local1 = true
    if arg4 ~= -1 and arg4 <= f46_local0 then
        f46_local1 = false
    end
    local f46_local2 = -1
    if arg0:GetRandam_Int(1, 100) <= arg5 then
        f46_local2 = 9910
    end
    if arg2 <= f46_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, arg3, TARGET_SELF, f46_local1, f46_local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg2, TARGET_ENE_0, true, f46_local2)
    end
    
end

function Watching_Parry_Chance_Act(arg0, arg1)
    FirstDist = arg0:GetRandam_Float(2, 4)
    SecondDist = arg0:GetRandam_Float(2, 4)
    arg1:AddSubGoal(GOAL_COMMON_KeepDist, 5, TARGET_ENE_0, FirstDist, FirstDist + 0.5, TARGET_ENE_0, true, 9920)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), 180, true, true, 9920)
    arg1:AddSubGoal(GOAL_COMMON_KeepDist, 5, TARGET_ENE_0, SecondDist, SecondDist + 0.5, TARGET_ENE_0, true, 9920)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), 180, true, true, 9920)
    
end

function Parry_Act(arg0, arg1, arg2, arg3, arg4, arg5)
    local f48_local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInterupt(INTERUPT_ParryTiming) then
        if f48_local0 <= arg2 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, arg3) and not arg0:IsActiveGoal(GOAL_COMMON_Parry) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_Parry, 1.25, 4000, TARGET_SELF, 0)
            return true
        end
    elseif arg0:IsInterupt(INTERUPT_SuccessParry) and f48_local0 <= arg4 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, arg5) then
        arg1:ClearSubGoal()
        if f48_local0 > 1 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
        else
            local f48_local1 = 1
            arg1:AddSubGoal(GOAL_COMMON_Wait, f48_local1, TARGET_ENE_0)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3110, TARGET_ENE_0, 3, 0, -1)
        return true
    end
    
end

function ObserveAreaForBackstab(arg0, arg1, arg2, arg3, arg4)
    arg0:AddObserveArea(arg2, TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, arg4, arg3)
    
end

function Backstab_Act(arg0, arg1, arg2, arg3, arg4, arg5)
    if arg0:IsInterupt(INTERUPT_Inside_ObserveArea) and arg0:IsThrowing() == false and arg0:IsFinishTimer(arg4) == true and arg0:IsInsideObserve(arg2) then
        arg0:SetTimer(arg4, arg5)
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, arg3, TARGET_SELF, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3110, TARGET_ENE_0, 3, 0)
        return true
    end
    
end

function Torimaki_Act(arg0, arg1, arg2)
    local f51_local0 = -1
    local f51_local1 = arg0:GetRandam_Int(1, 100)
    if f51_local1 <= arg2 then
        f51_local0 = 9910
    end
    local f51_local2 = arg0:GetDist(TARGET_ENE_0)
    if f51_local2 >= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 4.5, TARGET_SELF, true, -1)
    elseif f51_local2 >= 6 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 4.5, TARGET_SELF, true, -1)
    elseif f51_local2 >= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f51_local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4, TARGET_ENE_0, true, f51_local0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f51_local0)
    
end

function Kankyaku_Act(arg0, arg1, arg2)
    local f52_local0 = -1
    local f52_local1 = arg0:GetRandam_Int(1, 100)
    if f52_local1 <= arg2 then
        f52_local0 = 9910
    end
    local f52_local2 = arg0:GetDist(TARGET_ENE_0)
    if f52_local2 >= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 6.5, TARGET_SELF, true, -1)
    elseif f52_local2 >= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 6.5, TARGET_SELF, true, -1)
    elseif f52_local2 >= 4 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f52_local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 6, TARGET_ENE_0, true, f52_local0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f52_local0)
    
end

function ClearTableParam(arg0, arg1)
    local f53_local0 = 50
    local f53_local1 = 1
    for f53_local2 = 1, f53_local0, 1 do
        arg0[f53_local2] = 0
        arg1[f53_local2] = {}
    end
    
end

function SelectOddsIndex(arg0, arg1)
    local f54_local0 = table.getn(arg1)
    local f54_local1 = 0
    for f54_local2 = 1, f54_local0, 1 do
        f54_local1 = f54_local1 + arg1[f54_local2]
    end
    local f54_local2 = arg0:GetRandam_Int(0, f54_local1 - 1)
    for f54_local3 = 1, f54_local0, 1 do
        local f54_local6 = arg1[f54_local3]
        if f54_local2 < f54_local6 then
            return f54_local3
        end
        f54_local2 = f54_local2 - f54_local6
    end
    local f54_local3 = -1
    return f54_local3
    
end

function SelectFunc(arg0, arg1, arg2)
    local f55_local0 = SelectOddsIndex(arg0, arg1)
    if f55_local0 < 1 then
        return nil
    end
    return arg2[f55_local0]
    
end

function SelectGoalFunc(arg0, arg1, arg2)
    local f56_local0 = _GetGoalActFuncTable(arg0)
    return SelectFunc(arg1, arg2, f56_local0)
    
end

function CallAttackAndAfterFunc(arg0, arg1, arg2, arg3, arg4, arg5)
    local f57_local0 = SelectOddsIndex(arg1, arg3)
    local f57_local1 = 0
    if f57_local0 >= 1 then
        local f57_local2 = _GetGoalActFuncTable(arg0)
        local f57_local3 = nil
        if arg4 ~= nil then
            f57_local3 = arg4[f57_local0]
        end
        f57_local1 = f57_local2[f57_local0](arg0, arg1, arg2, f57_local3)
    end
    local f57_local2 = arg1:GetRandam_Int(1, 100)
    if f57_local2 <= f57_local1 then
        if arg0.ActAfter ~= nil then
            arg0:ActAfter(arg1, arg2, arg5)
        else
            HumanCommon_ActAfter_AdjustSpace(arg1, arg2, arg5)
        end
    end
    
end

function _GetGoalActFuncTable(arg0)
    local f58_local0 = {arg0.Act01, arg0.Act02, arg0.Act03, arg0.Act04, arg0.Act05, arg0.Act06, arg0.Act07, arg0.Act08, arg0.Act09, arg0.Act10, arg0.Act11, arg0.Act12, arg0.Act13, arg0.Act14, arg0.Act15, arg0.Act16, arg0.Act17, arg0.Act18, arg0.Act19, arg0.Act20}
    return f58_local0
    
end

function GetTargetAngle(arg0, arg1)
    if arg0:IsInsideTarget(arg1, AI_DIR_TYPE_F, 90) then
        if arg0:IsInsideTarget(arg1, AI_DIR_TYPE_F, 90) then
            return TARGET_ANGLE_FRONT
        elseif arg0:IsInsideTarget(arg1, AI_DIR_TYPE_L, 180) then
            return TARGET_ANGLE_LEFT
        else
            return TARGET_ANGLE_RIGHT
        end
    end
    if arg0:IsInsideTarget(arg1, AI_DIR_TYPE_L, 90) then
        return TARGET_ANGLE_LEFT
    elseif arg0:IsInsideTarget(arg1, AI_DIR_TYPE_R, 90) then
        return TARGET_ANGLE_RIGHT
    else
        return TARGET_ANGLE_BACK
    end
    
end

function GetCurrentTimeType(arg0)
    local f60_local0 = 360
    local f60_local1 = 600
    local f60_local2 = 1080
    local f60_local3 = 1200
    local f60_local4 = 180
    local f60_local5 = arg0:GetAreaMinute() + arg0:GetAreaHour() * 60
    if f60_local0 <= f60_local5 and f60_local5 < f60_local1 then
        return PLAN_TIME_TYPE_MORNING
    elseif f60_local1 <= f60_local5 and f60_local5 < f60_local2 then
        return PLAN_TIME_TYPE_DAYTIME
    elseif f60_local2 <= f60_local5 and f60_local5 < f60_local3 then
        return PLAN_TIME_TYPE_EVENING
    elseif not (f60_local3 > f60_local5 or f60_local5 >= 1440) or f60_local5 >= 0 and f60_local5 < f60_local4 then
        return PLAN_TIME_TYPE_NIGHT
    elseif f60_local4 <= f60_local5 and f60_local5 < f60_local0 then
        return PLAN_TIME_TYPE_MIDNIGHT
    else
        return nil
    end
    
end

function IsTargetTimeZone(arg0, arg1)
    local f61_local0 = 360
    local f61_local1 = 600
    local f61_local2 = 1080
    local f61_local3 = 1200
    local f61_local4 = 180
    local f61_local5 = arg0:GetAreaMinute() + arg0:GetAreaHour() * 60
    if arg1 == PLAN_TIME_TYPE_MORNING then
        if f61_local0 <= f61_local5 and f61_local5 < f61_local1 then
            return true
        else
            return false
        end
    elseif arg1 == PLAN_TIME_TYPE_DAYTIME then
        if f61_local1 <= f61_local5 and f61_local5 < f61_local2 then
            return true
        else
            return false
        end
    elseif arg1 == PLAN_TIME_TYPE_EVENING then
        if f61_local2 <= f61_local5 and f61_local5 < f61_local3 then
            return true
        else
            return false
        end
    elseif arg1 == PLAN_TIME_TYPE_NIGHT then
        if not (f61_local3 > f61_local5 or f61_local5 >= 1440) or f61_local5 >= 0 and f61_local5 < f61_local4 then
            return true
        else
            return false
        end
    elseif arg1 == PLAN_TIME_TYPE_MIDNIGHT then
        if f61_local4 <= f61_local5 and f61_local5 < f61_local0 then
            return true
        else
            return false
        end
    else
        return false
    end
    
end

function IsInsideTargetTimeZone(arg0, arg1, arg2)
    local f62_local0 = false
    local f62_local1 = false
    local f62_local2 = {}
    local f62_local3 = 5
    f62_local2[PLAN_TIME_TYPE_MORNING] = false
    f62_local2[PLAN_TIME_TYPE_DAYTIME] = false
    f62_local2[PLAN_TIME_TYPE_EVENING] = false
    f62_local2[PLAN_TIME_TYPE_NIGHT] = false
    f62_local2[PLAN_TIME_TYPE_MIDNIGHT] = false
    local f62_local4 = 0
    repeat
        if f62_local4 == arg1 then
            f62_local0 = true
        end
        if f62_local0 then
            f62_local2[f62_local4] = true
            if f62_local4 == arg2 then
                f62_local1 = true
            end
        end
        if f62_local4 == f62_local3 - 1 then
            f62_local4 = 0
        else
            f62_local4 = f62_local4 + 1
        end
    until f62_local1
    return f62_local2[GetCurrentTimeType(arg0)]
    
end

function GET_PARAM_IF_NIL_DEF(arg0, arg1)
    if arg0 ~= nil then
        return arg0
    end
    return arg1
    
end

function REGIST_FUNC(arg0, arg1, arg2, arg3)
    return function ()
        return arg2(arg0, arg1, arg3)
        
    end

    
end

function Approach_Act_Flex(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if arg7 == nil then
        arg7 = 3
    end
    if arg8 == nil then
        arg8 = 8
    end
    local f65_local0 = arg0:GetDist(TARGET_ENE_0)
    local f65_local1 = arg0:GetRandam_Int(1, 100)
    local f65_local2 = true
    if arg4 <= f65_local0 then
        f65_local2 = false
    elseif arg3 <= f65_local0 and f65_local1 <= arg5 then
        f65_local2 = false
    end
    local f65_local3 = -1
    local f65_local4 = arg0:GetRandam_Int(1, 100)
    if f65_local4 <= arg6 then
        f65_local3 = 9910
    end
    if f65_local2 == true then
        life = arg7
    else
        life = arg8
    end
    local f65_local5 = 0
    if arg2 <= f65_local0 then
        if f65_local2 == true then
            arg2 = arg2 + arg0:GetStringIndexedNumber("AddDistWalk") + f65_local5
        else
            arg2 = arg2 + arg0:GetStringIndexedNumber("AddDistRun") + f65_local5
        end
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, life, TARGET_ENE_0, arg2, TARGET_SELF, f65_local2, f65_local3)
    end
    
end

function SpaceCheck(arg0, arg1, arg2, arg3)
    local f66_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    local f66_local1 = arg0:GetExistMeshOnLineDistSpecifyAngleEx(TARGET_SELF, arg2, arg3 + f66_local0, AI_SPA_DIR_TYPE_TargetF, f66_local0, 0)
    if arg3 * 0.95 <= f66_local1 then
        return true
    else
        return false
    end
    
end

function InsideRange(arg0, arg1, arg2, arg3, arg4, arg5)
    return YSD_InsideRangeEx(arg0, arg1, arg2, arg3, arg4, arg5)
    
end

function InsideDir(arg0, arg1, arg2, arg3)
    return YSD_InsideRangeEx(arg0, arg1, arg2, arg3, -999, 999)
    
end

function YSD_InsideRangeEx(arg0, arg1, arg2, arg3, arg4, arg5)
    local f69_local0 = arg0:GetDist(TARGET_ENE_0)
    if arg4 <= f69_local0 and f69_local0 <= arg5 then
        local f69_local1 = arg0:GetToTargetAngle(TARGET_ENE_0)
        local f69_local2 = 0
        if arg2 < 0 then
            f69_local2 = -1
        else
            f69_local2 = 1
        end
        if not (arg2 + arg3 / -2 > f69_local1 or f69_local1 > arg2 + arg3 / 2) or arg2 + arg3 / -2 <= f69_local1 + 360 * f69_local2 and f69_local1 + 360 * f69_local2 <= arg2 + arg3 / 2 then
            return true
        else
            return false
        end
    else
        return false
    end
    
end

function SetCoolTime(arg0, arg1, arg2, arg3, arg4, arg5)
    arg3 = arg0:RegistAttackTimeInterval(arg2, arg3)
    if arg4 <= 0 then
        return 0
    elseif arg0:GetAttackPassedTime(arg2) <= arg3 then
        return arg5
    end
    return arg4
    
end

function Counter_Act(arg0, arg1, arg2, arg3)
    local f71_local0 = 0.5
    if arg2 == nil then
        arg2 = 4
    end
    local f71_local1 = arg0:GetRandam_Int(1, 100)
    local f71_local2 = arg0:GetNumber(15)
    if arg0:IsInterupt(INTERUPT_Damaged) then
        arg0:SetTimer(15, 5)
        if f71_local2 == 0 then
            f71_local2 = arg2
        end
        arg0:SetNumber(15, f71_local2 * 2)
    end
    if f71_local2 >= 100 then
        arg0:SetNumber(15, 100)
    end
    if arg0:IsInterupt(INTERUPT_Damaged) and f71_local1 <= arg0:GetNumber(15) and arg0:GetTimer(14) <= 0 then
        arg0:SetTimer(14, 3)
        arg0:SetNumber(15, 0)
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, f71_local0, arg3, TARGET_ENE_0, DIST_None, 0, 180, 0, 0)
        return true
    end
    return false
    
end

function ReactBackstab_Act(arg0, arg1, arg2, arg3, arg4)
    local f72_local0 = arg0:GetRandam_Int(1, 100)
    local f72_local1 = arg0:GetRandam_Int(1, 100)
    local f72_local2 = 3
    local f72_local3 = 6000
    local f72_local4 = 6002
    local f72_local5 = 6003
    if arg3 == nil then
        arg4 = 0
    end
    if arg0:IsInterupt(INTERUPT_BackstabRisk) then
        if f72_local0 <= arg4 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_StabCounterAttack, f72_local2, arg3, TARGET_ENE_0, DIST_None, 0, 180, 0, 0)
        elseif arg2 == 1 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f72_local2, f72_local3, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
        elseif arg2 == 2 then
            arg1:ClearSubGoal()
            if f72_local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f72_local2, f72_local4, TARGET_SELF, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f72_local2, f72_local5, TARGET_SELF, 0, AI_DIR_TYPE_R, 0)
            end
        elseif arg2 == 3 then
            arg1:ClearSubGoal()
            if f72_local1 <= 33 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f72_local2, f72_local3, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
            elseif f72_local1 <= 66 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f72_local2, f72_local4, TARGET_SELF, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f72_local2, f72_local5, TARGET_SELF, 0, AI_DIR_TYPE_R, 0)
            end
        end
        return false
    end
    
end

function Init_Pseudo_Global(arg0, arg1)
    arg0:SetStringIndexedNumber("Dist_SideStep", 5)
    arg0:SetStringIndexedNumber("Dist_BackStep", 5)
    arg0:SetStringIndexedNumber("AddDistWalk", 0)
    arg0:SetStringIndexedNumber("AddDistRun", 0)
    Init_AfterAttackAct(arg0, arg1)
    
end

function Init_AfterAttackAct(arg0, arg1)
    arg0:SetStringIndexedNumber("DistMin_AAA", -999)
    arg0:SetStringIndexedNumber("DistMax_AAA", 999)
    arg0:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg0:SetStringIndexedNumber("Angle_AAA", 360)
    arg0:SetStringIndexedNumber("Odds_Guard_AAA", 0)
    arg0:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
    arg0:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
    arg0:SetStringIndexedNumber("Odds_Back_AAA", 0)
    arg0:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
    arg0:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
    arg0:SetStringIndexedNumber("Odds_BitWait_AAA", 0)
    arg0:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    arg0:SetStringIndexedNumber("Odds_BsAndSs_AAA", 0)
    arg0:SetStringIndexedNumber("DistMin_Inter_AAA", -999)
    arg0:SetStringIndexedNumber("DistMax_Inter_AAA", 999)
    arg0:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg0:SetStringIndexedNumber("Ang_Inter_AAA", 360)
    arg0:SetStringIndexedNumber("BackAndSide_BackLife_AAA", 2)
    arg0:SetStringIndexedNumber("BackAndSide_SideLife_AAA", arg0:GetRandam_Float(2.5, 3.5))
    arg0:SetStringIndexedNumber("BackLife_AAA", arg0:GetRandam_Float(2, 3))
    arg0:SetStringIndexedNumber("BsAndSide_SideLife_AAA", arg0:GetRandam_Float(2.5, 3.5))
    arg0:SetStringIndexedNumber("BackAndSide_BackDist_AAA", 1.5)
    arg0:SetStringIndexedNumber("BackDist_AAA", arg0:GetRandam_Float(2.5, 3.5))
    arg0:SetStringIndexedNumber("BackAndSide_SideDir_AAA", arg0:GetRandam_Int(45, 60))
    arg0:SetStringIndexedNumber("BsAndSide_SideDir_AAA", arg0:GetRandam_Int(45, 60))
    
end

function Update_Default_NoSubGoal(arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

function GuardGoalSubFunc_Activate(arg0, arg1, arg2)
    if 0 < arg2 then
        arg0:DoEzAction(arg1, arg2)
    end
    
end

function GuardGoalSubFunc_Update(arg0, arg1, arg2, arg3, arg4)
    if 0 < arg2 then
        if arg1:GetNumber(0) ~= 0 then
            return GOAL_RESULT_Failed
        elseif arg1:GetNumber(1) ~= 0 then
            return arg3
        end
    end
    if arg1:GetLife() <= 0 then
        if arg4 then
            return GOAL_RESULT_Success
        else
            return GOAL_RESULT_Failed
        end
    end
    return GOAL_RESULT_Continue
    
end

function GuardGoalSubFunc_Interrupt(arg0, arg1, arg2, arg3)
    if 0 < arg2 then
        if arg0:IsInterupt(INTERUPT_Damaged) then
            arg1:SetNumber(0, 1)
        elseif arg0:IsInterupt(INTERUPT_SuccessGuard) and arg3 ~= GOAL_RESULT_Continue then
            arg1:SetNumber(1, 1)
        end
    end
    return false
    
end


