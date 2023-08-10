RegisterTableGoal(GOAL_Bat420000_Battle, "Bat420000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Bat420000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
    arg1:EnableUnfavorableAttackCheck(1000000, 3003)
    arg1:EnableUnfavorableAttackCheck(1000000, 3005)
    arg1:EnableUnfavorableAttackCheck(1000000, 3006)
    arg1:EnableUnfavorableAttackCheck(1000000, 3008)
    arg1:EnableUnfavorableAttackCheck(1000000, 3009)
    arg1:EnableUnfavorableAttackCheck(1000000, 3010)
    arg1:EnableUnfavorableAttackCheck(1000000, 3011)
    arg1:EnableUnfavorableAttackCheck(1000000, 3012)
    arg1:EnableUnfavorableAttackCheck(1000000, 3013)
    arg1:EnableUnfavorableAttackCheck(1000000, 3025)
    arg1:EnableUnfavorableAttackCheck(2000000, 3000)
    arg1:EnableUnfavorableAttackCheck(2000000, 3001)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5400) == true then
        if FearOfFire(arg1, arg2, PLAN_SIDEWAYTYPE__NONE) == true then
            return 
        end
    elseif FearOfFire(arg1, arg2, PLAN_SIDEWAYTYPE__DEFAULT) == true then
        return 
    end
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetOffsetY(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = 1
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10507) == true then
        f2_local7 = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10513) == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5402) == false then
            f2_local0[48] = 100
        else
            f2_local0[49] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10512) == true then
        if f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku and arg1:HasSpecialEffectId(TARGET_SELF, 5400) == true then
            if f2_local3 >= 12 then
                f2_local0[45] = 100
            else
                f2_local0[21] = 10
                f2_local0[22] = 80
                f2_local0[43] = 10
            end
        elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki and arg1:HasSpecialEffectId(TARGET_SELF, 5400) == true then
            if f2_local3 >= 12 then
                f2_local0[45] = 100
            else
                f2_local0[21] = 30
                f2_local0[22] = 60
                f2_local0[43] = 10
            end
        elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku and arg1:HasSpecialEffectId(TARGET_SELF, 5401) == true then
            if f2_local3 >= 12 then
                f2_local0[45] = 100
            else
                f2_local0[6] = 40
                f2_local0[42] = 50
                f2_local0[43] = 10
            end
        elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki and arg1:HasSpecialEffectId(TARGET_SELF, 5401) == true then
            if f2_local3 >= 12 then
                f2_local0[45] = 100
            else
                f2_local0[6] = 40
                f2_local0[7] = 20
                f2_local0[42] = 30
                f2_local0[43] = 10
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5400) == true then
            if f2_local3 >= 10 then
                if InsideRange(arg1, arg2, 0, 240, -1, 99) then
                    f2_local0[22] = 100
                else
                    f2_local0[21] = 30
                    f2_local0[22] = 60
                    f2_local0[44] = 10
                end
            elseif f2_local3 >= 5 then
                if InsideRange(arg1, arg2, 0, 240, -1, 99) then
                    f2_local0[20] = 25
                    f2_local0[21] = 15
                    f2_local0[22] = 60
                else
                    f2_local0[21] = 30
                    f2_local0[22] = 60
                    f2_local0[44] = 10
                end
            elseif InsideRange(arg1, arg2, 0, 240, -1, 99) then
                f2_local0[20] = 20
                f2_local0[21] = 10
                f2_local0[22] = 70
            else
                f2_local0[21] = 15
                f2_local0[22] = 80
                f2_local0[44] = 5
            end
        elseif f2_local5 >= 3.5 then
            if f2_local3 >= 20 then
                f2_local0[4] = 60
                f2_local0[41] = 40
            elseif f2_local3 >= 12 then
                f2_local0[4] = 60
                f2_local0[7] = 20
                f2_local0[31] = 0
                f2_local0[40] = 10
                f2_local0[41] = 10
            else
                f2_local0[7] = 100
                f2_local0[31] = 0
                f2_local0[40] = 1
            end
        elseif f2_local5 >= 2.5 then
            if f2_local3 >= 20 then
                f2_local0[40] = 20
                f2_local0[41] = 80
            elseif f2_local3 >= 10 then
                f2_local0[40] = 50
                f2_local0[41] = 50
            elseif f2_local3 >= 5 then
                if InsideRange(arg1, arg2, 180, 120, -1, 99) then
                    f2_local0[7] = 40
                    f2_local0[35] = 50
                    f2_local0[40] = 10
                else
                    f2_local0[7] = 40
                    f2_local0[33] = 25
                    f2_local0[35] = 25
                    f2_local0[40] = 10
                end
            elseif InsideRange(arg1, arg2, 180, 120, -1, 99) then
                f2_local0[2] = 10
                f2_local0[7] = 50
                f2_local0[35] = 30
                f2_local0[40] = 10
            else
                f2_local0[2] = 30
                f2_local0[7] = 50
                f2_local0[33] = 10
                f2_local0[35] = 5
                f2_local0[40] = 5
            end
        elseif f2_local3 >= 20 then
            f2_local0[30] = 100 * f2_local7
            f2_local0[40] = 1
            f2_local0[42] = 1
        elseif f2_local3 >= 12 then
            f2_local0[4] = 60
            f2_local0[30] = 25 * f2_local7
            f2_local0[42] = 15
        elseif f2_local3 >= 7 then
            if f2_local4 >= 3 then
                f2_local0[40] = 50
                f2_local0[42] = 50
            else
                f2_local0[3] = 80
                f2_local0[42] = 20
            end
        elseif f2_local3 >= 3.5 then
            if f2_local4 >= 3 then
                f2_local0[7] = 30
                f2_local0[43] = 70
            else
                f2_local0[1] = 10
                f2_local0[2] = 40
                f2_local0[7] = 50
            end
        elseif f2_local4 >= 3 then
            f2_local0[7] = 30
            f2_local0[43] = 70
        elseif InsideRange(arg1, arg2, 0, 180, -1, 99) then
            f2_local0[2] = 30
            f2_local0[7] = 40
            f2_local0[33] = 30
        elseif InsideRange(arg1, arg2, 0, 240, -1, 99) then
            f2_local0[2] = 10
            f2_local0[7] = 60
            f2_local0[35] = 30
        else
            f2_local0[1] = 35
            f2_local0[7] = 35
            f2_local0[36] = 30
        end
    elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku and arg1:HasSpecialEffectId(TARGET_SELF, 5400) == true then
        if f2_local3 >= 12 then
            f2_local0[45] = 100
        else
            f2_local0[21] = 10
            f2_local0[22] = 80
            f2_local0[43] = 10
        end
    elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki and arg1:HasSpecialEffectId(TARGET_SELF, 5400) == true then
        if f2_local3 >= 12 then
            f2_local0[45] = 100
        else
            f2_local0[21] = 60
            f2_local0[22] = 30
            f2_local0[43] = 10
        end
    elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku and arg1:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        if f2_local3 >= 12 then
            f2_local0[45] = 100
        else
            f2_local0[6] = 40
            f2_local0[42] = 50
            f2_local0[43] = 10
        end
    elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki and arg1:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        if f2_local3 >= 12 then
            f2_local0[45] = 100
        else
            f2_local0[5] = 20
            f2_local0[6] = 40
            f2_local0[42] = 30
            f2_local0[43] = 10
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5400) == true then
        if f2_local3 >= 10 then
            if InsideRange(arg1, arg2, 0, 240, -1, 99) then
                f2_local0[22] = 100
            else
                f2_local0[21] = 80
                f2_local0[44] = 20
            end
        elseif f2_local3 >= 5 then
            if InsideRange(arg1, arg2, 0, 240, -1, 99) then
                f2_local0[20] = 30
                f2_local0[21] = 20
                f2_local0[22] = 50
            else
                f2_local0[21] = 80
                f2_local0[44] = 20
            end
        elseif InsideRange(arg1, arg2, 0, 240, -1, 99) then
            f2_local0[20] = 20
            f2_local0[21] = 80
        else
            f2_local0[21] = 80
            f2_local0[44] = 20
        end
    elseif f2_local5 >= 3.5 then
        if f2_local3 >= 20 then
            f2_local0[4] = 60
            f2_local0[41] = 40
        elseif f2_local3 >= 12 then
            f2_local0[4] = 60
            f2_local0[5] = 20
            f2_local0[31] = 0
            f2_local0[40] = 10
            f2_local0[41] = 10
        else
            f2_local0[5] = 100
            f2_local0[31] = 0
            f2_local0[40] = 1
        end
    elseif f2_local5 >= 2.5 then
        if f2_local3 >= 20 then
            f2_local0[40] = 20
            f2_local0[41] = 80
        elseif f2_local3 >= 10 then
            f2_local0[40] = 50
            f2_local0[41] = 50
        elseif f2_local3 >= 5 then
            if InsideRange(arg1, arg2, 180, 120, -1, 99) then
                f2_local0[5] = 30
                f2_local0[35] = 60
                f2_local0[40] = 10
            else
                f2_local0[5] = 30
                f2_local0[33] = 30
                f2_local0[35] = 30
                f2_local0[40] = 10
            end
        elseif InsideRange(arg1, arg2, 180, 120, -1, 99) then
            f2_local0[2] = 40
            f2_local0[35] = 40
            f2_local0[40] = 20
        else
            f2_local0[2] = 40
            f2_local0[33] = 30
            f2_local0[35] = 20
            f2_local0[40] = 10
        end
    elseif f2_local3 >= 20 then
        f2_local0[30] = 100 * f2_local7
        f2_local0[40] = 1
        f2_local0[42] = 1
    elseif f2_local3 >= 12 then
        f2_local0[4] = 60
        f2_local0[30] = 25 * f2_local7
        f2_local0[42] = 15
    elseif f2_local3 >= 7 then
        if f2_local4 >= 3 then
            f2_local0[40] = 50
            f2_local0[42] = 50
        else
            f2_local0[3] = 60
            f2_local0[5] = 20
            f2_local0[42] = 20
        end
    elseif f2_local3 >= 3.5 then
        if f2_local4 >= 3 then
            f2_local0[5] = 30
            f2_local0[43] = 70
        else
            f2_local0[1] = 10
            f2_local0[2] = 70
            f2_local0[5] = 20
        end
    elseif f2_local4 >= 3 then
        f2_local0[5] = 30
        f2_local0[43] = 70
    elseif InsideRange(arg1, arg2, 0, 180, -1, 99) then
        f2_local0[2] = 60
        f2_local0[33] = 40
    elseif InsideRange(arg1, arg2, 0, 240, -1, 99) then
        f2_local0[2] = 40
        f2_local0[35] = 60
    else
        f2_local0[1] = 70
        f2_local0[36] = 30
    end
    f2_local0[5] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3025, 10, f2_local0[7], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3001, 15, f2_local0[21], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Bat420000_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Bat420000_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Bat420000_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Bat420000_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Bat420000_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Bat420000_Act6)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Bat420000_Act7)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, Bat420000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Bat420000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, Bat420000_Act22)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, Bat420000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, Bat420000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, Bat420000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, Bat420000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, Bat420000_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, Bat420000_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, Bat420000_Act36)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, Bat420000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, Bat420000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, Bat420000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, Bat420000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, Bat420000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, Bat420000_Act45)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, Bat420000_Act48)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, Bat420000_Act49)
    local f2_local9 = REGIST_FUNC(arg1, arg2, Bat420000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function Bat420000_Act1(arg0, arg1, arg2)
    local f3_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 0
    local f3_local3 = 80
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3006
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act2(arg0, arg1, arg2)
    local f4_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 0
    local f4_local3 = 80
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3009
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act3(arg0, arg1, arg2)
    local f5_local0 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 0
    local f5_local3 = 80
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3011
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act4(arg0, arg1, arg2)
    local f6_local0 = 19 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 0
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 10
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3012
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act5(arg0, arg1, arg2)
    local f7_local0 = 3007
    local f7_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f7_local2 = 0
    local f7_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local0, TARGET_ENE_0, f7_local1, f7_local2, f7_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act6(arg0, arg1, arg2)
    local f8_local0 = 3008
    local f8_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f8_local2 = 0
    local f8_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act7(arg0, arg1, arg2)
    local f9_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 0
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 10
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3025
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act20(arg0, arg1, arg2)
    local f10_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 0
    local f10_local3 = 70
    local f10_local4 = 0
    local f10_local5 = 1
    local f10_local6 = 1
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3000
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1.5, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act21(arg0, arg1, arg2)
    local f11_local0 = 3001
    local f11_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 0
    local f11_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f11_local0, TARGET_ENE_0, f11_local1, f11_local2, f11_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act22(arg0, arg1, arg2)
    local f12_local0 = 3020
    local f12_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f12_local2 = 0
    local f12_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f12_local0, TARGET_ENE_0, f12_local1, f12_local2, f12_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act30(arg0, arg1, arg2)
    local f13_local0 = 3020
    local f13_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f13_local2 = 0
    local f13_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f13_local0, TARGET_ENE_0, f13_local1, f13_local2, f13_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act31(arg0, arg1, arg2)
    local f14_local0 = 3021
    local f14_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f14_local2 = 0
    local f14_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act32(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 10507) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6011, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act33(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6011, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act34(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 10507) == true then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act35(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act36(arg0, arg1, arg2)
    local f19_local0 = 3014
    local f19_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f19_local2 = 0
    local f19_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f19_local0, TARGET_ENE_0, f19_local1, f19_local2, f19_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.8, 1.2), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act41(arg0, arg1, arg2)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = arg0:GetRandam_Int(1, 100)
    if f21_local0 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, arg0:GetRandam_Float(3.5, 5), TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, arg0:GetRandam_Float(3.5, 5), TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, arg0:GetRandam_Float(8, 12), TARGET_ENE_0, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(2.5, 5), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, -1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act45(arg0, arg1, arg2)
    local f25_local0 = arg0:GetRandam_Float(2, 4)
    local f25_local1 = arg0:GetRandam_Float(6, 12)
    local f25_local2 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f25_local0, TARGET_ENE_0, f25_local1, TARGET_SELF, true, f25_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act48(arg0, arg1, arg2)
    local f26_local0 = 3021
    local f26_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f26_local2 = 0
    local f26_local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 10516) == true then
        f26_local0 = 3022
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f26_local0, TARGET_ENE_0, f26_local1, f26_local2, f26_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_Act49(arg0, arg1, arg2)
    local f27_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local1 = f27_local0 + 0
    local f27_local2 = f27_local0 + 0
    local f27_local3 = 100
    local f27_local4 = 0
    local f27_local5 = 4
    local f27_local6 = 100
    if arg0:HasSpecialEffectId(TARGET_SELF, 10517) == true then
        f27_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    end
    Approach_Act_Flex(arg0, arg1, f27_local0, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5, f27_local6)
    local f27_local7 = 3000
    local f27_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local9 = 0
    local f27_local10 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 10517) == true then
        f27_local7 = 3001
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f27_local7, TARGET_ENE_0, f27_local8, f27_local9, f27_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Bat420000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Bat420000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f31_local0 = arg1:GetDist(TARGET_ENE_0)
    local f31_local1 = arg1:GetDist(TARGET_LOCALPLAYER)
    local f31_local2 = arg1:GetRandam_Int(1, 100)
    local f31_local3 = arg1:GetHpRate(TARGET_SELF)
    local f31_local4 = arg1:GetOffsetY(TARGET_SELF)
    local f31_local5 = 6001
    local f31_local6 = 6002
    local f31_local7 = 6003
    if arg1:HasSpecialEffectId(TARGET_SELF, 10507) == true then
        f31_local5 = 6011
        f31_local6 = 6012
        f31_local7 = 6013
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10513) == true or arg1:HasSpecialEffectId(TARGET_SELF, 5402) == true then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5400) == true then

    elseif f31_local4 >= 3.5 then

    elseif f31_local4 >= 2.5 then

    else
        if arg1:IsInterupt(INTERUPT_TargetIsGuard) and InsideRange(arg1, arg2, 0, 360, -3, 3) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3006, TARGET_ENE_0, 5, 0, 0, 0, 0)
            return true
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 4) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3010, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:HasSpecialEffectId(TARGET_SELF, 5026) == false then
            if InsideRange(arg1, arg2, 0, 120, -1, 5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 3, f31_local5, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                return true
            elseif InsideRange(arg1, arg2, 180, 120, -1, 5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3014, TARGET_SELF, 5, 0, 0, 0, 0)
                return true
            elseif InsideRange(arg1, arg2, 90, 120, -1, 5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 3, f31_local6, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                return true
            elseif InsideRange(arg1, arg2, 270, 120, -1, 5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 3, f31_local7, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                return true
            else

            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Bat420000_AfterAttackAct, "Bat420000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Bat420000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


