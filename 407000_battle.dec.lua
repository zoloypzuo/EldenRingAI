RegisterTableGoal(GOAL_Wolf407000_Battle, "GOAL_Wolf407000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Wolf407000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:GetStringIndexedNumber("firstBark")
    arg1:SetTimer(4, 4)
    arg1:SetNumber(5, 0)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    if FearOfFire(arg1, arg2, PLAN_SIDEWAYTYPE__DEFAULT) == true then
        return 
    end
    arg1:DeleteObserve(0)
    arg1:SetStringIndexedNumber("Dist_SideStep", 2.5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 4)
    if arg1:GetNumber(0) == 1 then
        arg1:SetStringIndexedNumber("AddDistRun", 1.5)
    else
        arg1:SetStringIndexedNumber("AddDistRun", 1.2)
    end
    if arg1:GetNumber(0) ~= 1 then
        arg1:SetNumber(1, -1.4)
    end
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDist(TARGET_EVENT)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = arg1:GetEventRequest()
    local f2_local8 = arg1:IsSearchTarget(TARGET_ENE_0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 14570) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14572) then
            f2_local0[35] = 100
        else
            f2_local0[13] = 50
            f2_local0[16] = 1
            f2_local0[31] = 20
            f2_local0[32] = 20
            f2_local0[3] = 30
            f2_local0[36] = 80
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16941) then
        f2_local0[33] = 100
    elseif (arg1:GetNpcThinkParamID() == 40703000 or arg1:IsFinishTimer(4)) and f2_local3 >= 5 and arg1:HasSpecialEffectId(TARGET_SELF, 13020) == false and arg1:GetStringIndexedNumber("firstBark") == 0 then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3200, TARGET_ENE_0, 10, 0, 180, 0, 0)
        arg1:SetStringIndexedNumber("firstBark", 1)
    elseif arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        if arg1:GetNumber(5) == 0 then
            f2_local0[9] = 100
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 20) then
            f2_local0[13] = 20
            f2_local0[14] = 80
        elseif f2_local3 <= 2 then
            f2_local0[1] = 30
            f2_local0[4] = 50
            f2_local0[10] = 20
        elseif f2_local3 <= 7 then
            f2_local0[1] = 10
            f2_local0[2] = 30
            f2_local0[3] = 20
            f2_local0[5] = 40
        else
            f2_local0[2] = 20
            f2_local0[5] = 30
            f2_local0[27] = 50
        end
    else
        if not arg1:HasSpecialEffectId(TARGET_SELF, 13020) then
            f2_local0[22] = 35
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13020)
        else
            local f2_local9 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
            if f2_local9 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 50) == true then
                    if f2_local3 >= 4 then
                        f2_local0[14] = 100
                    else
                        f2_local0[10] = 20
                        f2_local0[13] = 70
                        f2_local0[14] = 10
                    end
                elseif f2_local3 >= 5 then
                    f2_local0[9] = 50
                    f2_local0[22] = 50
                    if arg1:HasSpecialEffectId(TARGET_SELF, 16940) then
                        f2_local0[33] = 50
                    end
                else
                    f2_local0[21] = 80
                    f2_local0[22] = 50
                end
            elseif f2_local9 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 180, 50) == true then
                    if f2_local3 >= 4 then
                        f2_local0[14] = 100
                    else
                        f2_local0[10] = 30
                        f2_local0[13] = 60
                        f2_local0[14] = 10
                    end
                elseif f2_local3 >= 5 then
                    f2_local0[9] = 60
                    f2_local0[22] = 40
                    if arg1:HasSpecialEffectId(TARGET_SELF, 16940) then
                        f2_local0[33] = 50
                    end
                else
                    f2_local0[13] = 25
                    f2_local0[16] = 75
                end
            else
                local f2_local10 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 50)
                local f2_local11 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 60, 180, 50)
                if f2_local11 == true then
                    if f2_local3 >= 4 then
                        f2_local0[14] = 100
                    else
                        f2_local0[13] = 40
                    end
                elseif f2_local10 == true then
                    if f2_local3 >= 9 then
                        f2_local0[2] = 15
                        f2_local0[16] = 50
                        f2_local0[22] = 35
                    elseif f2_local3 >= 5 then
                        f2_local0[1] = 55
                        f2_local0[2] = 45
                    elseif f2_local3 >= 2 then
                        f2_local0[1] = 50
                        f2_local0[3] = 30
                        f2_local0[10] = 20
                    else
                        f2_local0[3] = 20
                        f2_local0[4] = 60
                        f2_local0[10] = 10
                        f2_local0[13] = 10
                    end
                elseif f2_local3 >= 9 then
                    f2_local0[14] = 20
                    f2_local0[16] = 60
                    f2_local0[22] = 20
                elseif f2_local3 >= 4 then
                    f2_local0[1] = 10
                    f2_local0[2] = 10
                    f2_local0[13] = 40
                    f2_local0[14] = 40
                elseif f2_local3 >= 2 then
                    f2_local0[3] = 20
                    f2_local0[13] = 80
                else
                    f2_local0[4] = 50
                    f2_local0[10] = 10
                    f2_local0[13] = 40
                end
            end
        end
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13025)
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 13020)
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
        if not arg1:IsFinishTimer(0) then
            f2_local0[13] = 1
        end
        if not arg1:IsFinishTimer(2) then
            f2_local0[10] = 1
        end
        if not arg1:IsFinishTimer(3) and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
            f2_local0[22] = 1
        end
    end
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3202, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 5, f2_local0[5], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3005, 5, f2_local0[5], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3006, 5, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3007, 20, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3008, 20, f2_local0[9], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[31], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[32], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3011, 30, f2_local0[33], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Wolf407000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Wolf407000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Wolf407000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Wolf407000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Wolf407000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Wolf407000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Wolf407000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, Wolf407000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Wolf407000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Wolf407000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Wolf407000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Wolf407000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Wolf407000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Wolf407000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Wolf407000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, Wolf407000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, Wolf407000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, Wolf407000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, Wolf407000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, Wolf407000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Wolf407000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, Wolf407000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, Wolf407000_Act23)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, Wolf407000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, Wolf407000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, Wolf407000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, Wolf407000_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, Wolf407000_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, Wolf407000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, Wolf407000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, Wolf407000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, Wolf407000_Act33)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, Wolf407000_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, Wolf407000_Act36)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, Wolf407000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, Wolf407000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, Wolf407000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, Wolf407000_Act43)
    local f2_local9 = REGIST_FUNC(arg1, arg2, Wolf407000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function Wolf407000_Act01(arg0, arg1, arg2)
    local f3_local0 = 2.5
    local f3_local1 = 2.5
    local f3_local2 = AI_DIR_TYPE_ToR
    local f3_local3 = arg0:GetRandam_Int(1, 100)
    local f3_local4 = 0
    local f3_local5 = 999
    local f3_local6 = 100
    local f3_local7 = 0
    local f3_local8 = 2
    local f3_local9 = 2
    local f3_local10 = false
    local f3_local11 = false
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, 10, TARGET_ENE_0, 3.5, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 1.5)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, 10, TARGET_ENE_0, 3.5, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, 1.5)
    end
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8, f3_local9)
    local f3_local12 = 3000
    local f3_local13 = 0.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local14 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local15 = 0
    local f3_local16 = 60
    local f3_local17 = arg0:GetRandam_Int(1, 100)
    local f3_local18 = arg0:GetRandam_Int(1, 100)
    if f3_local17 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local12, TARGET_ENE_0, 5, f3_local15, f3_local16, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local12, TARGET_ENE_0, 5, f3_local15, f3_local16, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 4, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act02(arg0, arg1, arg2)
    local f4_local0 = 3
    local f4_local1 = 2.5
    local f4_local2 = AI_DIR_TYPE_ToR
    local f4_local3 = arg0:GetRandam_Int(1, 100)
    local f4_local4 = 0
    local f4_local5 = 999
    local f4_local6 = 100
    local f4_local7 = 0
    local f4_local8 = 2
    local f4_local9 = 2
    local f4_local10 = false
    local f4_local11 = false
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, 10, TARGET_ENE_0, 4, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 1.5)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, 10, TARGET_ENE_0, 4, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, 1.5)
    end
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8, f4_local9)
    local f4_local12 = 3001
    local f4_local13 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local14 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local15 = 0
    local f4_local16 = 60
    local f4_local17 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local12, TARGET_ENE_0, 5, f4_local15, f4_local16, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act03(arg0, arg1, arg2)
    local f5_local0 = 2
    local f5_local1 = 0
    local f5_local2 = 999
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    local f5_local7 = false
    local f5_local8 = false
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local9 = 3002
    local f5_local10 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local11 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local12 = 0
    local f5_local13 = 60
    local f5_local14 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local9, TARGET_ENE_0, 5, f5_local12, f5_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act04(arg0, arg1, arg2)
    local f6_local0 = 3003
    local f6_local1 = 0
    local f6_local2 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local0, TARGET_ENE_0, 2, f6_local1, f6_local2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act05(arg0, arg1, arg2)
    local f7_local0 = 6.5
    local f7_local1 = 0
    local f7_local2 = 999
    local f7_local3 = 100
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 2
    local f7_local7 = 2
    local f7_local8 = false
    local f7_local9 = false
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local10 = 3004
    local f7_local11 = 5.14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local12 = 4
    local f7_local13 = 0
    local f7_local14 = 60
    local f7_local15 = arg0:GetRandam_Int(1, 100)
    local f7_local16 = arg0:GetRandam_Int(1, 100)
    if f7_local15 <= 50 then
        f7_local10 = 3004
    else
        f7_local10 = 3005
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local10, TARGET_ENE_0, f7_local12, f7_local13, f7_local14, 0, 0)
    arg0:SetTimer(2, 8)
    arg0:SetTimer(0, 8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act06(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13027) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 0.3), TARGET_NONE, 0, 0, 0)
    end
    if not arg0:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 999) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    end
    local f8_local0 = 3009
    local f8_local1 = 0
    local f8_local2 = 0
    local f8_local3 = 0
    local f8_local4 = 180
    if arg0:HasSpecialEffectId(TARGET_ENE_0, NKM_SP_EFFECT_IS_MIMMICK) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, f8_local2, f8_local3, f8_local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, f8_local2, f8_local3, f8_local4, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.1, 1), TARGET_NONE, 0, 0, 0)
    local f9_local0 = 3006
    local f9_local1 = 0
    local f9_local2 = 0
    local f9_local3 = 0
    local f9_local4 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local0, TARGET_ENE_0, f9_local2, f9_local3, f9_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act08(arg0, arg1, arg2)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local f10_local0 = arg0:GetStringIndexedNumber("Dist_SideStep")
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f10_local0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f10_local0)
        end
    end
    local f10_local0 = 3007
    local f10_local1 = 0
    local f10_local2 = 0
    local f10_local3 = 0
    local f10_local4 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local2, f10_local3, f10_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.1, 1), TARGET_NONE, 0, 0, 0)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 3008
    local f11_local2 = 0
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local1, TARGET_ENE_0, f11_local3, f11_local4, f11_local5, 0, 0)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act10(arg0, arg1, arg2)
    local f12_local0 = 3
    local f12_local1 = -1
    local f12_local2 = 100
    local f12_local3 = -1
    local f12_local4 = -1
    local f12_local5 = TARGET_ENE_0
    local f12_local6 = 3
    local f12_local7 = 0
    local f12_local8 = true
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    arg0:SetTimer(2, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act11(arg0, arg1, arg2)
    local f13_local0 = 5
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f13_local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act12(arg0, arg1, arg2)
    local f14_local0 = 5
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f14_local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act13(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local f15_local0 = 4
        local f15_local1 = 6003
        local f15_local2 = TARGET_ENE_0
        local f15_local3 = 0
        local f15_local4 = AI_DIR_TYPE_R
        local f15_local5 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5)
        arg0:SetTimer(0, 4)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f15_local0 = arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180)
        if f15_local0 then
            f15_local0 = 4
            local f15_local1 = 6002
            local f15_local2 = TARGET_ENE_0
            local f15_local3 = 0
            local f15_local4 = AI_DIR_TYPE_L
            local f15_local5 = 0
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5)
            arg0:SetTimer(0, 4)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    
