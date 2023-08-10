RegisterTableGoal(GOAL_KidnapMachineP447000_Battle, "KidnapMachineP447000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KidnapMachineP447000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3031)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local8 = arg1:GetEventRequest()
    if f2_local3 >= 15 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 100
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[20] = 0
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[20] = 0
            f2_local0[40] = 100
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        end
    elseif f2_local3 >= 12 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 100
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[20] = 0
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[20] = 0
            f2_local0[40] = 100
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        end
    elseif f2_local3 >= 10 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 100
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[20] = 0
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[20] = 0
            f2_local0[40] = 100
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        end
    elseif f2_local3 >= 6 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 50
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[20] = 50
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[20] = 0
            f2_local0[40] = 100
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        end
    elseif f2_local3 >= 3.5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 30
            f2_local0[5] = 25
            f2_local0[6] = 25
            f2_local0[20] = 20
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 70
            f2_local0[20] = 0
            f2_local0[40] = 30
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 70
            f2_local0[6] = 0
            f2_local0[20] = 0
            f2_local0[40] = 30
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 40
            f2_local0[6] = 40
            f2_local0[20] = 0
            f2_local0[40] = 20
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        end
    elseif f2_local3 >= 3 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 40
            f2_local0[6] = 40
            f2_local0[20] = 20
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 70
            f2_local0[20] = 0
            f2_local0[40] = 30
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 70
            f2_local0[6] = 0
            f2_local0[20] = 0
            f2_local0[40] = 30
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 40
            f2_local0[6] = 40
            f2_local0[20] = 0
            f2_local0[40] = 20
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        end
    elseif f2_local3 >= 2.5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 0
            f2_local0[5] = 30
            f2_local0[6] = 30
            f2_local0[20] = 20
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 25
            f2_local0[3] = 25
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 50
            f2_local0[20] = 0
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 25
            f2_local0[3] = 25
            f2_local0[4] = 0
            f2_local0[5] = 50
            f2_local0[6] = 0
            f2_local0[20] = 0
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 40
            f2_local0[6] = 40
            f2_local0[20] = 0
            f2_local0[40] = 20
            f2_local0[41] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[44] = 0
            f2_local0[45] = 0
            f2_local0[46] = 0
            f2_local0[47] = 0
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
        f2_local0[1] = 20
        f2_local0[2] = 15
        f2_local0[3] = 15
        f2_local0[4] = 0
        f2_local0[5] = 15
        f2_local0[6] = 15
        f2_local0[20] = 20
        f2_local0[40] = 0
        f2_local0[41] = 0
        f2_local0[42] = 0
        f2_local0[43] = 0
        f2_local0[44] = 0
        f2_local0[45] = 0
        f2_local0[46] = 0
        f2_local0[47] = 0
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
        f2_local0[1] = 30
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 50
        f2_local0[20] = 0
        f2_local0[40] = 0
        f2_local0[41] = 0
        f2_local0[42] = 0
        f2_local0[43] = 0
        f2_local0[44] = 0
        f2_local0[45] = 0
        f2_local0[46] = 0
        f2_local0[47] = 0
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
        f2_local0[1] = 30
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[4] = 0
        f2_local0[5] = 50
        f2_local0[6] = 0
        f2_local0[20] = 0
        f2_local0[40] = 0
        f2_local0[41] = 0
        f2_local0[42] = 0
        f2_local0[43] = 0
        f2_local0[44] = 0
        f2_local0[45] = 0
        f2_local0[46] = 0
        f2_local0[47] = 0
    else
        f2_local0[1] = 20
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 40
        f2_local0[6] = 40
        f2_local0[20] = 0
        f2_local0[40] = 0
        f2_local0[41] = 0
        f2_local0[42] = 0
        f2_local0[43] = 0
        f2_local0[44] = 0
        f2_local0[45] = 0
        f2_local0[46] = 0
        f2_local0[47] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3001, 30, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 45, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3007, 45, f2_local0[6], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3021, 10, f2_local0[20], 1)
    f2_local0[45] = SetCoolTime(arg1, arg2, 6001, 5, f2_local0[45], 0)
    f2_local0[46] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[46], 0)
    f2_local0[46] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[46], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, KidnapMachineP447000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, KidnapMachineP447000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, KidnapMachineP447000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, KidnapMachineP447000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, KidnapMachineP447000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, KidnapMachineP447000_Act06)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, KidnapMachineP447000_Act20)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, KidnapMachineP447000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, KidnapMachineP447000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, KidnapMachineP447000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, KidnapMachineP447000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, KidnapMachineP447000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, KidnapMachineP447000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, KidnapMachineP447000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, KidnapMachineP447000_Act47)
    local f2_local9 = REGIST_FUNC(arg1, arg2, KidnapMachineP447000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function KidnapMachineP447000_Act01(arg0, arg1, arg2)
    local f3_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 10
    local f3_local3 = 30
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    local f3_local7 = 3001
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local9 = 0
    local f3_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KidnapMachineP447000_Act02(arg0, arg1, arg2)
    local f4_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 10
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    local f4_local7 = 3002
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KidnapMachineP447000_Act03(arg0, arg1, arg2)
    local f5_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 10
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    local f5_local7 = 3003
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KidnapMachineP447000_Act04(arg0, arg1, arg2)
    local f6_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 10
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3004
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KidnapMachineP447000_Act05(arg0, arg1, arg2)
    local f7_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 10
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    local f7_local7 = 3006
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 360
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KidnapMachineP447000_Act06(arg0, arg1, arg2)
    local f8_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 10
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    local f8_local7 = 3007
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local9 = 0
    local f8_local10 = 360
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KidnapMachineP447000_Act20(arg0, arg1, arg2)
    local f9_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 10
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 4
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3021
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KidnapMachineP447000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KidnapMachineP447000_Act41(arg0, arg1, arg2)
    local f11_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f11_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KidnapMachineP447000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KidnapMachineP447000_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2.5, TARGET_ENE_0, 90, 9910, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KidnapMachineP447000_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KidnapMachineP447000_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KidnapMachineP447000_Act46(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KidnapMachineP447000_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KidnapMachineP447000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_KidnapMachineP447000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f21_local0 = arg1:GetDist(TARGET_ENE_0)
    local f21_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f21_local2 = 0
    local f21_local3 = 0
    local f21_local4 = arg1:GetRandam_Int(1, 100)
    local f21_local5 = arg1:GetHpRate(TARGET_SELF)
    local f21_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f21_local7 = arg1:GetDist(TARGET_FRI_0)
    local f21_local8 = arg1:GetMapHitRadius(TARGET_SELF)
    local f21_local9 = arg1:GetPrevTargetState()
    local f21_local10 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_UseItem) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if f21_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 2, TARGET_ENE_0, false, -1)
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3021, TARGET_ENE_0, 999, f21_local2, f21_local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f21_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 2, TARGET_ENE_0, false, -1)
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3021, TARGET_ENE_0, 999, f21_local2, f21_local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f21_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 2, TARGET_ENE_0, false, -1)
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3021, TARGET_ENE_0, 999, f21_local2, f21_local3, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if f21_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 2, TARGET_ENE_0, false, -1)
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3021, TARGET_ENE_0, 999, f21_local2, f21_local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f21_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 2, TARGET_ENE_0, false, -1)
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3021, TARGET_ENE_0, 999, f21_local2, f21_local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f21_local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 2, TARGET_ENE_0, false, -1)
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3021, TARGET_ENE_0, 999, f21_local2, f21_local3, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3021, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
            if f21_local4 <= 25 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 6) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 15) then
            if f21_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 6) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 15) then
            if f21_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 6) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 6) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f21_local4 <= 90 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 15) then
            if f21_local4 <= 90 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 6) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 6) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f21_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3032, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 15) then
            if f21_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3032, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 6) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 15) then
            if f21_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 6) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 15) then
            if f21_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_KidnapMachineP447000_AfterAttackAct, "KidnapMachineP447000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KidnapMachineP447000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


