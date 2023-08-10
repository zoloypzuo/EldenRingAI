RegisterTableGoal(GOAL_KnightofNoblerot_Sp380000_Battle, "KnightofNoblerot_Sp380000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KnightofNoblerot_Sp380000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3029)
    arg1:EnableUnfavorableAttackCheck(0, 3100)
    arg1:EnableUnfavorableAttackCheck(0, 3101)
    arg1:EnableUnfavorableAttackCheck(0, 3102)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserve(1)
    arg1:DeleteObserve(2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 5.5 then
            f2_local0[19] = 100
            f2_local0[23] = 30
        else
            f2_local0[23] = 30
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 8 then
            if arg1:IsFinishTimer(2) then
                f2_local0[10] = 100
                f2_local0[19] = 900
                f2_local0[23] = 10
            else
                f2_local0[3] = 600
                f2_local0[10] = 400
                f2_local0[23] = 1
            end
        elseif f2_local3 >= 5.5 then
            if arg1:IsFinishTimer(2) then
                f2_local0[2] = 100
                f2_local0[3] = 50
                f2_local0[10] = 50
                f2_local0[19] = 600
                f2_local0[23] = 200
            else
                f2_local0[2] = 200
                f2_local0[3] = 400
                f2_local0[10] = 300
                f2_local0[23] = 100
            end
        elseif f2_local3 >= 3.5 then
            f2_local0[1] = 100
            f2_local0[2] = 50
            f2_local0[8] = 50
            f2_local0[10] = 50
            f2_local0[19] = 1
            f2_local0[21] = 350
            f2_local0[23] = 300
        else
            f2_local0[21] = 35
            f2_local0[23] = 50
        end
    elseif InsideRange(arg1, arg2, 180, 120, 0, 3) then
        if InsideRange(arg1, arg2, 90, 180, 0, 3) then
            f2_local0[25] = 100
        else
            f2_local0[26] = 100
        end
        f2_local0[29] = 10
    elseif InsideRange(arg1, arg2, 180, 200, 3, 10) then
        f2_local0[29] = 100
        f2_local0[23] = 50
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13862) then
        if f2_local3 >= 5 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[22] = 300
        elseif f2_local3 >= 3 then
            f2_local0[5] = 0
            f2_local0[9] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[20] = 100
            f2_local0[22] = 300
            f2_local0[24] = 300
        else
            f2_local0[5] = 0
            f2_local0[11] = 0
            f2_local0[12] = 200
            f2_local0[20] = 250
            f2_local0[22] = 50
            f2_local0[24] = 300
            if not arg1:HasSpecialEffectId(TARGET_SELF, 13864) then
                f2_local0[9] = 200
            end
        end
    elseif not arg1:IsFinishTimer(3) then
        if f2_local3 >= 5 then
            if arg1:IsFinishTimer(2) then
                f2_local0[1] = 0
                f2_local0[2] = 150
                f2_local0[3] = 200
                f2_local0[4] = 0
                f2_local0[7] = 0
                f2_local0[8] = 150
                f2_local0[10] = 200
                f2_local0[11] = 0
                f2_local0[22] = 300
            else
                f2_local0[1] = 0
                f2_local0[2] = 150
                f2_local0[3] = 400
                f2_local0[4] = 0
                f2_local0[7] = 0
                f2_local0[8] = 150
                f2_local0[10] = 300
                f2_local0[11] = 0
            end
        elseif f2_local3 >= 3 then
            f2_local0[5] = 0
            f2_local0[9] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[20] = 200
            f2_local0[22] = 400
            f2_local0[24] = 400
        else
            f2_local0[5] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[20] = 350
            f2_local0[22] = 50
            f2_local0[24] = 400
        end
    elseif f2_local3 >= 9 then
        if arg1:IsFinishTimer(2) then
            f2_local0[1] = 100
            f2_local0[2] = 200
            f2_local0[3] = 400
            f2_local0[4] = 100
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[10] = 200
            f2_local0[11] = 0
            f2_local0[23] = 1
            if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
                f2_local0[13] = 200
                f2_local0[14] = 100
            end
        else
            f2_local0[1] = 0
            f2_local0[2] = 200
            f2_local0[3] = 400
            f2_local0[4] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[10] = 400
            f2_local0[11] = 0
            f2_local0[23] = 1
            if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
                f2_local0[13] = 200
                f2_local0[14] = 100
            end
        end
    elseif f2_local3 >= 7 then
        if arg1:IsFinishTimer(2) then
            f2_local0[1] = 100
            f2_local0[2] = 150
            f2_local0[3] = 100
            f2_local0[4] = 100
            f2_local0[7] = 0
            f2_local0[8] = 150
            f2_local0[10] = 200
            f2_local0[11] = 0
            f2_local0[23] = 200
            if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
                f2_local0[13] = 0
                f2_local0[14] = 200
            end
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 400
            f2_local0[4] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[10] = 350
            f2_local0[11] = 0
            f2_local0[23] = 250
            if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
                f2_local0[13] = 0
                f2_local0[14] = 200
            end
        end
    elseif f2_local3 >= 5 then
        if arg1:IsFinishTimer(2) then
            f2_local0[1] = 100
            f2_local0[2] = 100
            f2_local0[3] = 0
            f2_local0[4] = 100
            f2_local0[5] = 0
            f2_local0[9] = 0
            f2_local0[7] = 0
            f2_local0[8] = 100
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[23] = 0
            if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
                f2_local0[13] = 0
                f2_local0[14] = 100
            end
        else
            f2_local0[1] = 0
            f2_local0[2] = 400
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[7] = 0
            f2_local0[8] = 150
            f2_local0[10] = 350
            f2_local0[11] = 0
            f2_local0[23] = 100
            if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
                f2_local0[13] = 0
                f2_local0[14] = 100
            end
        end
    elseif f2_local3 >= 3 then
        f2_local0[1] = 250
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 250
        f2_local0[5] = 0
        f2_local0[9] = 0
        f2_local0[7] = 0
        f2_local0[8] = 250
        f2_local0[10] = 0
        f2_local0[11] = 250
        f2_local0[12] = 0
        f2_local0[23] = 0
        if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
            f2_local0[13] = 0
            f2_local0[14] = 200
        end
    elseif f2_local3 >= 1 then
        f2_local0[1] = 150
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 200
        f2_local0[5] = 0
        f2_local0[9] = 0
        f2_local0[7] = 200
        f2_local0[8] = 0
        f2_local0[10] = 0
        f2_local0[11] = 250
        f2_local0[12] = 200
        f2_local0[20] = 0
        f2_local0[23] = 0
        if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
            f2_local0[13] = 0
            f2_local0[14] = 200
        end
    else
        f2_local0[12] = 900
        f2_local0[20] = 100
        f2_local0[23] = 1
        f2_local0[24] = 300
        if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
            f2_local0[13] = 0
            f2_local0[14] = 200
        end
    end
    if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 6992) or arg1:HasSpecialEffectId(TARGET_ENE_0, 90) then
        f2_local0[12] = 0
    end
    if InsideRange(arg1, arg2, 180, 270, 0, 3) then
        f2_local0[12] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 3) == false then
        f2_local0[7] = 0
        f2_local0[11] = 0
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 3) == false then
        f2_local0[26] = 0
    end
    if SpaceCheck(arg1, arg2, -90, 3) == false then
        f2_local0[25] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3101, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3015, 15, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[4], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[4], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[4], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3101, 5, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3102, 5, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3017, 5, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3100, 5, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3017, 12, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[11], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3016, 12, f2_local0[11], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3017, 12, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3026, 5, f2_local0[12], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3028, 5, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3005, 7, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3007, 7, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3008, 7, f2_local0[14], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6001, 10, f2_local0[24], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6011, 10, f2_local0[24], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6002, 10, f2_local0[24], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6012, 10, f2_local0[24], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6003, 10, f2_local0[24], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6013, 10, f2_local0[24], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act14)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act26)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act30)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_Act45)
    local f2_local7 = REGIST_FUNC(arg1, arg2, KnightofNoblerot_Sp380000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function KnightofNoblerot_Sp380000_Act01(arg0, arg1, arg2)
    local f3_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f3_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local3 = 50
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 6
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    local f3_local12 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act02(arg0, arg1, arg2)
    local f4_local0 = 6.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.1
    local f4_local2 = 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local3 = 50
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 6
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3011
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    arg0:SetTimer(2, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act03(arg0, arg1, arg2)
    local f5_local0 = 11 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 11 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f5_local2 = 11 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 6
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3015
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    arg0:SetTimer(2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act04(arg0, arg1, arg2)
    local f6_local0 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local3 = 50
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 6
    local f6_local7 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local8 = 3001
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = -1
    local f6_local11 = 60
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act05(arg0, arg1, arg2)
    local f7_local0 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 999
    local f7_local2 = 999
    local f7_local3 = 0
    local f7_local4 = 100
    local f7_local5 = 3
    local f7_local6 = 6
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3101
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 0
    local f7_local11 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local7, TARGET_ENE_0, 999, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act06(arg0, arg1, arg2)
    local f8_local0 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 999
    local f8_local2 = 999
    local f8_local3 = 0
    local f8_local4 = 100
    local f8_local5 = 4
    local f8_local6 = 6
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3102
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act07(arg0, arg1, arg2)
    local f9_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f9_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local3 = 50
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 6
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3003
    local f9_local8 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 0
    local f9_local11 = 0
    local f9_local12 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(2, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, 999, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act08(arg0, arg1, arg2)
    local f10_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f10_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local3 = 80
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 6
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3004
    local f10_local8 = 7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 0
    local f10_local11 = 0
    local f10_local12 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act09(arg0, arg1, arg2)
    local f11_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 999
    local f11_local2 = 999
    local f11_local3 = 0
    local f11_local4 = 100
    local f11_local5 = 3
    local f11_local6 = 8
    local f11_local7 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local8 = 3100
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local10 = 0
    local f11_local11 = 0
    local f11_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local8, TARGET_ENE_0, 999, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act10(arg0, arg1, arg2)
    local f12_local0 = 11 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 11 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f12_local2 = 11 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 4
    local f12_local6 = 8
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3016
    local f12_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 0
    local f12_local10 = 0
    arg0:SetTimer(2, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act11(arg0, arg1, arg2)
    local f13_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f13_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 4
    local f13_local6 = 8
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3017
    local f13_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 0
    local f13_local10 = 0
    arg0:SetTimer(2, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act12(arg0, arg1, arg2)
    local f14_local0 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f14_local2 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local f14_local3 = 50
    local f14_local4 = 0
    local f14_local5 = 2
    local f14_local6 = 4
    local f14_local7 = arg0:GetDist(TARGET_ENE_0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13862) then
        f14_local4 = 100
    end
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local8 = 3028
    local f14_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local10 = 0
    local f14_local11 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 13862) then
        f14_local8 = 3026
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local8, TARGET_ENE_0, 999, f14_local10, f14_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act13(arg0, arg1, arg2)
    local f15_local0 = 5
    local f15_local1 = 3005
    local f15_local2 = TARGET_ENE_0
    local f15_local3 = 10
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local0, f15_local1, f15_local2, f15_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act14(arg0, arg1, arg2)
    local f16_local0 = 5
    local f16_local1 = arg0:GetRandam_Int(3007, 3008)
    local f16_local2 = TARGET_ENE_0
    local f16_local3 = 10
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local0, f16_local1, f16_local2, f16_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act19(arg0, arg1, arg2)
    local f17_local0 = 0
    local f17_local1 = arg0:GetRandam_Int(1, 100)
    local f17_local2 = arg0:GetRandam_Float(4, 5)
    local f17_local3 = arg0:GetRandam_Float(3, 5)
    local f17_local4 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local2, TARGET_ENE_0, f17_local3, TARGET_SELF, true, f17_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act20(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 10
    local f18_local2 = 12
    local f18_local3 = 100
    local f18_local4 = arg0:GetRandam_Int(1, 100)
    local f18_local5 = 9910
    if f18_local1 <= f18_local0 then
        Approach_Act(arg0, arg1, f18_local1, f18_local2, f18_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, f18_local1, TARGET_ENE_0, true, f18_local5)
    
end

function KnightofNoblerot_Sp380000_Act21(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 5
    local f19_local2 = 12
    local f19_local3 = 0
    local f19_local4 = arg0:GetRandam_Int(1, 100)
    local f19_local5 = -1
    if f19_local1 <= f19_local0 then
        Approach_Act(arg0, arg1, f19_local1, f19_local2, f19_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, f19_local1, TARGET_ENE_0, true, f19_local5)
    
end

function KnightofNoblerot_Sp380000_Act22(arg0, arg1, arg2)
    local f20_local0 = 0
    local f20_local1 = arg0:GetRandam_Float(1, 2.5)
    if arg0:GetNumber(2) <= 0 then
        arg0:SetNumber(2, 1)
        arg0:SetTimer(1, 10)
    end
    if SpaceCheck(arg0, arg1, 90, 1) == true then
        if SpaceCheck(arg0, arg1, -90, 1) == true then
            f20_local0 = arg0:GetRandam_Int(0, 1)
        else
            f20_local0 = 1
        end
    elseif SpaceCheck(arg0, arg1, -90, 1) == true then
        f20_local0 = 0
    else

    end
    arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 4)
    arg0:AddObserveArea(2, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, 10)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f20_local1, TARGET_ENE_0, f20_local0, arg0:GetRandam_Int(30, 45), true, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act23(arg0, arg1, arg2)
    local f21_local0 = 0
    local f21_local1 = arg0:GetRandam_Float(1, 2.5)
    if SpaceCheck(arg0, arg1, 90, 1) == true then
        if SpaceCheck(arg0, arg1, -90, 1) == true then
            f21_local0 = arg0:GetRandam_Int(0, 1)
        else
            f21_local0 = 1
        end
    elseif SpaceCheck(arg0, arg1, -90, 1) == true then
        f21_local0 = 0
    else

    end
    arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 4)
    arg0:AddObserveArea(2, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, 10)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f21_local1, TARGET_ENE_0, f21_local0, arg0:GetRandam_Int(30, 45), true, true, IsGuard)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act24(arg0, arg1, arg2)
    local f22_local0 = 6001
    if not arg0:IsFinishTimer(3) or arg0:HasSpecialEffectId(TARGET_SELF, 13862) then
        arg0:SetTimer(3, 2)
        f22_local0 = 6011
    end
    arg0:SetTimer(2, 5)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f22_local0, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
    
end

function KnightofNoblerot_Sp380000_Act25(arg0, arg1, arg2)
    local f23_local0 = AI_DIR_TYPE_L
    local f23_local1 = 6002
    arg0:SetTimer(2, 5)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f23_local1, TARGET_ENE_0, 0, f23_local0, 3)
    
end

function KnightofNoblerot_Sp380000_Act26(arg0, arg1, arg2)
    local f24_local0 = AI_DIR_TYPE_R
    local f24_local1 = 6003
    arg0:SetTimer(2, 5)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f24_local1, TARGET_ENE_0, 0, f24_local0, 3)
    
end

function KnightofNoblerot_Sp380000_Act29(arg0, arg1, arg2)
    local f25_local0 = -1
    if not arg0:IsFinishTimer(3) then
        f25_local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20), f25_local0, GUARD_GOAL_DESIRE_RET_Continue, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act30(arg0, arg1, arg2)
    local f26_local0 = 3013
    local f26_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f26_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local3 = 0
    local f26_local4 = 0
    local f26_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f26_local0, TARGET_ENE_0, 999, f26_local3, f26_local4, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act40(arg0, arg1, arg2)
    local f27_local0 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2.5
    local f27_local1 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f27_local2 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f27_local3 = 100
    local f27_local4 = 100
    local f27_local5 = 4
    local f27_local6 = 8
    Approach_Act_Flex(arg0, arg1, f27_local0, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5, f27_local6)
    local f27_local7 = 3026
    local f27_local8 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f27_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local10 = 0
    local f27_local11 = 0
    local f27_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f27_local7, TARGET_ENE_0, f27_local8, f27_local10, f27_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act41(arg0, arg1, arg2)
    local f28_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f28_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f28_local3 = 50
    local f28_local4 = 0
    local f28_local5 = 4
    local f28_local6 = 8
    Approach_Act_Flex(arg0, arg1, f28_local0, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6)
    local f28_local7 = 3000
    local f28_local8 = 3001
    local f28_local9 = 3025
    local f28_local10 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f28_local11 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f28_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local13 = 0
    local f28_local14 = 0
    local f28_local15 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f28_local7, TARGET_ENE_0, f28_local10, f28_local13, f28_local14, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f28_local8, TARGET_ENE_0, f28_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f28_local9, TARGET_ENE_0, f28_local12, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act42(arg0, arg1, arg2)
    local f29_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f29_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f29_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f29_local3 = 50
    local f29_local4 = 0
    local f29_local5 = 4
    local f29_local6 = 8
    Approach_Act_Flex(arg0, arg1, f29_local0, f29_local1, f29_local2, f29_local3, f29_local4, f29_local5, f29_local6)
    local f29_local7 = 3000
    local f29_local8 = 3001
    local f29_local9 = 3017
    local f29_local10 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f29_local11 = 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f29_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f29_local13 = 0
    local f29_local14 = 0
    local f29_local15 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f29_local7, TARGET_ENE_0, f29_local10, f29_local13, f29_local14, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f29_local8, TARGET_ENE_0, f29_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f29_local9, TARGET_ENE_0, f29_local12, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act43(arg0, arg1, arg2)
    local f30_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f30_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f30_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f30_local3 = 50
    local f30_local4 = 0
    local f30_local5 = 4
    local f30_local6 = 8
    Approach_Act_Flex(arg0, arg1, f30_local0, f30_local1, f30_local2, f30_local3, f30_local4, f30_local5, f30_local6)
    local f30_local7 = 3026
    local f30_local8 = 3002
    local f30_local9 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f30_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f30_local11 = 0
    local f30_local12 = 0
    local f30_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f30_local7, TARGET_ENE_0, f30_local9, f30_local11, f30_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f30_local8, TARGET_ENE_0, f30_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act44(arg0, arg1, arg2)
    local f31_local0 = 6.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f31_local1 = 6.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f31_local2 = 6.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f31_local3 = 80
    local f31_local4 = 0
    local f31_local5 = 4
    local f31_local6 = 8
    Approach_Act_Flex(arg0, arg1, f31_local0, f31_local1, f31_local2, f31_local3, f31_local4, f31_local5, f31_local6)
    local f31_local7 = 3011
    local f31_local8 = 3012
    local f31_local9 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f31_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f31_local11 = 0
    local f31_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f31_local7, TARGET_ENE_0, f31_local9, f31_local11, f31_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f31_local8, TARGET_ENE_0, f31_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_Act45(arg0, arg1, arg2)
    local f32_local0 = 2
    local f32_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f32_local2 = 999
    local f32_local3 = 0
    local f32_local4 = 100
    local f32_local5 = 4
    local f32_local6 = 8
    Approach_Act_Flex(arg0, arg1, f32_local0, f32_local1, f32_local2, f32_local3, f32_local4, f32_local5, f32_local6)
    local f32_local7 = 3026
    local f32_local8 = 3012
    local f32_local9 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f32_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f32_local11 = 0
    local f32_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f32_local7, TARGET_ENE_0, f32_local9, f32_local11, f32_local12, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KnightofNoblerot_Sp380000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_KnightofNoblerot_Sp380000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f36_local0 = arg1:GetDist(TARGET_ENE_0)
    local f36_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f36_local2 = arg1:GetRandam_Int(1, 100)
    local f36_local3 = arg1:GetRandam_Int(1, 100)
    local f36_local4 = arg1:GetRandam_Int(1, 100)
    local f36_local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(5025) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, 120, 3.7 - arg1:GetMapHitRadius(TARGET_SELF) - 1) and f36_local2 >= 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 120, 5.2 - arg1:GetMapHitRadius(TARGET_SELF)) and f36_local2 >= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3010, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(5026) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, 120, 4.1 - arg1:GetMapHitRadius(TARGET_SELF) - 1.5) and f36_local3 >= 30 then
                arg2:ClearSubGoal()
                arg1:SetTimer(3, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 120, 5.5 - arg1:GetMapHitRadius(TARGET_SELF)) and f36_local3 >= 50 then
                arg2:ClearSubGoal()
                arg1:SetTimer(3, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(5029) then
            if arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 270, 3.7 - arg1:GetMapHitRadius(TARGET_SELF) - 0.5) then
                arg2:ClearSubGoal()
                arg1:SetTimer(3, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 220, 180, 7 - arg1:GetMapHitRadius(TARGET_SELF) - 1.5) then
                arg2:ClearSubGoal()
                arg1:SetTimer(3, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3014, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(5032) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, 180, 3 - arg1:GetMapHitRadius(TARGET_SELF) - 1.5) and f36_local3 >= 80 then
                arg2:ClearSubGoal()
                arg1:SetTimer(3, 0)
                arg1:SetNumber(1, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3004, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, 180, 5.5 - arg1:GetMapHitRadius(TARGET_SELF) - 1.5) and f36_local3 >= 50 then
                arg2:ClearSubGoal()
                arg1:SetTimer(3, 0)
                arg1:SetNumber(1, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3012, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, 180, 4.6 - arg1:GetMapHitRadius(TARGET_SELF) - 1.5) then
                arg2:ClearSubGoal()
                arg1:SetTimer(3, 0)
                arg1:SetNumber(1, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3029, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg1:SetTimer(3, 0)
                arg1:SetNumber(1, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(1) and not arg1:HasSpecialEffectId(TARGET_SELF, 13864) then
        if f36_local2 * arg1:GetNumber(1) >= 80 and arg1:IsFinishTimer(3) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3101, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f36_local2 * arg1:GetNumber(1) >= 60 and arg1:IsFinishTimer(3) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3102, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Outside_ObserveArea) and not arg1:IsInsideObserve(2) then
        arg2:ClearSubGoal()
        arg1:SetTimer(3, 0)
        arg1:SetNumber(3, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) then
        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
        if f36_local0 <= 4 and arg1:HasSpecialEffectId(TARGET_SELF, 5031) == false then
            if f36_local2 * arg1:GetNumber(1) >= 110 then
                arg2:ClearSubGoal()
                arg1:SetTimer(3, 0)
                arg1:SetNumber(1, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3026, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f36_local2 * arg1:GetNumber(1) >= 90 and not arg1:HasSpecialEffectId(TARGET_SELF, 13862) then
                arg2:ClearSubGoal()
                arg1:SetTimer(3, 0)
                arg1:SetNumber(1, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3101, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f36_local2 * arg1:GetNumber(1) >= 60 and not arg1:HasSpecialEffectId(TARGET_SELF, 13864) then
                arg2:ClearSubGoal()
                arg1:SetTimer(3, 1)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3100, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        if f36_local0 >= 12 then
            if f36_local2 >= 31 then
                if SpaceCheck(arg1, arg2, -90, 5) == true then
                    if SpaceCheck(arg1, arg2, 90, 5) == false then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                        return true
                    elseif f36_local3 >= 51 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                        return true
                    end
                elseif SpaceCheck(arg1, arg2, 90, 5) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_Guard, 1, 9910, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Success, false)
                    return true
                end
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_Guard, 1, 9910, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Failed, false)
                return true
            end
        elseif f36_local0 >= 9 then
            if f36_local2 >= 41 then
                if SpaceCheck(arg1, arg2, -90, 5) == true then
                    if SpaceCheck(arg1, arg2, 90, 5) == false then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                        return true
                    elseif f36_local3 >= 51 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                        return true
                    end
                elseif SpaceCheck(arg1, arg2, 90, 5) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_Guard, 1, 9910, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Success, false)
                    return true
                end
            elseif f36_local2 >= 11 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3015, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_Guard, 1, 9910, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Failed, false)
                return true
            end
        elseif f36_local0 >= 5 then
            if f36_local2 >= 61 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f36_local0 <= 6.3 - arg1:GetMapHitRadius(TARGET_SELF) and f36_local2 >= 11 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_Guard, 1, 9910, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Failed, false)
                return true
            end
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Guard, 1, 9910, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Failed, false)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        arg1:SetTimer(3, 1)
        if arg1:GetNumber(1) <= 0 then
            arg1:SetNumber(1, 0)
        end
        local f36_local6 = arg1:GetDist(TARGET_ENE_0)
        if arg1:HasSpecialEffectAttribute(TARGET_SELF, 307) then
            arg2:ClearSubGoal()
            local f36_local7 = 0.5
            local f36_local8 = TARGET_ENE_0
            local f36_local9 = 10
            local f36_local10 = 0
            local f36_local11 = 0
            local f36_local12 = 0
            local f36_local13 = 3006
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f36_local7, f36_local13, f36_local8, f36_local9, 0, 0, 0)
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_KnightofNoblerot_Sp380000_AfterAttackAct, "KnightofNoblerot_Sp380000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KnightofNoblerot_Sp380000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


