RegisterTableGoal(GOAL_OldLionOfArena427000_Battle, "OldLionOfArena427000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldLionOfArena427000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetStringIndexedNumber("Chase_Rate", 0)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
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
    local f2_local6 = arg1:GetEventRequest()
    arg1:SetStringIndexedNumber("Chase_Rate", (1 - arg1:GetHpRate(TARGET_SELF)) * 100)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserve(0)
    arg1:DeleteObserve(1)
    if f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[44] = 100
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[44] = 70
        f2_local0[47] = 15
        f2_local0[12] = 15
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 15) and arg1:HasSpecialEffectId(TARGET_SELF, 13357) then
            f2_local0[22] = 15
        end
    else
        if not arg1:HasSpecialEffectId(TARGET_SELF, 13356) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 999) then
                f2_local0[21] = 100
            else
                f2_local0[47] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13352) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
                if f2_local3 > 15 then
                    f2_local0[20] = 100
                elseif f2_local3 > 4 then
                    f2_local0[20] = 100
                else
                    f2_local0[21] = 100
                end
            elseif f2_local3 < 4 then
                f2_local0[21] = 100
            else
                f2_local0[20] = 100
            end
        else
            local f2_local7 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 300, -1, 999)
            if f2_local7 then
                f2_local7 = 0
                if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 90) or arg1:HasSpecialEffectId(TARGET_ENE_0, 6992) then
                    f2_local7 = 1
                end
                if f2_local7 == 1 and arg1:GetTimer(2) <= 0 then
                    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and f2_local3 < 5 then
                        arg1:SetTimer(2, 5)
                        f2_local0[12] = 100
                    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and f2_local3 < 15 then
                        arg1:SetTimer(2, 5)
                        f2_local0[4] = 100
                    else
                        arg1:SetTimer(2, 5)
                        arg1:Replaning()
                    end
                elseif arg1:GetHpRate(TARGET_SELF) <= 0.4 and not arg1:HasSpecialEffectId(TARGET_SELF, 13355) and arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 5) and f2_local3 <= 5 then
                    f2_local0[11] = 100
                elseif f2_local3 > 15 then
                    f2_local0[1] = 100
                    f2_local0[4] = 100
                elseif f2_local3 > 5 then
                    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                        f2_local0[1] = 100
                        f2_local0[4] = 100
                        f2_local0[7] = 100
                        f2_local0[8] = 100
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13351) and f2_local3 > 7 and f2_local3 < 13 then
                            f2_local0[4] = 600
                        end
                    else
                        f2_local0[47] = 100
                    end
                elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) then
                    f2_local0[1] = 100
                    f2_local0[2] = 100
                    f2_local0[7] = 100
                    f2_local0[8] = 100
                    f2_local0[12] = 80
                    if f2_local3 < 3 then
                        f2_local0[6] = 80
                    end
                    if f2_local4 <= 50 then
                        f2_local0[49] = 500
                    end
                else
                    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                        f2_local0[7] = 200
                        f2_local0[12] = 200
                    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                        f2_local0[8] = 200
                        f2_local0[12] = 50
                    end
                    if f2_local3 < 3 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                        f2_local0[6] = 200
                    end
                    f2_local0[47] = 100
                end
            elseif f2_local3 < 5 then
                if arg1:GetTimer(0) <= 0 then
                    f2_local0[48] = 100
                else
                    f2_local0[47] = 100
                end
            elseif f2_local3 < 15 then
                f2_local0[47] = 100
            else
                f2_local0[42] = 100
            end
        end
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 15) and arg1:HasSpecialEffectId(TARGET_SELF, 13357) then
            f2_local0[22] = 350
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3005, 15, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3010, 12, f2_local0[4], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3014, 8, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3021, 5, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3019, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[8], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[12], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3025, 25, f2_local0[22], 0)
    f2_local0[49] = SetCoolTime(arg1, arg2, 6002, 4, f2_local0[49], 0)
    f2_local0[49] = SetCoolTime(arg1, arg2, 6003, 4, f2_local0[49], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act08)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act12)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act22)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act25)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act33)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act47)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act48)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act49)
    f2_local1[50] = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_Act50)
    local f2_local7 = REGIST_FUNC(arg1, arg2, OldLionOfArena427000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function OldLionOfArena427000_Act01(arg0, arg1, arg2)
    local f3_local0 = 3.5 + arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 0
    local f3_local2 = 999
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 10
    local f3_local8 = 3000
    local f3_local9 = 3004
    local f3_local10 = 8
    local f3_local11 = 0
    local f3_local12 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local10, f3_local11, f3_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, f3_local7, f3_local9, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act02(arg0, arg1, arg2)
    local f4_local0 = 4 + arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 0
    local f4_local2 = 999
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 2
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 10
    local f4_local8 = 3007
    local f4_local9 = 0
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local7, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act03(arg0, arg1, arg2)
    local f5_local0 = 3 + arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 0
    local f5_local2 = 999
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 10
    local f5_local8 = 3005
    local f5_local9 = 0
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local7, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = arg0:GetRandam_Int(1, 100)
    local f6_local2 = arg0:GetRandam_Int(1, 2)
    local f6_local3 = arg0:GetRandam_Int(1, 3)
    if f6_local0 > 7 or arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        Approach_Act_Flex(arg0, arg1, 12, 0, 999, 100, 0, 2, 2)
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, f6_local2, f6_local3, TARGET_ENE_0, 3, 0, false)
    end
    local f6_local4 = 16.5 + arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local5 = 0
    local f6_local6 = 999
    local f6_local7 = 100
    local f6_local8 = 0
    local f6_local9 = 2
    local f6_local10 = 2
    Approach_Act_Flex(arg0, arg1, f6_local4, f6_local5, f6_local6, f6_local7, f6_local8, f6_local9, f6_local10)
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        if not not arg0:HasSpecialEffectId(TARGET_SELF, 13355) or arg0:GetHpRate(TARGET_SELF) <= 0.4 then
            arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
        end
        arg0:SetTimer(0, 7)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 0, 0, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f6_local11 = 10
    local f6_local12 = 3010
    local f6_local13 = 0
    local f6_local14 = 0
    local f6_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local11, f6_local12, TARGET_ENE_0, f6_local13, f6_local14, f6_local15, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act05(arg0, arg1, arg2)
    local f7_local0 = 10
    local f7_local1 = 3001
    local f7_local2 = 0
    local f7_local3 = 0
    local f7_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, TARGET_ENE_0, f7_local2, f7_local3, f7_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act06(arg0, arg1, arg2)
    local f8_local0 = 10
    local f8_local1 = 3021
    local f8_local2 = 0
    local f8_local3 = 0
    local f8_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local0, f8_local1, TARGET_ENE_0, f8_local2, f8_local3, f8_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act07(arg0, arg1, arg2)
    local f9_local0 = 3.5 + arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 0
    local f9_local2 = 999
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 2
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f9_local7 = 10
    local f9_local8 = 3019
    local f9_local9 = 0
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local7, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act08(arg0, arg1, arg2)
    local f10_local0 = 4 + arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 0
    local f10_local2 = 999
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 2
    local f10_local6 = 2
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f10_local7 = 10
    local f10_local8 = 3001
    local f10_local9 = 0
    local f10_local10 = 0
    local f10_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local7, f10_local8, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act10(arg0, arg1, arg2)
    local f11_local0 = 10
    local f11_local1 = 5
    local f11_local2 = 0
    local f11_local3 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f11_local0, 3010, TARGET_ENE_0, f11_local1, f11_local2, f11_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act11(arg0, arg1, arg2)
    local f12_local0 = 4
    local f12_local1 = 6001
    local f12_local2 = TARGET_ENE_0
    local f12_local3 = 0
    local f12_local4 = AI_DIR_TYPE_L
    local f12_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:SetTimer(0, 7)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act12(arg0, arg1, arg2)
    local f13_local0 = 4.5 + arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 0
    local f13_local2 = 999
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 2
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13354) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    end
    local f13_local7 = 10
    local f13_local8 = 3017
    local f13_local9 = 5
    local f13_local10 = 0
    local f13_local11 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local7, f13_local8, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act20(arg0, arg1, arg2)
    arg0:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 120, 14)
    arg0:AddObserveAreaCustom(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 120, 4)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    if f14_local0 > 13 then
        local f14_local1 = 4
        local f14_local2 = 12
        local f14_local3 = true
        local f14_local4 = 9910
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f14_local1, TARGET_ENE_0, f14_local2, TARGET_SELF, f14_local3, f14_local4)
    elseif f14_local0 < 9 then
        local f14_local1 = 6
        local f14_local2 = TARGET_ENE_0
        local f14_local3 = 13
        local f14_local4 = TARGET_ENE_0
        local f14_local5 = true
        local f14_local6 = 9910
        local f14_local7 = GUARD_GOAL_DESIRE_RET_Failed
        local f14_local8 = false
        local f14_local9 = 0
        arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7, f14_local8, f14_local9)
    else
        local f14_local1 = arg0:GetRandam_Int(0, 1)
        local f14_local2 = 3.5
        local f14_local3 = TARGET_ENE_0
        local f14_local4 = f14_local1
        local f14_local5 = 15
        local f14_local6 = true
        local f14_local7 = 9910
        local f14_local8 = GUARD_GOAL_DESIRE_RET_Failed
        local f14_local9 = true
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, isLifeSuccess, f14_local7, f14_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act21(arg0, arg1, arg2)
    local f15_local0 = 10
    local f15_local1 = 3008
    local f15_local2 = 0
    local f15_local3 = 0
    local f15_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local0, f15_local1, TARGET_ENE_0, f15_local2, f15_local3, f15_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act22(arg0, arg1, arg2)
    local f16_local0 = 10
    local f16_local1 = 3025
    local f16_local2 = 5
    local f16_local3 = 0
    local f16_local4 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local0, f16_local1, TARGET_ENE_0, f16_local2, f16_local3, f16_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act25(arg0, arg1, arg2)
    local f17_local0 = 12 + arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 0
    local f17_local2 = 999
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = 2
    local f17_local6 = 2
    Approach_Act_Flex(arg0, arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local f17_local7 = 4
        local f17_local8 = 6003
        local f17_local9 = TARGET_ENE_0
        local f17_local10 = 0
        local f17_local11 = AI_DIR_TYPE_R
        local f17_local12 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 6003, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 2033, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 1, 100, true, true, 9910, true)
    else
        local f17_local7 = arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180)
        if f17_local7 then
            f17_local7 = 4
            local f17_local8 = 6002
            local f17_local9 = TARGET_ENE_0
            local f17_local10 = 0
            local f17_local11 = AI_DIR_TYPE_L
            local f17_local12 = 0
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 6002, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 2032, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 0, 100, true, true, 9910, true)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act30(arg0, arg1, arg2)
    local f18_local0 = 10
    local f18_local1 = 3000
    local f18_local2 = 3004
    local f18_local3 = 999
    local f18_local4 = 0
    local f18_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local0, f18_local1, TARGET_ENE_0, f18_local3, f18_local4, f18_local5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, f18_local0, f18_local2, TARGET_ENE_0, f18_local3, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act31(arg0, arg1, arg2)
    local f19_local0 = 10
    local f19_local1 = 3001
    local f19_local2 = 3003
    local f19_local3 = 3006
    local f19_local4 = 999
    local f19_local5 = 0
    local f19_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local0, f19_local1, TARGET_ENE_0, f19_local4, f19_local5, f19_local6, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f19_local0, f19_local2, TARGET_ENE_0, f19_local4, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, f19_local0, f19_local3, TARGET_ENE_0, f19_local4, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act32(arg0, arg1, arg2)
    local f20_local0 = 4
    local f20_local1 = 6000
    local f20_local2 = TARGET_ENE_0
    local f20_local3 = 0
    local f20_local4 = AI_DIR_TYPE_L
    local f20_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5)
    arg0:SetTimer(1, arg0:GetRandam_Int(3, 4.5))
    local f20_local6 = arg0:GetRandam_Int(0, 1)
    local f20_local7 = 3.5
    local f20_local8 = TARGET_ENE_0
    local f20_local9 = f20_local6
    local f20_local10 = 100
    local f20_local11 = true
    local f20_local12 = 9910
    local f20_local13 = GUARD_GOAL_DESIRE_RET_Failed
    local f20_local14 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f20_local7, f20_local8, f20_local9, f20_local10, f20_local11, isLifeSuccess, f20_local12, f20_local13)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act33(arg0, arg1, arg2)
    local f21_local0 = 10
    local f21_local1 = 3014
    local f21_local2 = 5
    local f21_local3 = 0
    local f21_local4 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f21_local0, f21_local1, TARGET_ENE_0, f21_local2, f21_local3, f21_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act40(arg0, arg1, arg2)
    local f22_local0 = 2
    local f22_local1 = 2
    local f22_local2 = true
    local f22_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f22_local0, TARGET_ENE_0, f22_local1, TARGET_SELF, f22_local2, f22_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act41(arg0, arg1, arg2)
    local f23_local0 = 2
    local f23_local1 = 8
    local f23_local2 = false
    local f23_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f23_local0, TARGET_ENE_0, f23_local1, TARGET_SELF, f23_local2, f23_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(40, 60), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act43(arg0, arg1, arg2)
    local f25_local0 = 10
    local f25_local1 = 0
    local f25_local2 = 100
    local f25_local3 = 0
    local f25_local4 = 0
    local f25_local5 = TARGET_ENE_0
    local f25_local6 = 1
    local f25_local7 = 0
    local f25_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f25_local0, f25_local1, f25_local2, f25_local3, f25_local4, f25_local5, f25_local6, f25_local7, f25_local8)
    local f25_local9 = arg0:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act44(arg0, arg1, arg2)
    local f26_local0 = arg0:GetRandam_Int(0, 1)
    local f26_local1 = 2
    local f26_local2 = TARGET_ENE_0
    local f26_local3 = f26_local0
    local f26_local4 = 15
    local f26_local5 = true
    local f26_local6 = -1
    local f26_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f26_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f26_local1, f26_local2, f26_local3, f26_local4, f26_local5, isLifeSuccess, f26_local6, f26_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act45(arg0, arg1, arg2)
    local f27_local0 = 6
    local f27_local1 = 15
    local f27_local2 = true
    local f27_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f27_local0, TARGET_ENE_0, f27_local1, TARGET_SELF, f27_local2, f27_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act46(arg0, arg1, arg2)
    local f28_local0 = 3
    local f28_local1 = TARGET_ENE_0
    local f28_local2 = 8
    local f28_local3 = TARGET_ENE_0
    local f28_local4 = true
    local f28_local5 = -1
    local f28_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f28_local7 = false
    local f28_local8 = 1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f28_local0, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6, f28_local7, f28_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act47(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local f29_local0 = 4
        local f29_local1 = 6003
        local f29_local2 = TARGET_ENE_0
        local f29_local3 = 0
        local f29_local4 = AI_DIR_TYPE_R
        local f29_local5 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f29_local0, f29_local1, f29_local2, f29_local3, f29_local4, f29_local5)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f29_local0 = arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180)
        if f29_local0 then
            f29_local0 = 4
            local f29_local1 = 6002
            local f29_local2 = TARGET_ENE_0
            local f29_local3 = 0
            local f29_local4 = AI_DIR_TYPE_L
            local f29_local5 = 0
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f29_local0, f29_local1, f29_local2, f29_local3, f29_local4, f29_local5)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    
end

