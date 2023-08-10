RegisterTableGoal(GOAL_LostKnight_SwordShield_301000_Battle, "LostKnight_SwordShield_301000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LostKnight_SwordShield_301000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(10, 0)
    arg1:SetNumber(1, 0)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetEventRequest()
    local f2_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 10164)
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 10840)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 10850)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 10851)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 11139)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 10880)
    arg1:SetStringIndexedNumber("c3010_DashRate", 0)
    arg1:SetStringIndexedNumber("c3010_WalkDist", 1)
    arg1:SetStringIndexedNumber("c3010_RunDist", 1)
    arg1:SetStringIndexedNumber("c3010_GuardRate", 100)
    if f2_local11 == true and arg1:GetNumber(1) ~= 1 then
        arg1:SetStringIndexedNumber("c3010_GuardRate", 0)
    end
    arg1:SetStringIndexedNumber("c3010_WalkLife", 1)
    if f2_local10 == true then
        arg1:SetStringIndexedNumber("c3010_DashRate", 0)
        arg1:SetStringIndexedNumber("c3010_WalkDist", 0)
        arg1:SetStringIndexedNumber("c3010_RunDist", 999)
        arg1:SetStringIndexedNumber("c3010_GuardRate", 100)
        arg1:SetStringIndexedNumber("c3010_WalkLife", 1)
    elseif f2_local8 == true then
        arg1:SetStringIndexedNumber("c3010_DashRate", 100)
        arg1:SetStringIndexedNumber("c3010_WalkDist", 0)
        arg1:SetStringIndexedNumber("c3010_RunDist", 999)
        arg1:SetStringIndexedNumber("c3010_GuardRate", 0)
        arg1:SetStringIndexedNumber("c3010_WalkLife", 0)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10896)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10897)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10874)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 10859)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_TRUNK_COLLAPSE)
    local f2_local12 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local10 == true then
        if arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 90, 20 - arg1:GetMapHitRadius(TARGET_SELF)) then
                f2_local0[21] = 1
            elseif f2_local3 >= 10 then
                f2_local0[1] = 20
                f2_local0[4] = 30
                f2_local0[18] = 30
                f2_local0[23] = 100
                f2_local0[24] = 200
            elseif f2_local3 >= 6.5 then
                f2_local0[1] = 20
                f2_local0[4] = 30
                f2_local0[5] = 20
                f2_local0[18] = 30
                f2_local0[23] = 100
                f2_local0[24] = 200
            elseif f2_local3 >= 3.5 then
                f2_local0[1] = 40
                f2_local0[2] = 15
                f2_local0[4] = 30
                f2_local0[5] = 30
                f2_local0[7] = 30
                f2_local0[8] = 30
                f2_local0[17] = 30
                f2_local0[18] = 30
                f2_local0[24] = 200
            else
                f2_local0[1] = 30
                f2_local0[2] = 20
                f2_local0[3] = 25
                f2_local0[5] = 25
                f2_local0[6] = 20
                f2_local0[7] = 20
                f2_local0[8] = 20
                f2_local0[17] = 20
                f2_local0[23] = 200
                f2_local0[24] = 200
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 90, 20 - arg1:GetMapHitRadius(TARGET_SELF)) then
            f2_local0[21] = 1
        elseif f2_local3 >= 10 then
            f2_local0[1] = 20
            f2_local0[4] = 30
            f2_local0[18] = 30
            f2_local0[22] = 40
        elseif f2_local3 >= 6.5 then
            f2_local0[1] = 20
            f2_local0[4] = 30
            f2_local0[5] = 20
            f2_local0[18] = 30
            f2_local0[22] = 30
            f2_local0[23] = 20
        elseif f2_local3 >= 3.5 then
            f2_local0[1] = 40
            f2_local0[2] = 15
            f2_local0[4] = 30
            f2_local0[5] = 30
            f2_local0[7] = 30
            f2_local0[8] = 30
            f2_local0[17] = 30
            f2_local0[18] = 30
            f2_local0[22] = 15
            f2_local0[23] = 20
        else
            f2_local0[1] = 30
            f2_local0[2] = 20
            f2_local0[3] = 25
            f2_local0[5] = 25
            f2_local0[6] = 20
            f2_local0[7] = 20
            f2_local0[8] = 20
            f2_local0[17] = 20
            f2_local0[23] = 20
        end
    elseif f2_local11 == true then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 90, 20 - arg1:GetMapHitRadius(TARGET_SELF)) then
            f2_local0[21] = 1
        elseif f2_local3 >= 10 then
            f2_local0[1] = 20
            f2_local0[4] = 30
            f2_local0[11] = 40
            f2_local0[12] = 20
            f2_local0[18] = 30
        elseif f2_local3 >= 6.5 then
            f2_local0[1] = 20
            f2_local0[4] = 30
            f2_local0[5] = 20
            f2_local0[11] = 30
            f2_local0[12] = 20
            f2_local0[18] = 30
        elseif f2_local3 >= 3.5 then
            f2_local0[1] = 40
            f2_local0[2] = 15
            f2_local0[4] = 30
            f2_local0[5] = 30
            f2_local0[7] = 30
            f2_local0[8] = 30
            f2_local0[12] = 40
            f2_local0[13] = 40
            f2_local0[17] = 30
            f2_local0[18] = 30
        else
            f2_local0[1] = 30
            f2_local0[2] = 20
            f2_local0[3] = 25
            f2_local0[5] = 25
            f2_local0[6] = 20
            f2_local0[7] = 20
            f2_local0[8] = 20
            f2_local0[12] = 20
            f2_local0[13] = 40
            f2_local0[17] = 20
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 90, 20 - arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[21] = 1
    elseif f2_local3 >= 10 then
        f2_local0[1] = 20
        f2_local0[4] = 30
        f2_local0[18] = 30
        f2_local0[22] = 40
    elseif f2_local3 >= 6.5 then
        f2_local0[1] = 20
        f2_local0[4] = 30
        f2_local0[5] = 20
        f2_local0[18] = 30
        f2_local0[22] = 30
        f2_local0[23] = 20
    elseif f2_local3 >= 3.5 then
        f2_local0[1] = 40
        f2_local0[2] = 15
        f2_local0[4] = 30
        f2_local0[5] = 30
        f2_local0[7] = 30
        f2_local0[8] = 30
        f2_local0[17] = 30
        f2_local0[18] = 30
        f2_local0[22] = 15
        f2_local0[23] = 20
    else
        f2_local0[1] = 30
        f2_local0[2] = 20
        f2_local0[3] = 25
        f2_local0[5] = 25
        f2_local0[6] = 20
        f2_local0[7] = 20
        f2_local0[8] = 20
        f2_local0[17] = 20
        f2_local0[23] = 20
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[2], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3015, 8, f2_local0[2], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3009, 8, f2_local0[7], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3008, 20, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3010, 5, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 1200, 30, f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3009, 5, f2_local0[7], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3002, 8, f2_local0[8], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3019, 20, f2_local0[17], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3020, 70, f2_local0[18], 0)
    local f2_local13 = arg1:HasSpecialEffectId(TARGET_SELF, 10164)
    local f2_local14 = arg1:HasSpecialEffectId(TARGET_SELF, 10840)
    local f2_local15 = arg1:HasSpecialEffectId(TARGET_SELF, 10850)
    local f2_local16 = arg1:HasSpecialEffectId(TARGET_SELF, 10851)
    if f2_local15 == false then
        f2_local0[17] = 0
    end
    if f2_local14 == false then
        f2_local0[18] = 0
    elseif arg1:GetHpRate(TARGET_SELF) < 0.5 then
        f2_local0[18] = f2_local0[18] * 1.3
        if arg1:GetHpRate(TARGET_SELF) < 0.4 then
            f2_local0[18] = f2_local0[18] * 1.3
            if arg1:GetHpRate(TARGET_SELF) < 0.2 then
                f2_local0[18] = f2_local0[18] * 1.3
            end
        end
    elseif arg1:GetHpRate(TARGET_SELF) > 0.6 then
        f2_local0[18] = 0
    end
    if f2_local14 == false then
        f2_local0[6] = 0
    end
    if f2_local11 == true then
        f2_local0[6] = 0
    end
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 150, 90, 1.8) then
        f2_local0[2] = f2_local0[2] * 4
        f2_local0[5] = f2_local0[5] * 4
        f2_local0[7] = f2_local0[7] * 4
    end
    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
        f2_local0[2] = f2_local0[2] * 2
        f2_local0[3] = f2_local0[3] * 2
        f2_local0[7] = f2_local0[7] * 2
        f2_local0[17] = f2_local0[17] * 3
    end
    if arg1:GetHpRate(TARGET_SELF) == 1 and f2_local15 == false then
        f2_local0[22] = 0
    end
    if f2_local11 == true and arg1:GetNumber(1) ~= 1 then
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
    end
    local f2_local17 = arg1:HasSpecialEffectId(TARGET_SELF, 10859)
    if f2_local17 then
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
    end
    f2_local17 = 0.5
    arg1:SetStringIndexedNumber("ExistMeshOnLine_F", arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 25 + f2_local17, f2_local17, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_B", arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 25 + f2_local17, f2_local17, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_L", arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 25 + f2_local17, f2_local17, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_R", arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 25 + f2_local17, f2_local17, 0))
    f2_local1[1] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act08)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act13)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act15)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act18)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act25)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act31)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_Act47)
    local f2_local18 = REGIST_FUNC(arg1, arg2, LostKnight_SwordShield_301000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local18, f2_local2)
    
