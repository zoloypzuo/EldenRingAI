RegisterTableGoal(GOAL_DeadMinerJewelryCarving_438300_Battle, "DeadMinerJewelryCarving_438300_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DeadMinerJewelryCarving_438300_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(3000000, 3000)
    arg1:EnableUnfavorableAttackCheck(3000000, 3001)
    arg1:EnableUnfavorableAttackCheck(3000000, 3002)
    arg1:EnableUnfavorableAttackCheck(3000000, 3003)
    arg1:EnableUnfavorableAttackCheck(3000000, 3009)
    arg1:EnableUnfavorableAttackCheck(3000000, 3010)
    
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[5] = 0
                f2_local0[20] = 90
                f2_local0[21] = 0
                f2_local0[22] = 10
                f2_local0[23] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[5] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 90
            end
        elseif f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[5] = 0
                f2_local0[20] = 80
                f2_local0[21] = 0
                f2_local0[22] = 20
                f2_local0[23] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[5] = 0
                f2_local0[20] = 20
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 80
            end
        elseif f2_local3 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[5] = 0
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 80
                f2_local0[23] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[5] = 0
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 80
                f2_local0[23] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 80
            f2_local0[22] = 20
            f2_local0[23] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 20
            f2_local0[23] = 80
        end
    elseif f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 50
                f2_local0[2] = 50
                f2_local0[3] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 10
                f2_local0[23] = 90
            end
        elseif f2_local3 >= 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 50
                f2_local0[2] = 50
                f2_local0[3] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 10
                f2_local0[23] = 90
            end
        elseif f2_local3 >= 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 35
                f2_local0[2] = 35
                f2_local0[3] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 20
                f2_local0[23] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[5] = 0
                f2_local0[20] = 0
                f2_local0[21] = 10
                f2_local0[22] = 20
                f2_local0[23] = 70
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 35
            f2_local0[2] = 35
            f2_local0[3] = 0
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 20
            f2_local0[22] = 10
            f2_local0[23] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 20
            f2_local0[22] = 10
            f2_local0[23] = 70
        end
    elseif f2_local3 >= 30 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 35
            f2_local0[2] = 35
            f2_local0[3] = 30
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[1] = 35
            f2_local0[2] = 35
            f2_local0[3] = 30
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        end
    elseif f2_local3 >= 20 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 35
            f2_local0[2] = 35
            f2_local0[3] = 30
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[1] = 35
            f2_local0[2] = 35
            f2_local0[3] = 30
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        end
    elseif f2_local3 >= 10 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 35
            f2_local0[2] = 35
            f2_local0[3] = 30
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[1] = 35
            f2_local0[2] = 35
            f2_local0[3] = 30
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        end
    elseif f2_local3 >= 5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 35
            f2_local0[2] = 35
            f2_local0[3] = 30
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 35
            f2_local0[2] = 35
            f2_local0[3] = 30
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 35
            f2_local0[2] = 35
            f2_local0[3] = 30
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[1] = 35
            f2_local0[2] = 35
            f2_local0[3] = 30
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        end
    elseif f2_local3 >= 3 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 35
            f2_local0[2] = 35
            f2_local0[3] = 30
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 35
            f2_local0[2] = 35
            f2_local0[3] = 30
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 35
            f2_local0[2] = 35
            f2_local0[3] = 30
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[1] = 35
            f2_local0[2] = 35
            f2_local0[3] = 30
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        end
    elseif f2_local3 >= 1.5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 25
            f2_local0[2] = 25
            f2_local0[3] = 50
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 30
            f2_local0[2] = 30
            f2_local0[3] = 40
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 30
            f2_local0[2] = 30
            f2_local0[3] = 40
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        else
            f2_local0[1] = 40
            f2_local0[2] = 0
            f2_local0[3] = 40
            f2_local0[5] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 10
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[3] = 30
        f2_local0[5] = 50
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 30
        f2_local0[5] = 60
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 10
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 30
        f2_local0[5] = 60
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 10
    else
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 30
        f2_local0[5] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 70
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3010, 20, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3030, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3031, 30, f2_local0[8], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, DeadMinerJewelryCarving_438300_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, DeadMinerJewelryCarving_438300_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, DeadMinerJewelryCarving_438300_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, DeadMinerJewelryCarving_438300_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, DeadMinerJewelryCarving_438300_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, DeadMinerJewelryCarving_438300_Act6)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, DeadMinerJewelryCarving_438300_Act7)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, DeadMinerJewelryCarving_438300_Act8)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, DeadMinerJewelryCarving_438300_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, DeadMinerJewelryCarving_438300_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, DeadMinerJewelryCarving_438300_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, DeadMinerJewelryCarving_438300_Act23)
    local f2_local8 = REGIST_FUNC(arg1, arg2, DeadMinerJewelryCarving_438300_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function DeadMinerJewelryCarving_438300_Act1(arg0, arg1, arg2)
    local f3_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 20
    local f3_local3 = 90
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeadMinerJewelryCarving_438300_Act2(arg0, arg1, arg2)
    local f4_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 20
    local f4_local3 = 90
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeadMinerJewelryCarving_438300_Act3(arg0, arg1, arg2)
    local f5_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 20
    local f5_local3 = 90
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f5_local7 = 3002
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeadMinerJewelryCarving_438300_Act4(arg0, arg1, arg2)
    local f6_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 20
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f6_local7 = 3005
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeadMinerJewelryCarving_438300_Act5(arg0, arg1, arg2)
    local f7_local0 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 20
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f7_local7 = 3010
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeadMinerJewelryCarving_438300_Act6(arg0, arg1, arg2)
    local f8_local0 = 25 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 20
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f8_local7 = 3012
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeadMinerJewelryCarving_438300_Act7(arg0, arg1, arg2)
    local f9_local0 = 25 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 20
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f9_local7 = 3030
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeadMinerJewelryCarving_438300_Act8(arg0, arg1, arg2)
    local f10_local0 = 25 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 20
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f10_local7 = 3031
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeadMinerJewelryCarving_438300_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeadMinerJewelryCarving_438300_Act21(arg0, arg1, arg2)
    local f12_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f12_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeadMinerJewelryCarving_438300_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeadMinerJewelryCarving_438300_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeadMinerJewelryCarving_438300_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_DeadMinerJewelryCarving_438300_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f18_local0 = arg1:GetDist(TARGET_ENE_0)
    local f18_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = 0
    local f18_local3 = 0
    local f18_local4 = arg1:GetRandam_Int(1, 100)
    local f18_local5 = arg1:GetHpRate(TARGET_SELF)
    local f18_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 3.5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 3) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 3) then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 3) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
        if f18_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            return true
        elseif f18_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 3) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f18_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f18_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 25) then
            if f18_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) then
        if f18_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            return true
        elseif f18_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 3) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if f18_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f18_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 25) then
            if f18_local4 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f18_local4 <= 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
                return true
            else
                return true
            end
        elseif f18_local4 <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
            return true
        else
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_DeadMinerJewelryCarving_438300_AfterAttackAct, "DeadMinerJewelryCarving_438300_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DeadMinerJewelryCarving_438300_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


