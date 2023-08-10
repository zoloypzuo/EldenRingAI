RegisterTableGoal(GOAL_Namekuji404000_Battle, "GOAL_Namekuji404000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Namekuji404000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 18510)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 18511)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 18512)
    if f2_local3 >= 4 then
        f2_local0[1] = 40
        f2_local0[2] = 20
        f2_local0[3] = 40
    elseif f2_local3 >= 2.5 then
        f2_local0[1] = 40
        f2_local0[2] = 20
        f2_local0[3] = 40
    else
        f2_local0[1] = 30
        f2_local0[2] = 50
        f2_local0[3] = 20
    end
    if f2_local9 == true then
        f2_local0[1] = f2_local0[1] * 1.5
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18530) == true then
        f2_local0[3] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Namekuji404000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Namekuji404000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Namekuji404000_Act03)
    local f2_local10 = REGIST_FUNC(arg1, arg2, Namekuji404000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function Namekuji404000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 18510)
    local f3_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 18511)
    local f3_local2 = arg0:HasSpecialEffectId(TARGET_SELF, 18512)
    local f3_local3 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local4 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f3_local5 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local6 = 0
    local f3_local7 = 0
    local f3_local8 = 4
    local f3_local9 = 8
    Approach_Act_Flex(arg0, arg1, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8, f3_local9)
    if f3_local0 == true then
        local f3_local10 = 3005
        local f3_local11 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f3_local12 = 0
        local f3_local13 = 0
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local10, TARGET_ENE_0, f3_local11, f3_local12, f3_local13, 0, 0)
    elseif f3_local1 == true then
        local f3_local10 = 3006
        local f3_local11 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f3_local12 = 0
        local f3_local13 = 0
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local10, TARGET_ENE_0, f3_local11, f3_local12, f3_local13, 0, 0)
    elseif f3_local2 == true then
        local f3_local10 = 3007
        local f3_local11 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f3_local12 = 0
        local f3_local13 = 0
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local10, TARGET_ENE_0, f3_local11, f3_local12, f3_local13, 0, 0)
    else
        local f3_local10 = 3000
        local f3_local11 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f3_local12 = 0
        local f3_local13 = 0
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local10, TARGET_ENE_0, f3_local11, f3_local12, f3_local13, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Namekuji404000_Act02(arg0, arg1, arg2)
    local f4_local0 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f4_local2 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Namekuji404000_Act03(arg0, arg1, arg2)
    local f5_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f5_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3003
    local f5_local8 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Namekuji404000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Namekuji404000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    
end

RegisterTableGoal(GOAL_Namekuji404000_AfterAttackAct, "Namekuji404000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Namekuji404000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f10_local0 = arg1:GetDist(TARGET_ENE_0)
    local f10_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