end

function Wolf407000_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act15(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 1.5
    local f17_local2 = 4
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f17_local1, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToB, f17_local2)
    return 0
    
end

function Wolf407000_Act16(arg0, arg1, arg2)
    local f18_local0 = arg0:GetNumber(2) + 1
    arg0:SetNumber(2, f18_local0)
    local f18_local1 = arg0:GetDist(TARGET_ENE_0)
    local f18_local2 = 1.5
    local f18_local3 = 7
    local f18_local4 = 2
    local f18_local5 = arg0:GetHpRate(TARGET_SELF)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f18_local3 = 8
        f18_local2 = arg0:GetRandam_Float(1.7, 2)
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f18_local3 = 6
        f18_local2 = arg0:GetRandam_Float(1.5, 1.8)
    else
        f18_local3 = 6
        f18_local2 = 1.4
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local f18_local6 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f18_local2, TARGET_ENE_0, 5, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, f18_local3)
        f18_local6:SetTargetRange(3, f18_local4, 100)
    else
        local f18_local6 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f18_local2, TARGET_ENE_0, 5, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, f18_local3)
        f18_local6:SetTargetRange(3, f18_local4, 100)
    end
    return 0
    
end

function Wolf407000_Act17(arg0, arg1, arg2)
    local f19_local0 = 5
    local f19_local1 = arg0:GetRandam_Float(1, 2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f19_local1, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act18(arg0, arg1, arg2)
    local f20_local0 = arg0:GetNumber(2) + 1
    arg0:SetNumber(2, f20_local0)
    local f20_local1 = arg0:GetDist(TARGET_ENE_0)
    local f20_local2 = 1.5
    local f20_local3 = 0.5
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f20_local2, TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, f20_local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f20_local2, TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, f20_local3)
    end
    
