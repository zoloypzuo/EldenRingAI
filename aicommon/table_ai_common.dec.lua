g_LogicTable = {}
g_GoalTable = {}
Logic = nil
Goal = nil
function RegisterTableLogic(arg0)
    REGISTER_LOGIC_FUNC(arg0, "TableLogic_" .. arg0, "TableLogic_" .. arg0 .. "_Interrupt")
    Logic = {}
    g_LogicTable[arg0] = Logic
    
end

function RegisterTableGoal(arg0, arg1)
    REGISTER_GOAL(arg0, arg1)
    Goal = {}
    g_GoalTable[arg0] = Goal
    
end

function SetupScriptLogicInfo(arg0, arg1)
    local f3_local0 = g_LogicTable[arg0]
    if f3_local0 ~= nil then
        local f3_local1 = _CreateInterruptTypeInfoTable(f3_local0)
        local f3_local2 = f3_local0.Update ~= nil
        local f3_local3 = _IsInterruptFuncExist(f3_local1, f3_local0)
        f3_local0.InterruptInfoTable = f3_local1
        arg1:SetTableLogic(f3_local2, f3_local3)
    else
        arg1:SetNormalLogic()
    end
    
end

function SetupScriptGoalInfo(arg0, arg1)
    local f4_local0 = g_GoalTable[arg0]
    if f4_local0 ~= nil then
        local f4_local1 = _CreateInterruptTypeInfoTable(f4_local0)
        local f4_local2 = f4_local0.Update ~= nil
        local f4_local3 = f4_local0.Terminate ~= nil
        local f4_local4 = _IsInterruptFuncExist(f4_local1, f4_local0)
        local f4_local5 = f4_local0.Initialize ~= nil
        f4_local0.InterruptInfoTable = f4_local1
        arg1:SetTableGoal(f4_local2, f4_local3, f4_local4, f4_local5)
    else
        arg1:SetNormalGoal()
    end
    
end

function ExecTableLogic(arg0, arg1)
    local f5_local0 = g_LogicTable[arg1]
    if f5_local0 ~= nil then
        local f5_local1 = f5_local0.Main
        if f5_local1 ~= nil then
            f5_local1(f5_local0, arg0)
        end
    end
    
end

function UpdateTableLogic(arg0, arg1)
    local f6_local0 = g_LogicTable[arg1]
    if f6_local0 ~= nil then
        local f6_local1 = f6_local0.Update
        if f6_local1 ~= nil then
            f6_local1(f6_local0, arg0)
        end
    end
    
end

function InitializeTableGoal(arg0, arg1, arg2)
    local f7_local0 = false
    local f7_local1 = g_GoalTable[arg2]
    if f7_local1 ~= nil then
        local f7_local2 = f7_local1.Initialize
        if f7_local2 ~= nil then
            f7_local2(f7_local1, arg0, arg1, arg0:GetChangeBattleStateCount())
            f7_local0 = true
        end
    end
    return f7_local0
    
end

function ActivateTableGoal(arg0, arg1, arg2)
    local f8_local0 = false
    local f8_local1 = g_GoalTable[arg2]
    if f8_local1 ~= nil then
        local f8_local2 = f8_local1.Activate
        if f8_local2 ~= nil then
            f8_local0 = f8_local2(f8_local1, arg0, arg1)
        end
    end
    return f8_local0
    
end

function UpdateTableGoal(arg0, arg1, arg2)
    local f9_local0 = GOAL_RESULT_Continue
    local f9_local1 = g_GoalTable[arg2]
    if f9_local1 ~= nil then
        local f9_local2 = f9_local1.Update
        if f9_local2 ~= nil then
            f9_local0 = f9_local2(f9_local1, arg0, arg1)
        end
    end
    return f9_local0
    
end

function TerminateTableGoal(arg0, arg1, arg2)
    local f10_local0 = false
    local f10_local1 = g_GoalTable[arg2]
    if f10_local1 ~= nil then
        local f10_local2 = f10_local1.Terminate
        if f10_local2 ~= nil then
            f10_local0 = f10_local2(f10_local1, arg0, arg1)
        end
    end
    return f10_local0
    
end

