RegisterTableGoal(GOAL_CrystalMagician_371000_Battle, "CrystalMagician_371000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrystalMagician_371000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local3 >= 4 then
        f2_local0[1] = 0
        f2_local0[3] = 100
    elseif f2_local3 >= 2 then
        f2_local0[1] = 40
        f2_local0[3] = 60
    else
        f2_local0[1] = 80
        f2_local0[3] = 20
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[2], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, CrystalMagician_371000_Act01)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, CrystalMagician_371000_Act03)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, atkAfterFunc, f2_local2)
    
end

function CrystalMagician_371000_Act01(arg0, arg1, arg2)
    local f3_local0 = 5
    local f3_local1 = 3000
    local f3_local2 = TARGET_ENE_0
    local f3_local3 = TARGET_SELF
    local f3_local4 = 10
    local f3_local5 = 0
    local f3_local6 = 0
    local f3_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f3_local0, f3_local1, f3_local2, f3_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalMagician_371000_Act02(arg0, arg1, arg2)
    local f4_local0 = 5
    local f4_local1 = 3001
    local f4_local2 = TARGET_ENE_0
    local f4_local3 = TARGET_SELF
    local f4_local4 = 20
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f4_local0, f4_local1, f4_local2, f4_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalMagician_371000_Act03(arg0, arg1, arg2)
    local f5_local0 = 5
    local f5_local1 = 3002
    local f5_local2 = TARGET_ENE_0
    local f5_local3 = TARGET_SELF
    local f5_local4 = 20
    local f5_local5 = 0
    local f5_local6 = 0
    local f5_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f5_local0, f5_local1, f5_local2, f5_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrystalMagician_371000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_CrystalMagician_371000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
    
end

RegisterTableGoal(GOAL_CrystalMagician_371000_AfterAttackAct, "CrystalMagician_371000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrystalMagician_371000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