end

function Wolf407000_Act19(arg0, arg1, arg2)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = 8.5
    local f21_local2 = 12
    local f21_local3 = 0
    if arg0:GetNumber(0) == 1 then
        f21_local3 = 3.5
    else
        f21_local3 = 3.5
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f21_local1, TARGET_ENE_0, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToL, f21_local2)
        arg0:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 6.5)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f21_local1, TARGET_ENE_0, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToR, f21_local2)
        arg0:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 6.5)
    end
    
end

function Wolf407000_Act20(arg0, arg1, arg2)
    local f22_local0 = 9.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = 9.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local2 = 0
    local f22_local3 = 0
    local f22_local4 = 0
    local f22_local5 = 4
    local f22_local6 = 5.5
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act21(arg0, arg1, arg2)
    local f23_local0 = 3.5
    local f23_local1 = arg0:GetRandam_Float(3, 4.5)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f23_local1, TARGET_ENE_0, 15, TARGET_ENE_0, true, 9920)
    arg0:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act22(arg0, arg1, arg2)
    local f24_local0 = arg0:GetRandam_Float(3.5, 5.5)
    local f24_local1 = arg0:GetDist(TARGET_ENE_0)
    local f24_local2 = 15
    local f24_local3 = arg0:GetRandam_Int(1, 100)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        WalkLife = arg0:GetRandam_Float(2.5, 3.5)
    end
    local f24_local4 = AI_DIR_TYPE_ToL
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f24_local0, TARGET_ENE_0, 3, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToL, f24_local2)
        arg0:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 6)
        arg0:SetTimer(3, 8)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f24_local0, TARGET_ENE_0, 3, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToR, f24_local2)
        arg0:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 6)
        arg0:SetTimer(3, 8)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f24_local0, TARGET_ENE_0, 3, TARGET_SELF, true, 9920)
        arg0:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 6)
        arg0:SetTimer(3, 8)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60, 0, 0)
    end
    return 0
    