end

function LostKnight_SwordShield_301000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(1, 1)
    local f3_local1 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = (4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 6) * arg0:GetStringIndexedNumber("c3010_WalkDist")
    local f3_local3 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 6 + arg0:GetStringIndexedNumber("c3010_RunDist")
    local f3_local4 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f3_local5 = arg0:GetStringIndexedNumber("c3010_GuardRate")
    local f3_local6 = 3 * arg0:GetStringIndexedNumber("c3010_WalkLife")
    local f3_local7 = 4
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 3000
    local f3_local9 = 3001
    local f3_local10 = 3002
    local f3_local11 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local12 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local13 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local14 = 0
    local f3_local15 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f3_local8, TARGET_ENE_0, f3_local11, f3_local14, f3_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f3_local9, TARGET_ENE_0, f3_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10871)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10873)
    arg0:SetNumber(1, 1)
    local f4_local1 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = (4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 6) * arg0:GetStringIndexedNumber("c3010_WalkDist")
    local f4_local3 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 6 + arg0:GetStringIndexedNumber("c3010_RunDist")
    local f4_local4 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f4_local5 = arg0:GetStringIndexedNumber("c3010_GuardRate")
    local f4_local6 = 3 * arg0:GetStringIndexedNumber("c3010_WalkLife")
    local f4_local7 = 4
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    if f4_local0 > 70 then
        local f4_local8 = 3003
        local f4_local9 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local10 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local11 = 0
        local f4_local12 = 180
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f4_local8, TARGET_ENE_0, f4_local9, f4_local11, f4_local12, 0, 0)
    else
        local f4_local8 = 3015
        local f4_local9 = 3000
        local f4_local10 = 3001
        local f4_local11 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local12 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local13 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local14 = 0
        local f4_local15 = 90
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f4_local8, TARGET_ENE_0, f4_local11, f4_local14, f4_local15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f4_local9, TARGET_ENE_0, f4_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f4_local10, TARGET_ENE_0, f4_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(1, 1)
    local f5_local1 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = (3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 6) * arg0:GetStringIndexedNumber("c3010_WalkDist")
    local f5_local3 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 6 + arg0:GetStringIndexedNumber("c3010_RunDist")
    local f5_local4 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f5_local5 = arg0:GetStringIndexedNumber("c3010_GuardRate")
    local f5_local6 = 3 * arg0:GetStringIndexedNumber("c3010_WalkLife")
    local f5_local7 = 4
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 3006
    local f5_local9 = 3007
    local f5_local10 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local11 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local12 = 0
    local f5_local13 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f5_local8, TARGET_ENE_0, f5_local10, f5_local12, f5_local13, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f5_local9, TARGET_ENE_0, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(1, 1)
    local f6_local1 = 11.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = (11.3 - arg0:GetMapHitRadius(TARGET_SELF) + 6) * arg0:GetStringIndexedNumber("c3010_WalkDist")
    local f6_local3 = 11.3 - arg0:GetMapHitRadius(TARGET_SELF) + 6 + arg0:GetStringIndexedNumber("c3010_RunDist")
    local f6_local4 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f6_local5 = arg0:GetStringIndexedNumber("c3010_GuardRate")
    local f6_local6 = 3 * arg0:GetStringIndexedNumber("c3010_WalkLife")
    local f6_local7 = 4
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 3015
    local f6_local9 = 3008
    local f6_local10 = 11.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local11 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local12 = 0
    local f6_local13 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f6_local8, TARGET_ENE_0, f6_local10, f6_local12, f6_local13, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f6_local9, TARGET_ENE_0, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(1, 1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16479)
    local f7_local2 = 4.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = (4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 6) * arg0:GetStringIndexedNumber("c3010_WalkDist")
    local f7_local4 = 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 6 + arg0:GetStringIndexedNumber("c3010_RunDist")
    local f7_local5 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f7_local6 = arg0:GetStringIndexedNumber("c3010_GuardRate")
    local f7_local7 = 3 * arg0:GetStringIndexedNumber("c3010_WalkLife")
    local f7_local8 = 4
    Approach_Act_Flex(arg0, arg1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7, f7_local8)
    local f7_local9 = 3010
    local f7_local10 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local11 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local12 = 0
    local f7_local13 = 90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local9, TARGET_ENE_0, f7_local10, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act06(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 10
    local f8_local2 = 30
    local f8_local3 = arg0:GetRandam_Int(1, 100)
    if f8_local1 <= f8_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Int(3.5, 6.5), TARGET_ENE_0, f8_local1, TARGET_ENE_0, true, 9920)
    elseif f8_local1 / 2 <= f8_local0 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(3.5, 6.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9920)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Int(3.5, 6.5), TARGET_ENE_0, f8_local1, TARGET_ENE_0, true, 9920)
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 1.5, TARGET_SELF, true, 9920)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetRandam_Int(1, 100)
    local f9_local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(1, 1)
    local f9_local2 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = (3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 6) * arg0:GetStringIndexedNumber("c3010_WalkDist")
    local f9_local4 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 6 + arg0:GetStringIndexedNumber("c3010_RunDist")
    local f9_local5 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local f9_local6 = arg0:GetStringIndexedNumber("c3010_GuardRate")
    local f9_local7 = 3 * arg0:GetStringIndexedNumber("c3010_WalkLife")
    local f9_local8 = 4
    Approach_Act_Flex(arg0, arg1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7, f9_local8)
    local f9_local9 = 3009
    local f9_local10 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local11 = 0
    local f9_local12 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f9_local9, TARGET_ENE_0, DIST_None, f9_local11, f9_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(1, 1)
    local f10_local1 = arg0:GetDist(TARGET_ENE_0)
    local f10_local2 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local3 = 30
    local f10_local4 = true
    local f10_local5 = arg0:GetRandam_Int(1, 100)
    local f10_local6 = 9910
    if f10_local2 <= f10_local1 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, f10_local2, TARGET_ENE_0, f10_local4, f10_local6)
    else
        f10_local6 = 9910
        if sirType == true then
            f10_local6 = 9920
        end
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f10_local6)
    end
    local f10_local7 = 3002
    local f10_local8 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 0
    local f10_local11 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f10_local7, TARGET_ENE_0, f10_local8, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act11(arg0, arg1, arg2)
    local f11_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act12(arg0, arg1, arg2)
    local f12_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    arg0:SetNumber(1, 1)
    if f12_local0 > 50 then
        arg0:SetNumber(15, 3)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
    else
        arg0:SetNumber(15, 4)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act13(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10876)
    arg0:SetNumber(1, 1)
    local f13_local0 = arg0:GetRandam_Int(1, 100)
    local f13_local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act15(arg0, arg1, arg2)
    local f14_local0 = 3015
    local f14_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 0
    local f14_local3 = 90
    arg0:SetNumber(1, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act17(arg0, arg1, arg2)
    local f15_local0 = 3019
    local f15_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 3
    local f15_local3 = 90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f15_local0, TARGET_ENE_0, f15_local1, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act18(arg0, arg1, arg2)
    local f16_local0 = 3020
    local f16_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f16_local0, TARGET_SELF, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1.5, TARGET_ENE_0, 90, 9910, GUARD_GOAL_DESIRE_RET_Continue, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act22(arg0, arg1, arg2)
    local f18_local0 = arg0:GetRandam_Int(1, 100)
    local f18_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 10840)
    local f18_local2 = arg0:HasSpecialEffectId(TARGET_SELF, 10850)
    local f18_local3 = 3
    local f18_local4 = 0
    local f18_local5 = 999
    local f18_local6 = 100
    local f18_local7 = 0
    local f18_local8 = 0
    local f18_local9 = 4
    Approach_Act_Flex(arg0, arg1, f18_local3, f18_local4, f18_local5, f18_local6, f18_local7, f18_local8, f18_local9)
    if f18_local0 > 60 then
        local f18_local10 = 3000
        local f18_local11 = 3001
        local f18_local12 = 3002
        local f18_local13 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
        local f18_local14 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF)
        local f18_local15 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
        local f18_local16 = 0
        local f18_local17 = 90
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f18_local10, TARGET_ENE_0, f18_local13, f18_local16, f18_local17, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, f18_local11, TARGET_ENE_0, f18_local14, 0, 0)
    elseif f18_local0 > 30 then
        local f18_local10 = 3010
        local f18_local11 = 3005
        local f18_local12 = 3001
        local f18_local13 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
        local f18_local14 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF)
        local f18_local15 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
        local f18_local16 = 0
        local f18_local17 = 90
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local10, TARGET_ENE_0, f18_local13, 0, 90)
    else
        local f18_local10 = 3002
        local f18_local11 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
        local f18_local12 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF)
        local f18_local13 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
        local f18_local14 = 0
        local f18_local15 = 90
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local10, TARGET_ENE_0, f18_local11, 0, 90)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act23(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local2 = 30
    local f19_local3 = true
    local f19_local4 = arg0:GetRandam_Int(1, 100)
    local f19_local5 = arg0:HasSpecialEffectId(TARGET_SELF, 10840)
    local f19_local6 = -1
    if f19_local0 <= 4.1 - arg0:GetMapHitRadius(TARGET_SELF) or arg0:GetHpRate(TARGET_SELF) <= 0.4 or arg0:GetTargetSARate(TARGET_SELF) <= 0.5 then
        f19_local6 = 9910
    end
    local f19_local7 = arg0:GetDist(TARGET_ENE_0)
    local f19_local8 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local9 = 30
    local f19_local10 = true
    local f19_local11 = arg0:GetRandam_Int(1, 100)
    local f19_local12 = arg0:HasSpecialEffectId(TARGET_SELF, 10840)
    local f19_local13 = 9910
    if f19_local8 <= f19_local7 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, f19_local8, TARGET_ENE_0, f19_local10, f19_local13)
    else
        local f19_local14 = -1
        f19_local14 = 9910
        if f19_local12 == true then
            f19_local14 = 9920
        end
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f19_local14)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act24(arg0, arg1, arg2)
    local f20_local0 = arg0:GetRandam_Int(1, 100)
    local f20_local1 = 0
    local f20_local2 = arg0:GetDist(TARGET_ENE_0)
    local f20_local3 = -1
    if f20_local0 <= f20_local1 then
        f20_local3 = 9910
    end
    if f20_local2 >= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, arg0:GetRandam_Float(6, 7.5), TARGET_ENE_0, true, 9910)
    elseif f20_local2 <= 4 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 6, TARGET_ENE_0, true, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act25(arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(4, 1)
    if f21_local0 > 50 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, arg0:GetRandam_Int(1, 4), TARGET_ENE_0, 0, TARGET_SELF, true, 9910, AI_DIR_TYPE_ToL, arg0:GetRandam_Int(2, 4))
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, arg0:GetRandam_Int(1, 4), TARGET_ENE_0, 0, TARGET_SELF, true, 9910, AI_DIR_TYPE_ToR, arg0:GetRandam_Int(2, 4))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_ActCP3(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_Act47(arg0, arg1, arg2)
    local f26_local0 = arg0:GetDist(TARGET_ENE_0)
    local f26_local1 = 1
    local f26_local2 = 20
    local f26_local3 = 100
    local f26_local4 = arg0:GetRandam_Int(1, 100)
    local f26_local5 = -1
    if f26_local4 <= f26_local3 then
        f26_local5 = 9920
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, f26_local1, TARGET_ENE_0, true, f26_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LostKnight_SwordShield_301000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_LostKnight_SwordShield_301000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f30_local0 = arg1:GetDist(TARGET_ENE_0)
    local f30_local1 = arg1:GetDist(TARGET_FRI_0)
    local f30_local2 = arg1:GetRandam_Int(1, 100)
    local f30_local3 = arg1:HasSpecialEffectId(TARGET_ENE_0, 90)
    local f30_local4 = arg1:HasSpecialEffectId(TARGET_SELF, 10164)
    local f30_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 10840)
    local f30_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 10850)
    local f30_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 10851)
    local f30_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 10880)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10874)
    local f30_local9 = arg1:GetPrevTargetState()
    local f30_local10 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    local f30_local11 = 5
    local f30_local12 = 180
    local f30_local13 = 6.5
    local f30_local14 = 180
    if Parry_Act(arg1, arg2, f30_local11, f30_local12, f30_local13, f30_local14) then
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(5027) then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and f30_local0 >= 1.8 and f30_local0 <= 4.5 then
                local f30_local15 = arg1:GetRandam_Int(1, 100)
                if f30_local15 > 40 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 4, 0, 90)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3002, TARGET_ENE_0, DIST_None, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 90, 4.7 - arg1:GetMapHitRadius(TARGET_SELF) + 1) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3002, TARGET_ENE_0, DIST_None, 0, 0)
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptId(5030) then
            local f30_local15 = arg1:GetRandam_Int(1, 100)
            arg2:ClearSubGoal()
            if f30_local15 > 60 then
                if f30_local0 <= 3.5 then
                    if f30_local15 > 70 and arg1:HasSpecialEffectId(TARGET_SELF, 10896) == false then
                        LostKnight_SwordShield_301000_Act05(arg1, arg2)
                    elseif f30_local15 > 35 and arg1:HasSpecialEffectId(TARGET_SELF, 10897) == false then
                        LostKnight_SwordShield_301000_Act02(arg1, arg2)
                    else
                        LostKnight_SwordShield_301000_Act07(arg1, arg2)
                    end
                elseif f30_local0 <= 5 then
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 4.7 - arg1:GetMapHitRadius(TARGET_SELF) + 2, 0, 0)
                end
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        arg1:SetStringIndexedNumber("c3010_DashRate", 100)
        if f30_local8 == true then
            if f30_local2 > 90 then
                arg2:ClearSubGoal()
                LostKnight_SwordShield_301000_Act11(arg1, arg2)
                return true
            end
        elseif f30_local0 >= 4 then
            arg2:ClearSubGoal()
            LostKnight_SwordShield_301000_Act22(arg1, arg2)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16479) then
        local f30_local15 = arg1:GetDist(TARGET_ENE_0)
        local f30_local16 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and f30_local15 >= 1.8 and f30_local15 <= 4.5 and f30_local16 > 70 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10871) then
        local f30_local15 = arg1:GetDist(TARGET_ENE_0)
        local f30_local16 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and f30_local15 >= 3 and f30_local15 <= 12 and f30_local16 > 35 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10875) then
        local f30_local15 = arg1:GetDist(TARGET_ENE_0)
        local f30_local16 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and f30_local15 <= 4 then
            if f30_local16 > 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 4, 0, 90)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10876) then
        local f30_local15 = arg1:GetDist(TARGET_ENE_0)
        local f30_local16 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and f30_local15 >= 4 then
            local f30_local17 = arg1:GetRandam_Int(0, 100)
            if f30_local17 > 50 then
                arg2:ClearSubGoal()
                LostKnight_SwordShield_301000_Act12(arg1, arg2)
            elseif f30_local17 > 20 then
                LostKnight_SwordShield_301000_Act24(arg1, arg2)
            else
                arg2:ClearSubGoal()
                LostKnight_SwordShield_301000_Act11(arg1, arg2)
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5029) == true and arg1:HasSpecialEffectId(TARGET_ENE_0, 10859) == false then
        local f30_local15 = arg1:GetDist(TARGET_ENE_0)
        local f30_local16 = arg1:GetRandam_Int(1, 100)
        selectFate_ToB = 1
        selectFate_ToBL = 1
        selectFate_ToBR = 1
        selectFate_ToL = 1
        selectFate_ToR = 1
        warpDist_x = arg1:GetRandam_Int(3, 5)
        if arg1:GetNumber(15) == 1 then
            selectFate_ToBL = 0
            selectFate_ToBR = 0
            selectFate_ToL = 0
            selectFate_ToR = 0
        elseif arg1:GetNumber(15) == 2 then

        elseif arg1:GetNumber(15) == 3 then
            selectFate_ToB = 0
            selectFate_ToBR = 0
            selectFate_ToR = 0
        elseif arg1:GetNumber(15) == 4 then
            selectFate_ToB = 0
            selectFate_ToBL = 0
            selectFate_ToL = 0
        end
        local f30_local17 = 3 - arg1:GetMapHitRadius(TARGET_SELF)
        local f30_local18 = 0
        local f30_local19 = 0
        local f30_local20 = arg1:GetMapHitRadius(TARGET_SELF)
        local f30_local21 = arg1:GetDist(TARGET_ENE_0)
        local f30_local22 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToB, warpDist_x + f30_local20, f30_local20, 0) <= warpDist_x then
            selectFate_ToB = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_x + f30_local20, f30_local20, 0) <= warpDist_x then
            selectFate_ToBL = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_x + f30_local20, f30_local20, 0) <= warpDist_x then
            selectFate_ToBR = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, warpDist_x + f30_local20, f30_local20, 0) <= warpDist_x then
            selectFate_ToL = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, warpDist_x + f30_local20, f30_local20, 0) <= warpDist_x then
            selectFate_ToR = 0
        end
        local f30_local23 = arg1:GetRandam_Int(0, selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR)
        local f30_local24 = AI_DIR_TYPE_ToB
        local f30_local25 = 0
        local f30_local26 = TARGET_ENE_0
        if 0 == selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
            arg1:SetNumber(15, 5)
        elseif 0 ~= AI_DIR_TYPE_ToB and f30_local23 <= selectFate_ToB then
            f30_local24 = AI_DIR_TYPE_ToB
            f30_local25 = warpDist_x
            f30_local26 = TARGET_ENE_0
        elseif 0 ~= selectFate_2 and f30_local23 <= selectFate_ToB + selectFate_ToBL then
            f30_local24 = AI_DIR_TYPE_ToBL
            f30_local25 = warpDist_x
            f30_local26 = TARGET_ENE_0
        elseif 0 ~= selectFate_3 and f30_local23 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR then
            f30_local24 = AI_DIR_TYPE_ToBR
            f30_local25 = warpDist_x
            f30_local26 = TARGET_ENE_0
        elseif 0 ~= selectFate_4 and f30_local23 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL then
            f30_local24 = AI_DIR_TYPE_ToL
            f30_local25 = warpDist_x
            f30_local26 = TARGET_ENE_0
        elseif 0 ~= selectFate_4 and f30_local23 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
            f30_local24 = AI_DIR_TYPE_ToR
            f30_local25 = warpDist_x
            f30_local26 = TARGET_ENE_0
        end
        if arg1:GetNumber(15) == 2 then
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_SELF, AI_DIR_TYPE_B, f30_local25, f30_local26, arg1:GetRandam_Int(5, 7), -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        elseif arg1:GetNumber(15) == 5 then
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f30_local24, f30_local25, f30_local26, 5, -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        else
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f30_local24, f30_local25, f30_local26, 5, -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10874) then
        local f30_local15 = arg1:GetDist(TARGET_ENE_0)
        local f30_local16 = arg1:GetRandam_Int(1, 100)
        arg1:SetNumber(10, arg1:GetNumber(10) + 1)
        if arg1:GetNumber(10) == 1 then
            local f30_local17 = arg1:GetRandam_Int(0, 100)
        elseif arg1:GetNumber(10) == 2 then
            local f30_local17 = arg1:GetRandam_Int(30, 100)
        elseif arg1:GetNumber(10) >= 3 then
            local f30_local17 = arg1:GetRandam_Int(60, 100)
        end
        if f30_local16 > 80 then
            if f30_local15 <= 3 then
                arg1:SetNumber(10, 0)
                if f30_local8 == true then
                    local f30_local17 = arg1:GetRandam_Int(0, 100)
                    if f30_local17 > 50 then
                        arg2:ClearSubGoal()
                        LostKnight_SwordShield_301000_Act12(arg1, arg2)
                    elseif f30_local17 > 20 then
                        arg2:ClearSubGoal()
                        LostKnight_SwordShield_301000_Act13(arg1, arg2)
                    else
                        LostKnight_SwordShield_301000_Act02(arg1, arg2)
                    end
                else
                    LostKnight_SwordShield_301000_Act02(arg1, arg2)
                end
            elseif f30_local15 <= 5 then
                if f30_local8 == true then
                    local f30_local17 = arg1:GetRandam_Int(0, 100)
                    if f30_local17 > 50 then
                        arg2:ClearSubGoal()
                        LostKnight_SwordShield_301000_Act12(arg1, arg2)
                    elseif f30_local17 > 20 then
                        arg2:ClearSubGoal()
                        LostKnight_SwordShield_301000_Act13(arg1, arg2)
                    else
                        LostKnight_SwordShield_301000_Act02(arg1, arg2)
                    end
                elseif f30_local16 > 30 then
                    arg1:SetNumber(10, 0)
                    LostKnight_SwordShield_301000_Act02(arg1, arg2)
                else
                    arg1:SetNumber(10, 0)
                    LostKnight_SwordShield_301000_Act04(arg1, arg2)
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local f30_local15 = arg1:GetDist(TARGET_ENE_0)
        local f30_local16 = arg1:GetRandam_Int(1, 100)
        if f30_local15 >= 5 then
            LostKnight_SwordShield_301000_Act22(arg1, arg2)
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_LostKnight_SwordShield_301000_AfterAttackAct, "LostKnight_SwordShield_301000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LostKnight_SwordShield_301000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


