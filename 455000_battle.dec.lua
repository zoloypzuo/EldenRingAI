RegisterTableGoal(GOAL_TyrannoDog455000_Battle, "TyrannoDog455000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TyrannoDog455000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3029)
    arg1:EnableUnfavorableAttackCheck(0, 3030)
    arg1:EnableUnfavorableAttackCheck(0, 3031)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    arg1:EnableUnfavorableAttackCheck(0, 3033)
    arg1:EnableUnfavorableAttackCheck(0, 3034)
    arg1:EnableUnfavorableAttackCheck(0, 3035)
    arg1:EnableUnfavorableAttackCheck(0, 3036)
    arg1:EnableUnfavorableAttackCheck(0, 3037)
    arg1:EnableUnfavorableAttackCheck(0, 3038)
    arg1:EnableUnfavorableAttackCheck(0, 3039)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    if FearOfFire(arg1, arg2, PLAN_SIDEWAYTYPE__DEFAULT) == true then
        return 
    end
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if arg1:HasSpecialEffectId(TARGET_SELF, 14005) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    end
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    local f2_local7 = arg1:GetHpRate(TARGET_SELF)
    local f2_local8 = arg1:GetNumber(2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 14018) and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false and arg1:HasSpecialEffectId(TARGET_SELF, 14019) == false then
        f2_local0[10] = 1000
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku and arg1:HasSpecialEffectId(TARGET_SELF, 14005) == false then
        if f2_local3 >= 22 then
            f2_local0[16] = 100
            f2_local0[21] = 150
        elseif f2_local3 >= 13 then
            f2_local0[16] = 150
            f2_local0[21] = 45
            f2_local0[26] = 45
        elseif f2_local3 >= 8 then
            f2_local0[16] = 150
            f2_local0[26] = 40
        elseif f2_local3 >= 3 then
            f2_local0[16] = 140
            f2_local0[26] = 100
        else
            f2_local0[16] = 70
            f2_local0[26] = 150
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki and arg1:HasSpecialEffectId(TARGET_SELF, 14005) == false then
        if f2_local3 >= 22 then
            f2_local0[11] = 1
            f2_local0[21] = 150
            f2_local0[22] = 50
            f2_local0[28] = 500
        elseif f2_local3 >= 11 then
            f2_local0[11] = 1
            f2_local0[16] = 150
            f2_local0[21] = 100
            f2_local0[22] = 100
            f2_local0[28] = 500
        elseif f2_local3 >= 6 then
            f2_local0[4] = 100
            f2_local0[16] = 200
            f2_local0[28] = 500
        elseif f2_local3 >= 3 then
            f2_local0[12] = 100
            f2_local0[13] = 10
            f2_local0[16] = 150
            f2_local0[17] = 100
            f2_local0[26] = 100
        else
            f2_local0[3] = 10
            f2_local0[16] = 100
            f2_local0[17] = 150
            f2_local0[26] = 150
        end
    elseif InsideRange(arg1, arg2, 45, 30, 0, 2.5) then
        if f2_local3 <= 1 then
            f2_local0[3] = 300
            f2_local0[7] = 500
            f2_local0[18] = 50
        else
            f2_local0[3] = 300
            f2_local0[18] = 50
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14005) then
            f2_local0[11] = 500 * f2_local8
        end
    elseif InsideRange(arg1, arg2, 90, 60, 0, 2.5) then
        if f2_local3 <= 1 then
            f2_local0[1] = 500 * f2_local8
            f2_local0[6] = 100
            f2_local0[7] = 500
            f2_local0[18] = 50
        else
            f2_local0[1] = 300 * f2_local8
            f2_local0[6] = 100
            f2_local0[18] = 50
            if arg1:HasSpecialEffectId(TARGET_SELF, 14005) then
                f2_local0[11] = 500 * f2_local8
            end
        end
    elseif InsideRange(arg1, arg2, -45, 30, 0, 2.5) then
        if f2_local3 <= 1 then
            f2_local0[3] = 300
            f2_local0[8] = 500
            f2_local0[19] = 50
        else
            f2_local0[3] = 300
            f2_local0[19] = 50
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14005) then
            f2_local0[11] = 500 * f2_local8
        end
    elseif InsideRange(arg1, arg2, -90, 60, 0, 2.5) then
        if f2_local3 <= 1 then
            f2_local0[2] = 500 * f2_local8
            f2_local0[5] = 100
            f2_local0[8] = 500
            f2_local0[19] = 50
        else
            f2_local0[2] = 500 * f2_local8
            f2_local0[5] = 100
            f2_local0[19] = 50
            if arg1:HasSpecialEffectId(TARGET_SELF, 14005) then
                f2_local0[11] = 500 * f2_local8
            end
        end
    elseif InsideRange(arg1, arg2, 135, 30, 0, 3) then
        if f2_local3 <= 1.5 then
            f2_local0[1] = 500 * f2_local8
            f2_local0[6] = 100
            f2_local0[7] = 100
            f2_local0[18] = 50
        else
            f2_local0[1] = 500 * f2_local8
            f2_local0[6] = 100
            f2_local0[18] = 50
        end
    elseif InsideRange(arg1, arg2, 165, 30, 0, 3) then
        if f2_local3 <= 1.5 then
            f2_local0[1] = 500 * f2_local8
            f2_local0[6] = 300
            f2_local0[7] = 100
            f2_local0[18] = 50
        else
            f2_local0[1] = 500 * f2_local8
            f2_local0[6] = 300
            f2_local0[18] = 50
        end
    elseif InsideRange(arg1, arg2, -135, 30, 0, 3) then
        if f2_local3 <= 1.5 then
            f2_local0[2] = 500 * f2_local8
            f2_local0[5] = 100
            f2_local0[8] = 100
            f2_local0[19] = 50
        else
            f2_local0[2] = 500 * f2_local8
            f2_local0[5] = 100
            f2_local0[19] = 50
        end
    elseif InsideRange(arg1, arg2, -165, 30, 0, 3) then
        if f2_local3 <= 1.5 then
            f2_local0[2] = 500 * f2_local8
            f2_local0[5] = 300
            f2_local0[8] = 100
            f2_local0[19] = 50
        else
            f2_local0[2] = 500 * f2_local8
            f2_local0[5] = 300
            f2_local0[19] = 50
        end
    elseif InsideRange(arg1, arg2, 180, 180, 3, 20) then
        if f2_local3 <= 5 then
            f2_local0[5] = 300
            f2_local0[6] = 300
        else
            f2_local0[5] = 300
            f2_local0[6] = 300
        end
    elseif f2_local3 >= 10 then
        f2_local0[11] = 300
        f2_local0[16] = 100
        f2_local0[22] = 500
        f2_local0[28] = 800
    elseif f2_local3 >= 6 then
        f2_local0[11] = 500 * f2_local8
        f2_local0[16] = 100
        f2_local0[22] = 500
        f2_local0[28] = 800
    elseif f2_local3 >= 3 then
        f2_local0[4] = 500
        f2_local0[13] = 500
        f2_local0[15] = 50
        f2_local0[16] = 10
        f2_local0[28] = 800
        if arg1:HasSpecialEffectId(TARGET_SELF, 14005) then
            f2_local0[11] = 500 * f2_local8
        end
    else
        if InsideRange(arg1, arg2, 30, 30, 1, 3) then
            f2_local0[3] = 500
            f2_local0[13] = 500
            f2_local0[17] = 50
        elseif InsideRange(arg1, arg2, -30, 30, 1, 3) then
            f2_local0[3] = 500
            f2_local0[13] = 500
            f2_local0[15] = 10
            f2_local0[17] = 50
        else
            f2_local0[3] = 500
            f2_local0[13] = 500
            f2_local0[15] = 10
            f2_local0[17] = 50
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14005) then
            f2_local0[11] = 500 * f2_local8
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5020) == true or arg1:HasSpecialEffectId(TARGET_SELF, 14012) == true or arg1:HasSpecialEffectId(TARGET_SELF, 14013) == true then
        f2_local0[10] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14019) == false and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 999) and f2_local3 > 10 then
        f2_local0[10] = 1500
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14005) then
        f2_local0[15] = 0
        f2_local0[16] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14025) == false then
        f2_local0[28] = 0
    end
    if arg1:GetNumber(4) == 0 then
        arg1:SetNumber(4, 1)
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 5)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[2], 5)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 3, f2_local0[3], 5)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[4], 5)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 3, f2_local0[5], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3005, 3, f2_local0[5], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 6002, 3, f2_local0[5], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 6003, 3, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3004, 3, f2_local0[6], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3005, 3, f2_local0[6], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 6002, 3, f2_local0[6], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 6003, 3, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3021, 30, f2_local0[9], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3012, 15, f2_local0[11], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3013, 15, f2_local0[11], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3014, 15, f2_local0[11], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3017, 15, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3015, 5, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3016, 5, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3013, 10, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3014, 10, f2_local0[14], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 2002, 5, f2_local0[16], 10)
    f2_local0[16] = SetCoolTime(arg1, arg2, 2003, 5, f2_local0[16], 10)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3004, 3, f2_local0[18], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3005, 3, f2_local0[18], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 6002, 3, f2_local0[19], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 6003, 3, f2_local0[19], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3004, 3, f2_local0[19], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3005, 3, f2_local0[19], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 6002, 3, f2_local0[19], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 6003, 3, f2_local0[19], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3019, 10, f2_local0[22], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 2001, 5, f2_local0[15], 1)
    f2_local0[28] = SetCoolTime(arg1, arg2, 3027, 15, f2_local0[28], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act28)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act40)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act49)
    f2_local1[50] = REGIST_FUNC(arg1, arg2, TyrannoDog455000_Act50)
    local f2_local9 = REGIST_FUNC(arg1, arg2, TyrannoDog455000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function TyrannoDog455000_Act01(arg0, arg1, arg2)
    local f3_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f3_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f3_local3 = 50
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    arg0:SetNumber(1, 0)
    arg0:SetNumber(2, 0)
    local f3_local7 = 3000
    local f3_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act02(arg0, arg1, arg2)
    local f4_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f4_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f4_local3 = 50
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    arg0:SetNumber(1, 0)
    arg0:SetNumber(2, 0)
    local f4_local7 = 3001
    local f4_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act03(arg0, arg1, arg2)
    local f5_local0 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f5_local2 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f5_local3 = 50
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    local f5_local7 = 3002
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act04(arg0, arg1, arg2)
    local f6_local0 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = -999
    local f6_local2 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3003
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, 999, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local f7_local3 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f7_local4 = 50
    local f7_local5 = 0
    local f7_local6 = 4
    local f7_local7 = 8
    local f7_local8 = 3004
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 0
    local f7_local11 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        f7_local8 = 3005
    end
    if f7_local0 < 2 then
        f7_local8 = 3025
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            f7_local8 = 3026
        end
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local8, TARGET_ENE_0, 999, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f8_local3 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f8_local4 = 50
    local f8_local5 = 0
    local f8_local6 = 4
    local f8_local7 = 8
    local f8_local8 = 3005
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 0
    local f8_local11 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        f8_local8 = 3004
    end
    if f8_local0 < 2 then
        f8_local8 = 3026
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            f8_local8 = 3025
        end
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local8, TARGET_ENE_0, 999, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act07(arg0, arg1, arg2)
    local f9_local0 = 1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local2 = 1 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f9_local3 = 50
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    local f9_local7 = 3006
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act08(arg0, arg1, arg2)
    local f10_local0 = 1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local2 = 1 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f10_local3 = 50
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    local f10_local7 = 3010
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act09(arg0, arg1, arg2)
    local f11_local0 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f11_local2 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f11_local3 = 50
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 8
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3021
    local f11_local8 = 99
    local f11_local9 = 99
    local f11_local10 = 0
    local f11_local11 = 0
    local f11_local12 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f11_local7, TARGET_ENE_0, f11_local8, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act10(arg0, arg1, arg2)
    local f12_local0 = 3018
    local f12_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 0
    local f12_local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 14018) then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local0, TARGET_ENE_0, 999, f12_local2, f12_local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local0, TARGET_ENE_0, 999, f12_local2, f12_local3, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act11(arg0, arg1, arg2)
    local f13_local0 = 18 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = -999
    local f13_local2 = 18 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 4
    local f13_local6 = 8
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    arg0:SetNumber(1, 0)
    arg0:SetNumber(2, 0)
    local f13_local7 = 3012
    local f13_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 0
    local f13_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local7, TARGET_ENE_0, 999, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act12(arg0, arg1, arg2)
    local f14_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = -999
    local f14_local2 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 4
    local f14_local6 = 8
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3015
    local f14_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local9 = 0
    local f14_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local7, TARGET_ENE_0, 999, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act13(arg0, arg1, arg2)
    local f15_local0 = 5.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = -999
    local f15_local2 = 5.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 4
    local f15_local6 = 8
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 3016
    local f15_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local9 = 0
    local f15_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local7, TARGET_ENE_0, 999, f15_local9, f15_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act14(arg0, arg1, arg2)
    local f16_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = -999
    local f16_local2 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 4
    local f16_local6 = 8
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    arg0:SetNumber(1, 0)
    arg0:SetNumber(2, 0)
    local f16_local7 = 3017
    local f16_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local9 = 0
    local f16_local10 = 0
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local7, TARGET_ENE_0, 999, f16_local9, f16_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act15(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 10
    local f17_local2 = arg0:GetRandam_Int(3, 5)
    local f17_local3 = arg0:GetRandam_Int(3, 7)
    local f17_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f17_local2, TARGET_ENE_0, f17_local3, TARGET_ENE_0, true, -1)
    