end

function Wolf407000_Act23(arg0, arg1, arg2)
    local f25_local0 = arg0:GetRandam_Float(5.5, 6.5)
    local f25_local1 = arg0:GetDist(TARGET_ENE_0)
    local f25_local2 = 15
    local f25_local3 = arg0:GetRandam_Int(1, 100)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        WalkLife = arg0:GetRandam_Float(2.5, 3.5)
    end
    local f25_local4 = AI_DIR_TYPE_ToL
    if f25_local3 <= 50 then
        f25_local4 = AI_DIR_TYPE_ToL
    else
        f25_local4 = AI_DIR_TYPE_ToR
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f25_local0, TARGET_ENE_0, 2, TARGET_SELF, true, -1, f25_local4, f25_local2)
    arg0:SetTimer(3, 8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act24(arg0, arg1, arg2)
    local f26_local0 = arg0:GetNumber(2) + 1
    arg0:SetNumber(2, f26_local0)
    local f26_local1 = 2
    local f26_local2 = 15
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f26_local1, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, f26_local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f26_local1, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, f26_local2)
    end
    return 0
    
end

function Wolf407000_Act25(arg0, arg1, arg2)
    local f27_local0 = arg0:GetRandam_Float(5.5, 6.5)
    local f27_local1 = arg0:GetDist(TARGET_ENE_0)
    local f27_local2 = 15
    local f27_local3 = arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE)
    if f27_local3 == true then
        f27_local0 = 0
    end
    f27_local3 = 0
    if arg0:GetNumber(0) == 1 then
        f27_local3 = 3.5
    else
        f27_local3 = 3.5
    end
    local f27_local4 = arg0:HasSpecialEffectId(TARGET_SELF, 13027)
    if f27_local4 then
        f27_local3 = 8
    end
    f27_local4 = 999
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local f27_local5 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f27_local0, TARGET_ENE_0, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToL, f27_local2)
        f27_local5:SetTargetRange(2, f27_local3, f27_local4)
    else
        local f27_local5 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f27_local0, TARGET_ENE_0, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToR, f27_local2)
        f27_local5:SetTargetRange(2, f27_local3, f27_local4)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13020)
    return 0
    
