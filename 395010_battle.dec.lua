RegisterTableGoal(GOAL_GhoulChildrenSword395010_Battle, "GhoulChildrenSword395010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GhoulChildrenSword395010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
    arg1:EnableUnfavorableAttackCheck(1000000, 3003)
    arg1:EnableUnfavorableAttackCheck(1000000, 3004)
    arg1:EnableUnfavorableAttackCheck(1000000, 3005)
    arg1:EnableUnfavorableAttackCheck(1000000, 3006)
    arg1:EnableUnfavorableAttackCheck(1000000, 3008)
    arg1:EnableUnfavorableAttackCheck(1000000, 3009)
    arg1:EnableUnfavorableAttackCheck(1000000, 3010)
    arg1:EnableUnfavorableAttackCheck(1000000, 3011)
    arg1:EnableUnfavorableAttackCheck(1000000, 3012)
    arg1:EnableUnfavorableAttackCheck(1000000, 3013)
    arg1:EnableUnfavorableAttackCheck(1000000, 3014)
    arg1:EnableUnfavorableAttackCheck(1000000, 3015)
    arg1:EnableUnfavorableAttackCheck(1000000, 3016)
    arg1:EnableUnfavorableAttackCheck(1000000, 3017)
    arg1:EnableUnfavorableAttackCheck(1000000, 3018)
    arg1:EnableUnfavorableAttackCheck(1000000, 3019)
    arg1:EnableUnfavorableAttackCheck(1000000, 3020)
    arg1:EnableUnfavorableAttackCheck(1000000, 3021)
    arg1:EnableUnfavorableAttackCheck(1000000, 3022)
    arg1:EnableUnfavorableAttackCheck(1000000, 3024)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:GetStringIndexedNumber("Guard_Flg")
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if f2_local3 > 10 and arg1:HasSpecialEffectId(TARGET_SELF, 13552) then
        Guard_Flg = 9910
    elseif arg1:GetTimer(1) > 0 or arg1:GetTimer(3) > 0 or arg1:HasSpecialEffectId(TARGET_SELF, 13536) then
        Guard_Flg = 9910
    else
        Guard_Flg = -1
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13564) then
        f2_local0[30] = 100
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[49] = 100
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 > 10 or f2_local3 < 5 then
            f2_local0[49] = 100
        else
            f2_local0[1] = 20
            f2_local0[5] = 30
            f2_local0[49] = 50
        end
    elseif arg1:GetTimer(3) > 0 then
        f2_local0[44] = 100
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 40 + arg1:GetMapHitRadius(TARGET_SELF)) then
        if f2_local3 > 4.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13555) and arg1:GetTimer(0) <= 0 then
                f2_local0[5] = 100
            else
                f2_local0[1] = 30
                f2_local0[2] = 0
                f2_local0[9] = 50
                if arg1:HasSpecialEffectId(TARGET_SELF, 13550) then
                    f2_local0[3] = 200
                end
            end
        elseif f2_local3 > 2.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13555) and arg1:GetTimer(0) <= 0 then
                f2_local0[5] = 100
            else
                f2_local0[1] = 50
                f2_local0[3] = 0
                f2_local0[7] = 30
                f2_local0[11] = 50
            end
            if arg1:GetTimer(4) > 0 then
                f2_local0[11] = 0
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13550) then
                f2_local0[3] = 200
            end
        else
            f2_local0[1] = 60
            f2_local0[8] = 30
            f2_local0[45] = 10
            f2_local0[10] = 30
            f2_local0[11] = 50
            if arg1:GetTimer(4) > 0 then
                f2_local0[11] = 0
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13550) then
                f2_local0[3] = 200
            end
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 60, 40 + arg1:GetMapHitRadius(TARGET_SELF)) then
        if f2_local3 < 8 then
            f2_local0[42] = 1
            f2_local0[45] = 20
            f2_local0[47] = 90
        else
            f2_local0[42] = 70
            f2_local0[45] = 30
        end
    end
    if not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        f2_local0[11] = 0
    end
    if not arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 3) then
        f2_local0[47] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3010, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3013, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3020, 15, f2_local0[3], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3014, 15, f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3022, 15, f2_local0[7], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3023, 15, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3024, 15, f2_local0[9], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3016, 20, f2_local0[10], 0)
    f2_local0[45] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[45], 0)
    f2_local0[45] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[45], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act13)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act16)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act30)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act47)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_Act49)
    local f2_local7 = REGIST_FUNC(arg1, arg2, GhoulChildrenSword395010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function GhoulChildrenSword395010_Act01(arg0, arg1, arg2)
    local f3_local0 = 3.4
    local f3_local1 = 0
    local f3_local2 = 0
    local f3_local3 = 100
    local f3_local4 = Guard_Flg
    local f3_local5 = 10
    local f3_local6 = 10
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f3_local7 = 3
    local f3_local8 = 3010
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act02(arg0, arg1, arg2)
    local f4_local0 = 2.7
    local f4_local1 = 0
    local f4_local2 = 0
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 2
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f4_local7 = 3
    local f4_local8 = 3013
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local7, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act03(arg0, arg1, arg2)
    local f5_local0 = 5.5
    local f5_local1 = 0
    local f5_local2 = 0
    local f5_local3 = 100
    local f5_local4 = Guard_Flg
    local f5_local5 = 10
    local f5_local6 = 10
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f5_local7 = 5.5
    local f5_local8 = 3020
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local7, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act04(arg0, arg1, arg2)
    local f6_local0 = 7.5
    local f6_local1 = 0
    local f6_local2 = 0
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 10
    local f6_local6 = 10
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f6_local7 = 10
    local f6_local8 = 3015
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 0
    local f6_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local7, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act05(arg0, arg1, arg2)
    local f7_local0 = 7
    local f7_local1 = 0
    local f7_local2 = 0
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 10
    local f7_local6 = 10
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:SetTimer(0, 6)
    local f7_local7 = 3.7
    local f7_local8 = 3017
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 0
    local f7_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local7, f7_local8, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act06(arg0, arg1, arg2)
    local f8_local0 = 3
    local f8_local1 = 0
    local f8_local2 = 0
    local f8_local3 = 100
    local f8_local4 = Guard_Flg
    local f8_local5 = 10
    local f8_local6 = 10
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f8_local7 = 10
    local f8_local8 = 3014
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 0
    local f8_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local7, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act07(arg0, arg1, arg2)
    local f9_local0 = 4.2
    local f9_local1 = 0
    local f9_local2 = 0
    local f9_local3 = 100
    local f9_local4 = Guard_Flg
    local f9_local5 = 10
    local f9_local6 = 10
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f9_local7 = 10
    local f9_local8 = 3022
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local7, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act08(arg0, arg1, arg2)
    local f10_local0 = 2
    local f10_local1 = 0
    local f10_local2 = 0
    local f10_local3 = 100
    local f10_local4 = Guard_Flg
    local f10_local5 = 10
    local f10_local6 = 10
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    arg0:SetTimer(1, 6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f10_local7 = 10
    local f10_local8 = 3023
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 0
    local f10_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local7, f10_local8, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act09(arg0, arg1, arg2)
    local f11_local0 = 4.5
    local f11_local1 = 0
    local f11_local2 = 0
    local f11_local3 = 100
    local f11_local4 = Guard_Flg
    local f11_local5 = 10
    local f11_local6 = 10
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f11_local7 = 10
    local f11_local8 = 3024
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local10 = 0
    local f11_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local7, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act10(arg0, arg1, arg2)
    local f12_local0 = 2.5
    local f12_local1 = 0
    local f12_local2 = 0
    local f12_local3 = 100
    local f12_local4 = Guard_Flg
    local f12_local5 = 10
    local f12_local6 = 10
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f12_local7 = 10
    local f12_local8 = 3016
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local10 = 0
    local f12_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local7, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act11(arg0, arg1, arg2)
    local f13_local0 = 4 + arg0:GetRandam_Int(1, 2)
    local f13_local1 = TARGET_ENE_0
    local f13_local2 = arg0:GetRandam_Int(0, 1)
    local f13_local3 = 50
    local f13_local4 = true
    local f13_local5 = 9910
    local f13_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f13_local7 = true
    arg0:SetTimer(3, f13_local0)
    arg0:SetTimer(4, 11)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local7, f13_local5, f13_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act12(arg0, arg1, arg2)
    local f14_local0 = 3 + arg0:GetRandam_Int(1, 2)
    local f14_local1 = TARGET_ENE_0
    local f14_local2 = 0
    local f14_local3 = 50
    local f14_local4 = true
    local f14_local5 = 9910
    local f14_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f14_local7 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local7, f14_local5, f14_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act13(arg0, arg1, arg2)
    local f15_local0 = 1 + arg0:GetRandam_Int(1, 2)
    local f15_local1 = TARGET_ENE_0
    local f15_local2 = 9910
    local f15_local3 = GUARD_GOAL_DESIRE_RET_Failed
    local f15_local4 = true
    arg1:AddSubGoal(GOAL_COMMON_Guard, f15_local0, f15_local2, f15_local1, f15_local3, f15_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act15(arg0, arg1, arg2)
    local f16_local0 = 1 + arg0:GetRandam_Int(1, 2)
    local f16_local1 = TARGET_ENE_0
    local f16_local2 = 1
    local f16_local3 = 50
    local f16_local4 = true
    local f16_local5 = 9920
    local f16_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f16_local7 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local7, f16_local5, f16_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act16(arg0, arg1, arg2)
    local f17_local0 = 1 + arg0:GetRandam_Int(1, 2)
    local f17_local1 = TARGET_ENE_0
    local f17_local2 = 0
    local f17_local3 = 50
    local f17_local4 = true
    local f17_local5 = 9920
    local f17_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f17_local7 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local7, f17_local5, f17_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act17(arg0, arg1, arg2)
    local f18_local0 = 1 + arg0:GetRandam_Int(1, 2)
    local f18_local1 = TARGET_ENE_0
    local f18_local2 = 9920
    local f18_local3 = GUARD_GOAL_DESIRE_RET_Failed
    local f18_local4 = true
    arg1:AddSubGoal(GOAL_COMMON_Guard, f18_local0, f18_local2, f18_local1, f18_local3, f18_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act30(arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13565) then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f19_local0 = 10
        local f19_local1 = 3025
        local f19_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f19_local3 = 0
        local f19_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f19_local0, f19_local1, TARGET_ENE_0, f19_local2, f19_local3, f19_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function GhoulChildrenSword395010_Act40(arg0, arg1, arg2)
    local f20_local0 = 8
    local f20_local1 = 7
    local f20_local2 = true
    local f20_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f20_local0, TARGET_ENE_0, f20_local1, TARGET_SELF, f20_local2, f20_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act41(arg0, arg1, arg2)
    local f21_local0 = 8
    local f21_local1 = 7
    local f21_local2 = false
    local f21_local3 = Guard_Flg
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f21_local0, TARGET_ENE_0, f21_local1, TARGET_SELF, f21_local2, f21_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act43(arg0, arg1, arg2)
    local f23_local0 = 1
    local f23_local1 = 0
    local f23_local2 = 100
    local f23_local3 = 0
    local f23_local4 = 0
    local f23_local5 = TARGET_ENE_0
    local f23_local6 = 1
    local f23_local7 = 0
    local f23_local8 = true
    arg0:SetTimer(1, 6)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6, f23_local7, f23_local8)
    local f23_local9 = arg0:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act44(arg0, arg1, arg2)
    local f24_local0 = arg0:GetRandam_Int(0, 1)
    local f24_local1 = 3
    local f24_local2 = TARGET_ENE_0
    local f24_local3 = f24_local0
    local f24_local4 = 15
    local f24_local5 = true
    local f24_local6 = Guard_Flg
    local f24_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f24_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, isLifeSuccess, f24_local6, f24_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act45(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local f25_local0 = 2
        local f25_local1 = 6003
        local f25_local2 = TARGET_ENE_0
        local f25_local3 = 0
        local f25_local4 = AI_DIR_TYPE_R
        local f25_local5 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f25_local0, f25_local1, f25_local2, f25_local3, f25_local4, f25_local5)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f25_local0 = arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180)
        if f25_local0 then
            f25_local0 = 2
            local f25_local1 = 6002
            local f25_local2 = TARGET_ENE_0
            local f25_local3 = 0
            local f25_local4 = AI_DIR_TYPE_L
            local f25_local5 = 0
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f25_local0, f25_local1, f25_local2, f25_local3, f25_local4, f25_local5)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    
end

function GhoulChildrenSword395010_Act46(arg0, arg1, arg2)
    local f26_local0 = 3
    local f26_local1 = TARGET_ENE_0
    local f26_local2 = 8
    local f26_local3 = TARGET_ENE_0
    local f26_local4 = true
    local f26_local5 = -1
    local f26_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f26_local7 = false
    local f26_local8 = 1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f26_local0, f26_local1, f26_local2, f26_local3, f26_local4, f26_local5, f26_local6, f26_local7, f26_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act47(arg0, arg1, arg2)
    local f27_local0 = 3
    local f27_local1 = 100
    local f27_local2 = -1
    local f27_local3 = -1
    local f27_local4 = -1
    local f27_local5 = TARGET_ENE_0
    local f27_local6 = 0
    local f27_local7 = 0
    local f27_local8 = false
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f27_local0, 6000, f27_local5, 0, AI_DIR_TYPE_F, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_Act49(arg0, arg1, arg2)
    local f28_local0 = 5
    local f28_local1 = 10
    local f28_local2 = -1
    local f28_local3 = true
    local f28_local4 = 1
    local f28_local5 = 10
    local f28_local6 = 1.5
    local f28_local7 = 2
    local f28_local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, f28_local4)
    local f28_local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, f28_local4)
    local f28_local10 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, f28_local4)
    local f28_local11 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, f28_local4)
    local f28_local12 = arg0:GetDist(TARGET_ENE_0)
    local f28_local13 = arg0:GetRandam_Int(0, 1)
    if f28_local9 == true and f28_local8 == true then

    elseif f28_local9 == true and f28_local8 == false then
        f28_local13 = 0
    elseif f28_local9 == false and f28_local8 == true then
        f28_local13 = 1
    elseif f28_local9 == false and f28_local8 == false then
        f28_local13 = 2
    end
    if f28_local1 < f28_local12 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f28_local5, TARGET_ENE_0, arg0:GetRandam_Float(f28_local0, f28_local1), TARGET_SELF, false, f28_local2)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f28_local12 <= f28_local1 and f28_local0 <= f28_local12 then
        if f28_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f28_local6, TARGET_ENE_0, f28_local13, 100, f28_local3, false, f28_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f28_local12 < f28_local0 then
        if f28_local11 == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f28_local7, TARGET_ENE_0, arg0:GetRandam_Float(f28_local0, f28_local1), TARGET_ENE_0, f28_local3, f28_local2, GUARD_GOAL_DESIRE_RET_Success)
        elseif f28_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f28_local6, TARGET_ENE_0, f28_local13, 100, f28_local3, false, f28_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GhoulChildrenSword395010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_GhoulChildrenSword395010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    local f32_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f32_local1 = 0
    local f32_local2 = 20
    local f32_local3 = arg1:GetDist(TARGET_ENE_0)
    local f32_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_Damaged) and f32_local3 < 5 then
        if f32_local4 <= 20 and arg1:GetTimer(3) <= 0 and arg1:GetTimer(2) <= 0 then
            arg2:ClearSubGoal()
            arg1:SetTimer(1, 6)
            arg1:SetTimer(2, 30)
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, 100, -1, -1, TARGET_ENE_0, 1, 0, true)
            return true
        end
        return false
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) then
        if f32_local3 < 3 then
            arg1:SetTimer(3, 0)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 1, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        else
            arg1:SetTimer(3, 0)
            return false
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_ENE_0, 3, TARGET_SELF, false, 9910)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, -1, 5) then
                arg2:ClearSubGoal()
                if f32_local4 > 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 2, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 2, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 4.5) and (f32_local4 > 60 or arg1:HasSpecialEffectId(TARGET_ENE_0, 6992)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, -1, 3.5) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 2, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_GhoulChildrenSword395010_AfterAttackAct, "GhoulChildrenSword395010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GhoulChildrenSword395010_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


