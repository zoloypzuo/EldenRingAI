RegisterTableGoal(GOAL_Ganmen446000_Battle, "Ganmen446000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Ganmen446000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    if arg1:HasSpecialEffectId(TARGET_SELF, 12650) == true then
        if f2_local3 >= 12 then
            if InsideRange(arg1, arg2, 0, 150, 0, 99) then
                f2_local0[2] = 70
                f2_local0[3] = 20
                f2_local0[4] = 10
            else
                f2_local0[3] = 50
                f2_local0[4] = 50
            end
        elseif f2_local3 >= 6 then
            if InsideRange(arg1, arg2, 0, 120, 0, 99) then
                f2_local0[2] = 50
                f2_local0[3] = 10
                f2_local0[4] = 40
            else
                f2_local0[3] = 20
                f2_local0[4] = 80
            end
        elseif InsideRange(arg1, arg2, 0, 90, 0, 99) then
            f2_local0[3] = 70
            f2_local0[4] = 30
        elseif InsideRange(arg1, arg2, 0, 300, 0, 99) then
            f2_local0[1] = 60
            f2_local0[4] = 20
            f2_local0[30] = 20
        else
            f2_local0[1] = 10
            f2_local0[5] = 90
        end
    elseif f2_local3 >= 12 then
        if InsideRange(arg1, arg2, 0, 150, 0, 99) then
            f2_local0[2] = 70
            f2_local0[3] = 20
            f2_local0[4] = 10
        else
            f2_local0[3] = 50
            f2_local0[4] = 50
        end
    elseif f2_local3 >= 6 then
        if InsideRange(arg1, arg2, 0, 120, 0, 99) then
            f2_local0[2] = 20
            f2_local0[3] = 50
            f2_local0[4] = 30
        elseif InsideRange(arg1, arg2, 270, 110, 0, 99) then
            f2_local0[3] = 40
            f2_local0[4] = 60
        elseif InsideRange(arg1, arg2, 90, 110, 0, 99) then
            f2_local0[3] = 40
            f2_local0[4] = 60
        else
            f2_local0[3] = 60
            f2_local0[4] = 40
        end
    elseif InsideRange(arg1, arg2, 0, 120, 0, 99) then
        f2_local0[3] = 70
        f2_local0[4] = 30
    elseif InsideRange(arg1, arg2, 270, 110, 0, 99) then
        f2_local0[1] = 70
        f2_local0[6] = 30
    elseif InsideRange(arg1, arg2, 90, 110, 0, 99) then
        f2_local0[1] = 70
        f2_local0[7] = 30
    else
        f2_local0[1] = 10
        f2_local0[5] = 90
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 20, f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3010, 20, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[2], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 5, f2_local0[5], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3014, 5, f2_local0[5], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[10], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[30], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[30], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Ganmen446000_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Ganmen446000_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Ganmen446000_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Ganmen446000_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Ganmen446000_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Ganmen446000_Act6)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Ganmen446000_Act7)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Ganmen446000_Act10)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, Ganmen446000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, Ganmen446000_Act31)
    local f2_local7 = REGIST_FUNC(arg1, arg2, Ganmen446000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function Ganmen446000_Act1(arg0, arg1, arg2)
    local f3_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 50
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 4
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 12650) == true then
        f3_local7 = 3010
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 12651) == true then
        f3_local7 = 3000
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ganmen446000_Act2(arg0, arg1, arg2)
    local f4_local0 = 3001
    local f4_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 0
    local f4_local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 12650) == true then
        f4_local0 = 3011
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 12651) == true then
        f4_local0 = 3001
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local0, TARGET_ENE_0, f4_local1, f4_local2, f4_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ganmen446000_Act3(arg0, arg1, arg2)
    local f5_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 50
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 4
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3002
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f5_local9 = 0
    local f5_local10 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 12650) == true then
        f5_local7 = 3012
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 12651) == true then
        f5_local7 = 3002
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_F, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ganmen446000_Act4(arg0, arg1, arg2)
    local f6_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 50
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 4
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3003
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f6_local9 = 0
    local f6_local10 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 12650) == true then
        f6_local7 = 3013
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 12651) == true then
        f6_local7 = 3003
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ganmen446000_Act5(arg0, arg1, arg2)
    local f7_local0 = 3004
    local f7_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f7_local2 = 0
    local f7_local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 12650) == true then
        f7_local0 = 3014
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 12651) == true then
        f7_local0 = 3004
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local0, TARGET_ENE_0, f7_local1, f7_local2, f7_local3, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ganmen446000_Act6(arg0, arg1, arg2)
    local f8_local0 = 3005
    local f8_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f8_local2 = 0
    local f8_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ganmen446000_Act7(arg0, arg1, arg2)
    local f9_local0 = 3006
    local f9_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f9_local2 = 0
    local f9_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ganmen446000_Act10(arg0, arg1, arg2)
    local f10_local0 = 3001
    local f10_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 0
    local f10_local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 12650) == true then
        f10_local0 = 3011
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 12651) == true then
        f10_local0 = 3001
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local1, f10_local2, f10_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ganmen446000_Act30(arg0, arg1, arg2)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 99) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ganmen446000_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ganmen446000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Ganmen446000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f16_local0 = arg1:GetDist(TARGET_ENE_0)
    local f16_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = arg1:GetRandam_Int(1, 100)
    local f16_local3 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    return false
    
end

RegisterTableGoal(GOAL_Ganmen446000_AfterAttackAct, "Ganmen446000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Ganmen446000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