end

function Wolf407000_Act26(arg0, arg1, arg2)
    local f28_local0 = 0
    if arg0:GetNumber(0) == 1 then
        f28_local0 = 3.5
    else
        f28_local0 = 3.5
    end
    local f28_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 13027)
    if f28_local1 then
        f28_local0 = 8
    end
    f28_local1 = 999
    local f28_local2 = arg0:GetRandam_Float(6.5, 7.5)
    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        f28_local2 = 0
    end
    local f28_local3 = arg1:AddSubGoal(GOAL_COMMON_Guard, f28_local2, 9920, TARGET_ENE_0, true, 0)
    f28_local3:SetTargetRange(2, f28_local0, f28_local1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13020)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act27(arg0, arg1, arg2)
    local f29_local0 = 3.5
    local f29_local1 = arg0:GetRandam_Float(1, 3)
    local f29_local2 = 2
    if arg0:GetRandam_Int(0, 1) then
        local f29_local3 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f29_local0, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, f29_local1)
        f29_local3:SetTargetRange(3, f29_local2, 100)
    else
        local f29_local3 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f29_local0, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, f29_local1)
        f29_local3:SetTargetRange(3, f29_local2, 100)
    end
    return 0
    
end

function Wolf407000_Act28(arg0, arg1, arg2)
    local f30_local0 = arg0:GetRandam_Float(5.5, 6.5)
    local f30_local1 = arg0:GetDist(POINT_EVENT)
    local f30_local2 = 5
    if arg0:IsInsideTarget(POINT_EVENT, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f30_local0, POINT_EVENT, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToL, f30_local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f30_local0, POINT_EVENT, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToR, f30_local2)
    end
    return 0
    
end

function Wolf407000_Act29(arg0, arg1, arg2)
    local f31_local0 = arg0:GetRandam_Float(6.5, 7.5)
    arg1:AddSubGoal(GOAL_COMMON_Guard, f31_local0, -1, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act30(arg0, arg1, arg2)
    local f32_local0 = arg0:GetRandam_Float(5.5, 6.5)
    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        f32_local0 = 0
    end
    local f32_local1 = arg0:GetDist(TARGET_ENE_0)
    local f32_local2 = 150
    local f32_local3 = 3.5
    local f32_local4 = AI_DIR_TYPE_ToL
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) then
        f32_local4 = AI_DIR_TYPE_ToL
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5024) then
        f32_local4 = AI_DIR_TYPE_ToR
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        f32_local4 = AI_DIR_TYPE_ToL
    else
        f32_local4 = AI_DIR_TYPE_ToR
    end
    local f32_local5 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f32_local0, TARGET_ENE_0, 2, TARGET_SELF, true, 9920, f32_local4, f32_local2)
    f32_local5 = f32_local5:SetTargetRange(2, f32_local3, 100)
    f32_local5:SetLifeEndSuccess(true)
    return 0
    
end

