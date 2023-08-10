RegisterTableGoal(GOAL_RedEyeGypsy320000_Battle, "RedEyeGypsy320000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RedEyeGypsy320000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3026)
    arg1:EnableUnfavorableAttackCheck(3000000, 3000)
    arg1:EnableUnfavorableAttackCheck(3000000, 3001)
    arg1:EnableUnfavorableAttackCheck(3000000, 3009)
    arg1:EnableUnfavorableAttackCheck(3000000, 3010)
    arg1:EnableUnfavorableAttackCheck(3000000, 3025)
    arg1:EnableUnfavorableAttackCheck(3000000, 3026)
    arg1:EnableUnfavorableAttackCheck(3000000, 3027)
    arg1:EnableUnfavorableAttackCheck(3000000, 3028)
    
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 83)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetHpRate(TARGET_SELF)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = 0
    local f2_local8 = 0
    local f2_local9 = 10953
    local f2_local10 = 0
    local f2_local11 = 0
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 10970) == false then
        f2_local7 = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 11035) == true then
        f2_local8 = 1
    else
        f2_local8 = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, f2_local9) == false and arg1:HasSpecialEffectId(TARGET_SELF, 10959) == false and f2_local4 <= 0.6 then
        f2_local10 = 1000
        f2_local11 = 0
        f2_local7 = 0
    elseif arg1:HasSpecialEffectId(TARGET_SELF, f2_local9) == true and arg1:HasSpecialEffectId(TARGET_SELF, 10959) == false and f2_local4 <= 0.6 then
        f2_local10 = 0
        f2_local11 = 1000
        f2_local7 = 0
    end
    if not (f2_local6 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku or arg1:IsRiding(TARGET_SELF) ~= false) or f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki and arg1:IsRiding(TARGET_SELF) == false then
        if f2_local3 >= 8 then
            if InsideRange(arg1, arg2, 0, 240, 0, 99) then
                f2_local0[1] = 30 * f2_local8
                f2_local0[3] = f2_local10
                f2_local0[4] = f2_local11
                f2_local0[7] = 10
                f2_local0[8] = f2_local7
                f2_local0[18] = 60
            else
                f2_local0[3] = f2_local10
                f2_local0[4] = f2_local11
                f2_local0[15] = 100
            end
        elseif InsideRange(arg1, arg2, 0, 240, 0, 99) then
            f2_local0[1] = 30 * f2_local8
            f2_local0[3] = f2_local10
            f2_local0[4] = f2_local11
            f2_local0[7] = 10
            f2_local0[8] = f2_local7
            f2_local0[16] = 60
        else
            f2_local0[3] = f2_local10
            f2_local0[4] = f2_local11
            f2_local0[15] = 100
        end
    elseif not (f2_local6 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku or arg1:IsRiding(TARGET_SELF) ~= true) or f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki and arg1:IsRiding(TARGET_SELF) == true then
        if f2_local3 >= 8 then
            if InsideRange(arg1, arg2, 0, 240, 0, 99) then
                f2_local0[20] = 10 * f2_local8
                f2_local0[21] = 20 * f2_local8
                f2_local0[26] = f2_local10
                f2_local0[27] = f2_local11
                f2_local0[32] = f2_local7
                f2_local0[47] = 70
            else
                f2_local0[26] = f2_local10
                f2_local0[27] = f2_local11
                f2_local0[44] = 100
            end
        elseif InsideRange(arg1, arg2, 0, 90, 0, 99) then
            f2_local0[20] = 10 * f2_local8
            f2_local0[21] = 20 * f2_local8
            f2_local0[26] = f2_local10
            f2_local0[27] = f2_local11
            f2_local0[32] = f2_local7
            f2_local0[44] = 70
        elseif InsideRange(arg1, arg2, 90, 180, -1, 99) then
            f2_local0[23] = 10 * f2_local8
            f2_local0[25] = 20 * f2_local8
            f2_local0[26] = f2_local10
            f2_local0[27] = f2_local11
            f2_local0[34] = f2_local7
            f2_local0[44] = 70
        else
            f2_local0[22] = 10 * f2_local8
            f2_local0[24] = 20 * f2_local8
            f2_local0[26] = f2_local10
            f2_local0[27] = f2_local11
            f2_local0[44] = 70
        end
    elseif arg1:IsRiding(TARGET_SELF) then
        if f2_local3 >= 10 then
            if InsideRange(arg1, arg2, 0, 240, 0, 99) then
                f2_local0[20] = 20 * f2_local8
                f2_local0[21] = 60 * f2_local8
                f2_local0[26] = f2_local10
                f2_local0[27] = f2_local11
                f2_local0[32] = f2_local7
                f2_local0[45] = 20
            else
                f2_local0[45] = 30
                f2_local0[46] = 70
            end
        elseif f2_local3 >= 5 then
            if InsideRange(arg1, arg2, 90, 180, -1, 99) then
                f2_local0[20] = 5 * f2_local8
                f2_local0[21] = 5 * f2_local8
                f2_local0[23] = 19 * f2_local8
                f2_local0[25] = 70 * f2_local8
                f2_local0[26] = f2_local10
                f2_local0[27] = f2_local11
                f2_local0[32] = f2_local7
                f2_local0[45] = 1
            else
                f2_local0[20] = 5 * f2_local8
                f2_local0[21] = 5 * f2_local8
                f2_local0[22] = 19 * f2_local8
                f2_local0[24] = 70 * f2_local8
                f2_local0[26] = f2_local10
                f2_local0[27] = f2_local11
                f2_local0[32] = f2_local7
                f2_local0[45] = 1
            end
        elseif f2_local3 >= 2 then
            if InsideRange(arg1, arg2, 90, 180, -1, 99) then
                f2_local0[20] = 10 * f2_local8
                f2_local0[21] = 10 * f2_local8
                f2_local0[23] = 40 * f2_local8
                f2_local0[25] = 20 * f2_local8
                f2_local0[26] = f2_local10
                f2_local0[27] = f2_local11
                f2_local0[28] = 20
                f2_local0[32] = f2_local7
                f2_local0[34] = f2_local7
            else
                f2_local0[20] = 10 * f2_local8
                f2_local0[21] = 10 * f2_local8
                f2_local0[22] = 40 * f2_local8
                f2_local0[24] = 20 * f2_local8
                f2_local0[26] = f2_local10
                f2_local0[27] = f2_local11
                f2_local0[29] = 20
                f2_local0[32] = f2_local7
                f2_local0[33] = f2_local7
            end
        elseif InsideRange(arg1, arg2, 180, 60, 0, 99) then
            f2_local0[26] = f2_local10
            f2_local0[27] = f2_local11
            f2_local0[30] = 100
        elseif InsideRange(arg1, arg2, 0, 90, 0, 99) then
            f2_local0[28] = 45
            f2_local0[29] = 45
            f2_local0[45] = 10
        elseif InsideRange(arg1, arg2, 90, 180, 0, 99) then
            f2_local0[26] = f2_local10
            f2_local0[27] = f2_local11
            f2_local0[28] = 90
            f2_local0[30] = 10
        else
            f2_local0[26] = f2_local10
            f2_local0[27] = f2_local11
            f2_local0[29] = 90
            f2_local0[30] = 10
        end
    elseif f2_local3 >= 10 then
        if InsideRange(arg1, arg2, 0, 240, 0, 99) then
            f2_local0[2] = 80 * f2_local8
            f2_local0[3] = f2_local10
            f2_local0[4] = f2_local11
            f2_local0[7] = 10
            f2_local0[16] = 10
        else
            f2_local0[15] = 100
        end
    elseif f2_local3 >= 5 then
        if InsideRange(arg1, arg2, 0, 240, 0, 99) then
            f2_local0[1] = 40 * f2_local8
            f2_local0[2] = 40 * f2_local8
            f2_local0[3] = f2_local10
            f2_local0[4] = f2_local11
            f2_local0[7] = 10
            f2_local0[8] = f2_local7
            f2_local0[16] = 10
        else
            f2_local0[15] = 100
        end
    elseif f2_local3 >= 2 then
        if InsideRange(arg1, arg2, 0, 120, 0, 99) then
            f2_local0[1] = 50 * f2_local8
            f2_local0[3] = f2_local10
            f2_local0[4] = f2_local11
            f2_local0[7] = 25
            f2_local0[8] = f2_local7
            f2_local0[17] = 25
        elseif InsideRange(arg1, arg2, 180, 120, 0, 99) then
            f2_local0[15] = 100
        else
            f2_local0[1] = 20 * f2_local8
            f2_local0[3] = f2_local10
            f2_local0[4] = f2_local11
            f2_local0[7] = 40
            f2_local0[8] = f2_local7
            f2_local0[17] = 40
        end
    elseif InsideRange(arg1, arg2, 0, 90, 0, 99) then
        f2_local0[1] = 10 * f2_local8
        f2_local0[3] = f2_local10
        f2_local0[4] = f2_local11
        f2_local0[5] = 55
        f2_local0[6] = 35
    elseif InsideRange(arg1, arg2, 180, 150, 0, 99) then
        f2_local0[15] = 100
    else
        f2_local0[3] = f2_local10
        f2_local0[4] = f2_local11
        f2_local0[5] = 20
        f2_local0[6] = 80
    end
    f2_local0[3] = SetCoolTime(arg1, arg2, 3007, 5, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3017, 5, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3018, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3008, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3009, 5, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3010, 5, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3011, 4, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3012, 20, f2_local0[8], 1)
    f2_local0[28] = SetCoolTime(arg1, arg2, 3009, 8, f2_local0[28], 1)
    f2_local0[29] = SetCoolTime(arg1, arg2, 3010, 8, f2_local0[29], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3025, 20, f2_local0[22], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3026, 20, f2_local0[22], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3025, 20, f2_local0[23], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3026, 20, f2_local0[23], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3027, 25, f2_local0[24], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3028, 25, f2_local0[24], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 3027, 25, f2_local0[25], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 3028, 25, f2_local0[25], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 3013, 20, f2_local0[32], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 3029, 20, f2_local0[32], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 3030, 20, f2_local0[32], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3013, 20, f2_local0[33], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3029, 20, f2_local0[33], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3030, 20, f2_local0[33], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 3013, 20, f2_local0[34], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 3029, 20, f2_local0[34], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 3030, 20, f2_local0[34], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act6)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act7)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act8)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act9)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act18)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act34)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_Act47)
    local f2_local12 = REGIST_FUNC(arg1, arg2, RedEyeGypsy320000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local12, f2_local2)
    