function InterruptTableLogic(arg0, arg1, arg2, arg3)
    local f11_local0 = false
    local f11_local1 = g_LogicTable[arg2]
    if f11_local1 ~= nil then
        f11_local0 = _InterruptTableGoal_TypeCall(arg0, arg1, f11_local1, arg3)
    end
    return f11_local0
    
end

function InterruptTableGoal(arg0, arg1, arg2, arg3)
    local f12_local0 = false
    local f12_local1 = g_GoalTable[arg2]
    if f12_local1 ~= nil then
        f12_local0 = _InterruptTableGoal_TypeCall(arg0, arg1, f12_local1, arg3)
    end
    return f12_local0
    
end

function InterruptTableGoal_Common(arg0, arg1, arg2)
    local f13_local0 = false
    local f13_local1 = g_GoalTable[arg2]
    if f13_local1 ~= nil and f13_local1.Interrupt ~= nil and f13_local1:Interrupt(arg0, arg1) then
        f13_local0 = true
    end
    return f13_local0
    
end

function _IsInterruptFuncExist(arg0, arg1)
    for f14_local0 = INTERUPT_First, INTERUPT_Last, 1 do
        if not arg0[f14_local0].bEmpty then
            return true
        end
    end
    local f14_local0 = false
    return f14_local0
    
end

function _InterruptTableGoal_TypeCall(arg0, arg1, arg2, arg3)
    if arg2.InterruptInfoTable[arg3].func(arg0, arg1, arg2) then
        return true
    end
    return false
    
end