end

function TyrannoDog455000_Act16(arg0, arg1, arg2)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 999) then
        local f18_local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, 0, arg0:GetRandam_Int(90, 120), true, true, -1)
        f18_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    else
        local f18_local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, 1, arg0:GetRandam_Int(90, 120), true, true, -1)
        f18_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act17(arg0, arg1, arg2)
    arg0:SetTimer(1, 5)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    
end

function TyrannoDog455000_Act18(arg0, arg1, arg2)
    arg0:SetTimer(1, 5)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    
end

function TyrannoDog455000_Act19(arg0, arg1, arg2)
    arg0:SetTimer(1, 5)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    
end

function TyrannoDog455000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act21(arg0, arg1, arg2)
    local f23_local0 = 0
    local f23_local1 = arg0:GetRandam_Int(1, 100)
    local f23_local2 = arg0:GetRandam_Int(3, 5)
    local f23_local3 = arg0:GetRandam_Int(3, 5) * 3
    local f23_local4 = -1
    local f23_local5 = true
    local f23_local6 = arg0:GetDist(TARGET_ENE_0)
    if f23_local6 >= 15 then
        f23_local5 = false
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f23_local2, TARGET_ENE_0, f23_local3, TARGET_SELF, f23_local5, f23_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act22(arg0, arg1, arg2)
    local f24_local0 = 16 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local1 = -999
    local f24_local2 = 16 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local3 = 100
    local f24_local4 = 0
    local f24_local5 = 4
    local f24_local6 = 8
    Approach_Act_Flex(arg0, arg1, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6)
    arg0:SetNumber(1, 0)
    arg0:SetNumber(2, 0)
    local f24_local7 = 3019
    local f24_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local9 = 0
    local f24_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f24_local7, TARGET_ENE_0, 999, f24_local9, f24_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act23(arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = 10
    local f25_local2 = arg0:GetRandam_Float(10, 15)
    local f25_local3 = arg0:GetRandam_Float(50, 100)
    local f25_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f25_local2, TARGET_ENE_0, f25_local3, TARGET_SELF, false, -1)
    