end

function RedEyeGypsy320000_Act1(arg0, arg1, arg2)
    local f3_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 50
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 0.5
    local f3_local6 = 0.5
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act2(arg0, arg1, arg2)
    local f4_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 50
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 0.5
    local f4_local6 = 0.5
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act3(arg0, arg1, arg2)
    local f5_local0 = 3007
    local f5_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 0
    local f5_local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 10951) == true then
        f5_local0 = 3017
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 10952) == true then
        f5_local0 = 3018
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local0, TARGET_ENE_0, f5_local1, f5_local2, f5_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act4(arg0, arg1, arg2)
    local f6_local0 = 3008
    local f6_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 0
    local f6_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local1, f6_local2, f6_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act5(arg0, arg1, arg2)
    local f7_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 50
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 0.5
    local f7_local6 = 0.5
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3009
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act6(arg0, arg1, arg2)
    local f8_local0 = 3010
    local f8_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 0
    local f8_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act7(arg0, arg1, arg2)
    local f9_local0 = 3011
    local f9_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 0
    local f9_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act8(arg0, arg1, arg2)
    local f10_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 50
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 0.5
    local f10_local6 = 0.5
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3012
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act9(arg0, arg1, arg2)
    local f11_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 50
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 0.5
    local f11_local6 = 0.5
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3013
    local f11_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f11_local9 = 0
    local f11_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, -1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), 180, true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act17(arg0, arg1, arg2)
    local f14_local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(0.3, 0.6), TARGET_ENE_0, arg0:GetRandam_Float(7, 10), TARGET_ENE_0, true, -1)
    f14_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act18(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = arg0:GetRandam_Float(2, 4)
    local f15_local2 = arg0:GetRandam_Float(5.5, 7.5)
    local f15_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_local1, TARGET_ENE_0, f15_local2, TARGET_SELF, true, f15_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act20(arg0, arg1, arg2)
    local f16_local0 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = f16_local0 + 0
    local f16_local2 = f16_local0 + 0
    local f16_local3 = 100
    local f16_local4 = 0
    local f16_local5 = 0.5
    local f16_local6 = 0.5
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 3000
    local f16_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f16_local9 = 0
    local f16_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local7, TARGET_ENE_0, f16_local8, f16_local9, f16_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act21(arg0, arg1, arg2)
    local f17_local0 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 0
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = 0.5
    local f17_local6 = 0.5
    Approach_Act_Flex(arg0, arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local f17_local7 = 3001
    local f17_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f17_local9 = 0
    local f17_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local7, TARGET_ENE_0, f17_local8, f17_local9, f17_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act22(arg0, arg1, arg2)
    local f18_local0 = 3025
    local f18_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f18_local2 = 0
    local f18_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f18_local0, TARGET_ENE_0, f18_local1, f18_local2, f18_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act23(arg0, arg1, arg2)
    local f19_local0 = 3026
    local f19_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f19_local2 = 0
    local f19_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f19_local0, TARGET_ENE_0, f19_local1, f19_local2, f19_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act24(arg0, arg1, arg2)
    local f20_local0 = 3027
    local f20_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f20_local2 = 0
    local f20_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f20_local0, TARGET_ENE_0, f20_local1, f20_local2, f20_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act25(arg0, arg1, arg2)
    local f21_local0 = 3028
    local f21_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f21_local2 = 0
    local f21_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f21_local0, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act26(arg0, arg1, arg2)
    local f22_local0 = 3007
    local f22_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f22_local2 = 0
    local f22_local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 10951) == true then
        f22_local0 = 3017
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 10952) == true then
        f22_local0 = 3018
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f22_local0, TARGET_ENE_0, f22_local1, f22_local2, f22_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act27(arg0, arg1, arg2)
    local f23_local0 = 3008
    local f23_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f23_local2 = 0
    local f23_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f23_local0, TARGET_ENE_0, f23_local1, f23_local2, f23_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act28(arg0, arg1, arg2)
    local f24_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local1 = f24_local0 + 0
    local f24_local2 = f24_local0 + 0
    local f24_local3 = 100
    local f24_local4 = 0
    local f24_local5 = 0.5
    local f24_local6 = 0.5
    Approach_Act_Flex(arg0, arg1, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6)
    local f24_local7 = 3009
    local f24_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local9 = 0
    local f24_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f24_local7, TARGET_ENE_0, f24_local8, f24_local9, f24_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act29(arg0, arg1, arg2)
    local f25_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local1 = f25_local0 + 0
    local f25_local2 = f25_local0 + 0
    local f25_local3 = 100
    local f25_local4 = 0
    local f25_local5 = 0.5
    local f25_local6 = 0.5
    Approach_Act_Flex(arg0, arg1, f25_local0, f25_local1, f25_local2, f25_local3, f25_local4, f25_local5, f25_local6)
    local f25_local7 = 3010
    local f25_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local9 = 0
    local f25_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f25_local7, TARGET_ENE_0, f25_local8, f25_local9, f25_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act30(arg0, arg1, arg2)
    local f26_local0 = 3011
    local f26_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f26_local2 = 0
    local f26_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f26_local0, TARGET_ENE_0, f26_local1, f26_local2, f26_local3, 0, 0)
    local f26_local4 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(0.5, 1), TARGET_SELF, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_F, 0)
    f26_local4:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act31(arg0, arg1, arg2)
    local f27_local0 = 3012
    local f27_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local2 = 0
    local f27_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f27_local0, TARGET_ENE_0, f27_local1, f27_local2, f27_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act32(arg0, arg1, arg2)
    local f28_local0 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local1 = f28_local0 + 0
    local f28_local2 = f28_local0 + 0
    local f28_local3 = 100
    local f28_local4 = 0
    local f28_local5 = 0.5
    local f28_local6 = 0.5
    Approach_Act_Flex(arg0, arg1, f28_local0, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6)
    local f28_local7 = 3013
    local f28_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f28_local9 = 0
    local f28_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f28_local7, TARGET_ENE_0, f28_local8, f28_local9, f28_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act33(arg0, arg1, arg2)
    local f29_local0 = 3029
    local f29_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f29_local2 = 0
    local f29_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f29_local0, TARGET_ENE_0, f29_local1, f29_local2, f29_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act34(arg0, arg1, arg2)
    local f30_local0 = 3030
    local f30_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f30_local2 = 0
    local f30_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f30_local0, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act44(arg0, arg1, arg2)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 999) then
        if arg0:GetStringIndexedNumber("RepCount_Disable_FailedPath") >= 1 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(1, 2), TARGET_ENE_0, arg0:GetRandam_Float(0.5, 1.5), TARGET_SELF, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_ToBL, 7.5)
        end
    elseif arg0:GetStringIndexedNumber("RepCount_Disable_FailedPath") >= 1 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(1, 2), TARGET_ENE_0, arg0:GetRandam_Float(0.5, 1.5), TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_ToBR, 7.5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act45(arg0, arg1, arg2)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 999) then
        if arg0:GetStringIndexedNumber("RepCount_Disable_FailedPath") >= 1 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(0.4, 0.8), TARGET_ENE_0, arg0:GetRandam_Float(0.5, 1.5), TARGET_SELF, false, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBL, 7.5)
        end
    elseif arg0:GetStringIndexedNumber("RepCount_Disable_FailedPath") >= 1 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(0.4, 0.8), TARGET_ENE_0, arg0:GetRandam_Float(0.5, 1.5), TARGET_SELF, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBR, 7.5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, -1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_Act47(arg0, arg1, arg2)
    local f34_local0 = arg0:GetDist(TARGET_ENE_0)
    local f34_local1 = arg0:GetRandam_Float(2, 4)
    local f34_local2 = arg0:GetRandam_Float(5.5, 7.5)
    local f34_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f34_local1, TARGET_ENE_0, f34_local2, TARGET_SELF, false, f34_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RedEyeGypsy320000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RedEyeGypsy320000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f38_local0 = arg1:GetDist(TARGET_ENE_0)
    local f38_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f38_local2 = arg1:GetRandam_Int(1, 100)
    local f38_local3 = arg1:GetHpRate(TARGET_SELF)
    local f38_local4 = 10953
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsRiding(TARGET_SELF) then
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(6992) then
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 10959) == false and f38_local3 <= 0.6 then
                if arg1:HasSpecialEffectId(TARGET_SELF, f38_local4) == false then
                    RedEyeGypsy320000_Act26(arg1, arg2)
                    return true
                else
                    RedEyeGypsy320000_Act27(arg1, arg2)
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 11035) == true then
                RedEyeGypsy320000_Act21(arg1, arg2)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(79) then
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 10959) == false and f38_local3 <= 0.6 then
                if arg1:HasSpecialEffectId(TARGET_SELF, f38_local4) == false then
                    RedEyeGypsy320000_Act26(arg1, arg2)
                    return true
                else
                    RedEyeGypsy320000_Act27(arg1, arg2)
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 11035) == true then
                RedEyeGypsy320000_Act21(arg1, arg2)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 360, 4.5) then
            arg2:ClearSubGoal()
            RedEyeGypsy320000_Act30(arg1, arg2)
            return true
        end
    else
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(6992) then
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 10959) == false and f38_local3 <= 0.6 then
                if arg1:HasSpecialEffectId(TARGET_SELF, f38_local4) == false then
                    RedEyeGypsy320000_Act3(arg1, arg2)
                    return true
                else
                    RedEyeGypsy320000_Act4(arg1, arg2)
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 11035) == true then
                RedEyeGypsy320000_Act2(arg1, arg2)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(79) then
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 10959) == false and f38_local3 <= 0.6 then
                if arg1:HasSpecialEffectId(TARGET_SELF, f38_local4) == false then
                    RedEyeGypsy320000_Act3(arg1, arg2)
                    return true
                else
                    RedEyeGypsy320000_Act4(arg1, arg2)
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 11035) == true then
                RedEyeGypsy320000_Act2(arg1, arg2)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
            if arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 3) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetRandam_Float(0.5, 1.5), TARGET_ENE_0, arg1:GetRandam_Float(7, 10), TARGET_ENE_0, true, -1)
                return true
            elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 5) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 11035) == true then
                    arg2:ClearSubGoal()
                    RedEyeGypsy320000_Act1(arg1, arg2)
                    return true
                end
            elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 8) and arg1:HasSpecialEffectId(TARGET_SELF, 11035) == true then
                arg2:ClearSubGoal()
                RedEyeGypsy320000_Act2(arg1, arg2)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
            if arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 5) and arg1:HasSpecialEffectId(TARGET_SELF, 11035) == true then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 8) and arg1:HasSpecialEffectId(TARGET_SELF, 11035) == true then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 4) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) then
            if arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3025, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 8) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3026, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 240, 2) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 240, 5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3015, TARGET_ENE_0, 999, 0, 0)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
            if arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3025, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 8) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3026, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 240, 2) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 240, 5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3015, TARGET_ENE_0, 999, 0, 0)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_Shoot) then
            if arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 150, 10) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 11035) == true then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3001, TARGET_ENE_0, 99, 0, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 150, 15) and arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 20) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg1:GetRandam_Float(1, 1.5), TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_FR, 9)
                return true
            elseif arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 150, 15) and arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 20) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg1:GetRandam_Float(1, 1.5), TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_FL, 9)
                return true
            else

            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_RedEyeGypsy320000_AfterAttackAct, "RedEyeGypsy320000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RedEyeGypsy320000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