function _CreateInterruptTypeInfoTable(arg0)
    local f16_local0 = {}
    local f16_local1 = INTERUPT_FindEnemy
    local f16_local2 = {func = function (arg0, arg1, arg2)
        local f28_local0 = _GetInterruptFunc(arg2.Interrupt_FindEnemy)
        if f28_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_FindEnemy == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_FindAttack
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f29_local0 = _GetInterruptFunc(arg2.Interrupt_FindAttack)
        if f29_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_FindAttack == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_Damaged
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f30_local0 = _GetInterruptFunc(arg2.Interrupt_Damaged)
        if f30_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_Damaged == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_Damaged_Stranger
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f31_local0 = _GetInterruptFunc(arg2.Interrupt_Damaged_Stranger)
        if f31_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_Damaged_Stranger == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_FindMissile
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f32_local0 = _GetInterruptFunc(arg2.Interrupt_FindMissile)
        if f32_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_FindMissile == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_SuccessGuard
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f33_local0 = _GetInterruptFunc(arg2.Interrupt_SuccessGuard)
        if f33_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_SuccessGuard == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_MissSwing
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f34_local0 = _GetInterruptFunc(arg2.Interrupt_MissSwing)
        if f34_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_MissSwing == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_GuardBegin
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f35_local0 = _GetInterruptFunc(arg2.Interrupt_GuardBegin)
        if f35_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_GuardBegin == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_GuardFinish
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f36_local0 = _GetInterruptFunc(arg2.Interrupt_GuardFinish)
        if f36_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_GuardFinish == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_GuardBreak
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f37_local0 = _GetInterruptFunc(arg2.Interrupt_GuardBreak)
        if f37_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_GuardBreak == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_Shoot
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f38_local0 = _GetInterruptFunc(arg2.Interrupt_Shoot)
        if f38_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_Shoot == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_ShootReady
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f39_local0 = _GetInterruptFunc(arg2.Interrupt_ShootReady)
        if f39_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_ShootReady == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_UseItem
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f40_local0 = _GetInterruptFunc(arg2.Interrupt_UseItem)
        if f40_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_UseItem == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_EnterBattleArea
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f41_local0 = _GetInterruptFunc(arg2.Interrupt_EnterBattleArea)
        if f41_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_EnterBattleArea == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_LeaveBattleArea
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f42_local0 = _GetInterruptFunc(arg2.Interrupt_LeaveBattleArea)
        if f42_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_LeaveBattleArea == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_CANNOT_MOVE
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f43_local0 = _GetInterruptFunc(arg2.Interrupt_CANNOT_MOVE)
        if f43_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_CANNOT_MOVE == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_Inside_ObserveArea
    f16_local2 = {func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_Inside_ObserveArea(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_Inside_ObserveArea == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_ReboundByOpponentGuard
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f45_local0 = _GetInterruptFunc(arg2.Interrupt_ReboundByOpponentGuard)
        if f45_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_ReboundByOpponentGuard == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_ForgetTarget
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f46_local0 = _GetInterruptFunc(arg2.Interrupt_ForgetTarget)
        if f46_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_ForgetTarget == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_FriendRequestSupport
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f47_local0 = _GetInterruptFunc(arg2.Interrupt_FriendRequestSupport)
        if f47_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_FriendRequestSupport == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_TargetIsGuard
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f48_local0 = _GetInterruptFunc(arg2.Interrupt_TargetIsGuard)
        if f48_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_TargetIsGuard == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_HitEnemyWall
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f49_local0 = _GetInterruptFunc(arg2.Interrupt_HitEnemyWall)
        if f49_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_HitEnemyWall == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_SuccessParry
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f50_local0 = _GetInterruptFunc(arg2.Interrupt_SuccessParry)
        if f50_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_SuccessParry == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_CANNOT_MOVE_DisableInterupt
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f51_local0 = _GetInterruptFunc(arg2.Interrupt_CANNOT_MOVE_DisableInterupt)
        if f51_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_CANNOT_MOVE_DisableInterupt == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_ParryTiming
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f52_local0 = _GetInterruptFunc(arg2.Interrupt_ParryTiming)
        if f52_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_ParryTiming == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_RideNode_LadderBottom
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f53_local0 = _GetInterruptFunc(arg2.Interrupt_RideNode_LadderBottom)
        if f53_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_RideNode_LadderBottom == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_FLAG_RideNode_Door
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f54_local0 = _GetInterruptFunc(arg2.Interrupt_FLAG_RideNode_Door)
        if f54_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_FLAG_RideNode_Door == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_StraightByPath
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f55_local0 = _GetInterruptFunc(arg2.Interrupt_StraightByPath)
        if f55_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_StraightByPath == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_ChangedAnimIdOffset
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f56_local0 = _GetInterruptFunc(arg2.Interrupt_ChangedAnimIdOffset)
        if f56_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_ChangedAnimIdOffset == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_SuccessThrow
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f57_local0 = _GetInterruptFunc(arg2.Interrupt_SuccessThrow)
        if f57_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_SuccessThrow == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_LookedTarget
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f58_local0 = _GetInterruptFunc(arg2.Interrupt_LookedTarget)
        if f58_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_LookedTarget == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_LoseSightTarget
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f59_local0 = _GetInterruptFunc(arg2.Interrupt_LoseSightTarget)
        if f59_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_LoseSightTarget == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_RideNode_InsideWall
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f60_local0 = _GetInterruptFunc(arg2.Interrupt_RideNode_InsideWall)
        if f60_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_RideNode_InsideWall == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_MissSwingSelf
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f61_local0 = _GetInterruptFunc(arg2.Interrupt_MissSwingSelf)
        if f61_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_MissSwingSelf == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_GuardBreakBlow
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f62_local0 = _GetInterruptFunc(arg2.Interrupt_GuardBreakBlow)
        if f62_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_GuardBreakBlow == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_TargetOutOfRange
    f16_local2 = {func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_TargetOutOfRange(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_TargetOutOfRange == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_UnstableFloor
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f64_local0 = _GetInterruptFunc(arg2.Interrupt_UnstableFloor)
        if f64_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_UnstableFloor == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_BreakFloor
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f65_local0 = _GetInterruptFunc(arg2.Interrupt_BreakFloor)
        if f65_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_BreakFloor == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_BreakObserveObj
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f66_local0 = _GetInterruptFunc(arg2.Interrupt_BreakObserveObj)
        if f66_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_BreakObserveObj == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_EventRequest
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f67_local0 = _GetInterruptFunc(arg2.Interrupt_EventRequest)
        if f67_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_EventRequest == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_Outside_ObserveArea
    f16_local2 = {func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_Outside_ObserveArea(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_Outside_ObserveArea == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_TargetOutOfAngle
    f16_local2 = {func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_TargetOutOfAngle(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_TargetOutOfAngle == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_PlatoonAiOrder
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f70_local0 = _GetInterruptFunc(arg2.Interrupt_PlatoonAiOrder)
        if f70_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_PlatoonAiOrder == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_ActivateSpecialEffect
    f16_local2 = {func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_ActivateSpecialEffect(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_ActivateSpecialEffect == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_DeActivateSpecialEffect
    f16_local2 = {func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_DeActivateSpecialEffect(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_DeActivateSpecialEffect == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_MovedEnd_OnFailedPath
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f73_local0 = _GetInterruptFunc(arg2.Interrupt_MovedEnd_OnFailedPath)
        if f73_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_MovedEnd_OnFailedPath == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_ChangeSoundTarget
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f74_local0 = _GetInterruptFunc(arg2.Interrupt_ChangeSoundTarget)
        if f74_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_ChangeSoundTarget == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_OnCreateDamage
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f75_local0 = _GetInterruptFunc(arg2.Interrupt_OnCreateDamage)
        if f75_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_OnCreateDamage == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_InvadeTriggerRegion
    f16_local2 = {func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_InvadeTriggerRegion(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_InvadeTriggerRegion == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_LeaveTriggerRegion
    f16_local2 = {func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_LeaveTriggerRegion(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_LeaveTriggerRegion == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_AIGuardBroken
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f78_local0 = _GetInterruptFunc(arg2.Interrupt_AIGuardBroken)
        if f78_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_AIGuardBroken == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_AIReboundByOpponentGuard
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f79_local0 = _GetInterruptFunc(arg2.Interrupt_AIReboundByOpponentGuard)
        if f79_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_AIReboundByOpponentGuard == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_BackstabRisk
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f80_local0 = _GetInterruptFunc(arg2.Interrupt_BackstabRisk)
        if f80_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_BackstabRisk == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_LadderWait
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f81_local0 = _GetInterruptFunc(arg2.Interrupt_LadderWait)
        if f81_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_LadderWait == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_AIJump
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f82_local0 = _GetInterruptFunc(arg2.Interrupt_AIJump)
        if f82_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_AIJump == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_FindUnfavorableFailedPoint
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f83_local0 = _GetInterruptFunc(arg2.Interrupt_FindUnfavorableFailedPoint)
        if f83_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_FindUnfavorableFailedPoint == nil}
    f16_local0[f16_local1] = f16_local2
    f16_local1 = INTERUPT_UnfavorableAttack
    f16_local2 = {func = function (arg0, arg1, arg2)
        local f84_local0 = _GetInterruptFunc(arg2.Interrupt_UnfavorableAttack)
        if f84_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_UnfavorableAttack == nil}
    f16_local0[f16_local1] = f16_local2
    return f16_local0
    
end

function _GetInterruptFunc(arg0)
    if arg0 ~= nil then
        return arg0
    end
    return _InterruptTableGoal_TypeCall_Dummy
    
end

function _InterruptTableGoal_TypeCall_Dummy()
    return false
    
end

function _InterruptTableGoal_TargetOutOfRange_Common(arg0, arg1, arg2, arg3, arg4)
    local f19_local0 = false
    for f19_local1 = 0, 31, 1 do
        if arg3(f19_local1) then
            f19_local0 = true
            if arg4(arg0, arg1, arg2, f19_local1) then
                return true
            end
        end
    end
    local f19_local1 = bSlotEnable
    if f19_local1 then
        f19_local1 = false
        return f19_local1
    end
    f19_local1 = arg4
    local f19_local2 = arg0
    return f19_local1(f19_local2, arg1, arg2, -1)
    
end

function _InterruptTableGoal_TargetOutOfRange(arg0, arg1, arg2)
    local f20_local0 = _InterruptTableGoal_TargetOutOfRange_Common
    local f20_local1 = arg0
    local f20_local2 = REG1_0
    local f20_local3 = arg2
    local f20_local4 = function (arg0)
        local f85_local0 = arg1
        return f85_local0:IsTargetOutOfRangeInterruptSlot(arg0)
        
    end

    local f20_local5 = _GetInterruptFunc(arg0.Interrupt_TargetOutOfRange)
    return f20_local0()
    
end

function _InterruptTableGoal_TargetOutOfAngle(arg0, arg1, arg2)
    local f21_local0 = _InterruptTableGoal_TargetOutOfRange_Common
    local f21_local1 = arg0
    local f21_local2 = REG1_0
    local f21_local3 = arg2
    local f21_local4 = function (arg0)
        local f86_local0 = arg1
        return f86_local0:IsTargetOutOfAngleInterruptSlot(arg0)
        
    end

    local f21_local5 = _GetInterruptFunc(arg0.Interrupt_TargetOutOfAngle)
    return f21_local0()
    
end

function _InterruptTableGoal_Inside_ObserveArea(arg0, arg1, arg2)
    local f22_local0 = arg1:GetAreaObserveSlotNum(AI_AREAOBSERVE_INTERRUPT__INSIDE)
    for f22_local1 = 0, f22_local0 - 1, 1 do
        local f22_local4 = _GetInterruptFunc(arg0.Interrupt_Inside_ObserveArea)
        if f22_local4(arg0, arg1, arg2, arg1:GetAreaObserveSlot(AI_AREAOBSERVE_INTERRUPT__INSIDE, f22_local1)) then
            return true
        end
    end
    
end

function _InterruptTableGoal_Outside_ObserveArea(arg0, arg1, arg2)
    local f23_local0 = arg1:GetAreaObserveSlotNum(AI_AREAOBSERVE_INTERRUPT__OUTSIDE)
    for f23_local1 = 0, f23_local0 - 1, 1 do
        local f23_local4 = _GetInterruptFunc(arg0.Interrupt_Outside_ObserveArea)
        if f23_local4(arg0, arg1, arg2, arg1:GetAreaObserveSlot(AI_AREAOBSERVE_INTERRUPT__OUTSIDE, f23_local1)) then
            return true
        end
    end
    
end

function _InterruptTableGoal_ActivateSpecialEffect(arg0, arg1, arg2)
    local f24_local0 = arg1:GetSpecialEffectActivateInterruptNum()
    for f24_local1 = 0, f24_local0 - 1, 1 do
        local f24_local4 = _GetInterruptFunc(arg0.Interrupt_ActivateSpecialEffect)
        if f24_local4(arg0, arg1, arg2, arg1:GetSpecialEffectActivateInterruptType(f24_local1)) then
            return true
        end
    end
    
end

function _InterruptTableGoal_DeActivateSpecialEffect(arg0, arg1, arg2)
    local f25_local0 = arg1:GetSpecialEffectInactivateInterruptNum()
    for f25_local1 = 0, f25_local0 - 1, 1 do
        local f25_local4 = _GetInterruptFunc(arg0.Interrupt_DeActivateSpecialEffect)
        if f25_local4(arg0, arg1, arg2, arg1:GetSpecialEffectInactivateInterruptType(f25_local1)) then
            return true
        end
    end
    
end

function _InterruptTableGoal_InvadeTriggerRegion(arg0, arg1, arg2)
    local f26_local0 = arg1:GetInvadeTriggerRegionCategoryNum()
    for f26_local1 = 0, f26_local0 - 1, 1 do
        local f26_local4 = _GetInterruptFunc(arg0.Interrupt_InvadeTriggerRegion)
        if f26_local4(arg0, arg1, arg2, arg1:GetInvadeTriggerRegionCategory(f26_local1)) then
            return true
        end
    end
    
end

function _InterruptTableGoal_LeaveTriggerRegion(arg0, arg1, arg2)
    local f27_local0 = arg1:GetLeaveTriggerRegionCategoryNum()
    for f27_local1 = 0, f27_local0 - 1, 1 do
        local f27_local4 = _GetInterruptFunc(arg0.Interrupt_InvadeTriggerRegion)
        if f27_local4(arg0, arg1, arg2, arg1:GetLeaveTriggerRegionCategory(f27_local1)) then
            return true
        end
    end
    
end