end

function TyrannoDog455000_Act24(arg0, arg1, arg2)
    local f26_local0 = 20000
    local f26_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local2 = 0
    local f26_local3 = 0
    local f26_local4 = arg0:GetRandam_Int(0, 100)
    if f26_local4 <= 50 then
        f26_local0 = 20007
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f26_local0, TARGET_ENE_0, 999, f26_local2, f26_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act25(arg0, arg1, arg2)
    local f27_local0 = 20001
    local f27_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local2 = 0
    local f27_local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5033) then
        f27_local0 = 20008
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f27_local0, TARGET_ENE_0, 999, f27_local2, f27_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act26(arg0, arg1, arg2)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    local f28_local1 = 10
    local f28_local2 = arg0:GetRandam_Int(3, 6)
    local f28_local3 = arg0:GetRandam_Int(3, 7) * 3
    local f28_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f28_local2, TARGET_ENE_0, f28_local3, TARGET_ENE_0, true, -1)
    
end

function TyrannoDog455000_Act27(arg0, arg1, arg2)
    local f29_local0 = 3023
    local f29_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f29_local2 = 0
    local f29_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f29_local0, TARGET_ENE_0, 999, f29_local2, f29_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act28(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14026)
    local f30_local0 = arg0:GetDist(TARGET_ENE_0)
    if f30_local0 > 7.5 then
        local f30_local1 = 15
        local f30_local2 = 0
        local f30_local3 = 999
        local f30_local4 = 100
        local f30_local5 = 0
        local f30_local6 = 4
        local f30_local7 = 8
        Approach_Act_Flex(arg0, arg1, f30_local1, f30_local2, f30_local3, f30_local4, f30_local5, f30_local6, f30_local7)
        local f30_local8 = 3027
        local f30_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f30_local10 = 0
        local f30_local11 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f30_local8, TARGET_ENE_0, 999, f30_local10, f30_local11, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act49(arg0, arg1, arg2)
    local f32_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f32_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local f32_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f32_local3 = 50
    local f32_local4 = 0
    local f32_local5 = 4
    local f32_local6 = 8
    local f32_local7 = 3004
    local f32_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f32_local9 = 0
    local f32_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f32_local7, TARGET_ENE_0, 999, f32_local9, f32_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3013, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_Act50(arg0, arg1, arg2)
    local f33_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f33_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f33_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f33_local3 = 50
    local f33_local4 = 0
    local f33_local5 = 4
    local f33_local6 = 8
    local f33_local7 = 3005
    local f33_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f33_local9 = 0
    local f33_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f33_local7, TARGET_ENE_0, 999, f33_local9, f33_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3014, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TyrannoDog455000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_TyrannoDog455000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f37_local0 = arg1:GetDist(TARGET_ENE_0)
    local f37_local1 = arg1:GetRandam_Int(1, 100)
    local f37_local2 = arg1:GetRandam_Float(8, 15)
    local f37_local3 = arg1:GetRandam_Float(5, 10)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(5025) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 120, 9 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3008, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(5030) then
            if not not arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 12) or f37_local0 < 2.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(5027) then
            if not not arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 120, 10 + arg1:GetMapHitRadius(TARGET_SELF)) or f37_local0 < 2.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(5028) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 3) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3015, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 7.5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3003, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 9.5) then
                if f37_local1 * arg1:GetNumber(1) >= 80 and f37_local2 <= arg1:GetAttackPassedTime(3013) then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(1, 0)
                    arg1:SetNumber(2, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                elseif f37_local1 >= 60 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3003, TARGET_ENE_0, 999, 0, 0)
                elseif f37_local2 <= arg1:GetAttackPassedTime(3019) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3019, TARGET_ENE_0, 999, 0, 0)
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 12.5) then
                if f37_local1 * arg1:GetNumber(1) >= 80 and f37_local2 <= arg1:GetAttackPassedTime(3013) then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(1, 0)
                    arg1:SetNumber(2, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local2 <= arg1:GetAttackPassedTime(3019) then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(1, 0)
                    arg1:SetNumber(2, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(5029) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 3) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3015, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 7.5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3003, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 9.5) then
                if f37_local1 * arg1:GetNumber(1) >= 80 and f37_local2 <= arg1:GetAttackPassedTime(3014) then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(1, 0)
                    arg1:SetNumber(2, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                elseif f37_local1 >= 60 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3003, TARGET_ENE_0, 999, 0, 0)
                elseif f37_local2 <= arg1:GetAttackPassedTime(3019) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3019, TARGET_ENE_0, 999, 0, 0)
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 15.5) then
                if f37_local1 * arg1:GetNumber(1) >= 80 and f37_local2 <= arg1:GetAttackPassedTime(3014) then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(1, 0)
                    arg1:SetNumber(2, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif f37_local2 <= arg1:GetAttackPassedTime(3019) then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(1, 0)
                    arg1:SetNumber(2, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(14026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 20 + arg1:GetMapHitRadius(TARGET_SELF)) and f37_local0 > 10 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3028, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
        if arg1:GetNumber(1) >= 2 then
            arg1:SetNumber(2, arg1:GetNumber(2) + 10)
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_TyrannoDog455000_AfterAttackAct, "TyrannoDog455000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TyrannoDog455000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