function Wolf407000_Act31(arg0, arg1, arg2)
    if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 110) or not arg0:IsFinishTimer(5) then
        arg0:SetTimer(0, 5)
        local f33_local0 = arg0:GetStringIndexedNumber("Dist_SideStep")
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f33_local0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f33_local0)
        end
    end
    local f33_local0 = 5.14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f33_local1 = f33_local0
    local f33_local2 = f33_local0 + 0
    local f33_local3 = 100
    local f33_local4 = 0
    local f33_local5 = 4
    local f33_local6 = 5.5
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, f33_local0, TARGET_SELF, false, 0)
    local f33_local7 = 3000
    local f33_local8 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f33_local9 = 0.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f33_local10 = 0
    local f33_local11 = 0
    local f33_local12 = arg0:GetRandam_Int(1, 100)
    local f33_local13 = arg0:GetRandam_Int(1, 100)
    if f33_local12 <= 20 then
        local f33_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f33_local7, TARGET_ENE_0, f33_local9, f33_local10, f33_local11, 0, 0)
        f33_local14:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
        f33_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 4, 0)
        f33_local14:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    elseif f33_local12 <= 45 then
        local f33_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f33_local7, TARGET_ENE_0, f33_local8, f33_local10, f33_local11, 0, 0)
        f33_local14:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
        f33_local14 = arg0:GetStringIndexedNumber("Dist_SideStep")
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f33_local14)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f33_local14)
        end
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, f33_local0, TARGET_SELF, false, 0)
        local f33_local15 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, SuccessDist, f33_local10, f33_local11, 0, 0)
        f33_local15:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    elseif f33_local12 <= 70 then
        local f33_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f33_local7, TARGET_ENE_0, f33_local8, f33_local10, f33_local11, 0, 0)
        f33_local14:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
        f33_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 4, 0)
        f33_local14:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
        f33_local14 = 1.3
        local f33_local15 = 0.5
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f33_local14, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, f33_local15)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f33_local14, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, f33_local15)
        end
    else
        local f33_local14 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f33_local7, TARGET_ENE_0, f33_local8, f33_local10, f33_local11, 0, 0)
        f33_local14:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
        f33_local14 = 1.3
        local f33_local15 = 0.5
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f33_local14, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, f33_local15)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f33_local14, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, f33_local15)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Wolf407000_Act32(arg0, arg1, arg2)
    if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) or not arg0:IsFinishTimer(5) then
        arg0:SetTimer(0, 5)
        local f34_local0 = arg0:GetStringIndexedNumber("Dist_SideStep")
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f34_local0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f34_local0)
        end
    end
    local f34_local0 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetNumber(1) + arg0:GetStringIndexedNumber("AddDistRun")
    local f34_local1 = f34_local0
    local f34_local2 = f34_local0 + 0
    local f34_local3 = 100
    local f34_local4 = 0
    local f34_local5 = 4
    local f34_local6 = 5.5
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, f34_local0, TARGET_SELF, false, 0)
    local f34_local7 = 3001
    local f34_local8 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f34_local9 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f34_local10 = 0
    local f34_local11 = 0
    local f34_local12 = arg0:GetRandam_Int(1, 100)
    local f34_local13 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f34_local7, TARGET_ENE_0, f34_local9, f34_local10, f34_local11, 0, 0)
    f34_local13:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    f34_local13 = 1.3
    local f34_local14 = 0.5
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f34_local13, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, f34_local14)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f34_local13, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, f34_local14)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Wolf407000_Act33(arg0, arg1, arg2)
    local f35_local0 = 10
    local f35_local1 = 3011
    local f35_local2 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f35_local3 = 0
    local f35_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f35_local0, f35_local1, TARGET_ENE_0, f35_local2, f35_local3, f35_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act35(arg0, arg1, arg2)
    local f36_local0 = 10
    local f36_local1 = 3035
    local f36_local2 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f36_local3 = 0
    local f36_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f36_local0, f36_local1, TARGET_ENE_0, f36_local2, f36_local3, f36_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_Act36(arg0, arg1, arg2)
    local f37_local0 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetNumber(1)
    local f37_local1 = f37_local0
    local f37_local2 = f37_local0 + 0
    local f37_local3 = 100
    local f37_local4 = 0
    local f37_local5 = 4
    local f37_local6 = 5.5
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, f37_local0, TARGET_SELF, false, 0)
    local f37_local7 = 3036
    local f37_local8 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f37_local9 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f37_local10 = 0
    local f37_local11 = 0
    local f37_local12 = arg0:GetRandam_Int(1, 100)
    local f37_local13 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f37_local7, TARGET_ENE_0, f37_local9, f37_local10, f37_local11, 0, 0)
    f37_local13:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Wolf407000_Act40(arg0, arg1, arg2)
    local f38_local0 = 5.5
    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        f38_local0 = 0
    end
    local f38_local1 = arg0:GetDist(TARGET_ENE_0)
    local f38_local2 = 150
    local f38_local3 = 0
    if arg0:GetNumber(0) == 1 then
        f38_local3 = 8
    else
        f38_local3 = 7
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f38_local0, TARGET_ENE_0, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToL, f38_local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f38_local0, TARGET_ENE_0, 2, TARGET_SELF, true, 9920, AI_DIR_TYPE_ToR, f38_local2)
    end
    local f38_local4 = 5.5
    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        f38_local4 = 0
    end
    arg1:AddSubGoal(GOAL_COMMON_Guard, f38_local4, 9920, TARGET_ENE_0, true, 0)
    return 0
    
