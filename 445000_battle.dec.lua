RegisterTableGoal(GOAL_WalkShrine445000_Battle, "WalkShrine445000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WalkShrine445000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_LOCALPLAYER, 81)
    arg1:AddObserveSpecialEffectAttribute(TARGET_LOCALPLAYER, 89)
    arg1:AddObserveSpecialEffectAttribute(TARGET_LOCALPLAYER, 220)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetHpRate(TARGET_SELF)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetAreaHour()
    local f2_local7 = arg1:GetEventRequest()
    local f2_local8 = 0
    if arg1:HasSpecialEffectId(TARGET_SELF, 12481) == true then
        f2_local8 = 1000
    end
    local f2_local9 = arg1:GetDist(POINT_MOVE_POINT)
    if f2_local9 <= 30 then
        arg1:StepNextMovePoint()
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 12450) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5026) == true then
        f2_local0[32] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12450) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5026) == false then
        f2_local0[30] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12450) == false and arg1:HasSpecialEffectId(TARGET_SELF, 5026) == true and (f2_local6 < 4 or f2_local6 > 6) then
        f2_local0[32] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12480) == true then
        if f2_local7 == 10 then
            f2_local0[7] = 100
        else
            f2_local0[42] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12450) == false and arg1:HasSpecialEffectId(TARGET_SELF, 5026) == true and f2_local6 >= 4 and f2_local6 <= 6 then
        f2_local0[42] = 100
    elseif f2_local6 >= 4 and f2_local6 <= 6 then
        f2_local0[31] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12481) == true then
        if f2_local3 <= 60 then
            f2_local0[6] = 99
            if KATOT_InsideRangeEx(arg1, arg2, 0, 180, 0, 9999) then
                f2_local0[40] = 1
            else
                f2_local0[41] = 1
            end
        elseif KATOT_InsideRangeEx(arg1, arg2, 0, 180, 0, 9999) then
            f2_local0[40] = 100
        else
            f2_local0[41] = 100
        end
    elseif f2_local3 <= 10 then
        if InsideRange(arg1, arg2, 45, 90, 0, 9999) then
            f2_local0[1] = 1
            f2_local0[2] = 100
            f2_local0[6] = f2_local8
            if KATOT_InsideRangeEx(arg1, arg2, 0, 180, 0, 9999) then
                f2_local0[40] = 1
            else
                f2_local0[41] = 1
            end
        elseif InsideRange(arg1, arg2, -45, 90, 0, 9999) then
            f2_local0[1] = 1
            f2_local0[3] = 100
            f2_local0[6] = f2_local8
            if KATOT_InsideRangeEx(arg1, arg2, 0, 180, 0, 9999) then
                f2_local0[40] = 1
            else
                f2_local0[41] = 1
            end
        elseif InsideRange(arg1, arg2, 135, 90, 0, 9999) then
            f2_local0[1] = 1
            f2_local0[4] = 100
            f2_local0[6] = f2_local8
            if KATOT_InsideRangeEx(arg1, arg2, 0, 180, 0, 9999) then
                f2_local0[40] = 1
            else
                f2_local0[41] = 1
            end
        elseif InsideRange(arg1, arg2, -135, 90, 0, 9999) then
            f2_local0[1] = 1
            f2_local0[5] = 100
            f2_local0[6] = f2_local8
            if KATOT_InsideRangeEx(arg1, arg2, 0, 180, 0, 9999) then
                f2_local0[40] = 1
            else
                f2_local0[41] = 1
            end
        else
            f2_local0[1] = 100
            f2_local0[6] = f2_local8
            if KATOT_InsideRangeEx(arg1, arg2, 0, 180, 0, 9999) then
                f2_local0[40] = 1
            else
                f2_local0[41] = 1
            end
        end
    elseif KATOT_InsideRangeEx(arg1, arg2, 0, 180, 0, 9999) then
        f2_local0[40] = 100
    else
        f2_local0[41] = 100
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 120, f2_local0[1], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 80, f2_local0[2], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 80, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 80, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 80, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3005, 12, f2_local0[6], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, WalkShrine445000_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, WalkShrine445000_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, WalkShrine445000_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, WalkShrine445000_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, WalkShrine445000_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, WalkShrine445000_Act6)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, WalkShrine445000_Act7)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, WalkShrine445000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, WalkShrine445000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, WalkShrine445000_Act32)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, WalkShrine445000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, WalkShrine445000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, WalkShrine445000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, WalkShrine445000_Act43)
    local f2_local10 = REGIST_FUNC(arg1, arg2, WalkShrine445000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function WalkShrine445000_Act1(arg0, arg1, arg2)
    local f3_local0 = 3000
    local f3_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 9999
    local f3_local2 = 0
    local f3_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f3_local0, TARGET_NONE, f3_local1, f3_local2, f3_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WalkShrine445000_Act2(arg0, arg1, arg2)
    local f4_local0 = 3001
    local f4_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 9999
    local f4_local2 = 0
    local f4_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f4_local0, TARGET_NONE, f4_local1, f4_local2, f4_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WalkShrine445000_Act3(arg0, arg1, arg2)
    local f5_local0 = 3002
    local f5_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 9999
    local f5_local2 = 0
    local f5_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f5_local0, TARGET_NONE, f5_local1, f5_local2, f5_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WalkShrine445000_Act4(arg0, arg1, arg2)
    local f6_local0 = 3003
    local f6_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 9999
    local f6_local2 = 0
    local f6_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f6_local0, TARGET_NONE, f6_local1, f6_local2, f6_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WalkShrine445000_Act5(arg0, arg1, arg2)
    local f7_local0 = 3004
    local f7_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 9999
    local f7_local2 = 0
    local f7_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f7_local0, TARGET_NONE, f7_local1, f7_local2, f7_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WalkShrine445000_Act6(arg0, arg1, arg2)
    local f8_local0 = 3005
    local f8_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 9999
    local f8_local2 = 0
    local f8_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f8_local0, TARGET_NONE, f8_local1, f8_local2, f8_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WalkShrine445000_Act7(arg0, arg1, arg2)
    local f9_local0 = 3006
    local f9_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 9999
    local f9_local2 = 0
    local f9_local3 = 0
    local f9_local4 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3, 0, 0)
    f9_local4:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.5, 2.5), TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WalkShrine445000_Act30(arg0, arg1, arg2)
    local f10_local0 = 20011
    local f10_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 9999
    local f10_local2 = 0
    local f10_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 50, f10_local0, TARGET_NONE, f10_local1, f10_local2, f10_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WalkShrine445000_Act31(arg0, arg1, arg2)
    local f11_local0 = 20010
    local f11_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 9999
    local f11_local2 = 0
    local f11_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 50, f11_local0, TARGET_NONE, f11_local1, f11_local2, f11_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WalkShrine445000_Act32(arg0, arg1, arg2)
    local f12_local0 = 20000
    local f12_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 9999
    local f12_local2 = 0
    local f12_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 50, f12_local0, TARGET_NONE, f12_local1, f12_local2, f12_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WalkShrine445000_Act40(arg0, arg1, arg2)
    local f13_local0 = 3030
    local f13_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 9999
    local f13_local2 = 1
    local f13_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local0, POINT_MOVE_POINT, f13_local1, f13_local2, f13_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WalkShrine445000_Act41(arg0, arg1, arg2)
    local f14_local0 = 3031
    local f14_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 9999
    local f14_local2 = 1
    local f14_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, POINT_MOVE_POINT, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WalkShrine445000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WalkShrine445000_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 5, POINT_MOVE_POINT, 0, -1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WalkShrine445000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_WalkShrine445000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f20_local0 = arg1:GetDist(TARGET_ENE_0)
    local f20_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f20_local2 = arg1:GetRandam_Int(1, 100)
    local f20_local3 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    return false
    
end

RegisterTableGoal(GOAL_WalkShrine445000_AfterAttackAct, "WalkShrine445000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WalkShrine445000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

function KATOT_InsideRangeEx(arg0, arg1, arg2, arg3, arg4, arg5)
    local f23_local0 = arg0:GetDist(POINT_MOVE_POINT)
    if arg4 <= f23_local0 and f23_local0 <= arg5 then
        local f23_local1 = arg0:GetToTargetAngle(POINT_MOVE_POINT)
        local f23_local2 = 0
        if arg2 < 0 then
            f23_local2 = -1
        else
            f23_local2 = 1
        end
        if not (arg2 + arg3 / -2 > f23_local1 or f23_local1 > arg2 + arg3 / 2) or arg2 + arg3 / -2 <= f23_local1 + 360 * f23_local2 and f23_local1 + 360 * f23_local2 <= arg2 + arg3 / 2 then
            return true
        else
            return false
        end
    else
        return false
    end
    
end


