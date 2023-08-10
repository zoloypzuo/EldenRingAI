RegisterTableGoal(GOAL_MotherSlime333000_Battle, "MotherSlime333000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MotherSlime333000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 16305) == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) then
            f2_local0[24] = 100
        elseif arg1:GetNumber(0) ~= 1 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16318) == true then
                f2_local0[5] = 100
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) == true then
                f2_local0[3] = 100
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) == true then
                f2_local0[4] = 100
            else
                f2_local0[1] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16318) == true then
            f2_local0[5] = 100
        else
            f2_local0[1] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16306) == true then
        f2_local0[2] = 100
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, MotherSlime333000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, MotherSlime333000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, MotherSlime333000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, MotherSlime333000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, MotherSlime333000_Act05)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, MotherSlime333000_Act24)
    local f2_local6 = REGIST_FUNC(arg1, arg2, HoundOfBorus_419000_Act02_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function MotherSlime333000_Act01(arg0, arg1, arg2)
    local f3_local0 = 5
    local f3_local1 = 3002
    local f3_local2 = TARGET_ENE_0
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local0, f3_local1, f3_local2, f3_local3, 0, 0, 0)
    local f3_local7 = 10
    local f3_local8 = TARGET_ENE_0
    local f3_local9 = 0.5
    local f3_local10 = TARGET_SELF
    local f3_local11 = false
    local f3_local12 = arg0:GetDist(TARGET_ENE_0)
    local f3_local13 = 0
    local f3_local14 = arg0:GetRandam_Int(1, 100)
    local f3_local15 = -1
    if f3_local14 <= f3_local13 then
        f3_local15 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f3_local7, f3_local8, f3_local9, f3_local10, f3_local11, f3_local15)
    local f3_local16 = 5
    local f3_local17 = 3000
    local f3_local18 = TARGET_ENE_0
    local f3_local19 = 100
    local f3_local20 = 0
    local f3_local21 = 0
    local f3_local22 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 181) then
        f3_local17 = 3000
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 179) then
        f3_local17 = 3003
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f3_local16, f3_local17, f3_local18, f3_local19, 0, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MotherSlime333000_Act02(arg0, arg1, arg2)
    local f4_local0 = 5
    local f4_local1 = 3001
    local f4_local2 = TARGET_SELF
    local f4_local3 = TARGET_SELF
    local f4_local4 = 10
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f4_local0, f4_local1, f4_local2, f4_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MotherSlime333000_Act03(arg0, arg1, arg2)
    local f5_local0 = 5
    local f5_local1 = 20001
    local f5_local2 = TARGET_ENE_0
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f5_local0, f5_local1, f5_local2, f5_local3, 0, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MotherSlime333000_Act04(arg0, arg1, arg2)
    local f6_local0 = 5
    local f6_local1 = 20002
    local f6_local2 = TARGET_ENE_0
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f6_local0, f6_local1, f6_local2, f6_local3, 0, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MotherSlime333000_Act05(arg0, arg1, arg2)
    local f7_local0 = 5
    local f7_local1 = 3002
    local f7_local2 = TARGET_ENE_0
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, f7_local2, f7_local3, 0, 0, 0)
    local f7_local7 = 10
    local f7_local8 = TARGET_ENE_0
    local f7_local9 = 0.5
    local f7_local10 = TARGET_SELF
    local f7_local11 = false
    local f7_local12 = arg0:GetDist(TARGET_ENE_0)
    local f7_local13 = 0
    local f7_local14 = arg0:GetRandam_Int(1, 100)
    local f7_local15 = -1
    if f7_local14 <= f7_local13 then
        f7_local15 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f7_local7, f7_local8, f7_local9, f7_local10, f7_local11, f7_local15)
    local f7_local16 = 5
    local f7_local17 = 3000
    local f7_local18 = TARGET_ENE_0
    local f7_local19 = 100
    local f7_local20 = 0
    local f7_local21 = 0
    local f7_local22 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 181) then
        f7_local17 = 3000
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 179) then
        f7_local17 = 3003
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f7_local16, f7_local17, f7_local18, f7_local19, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MotherSlime333000_Act24(arg0, arg1, arg2)
    local f8_local0 = 2
    local f8_local1 = TARGET_ENE_0
    local f8_local2 = 45
    local f8_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f8_local4 = true
    local f8_local5 = 0
    local f8_local6 = arg0:GetRandam_Int(1, 100)
    local f8_local7 = -1
    if f8_local6 <= f8_local5 then
        f8_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f8_local0, f8_local1, f8_local2, f8_local7, f8_local3, f8_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MotherSlime333000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MotherSlime333000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        arg2:ClearSubGoal()
        local f12_local0 = 2.5
        local f12_local1 = TARGET_ENE_0
        local f12_local2 = 100
        local f12_local3 = TARGET_SELF
        local f12_local4 = true
        local f12_local5 = arg1:GetDist(TARGET_ENE_0)
        local f12_local6 = 0
        local f12_local7 = arg1:GetRandam_Int(1, 100)
        local f12_local8 = -1
        if f12_local7 <= f12_local6 then
            f12_local8 = 9910
        end
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local8)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_MotherSlime333000_AfterAttackAct, "MotherSlime333000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MotherSlime333000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