function OldLionOfArena427000_Act48(arg0, arg1, arg2)
    local f30_local0 = 4
    local f30_local1 = 6000
    local f30_local2 = TARGET_ENE_0
    local f30_local3 = 0
    local f30_local4 = AI_DIR_TYPE_L
    local f30_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f30_local0, f30_local1, f30_local2, f30_local3, f30_local4, f30_local5)
    arg0:SetTimer(1, arg0:GetRandam_Int(2, 3.5))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act49(arg0, arg1, arg2)
    local f31_local0 = arg0:GetRandam_Int(1, 2)
    local f31_local1 = arg0:GetRandam_Int(1, 3)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, f31_local0, f31_local1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_Act50(arg0, arg1, arg2)
    local f32_local0 = 10
    local f32_local1 = 3001
    local f32_local2 = 3003
    local f32_local3 = 999
    local f32_local4 = 0
    local f32_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f32_local0, f32_local1, TARGET_ENE_0, f32_local3, f32_local4, f32_local5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, f32_local0, f32_local2, TARGET_ENE_0, f32_local3, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldLionOfArena427000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_OldLionOfArena427000_AfterAttackAct, 10)
    
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
    local f36_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f36_local1 = 0
    local f36_local2 = 20
    local f36_local3 = arg1:GetDist(TARGET_ENE_0)
    local f36_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_Damaged) then

    else

    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) and f36_local3 > 6 then
        arg2:ClearSubGoal()
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local f36_local5 = 0.5
            local f36_local6 = 6003
            local f36_local7 = TARGET_ENE_0
            local f36_local8 = 0
            local f36_local9 = AI_DIR_TYPE_R
            local f36_local10 = 0
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, f36_local5, f36_local6, f36_local7, f36_local8, f36_local9, f36_local10)
        else
            local f36_local5 = 0.5
            local f36_local6 = 6002
            local f36_local7 = TARGET_ENE_0
            local f36_local8 = 0
            local f36_local9 = AI_DIR_TYPE_L
            local f36_local10 = 0
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, f36_local5, f36_local6, f36_local7, f36_local8, f36_local9, f36_local10)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg1:IsInsideObserve(1) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            arg1:DeleteObserve(0)
            arg1:DeleteObserve(1)
            return true
        elseif arg1:IsInsideObserve(0) and arg1:GetTimer(1) <= 0 then
            if not not arg1:HasSpecialEffectId(TARGET_SELF, 13355) or arg1:GetHpRate(TARGET_SELF) <= 0.4 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
            end
            arg1:SetTimer(0, 7)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 0, 0, 0, 0, 0)
            arg1:DeleteObserve(0)
            arg1:DeleteObserve(1)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, -1, 5.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 200, -1, 6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 4) and arg1:GetTimer(3) <= 0 then
                arg1:SetTimer(3, 12)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, -1, 5.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_OldLionOfArena427000_AfterAttackAct, "OldLionOfArena427000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldLionOfArena427000_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