end

function Wolf407000_Act41(arg0, arg1, arg2)
    local f39_local0 = 5.14 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetNumber(1) + arg0:GetStringIndexedNumber("AddDistRun")
    local f39_local1 = f39_local0
    local f39_local2 = f39_local0 + 0
    local f39_local3 = 100
    local f39_local4 = 0
    local f39_local5 = 4
    local f39_local6 = 5.5
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, f39_local0, TARGET_SELF, false, 0)
    local f39_local7 = 3000
    local f39_local8 = 0.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f39_local9 = 1
    local f39_local10 = 0
    local f39_local11 = 60
    local f39_local12 = arg0:GetRandam_Int(1, 100)
    local f39_local13 = arg0:GetRandam_Int(1, 100)
    if f39_local12 <= 75 then
        local f39_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f39_local7, TARGET_ENE_0, f39_local8, f39_local10, f39_local11, 0, 0)
        f39_local14:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
        f39_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 4, 0)
        f39_local14:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    else
        local f39_local14 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f39_local7, TARGET_ENE_0, f39_local8, f39_local10, f39_local11, 0, 0)
        f39_local14:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Wolf407000_Act42(arg0, arg1, arg2)
    local f40_local0 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetNumber(1) + arg0:GetStringIndexedNumber("AddDistRun")
    local f40_local1 = f40_local0
    local f40_local2 = f40_local0 + 0
    local f40_local3 = 100
    local f40_local4 = 0
    local f40_local5 = 4
    local f40_local6 = 5.5
    local f40_local7 = 3014
    local f40_local8 = 4.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f40_local9 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f40_local10 = 0
    local f40_local11 = 0
    local f40_local12 = arg0:GetRandam_Int(1, 100)
    local f40_local13 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f40_local7, TARGET_ENE_0, f40_local9, f40_local10, f40_local11, 0, 0)
    f40_local13:TimingSetTimer(6, 5, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Wolf407000_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 10, TARGET_SELF, false, 0)
    local f41_local0 = 5.5
    local f41_local1 = arg0:GetDist(TARGET_ENE_0)
    local f41_local2 = 150
    local f41_local3 = 0
    if arg0:GetNumber(0) == 1 then
        f41_local3 = 8
    else
        f41_local3 = 7
    end
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Wolf407000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Wolf407000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f45_local0 = arg1:GetDist(TARGET_ENE_0)
    local f45_local1 = arg1:GetRandam_Int(1, 100)
    local f45_local2 = arg1:GetRandam_Int(1, 100)
    if not not arg1:IsInterupt(INTERUPT_Inside_ObserveArea) or arg1:IsInterupt(INTERUPT_Damaged) and not arg1:HasSpecialEffectId(TARGET_SELF, 13020) then
        arg2:ClearSubGoal()
        if arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
            if arg1:IsFinishTimer(2) and f45_local1 <= 30 then
                Wolf407000_Act10(arg1, arg2, paramTbl)
                return true
            elseif f45_local1 <= 70 then
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3201, TARGET_ENE_0, 6, 0, 90, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 4, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3202, TARGET_ENE_0, 5, 0, 90, 0, 0)
                return true
            end
        else
            Wolf407000_Act10(arg1, arg2, paramTbl)
            return true
        end
        arg1:DeleteObserve(0)
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
        local f45_local3 = arg1:GetDist(TARGET_ENE_0)
        if arg1:IsFinishTimer(3) and f45_local3 >= 6 then
            arg2:ClearSubGoal()
            Wolf407000_Act22(arg1, arg2, paramTbl)
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_Wolf407000_AfterAttackAct, "GOAL_Wolf407000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Wolf407000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


